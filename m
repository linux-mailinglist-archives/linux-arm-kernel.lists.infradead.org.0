Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAEF174E8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 14:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+fYLebPPczutMxPYYOGQp7Wzr5pNsvxMb41dzTiyUBA=; b=Mtv+FIJ0KQrzKh
	bJU+dqU0v43mETF6iLNK7w1YmsnztJ28BZl3p1U1jVHv0sCWmIbDKT9QezgoJ4J8zZxgSfUbNIk30
	XJGsPkxZLLayZ69thbkarOjIQaUtJWA1KUp+Hz6YOKRe/jM3UdsaiiTNLl0Sa0PnlYxQftgCf45Pg
	Vs03aWXGaO6bpmTezCVK0n+AQvvuaJ7Ycvg13BJ2RUxv4LrIRegc6bGBe+QeY01EQiFRMnWI2Lzr2
	lcNiEDYSN8rfOXdQN4WlRbMJCFV3/h2ep0vbYn+O4gsexD0Y+Uw1vl4y6NbbgtJsD/dQlSjGCXp2B
	p2Xc1mOjVf17w9TnI9QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdEr-0002WK-HE; Thu, 25 Jul 2019 12:52:53 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdEY-0002VF-FB
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 12:52:36 +0000
X-Originating-IP: 86.250.200.211
Received: from aptenodytes (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 5FA9AFF815;
 Thu, 25 Jul 2019 12:52:20 +0000 (UTC)
Date: Thu, 25 Jul 2019 14:52:20 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v6 3/5] media: v4l: Add definitions for the HEVC slice
 controls
Message-ID: <20190725125220.GA14499@aptenodytes>
References: <20190614143837.15605-1-paul.kocialkowski@bootlin.com>
 <20190614143837.15605-4-paul.kocialkowski@bootlin.com>
 <d91d8424-a06a-15da-93af-6d2d48619cee@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d91d8424-a06a-15da-93af-6d2d48619cee@xs4all.nl>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_055234_825881_506CA3E5 
