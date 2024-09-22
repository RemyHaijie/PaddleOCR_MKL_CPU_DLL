from ctypes import *
import ctypes
import os
# import time
import json
ocrDll = CDLL("./ppocr.dll")
class OCR(object):
    def __init__(self,detDir,clsDir,recDir) -> None:
        self.root = os.getcwd()
        dr = (ctypes.c_char * 200)(*bytes(self.root + detDir, 'utf-8'))
        cr = (ctypes.c_char * 200)(*bytes(self.root + clsDir, 'utf-8'))
        rr = (ctypes.c_char * 200)(*bytes(self.root + recDir, 'utf-8'))
        if ocrDll.InitOCR(dr,cr,rr) != 0:
            print("init OCR faild")
    def UserOCR(self,imgPath):
        ir = (ctypes.c_char * 200)(*bytes(self.root+imgPath, 'utf-8'))
        ocrDll.UserOCR.restype = c_char_p
        pChar = ocrDll.UserOCR(ir)
        res = pChar.decode("utf-8")
        result = json.loads(res)
        return result
    def FreeOCR(self):
        ocrDll.FreeOCR()
if __name__ == "__main__":
    os.system('chcp 65001')
    ocr = OCR("\\ch_PP-OCRv4_det_infer",
              "\\ch_ppocr_mobile_v2.0_cls_infer",
              "\\ch_PP-OCRv4_rec_infer")
    result = ocr.UserOCR("\\images\\11.png")
    ocr.FreeOCR()
    pass