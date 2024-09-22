#include "MyOCR.h"
namespace PaddleOCR {
	MyOCR::MyOCR(const std::string det_model_dir,
		const std::string cls_model_dir,
		const std::string rec_model_dir)
	{
		using namespace PaddleOCR;
		if (FLAGS_det) {
			this->detector_ = new DBDetector(
				det_model_dir, FLAGS_use_gpu, FLAGS_gpu_id, FLAGS_gpu_mem,
				FLAGS_cpu_threads, FLAGS_enable_mkldnn, FLAGS_limit_type,
				FLAGS_limit_side_len, FLAGS_det_db_thresh, FLAGS_det_db_box_thresh,
				FLAGS_det_db_unclip_ratio, FLAGS_det_db_score_mode, FLAGS_use_dilation,
				FLAGS_use_tensorrt, FLAGS_precision);
		}

		if (FLAGS_cls && FLAGS_use_angle_cls) {
			this->classifier_ = new Classifier(
				cls_model_dir, FLAGS_use_gpu, FLAGS_gpu_id, FLAGS_gpu_mem,
				FLAGS_cpu_threads, FLAGS_enable_mkldnn, FLAGS_cls_thresh,
				FLAGS_use_tensorrt, FLAGS_precision, FLAGS_cls_batch_num);
		}
		if (FLAGS_rec) {
			this->recognizer_ = new CRNNRecognizer(
				rec_model_dir, FLAGS_use_gpu, FLAGS_gpu_id, FLAGS_gpu_mem,
				FLAGS_cpu_threads, FLAGS_enable_mkldnn, FLAGS_rec_char_dict_path,
				FLAGS_use_tensorrt, FLAGS_precision, FLAGS_rec_batch_num,
				FLAGS_rec_img_h, FLAGS_rec_img_w);
		}
	}
}