X-CRM114-Status: GOOD (  27.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Tomasz Figa <tfiga@chromium.org>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-sunxi@googlegroups.com,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hans and thanks for the review!

On Mon 22 Jul 19, 16:40, Hans Verkuil wrote:
> On 6/14/19 4:38 PM, Paul Kocialkowski wrote:
> > This introduces the required definitions for HEVC decoding support with
> > stateless VPUs. The controls associated to the HEVC slice format provide
> > the required meta-data for decoding slices extracted from the bitstream.
> > 
> > They are not exported to the public V4L2 API since reworking this API
> > will be needed for covering various use-cases and new hardware.
> > 
> > The interface comes with the following limitations:
> > * No custom quantization matrices (scaling lists);
> > * Support for a single temporal layer only;
> > * No slice entry point offsets support;
> > * No conformance window support;
> > * No VUI parameters support;
> > * No support for SPS extensions: range, multilayer, 3d, scc, 4 bits;
> > * No support for PPS extensions: range, multilayer, 3d, scc, 4 bits.
> > 
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  Documentation/media/uapi/v4l/biblio.rst       |   9 +
> >  .../media/uapi/v4l/ext-ctrls-codec.rst        | 474 +++++++++++++++++-
> >  .../media/uapi/v4l/vidioc-queryctrl.rst       |  18 +
> >  .../media/videodev2.h.rst.exceptions          |   3 +
> >  drivers/media/v4l2-core/v4l2-ctrls.c          | 103 ++++
> >  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
> >  include/media/hevc-ctrls.h                    | 197 ++++++++
> >  include/media/v4l2-ctrls.h                    |   7 +
> >  8 files changed, 809 insertions(+), 3 deletions(-)
> >  create mode 100644 include/media/hevc-ctrls.h
> > 
> 
> <snip>
> 
> > diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> > new file mode 100644
> > index 000000000000..f10f57625142
> > --- /dev/null
> > +++ b/include/media/hevc-ctrls.h
> > @@ -0,0 +1,197 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * These are the HEVC state controls for use with stateless HEVC
> > + * codec drivers.
> > + *
> > + * It turns out that these structs are not stable yet and will undergo
> > + * more changes. So keep them private until they are stable and ready to
> > + * become part of the official public API.
> > + */
> > +
> > +#ifndef _HEVC_CTRLS_H_
> > +#define _HEVC_CTRLS_H_
> > +
> > +#include <linux/videodev2.h>
> > +
> > +/* The pixel format isn't stable at the moment and will likely be renamed. */
> > +#define V4L2_PIX_FMT_HEVC_SLICE v4l2_fourcc('S', '2', '6', '5') /* HEVC parsed slices */
> > +
> > +#define V4L2_CID_MPEG_VIDEO_HEVC_SPS		(V4L2_CID_MPEG_BASE + 1008)
> > +#define V4L2_CID_MPEG_VIDEO_HEVC_PPS		(V4L2_CID_MPEG_BASE + 1009)
> > +#define V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS	(V4L2_CID_MPEG_BASE + 1010)
> > +
> > +/* enum v4l2_ctrl_type type values */
> > +#define V4L2_CTRL_TYPE_HEVC_SPS 0x0120
> > +#define V4L2_CTRL_TYPE_HEVC_PPS 0x0121
> > +#define V4L2_CTRL_TYPE_HEVC_SLICE_PARAMS 0x0122
> > +
> > +#define V4L2_HEVC_SLICE_TYPE_B	0
> > +#define V4L2_HEVC_SLICE_TYPE_P	1
> > +#define V4L2_HEVC_SLICE_TYPE_I	2
> > +
> > +#define V4L2_HEVC_SPS_FLAG_SEPARATE_COLOUR_PLANE		(1 << 0)
> > +#define V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED			(1 << 1)
> > +#define V4L2_HEVC_SPS_FLAG_AMP_ENABLED				(1 << 2)
> > +#define V4L2_HEVC_SPS_FLAG_SAMPLE_ADAPTIVE_OFFSET		(1 << 3)
> > +#define V4L2_HEVC_SPS_FLAG_PCM_ENABLED				(1 << 4)
> > +#define V4L2_HEVC_SPS_FLAG_PCM_LOOP_FILTER_DISABLED		(1 << 5)
> > +#define V4L2_HEVC_SPS_FLAG_LONG_TERM_REF_PICS_PRESENT		(1 << 6)
> > +#define V4L2_HEVC_SPS_FLAG_SPS_TEMPORAL_MVP_ENABLED		(1 << 7)
> > +#define V4L2_HEVC_SPS_FLAG_STRONG_INTRA_SMOOTHING_ENABLED	(1 << 8)
> > +
> > +/* The controls are not stable at the moment and will likely be reworked. */
> > +struct v4l2_ctrl_hevc_sps {
> > +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Sequence parameter set */
> > +	__u8	chroma_format_idc;
> 
> There is a hole in the struct here. Can that be fixed?

Oh I had missed it. Let's move that u8 between num_long_term_ref_pics_sps and
flags (at the end) then.

> > +	__u16	pic_width_in_luma_samples;
> > +	__u16	pic_height_in_luma_samples;
> > +	__u8	bit_depth_luma_minus8;
> > +	__u8	bit_depth_chroma_minus8;
> > +	__u8	log2_max_pic_order_cnt_lsb_minus4;
> > +	__u8	sps_max_dec_pic_buffering_minus1;
> > +	__u8	sps_max_num_reorder_pics;
> > +	__u8	sps_max_latency_increase_plus1;
> > +	__u8	log2_min_luma_coding_block_size_minus3;
> > +	__u8	log2_diff_max_min_luma_coding_block_size;
> > +	__u8	log2_min_luma_transform_block_size_minus2;
> > +	__u8	log2_diff_max_min_luma_transform_block_size;
> > +	__u8	max_transform_hierarchy_depth_inter;
> > +	__u8	max_transform_hierarchy_depth_intra;
> > +	__u8	pcm_sample_bit_depth_luma_minus1;
> > +	__u8	pcm_sample_bit_depth_chroma_minus1;
> > +	__u8	log2_min_pcm_luma_coding_block_size_minus3;
> > +	__u8	log2_diff_max_min_pcm_luma_coding_block_size;
> > +	__u8	num_short_term_ref_pic_sets;
> > +	__u8	num_long_term_ref_pics_sps;
> > +
> > +	__u64	flags;
> > +};
> > +
> > +#define V4L2_HEVC_PPS_FLAG_DEPENDENT_SLICE_SEGMENT		(1 << 0)
> > +#define V4L2_HEVC_PPS_FLAG_OUTPUT_FLAG_PRESENT			(1 << 1)
> > +#define V4L2_HEVC_PPS_FLAG_SIGN_DATA_HIDING_ENABLED		(1 << 2)
> > +#define V4L2_HEVC_PPS_FLAG_CABAC_INIT_PRESENT			(1 << 3)
> > +#define V4L2_HEVC_PPS_FLAG_CONSTRAINED_INTRA_PRED		(1 << 4)
> > +#define V4L2_HEVC_PPS_FLAG_TRANSFORM_SKIP_ENABLED		(1 << 5)
> > +#define V4L2_HEVC_PPS_FLAG_CU_QP_DELTA_ENABLED			(1 << 6)
> > +#define V4L2_HEVC_PPS_FLAG_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT	(1 << 7)
> > +#define V4L2_HEVC_PPS_FLAG_WEIGHTED_PRED			(1 << 8)
> > +#define V4L2_HEVC_PPS_FLAG_WEIGHTED_BIPRED			(1 << 9)
> > +#define V4L2_HEVC_PPS_FLAG_TRANSQUANT_BYPASS_ENABLED		(1 << 10)
> > +#define V4L2_HEVC_PPS_FLAG_TILES_ENABLED			(1 << 11)
> > +#define V4L2_HEVC_PPS_FLAG_ENTROPY_CODING_SYNC_ENABLED		(1 << 12)
> > +#define V4L2_HEVC_PPS_FLAG_LOOP_FILTER_ACROSS_TILES_ENABLED	(1 << 13)
> > +#define V4L2_HEVC_PPS_FLAG_PPS_LOOP_FILTER_ACROSS_SLICES_ENABLED (1 << 14)
> > +#define V4L2_HEVC_PPS_FLAG_DEBLOCKING_FILTER_OVERRIDE_ENABLED	(1 << 15)
> > +#define V4L2_HEVC_PPS_FLAG_PPS_DISABLE_DEBLOCKING_FILTER	(1 << 16)
> > +#define V4L2_HEVC_PPS_FLAG_LISTS_MODIFICATION_PRESENT		(1 << 17)
> > +#define V4L2_HEVC_PPS_FLAG_SLICE_SEGMENT_HEADER_EXTENSION_PRESENT (1 << 18)
> > +
> > +struct v4l2_ctrl_hevc_pps {
> > +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Picture parameter set */
> > +	__u8	num_extra_slice_header_bits;
> > +	__s8	init_qp_minus26;
> > +	__u8	diff_cu_qp_delta_depth;
> > +	__s8	pps_cb_qp_offset;
> > +	__s8	pps_cr_qp_offset;
> > +	__u8	num_tile_columns_minus1;
> > +	__u8	num_tile_rows_minus1;
> > +	__u8	column_width_minus1[20];
> > +	__u8	row_height_minus1[22];
> > +	__s8	pps_beta_offset_div2;
> > +	__s8	pps_tc_offset_div2;
> > +	__u8	log2_parallel_merge_level_minus2;
> > +
> > +	__u8	padding[4];
> 
> General note regarding padding:
> 
> 1) Padding fields should be zeroed in std_validate_hevc(), but it
>    looks that already happens, right?

Yes, that should be taken care of already.

> 2) Padding fields should be documented like this:
> 
>    * - __u8
>      - ``padding``
>      - Applications and drivers must set this to zero.
> 
>    That doesn't happen, AFAICS.

Will do!

> > +	__u64	flags;
> > +};
> > +
> > +#define V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_BEFORE	0x01
> > +#define V4L2_HEVC_DPB_ENTRY_RPS_ST_CURR_AFTER	0x02
> > +#define V4L2_HEVC_DPB_ENTRY_RPS_LT_CURR		0x03
> > +
> > +#define V4L2_HEVC_DPB_ENTRIES_NUM_MAX		16
> > +
> > +struct v4l2_hevc_dpb_entry {
> > +	__u64	timestamp;
> > +	__u8	rps;
> > +	__u8	field_pic;
> > +	__u16	pic_order_cnt[2];
> > +	__u8	padding[2];
> > +};
> > +
> > +struct v4l2_hevc_pred_weight_table {
> > +	__u8	luma_log2_weight_denom;
> > +	__s8	delta_chroma_log2_weight_denom;
> > +
> > +	__s8	delta_luma_weight_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > +	__s8	luma_offset_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > +	__s8	delta_chroma_weight_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
> > +	__s8	chroma_offset_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
> > +
> > +	__s8	delta_luma_weight_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > +	__s8	luma_offset_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > +	__s8	delta_chroma_weight_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
> > +	__s8	chroma_offset_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX][2];
> > +
> > +	__u8	padding[6];
> > +};
> > +
> > +#define V4L2_HEVC_SLICE_PARAMS_FLAG_SLICE_SAO_LUMA		(1 << 0)
> > +#define V4L2_HEVC_SLICE_PARAMS_FLAG_SLICE_SAO_CHROMA		(1 << 1)
> > +#define V4L2_HEVC_SLICE_PARAMS_FLAG_SLICE_TEMPORAL_MVP_ENABLED	(1 << 2)
> > +#define V4L2_HEVC_SLICE_PARAMS_FLAG_MVD_L1_ZERO			(1 << 3)
> > +#define V4L2_HEVC_SLICE_PARAMS_FLAG_CABAC_INIT			(1 << 4)
> > +#define V4L2_HEVC_SLICE_PARAMS_FLAG_COLLOCATED_FROM_L0		(1 << 5)
> > +#define V4L2_HEVC_SLICE_PARAMS_FLAG_USE_INTEGER_MV		(1 << 6)
> > +#define V4L2_HEVC_SLICE_PARAMS_FLAG_SLICE_DEBLOCKING_FILTER_DISABLED (1 << 7)
> > +#define V4L2_HEVC_SLICE_PARAMS_FLAG_SLICE_LOOP_FILTER_ACROSS_SLICES_ENABLED (1 << 8)
> > +
> > +struct v4l2_ctrl_hevc_slice_params {
> > +	__u32	bit_size;
> > +	__u32	data_bit_offset;
> > +
> > +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: NAL unit header */
> > +	__u8	nal_unit_type;
> > +	__u8	nuh_temporal_id_plus1;
> > +
> > +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
> > +	__u8	slice_type;
> > +	__u8	colour_plane_id;
> > +	__u16	slice_pic_order_cnt;
> > +	__u8	num_ref_idx_l0_active_minus1;
> > +	__u8	num_ref_idx_l1_active_minus1;
> > +	__u8	collocated_ref_idx;
> > +	__u8	five_minus_max_num_merge_cand;
> > +	__s8	slice_qp_delta;
> > +	__s8	slice_cb_qp_offset;
> > +	__s8	slice_cr_qp_offset;
> > +	__s8	slice_act_y_qp_offset;
> > +	__s8	slice_act_cb_qp_offset;
> > +	__s8	slice_act_cr_qp_offset;
> > +	__s8	slice_beta_offset_div2;
> > +	__s8	slice_tc_offset_div2;
> > +
> > +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Picture timing SEI message */
> > +	__u8	pic_struct;
> > +
> > +	__u8	padding_pre[13];
> 
> Where does '13' come from? I expect values between 1 and 7, so 13 is weird.

Huh, I can't recall why I picked 13, but 5 should obviously do the work just as
well.

> I'm also not keen on having _pre and _post padding fields. Can that be
> avoided somehow?

Ah, this is because I had decided to keep the (64-bit-aligned) structs in the
middle of this structure, but it's probably best to have them at the end and
only have one padding field between (unaligned) individual fields and (aligned)
struct fields. Will fix in the next revision!

Cheers,

Paul

> > +
> > +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: General slice segment header */
> > +	struct v4l2_hevc_dpb_entry dpb[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > +	__u8	num_active_dpb_entries;
> > +	__u8	ref_idx_l0[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > +	__u8	ref_idx_l1[V4L2_HEVC_DPB_ENTRIES_NUM_MAX];
> > +
> > +	__u8	num_rps_poc_st_curr_before;
> > +	__u8	num_rps_poc_st_curr_after;
> > +	__u8	num_rps_poc_lt_curr;
> > +
> > +	/* ISO/IEC 23008-2, ITU-T Rec. H.265: Weighted prediction parameter */
> > +	struct v4l2_hevc_pred_weight_table pred_weight_table;
> > +
> > +	__u8	padding_post[4];
> > +	__u64	flags;
> > +};
> > +
> > +#endif
> > diff --git a/include/media/v4l2-ctrls.h b/include/media/v4l2-ctrls.h
> > index b4433483af23..2fd477108e7a 100644
> > --- a/include/media/v4l2-ctrls.h
> > +++ b/include/media/v4l2-ctrls.h
> > @@ -20,6 +20,7 @@
> >  #include <media/mpeg2-ctrls.h>
> >  #include <media/fwht-ctrls.h>
> >  #include <media/h264-ctrls.h>
> > +#include <media/hevc-ctrls.h>
> >  
> >  /* forward references */
> >  struct file;
> > @@ -48,6 +49,9 @@ struct poll_table_struct;
> >   * @p_h264_scaling_matrix:	Pointer to a struct v4l2_ctrl_h264_scaling_matrix.
> >   * @p_h264_slice_params:	Pointer to a struct v4l2_ctrl_h264_slice_params.
> >   * @p_h264_decode_params:	Pointer to a struct v4l2_ctrl_h264_decode_params.
> > + * @p_hevc_sps:			Pointer to an HEVC sequence parameter set structure.
> > + * @p_hevc_pps:			Pointer to an HEVC picture parameter set structure.
> > + * @p_hevc_slice_params:	Pointer to an HEVC slice parameters structure.
> >   * @p:				Pointer to a compound value.
> >   */
> >  union v4l2_ctrl_ptr {
> > @@ -65,6 +69,9 @@ union v4l2_ctrl_ptr {
> >  	struct v4l2_ctrl_h264_scaling_matrix *p_h264_scaling_matrix;
> >  	struct v4l2_ctrl_h264_slice_params *p_h264_slice_params;
> >  	struct v4l2_ctrl_h264_decode_params *p_h264_decode_params;
> > +	struct v4l2_ctrl_hevc_sps *p_hevc_sps;
> > +	struct v4l2_ctrl_hevc_pps *p_hevc_pps;
> > +	struct v4l2_ctrl_hevc_slice_params *p_hevc_slice_params;
> >  	void *p;
> >  };
> >  
> > 
> 
> Regards,
> 
> 	Hans

-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
