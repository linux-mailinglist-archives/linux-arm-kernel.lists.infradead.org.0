Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A1E1DE8B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 16:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4fOMmi8waMUa4GxlKJsrmlH5d/asMbdhMJutS4p/uw=; b=iQTfsRErjMEiCN
	Ih5qCdOPwnEHehxnb9GLchJ+JqieAq8WGdbbinGN8mDJWrpISwbqFI42nHncl6GRTM1hoOLMkK4ex
	xtAHPF9dpUnaloQfW+dxPCCyI29f3dVH7r0XXkD61BN0eqKaWyccdwZ/xaNL5cEManBocqdOvUeHV
	zE//calhAKUVLzL4YkXDe4qJ1NEtI3TqJNjWMJOIPrhwhG2dIwlHf/Nb2Vk9ogYVCXDTv6UVQSIL2
	jBzarHESqVfdwBg4VnFp+kW3W3DbCv5NEjhOSnVVwCgyi9skNgcjXrudlanb4iUkFqt7WpQNpOkBP
	8Pw7Tjh/lmuVGkUE5aWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc8Y7-0004jt-2R; Fri, 22 May 2020 14:21:23 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc8Xt-0004iJ-RS; Fri, 22 May 2020 14:21:12 +0000
X-UUID: e30fc0b0d0fb4d3995e101d7598b6c9e-20200522
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=O6kJJyACUJalT+c1EmXfnkhAwzGhDrPE+kC/YlUnpFQ=; 
 b=euRrR6ykCaGMem3OCznfB4XIJ5FX+rNOJBxp0UFgjM/RV9YQdTtKwq+ozeyrnqzYlkiyoy/zjpi6KrQyEQtjBb9+crg4FjdXWOxe+EZQkCfgHbpPYIJx3SsS24NNID/PvLkB8joGMElI64JCUG9uvurcL+XILSX+93hgHM5QxCQ=;
X-UUID: e30fc0b0d0fb4d3995e101d7598b6c9e-20200522
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1563402749; Fri, 22 May 2020 06:20:46 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 May 2020 07:10:57 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 May 2020 22:10:56 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 22 May 2020 22:10:55 +0800
Message-ID: <1590156658.27807.84.camel@mtksdccf07>
Subject: Re: [RFC PATCH V4 4/4] platform: mtk-isp: Add Mediatek FD driver
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 22 May 2020 22:10:58 +0800
In-Reply-To: <20200521182825.GA249683@chromium.org>
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
 <20191204124732.10932-5-Jerry-Ch.chen@mediatek.com>
 <20200521182825.GA249683@chromium.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_072110_070357_211AC7E5 
X-CRM114-Status: GOOD (  33.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 zwisler@chromium.org, srv_heupstream@mediatek.com, christie.yu@mediatek.com,
 jerry-ch.chen@mediatek.com, hverkuil@xs4all.nl, jungo.lin@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org, hans.verkuil@cisco.com,
 pihsun@chromium.org, frederic.chen@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

On Thu, 2020-05-21 at 18:28 +0000, Tomasz Figa wrote:
> Hi Jerry,
> 
> On Wed, Dec 04, 2019 at 08:47:32PM +0800, Jerry-ch Chen wrote:
> > From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > 
> > This patch adds the driver of Face Detection (FD) unit in
> > Mediatek camera system, providing face detection function.
> > 
> > The mtk-isp directory will contain drivers for multiple IP
> > blocks found in Mediatek ISP system. It will include ISP Pass 1
> > driver (CAM), sensor interface driver, DIP driver and face
> > detection driver.
> > 
> > Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > ---
> >  drivers/media/platform/Kconfig                |    2 +
> >  drivers/media/platform/Makefile               |    2 +
> >  drivers/media/platform/mtk-isp/fd/Kconfig     |   19 +
> >  drivers/media/platform/mtk-isp/fd/Makefile    |    5 +
> >  drivers/media/platform/mtk-isp/fd/mtk_fd.h    |  149 ++
> >  drivers/media/platform/mtk-isp/fd/mtk_fd_40.c | 1279 +++++++++++++++++
> >  include/uapi/linux/v4l2-controls.h            |    4 +
> >  include/uapi/linux/videodev2.h                |    3 +
> >  8 files changed, 1463 insertions(+)
> >  create mode 100644 drivers/media/platform/mtk-isp/fd/Kconfig
> >  create mode 100644 drivers/media/platform/mtk-isp/fd/Makefile
> >  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd.h
> >  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd_40.c
> > 
> 
> Thank you for the patch. Please see my comments inline. Really sorry for
> the much delayed review.
> 

I appreciate your comments, here's the reply

> [snip]
> > +config VIDEO_MEDIATEK_FD
> > +	tristate "Mediatek face detection processing function"
> > +	depends on VIDEO_V4L2
> > +	depends on ARCH_MEDIATEK
> > +	select VIDEOBUF2_DMA_CONTIG
> > +	select VIDEOBUF2_CORE
> > +	select VIDEOBUF2_V4L2
> > +	select VIDEOBUF2_MEMOPS
> > +	select MEDIA_CONTROLLER
> > +	select MTK_SCP
> > +
> > +	default n
> > +	help
> > +		Support the Face Detection (FD) feature in the Mediatek
> > +		mt8183 Soc.
> 
> MT8183?
Fixed.

> 
> > +
> > +		FD driver is a V4L2 memory-to-memory device driver which
> > +		provides hardware accelerated face detection function,
> > +		it can detect different sizes of faces in a raw image.
> 
> A YUV image I guess?
Fixed

> 
> [snip]
> > diff --git a/drivers/media/platform/mtk-isp/fd/mtk_fd.h b/drivers/media/platform/mtk-isp/fd/mtk_fd.h
> > new file mode 100644
> > index 000000000000..d85bdcb70d6d
> > --- /dev/null
> > +++ b/drivers/media/platform/mtk-isp/fd/mtk_fd.h
> > @@ -0,0 +1,149 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +//
> > +// Copyright (c) 2018 MediaTek Inc.
> > +
> > +#ifndef __MTK_FD_HW_H__
> > +#define __MTK_FD_HW_H__
> > +
> > +#include <linux/completion.h>
> > +#include <linux/io.h>
> > +#include <linux/types.h>
> > +#include <linux/platform_device.h>
> > +#include <media/v4l2-ctrls.h>
> > +#include <media/v4l2-device.h>
> > +#include <media/videobuf2-v4l2.h>
> > +
> > +#define MTK_FD_OUTPUT_MIN_WIDTH			26U
> > +#define MTK_FD_OUTPUT_MIN_HEIGHT		26U
> > +#define MTK_FD_OUTPUT_MAX_WIDTH			640U
> > +#define MTK_FD_OUTPUT_MAX_HEIGHT		480U
> > +
> > +#define MTK_FD_HW_FMT_VYUY			2
> > +#define MTK_FD_HW_FMT_UYVY			3
> > +#define MTK_FD_HW_FMT_YVYU			4
> > +#define MTK_FD_HW_FMT_YUYV			5
> > +#define MTK_FD_HW_FMT_YVU_2P			6
> > +#define MTK_FD_HW_FMT_YUV_2P			7
> > +#define MTK_FD_HW_FMT_UNKNOWN			8
> 
> What is an unknown format?
It's used in translate v4l2 pixel format to the value that FD HW
recognized. But I think the case of UNKNWOWN shouldn't happened.
I will remove it

> 
> > +
> > +#define MTK_FD_IPI_CMD_INIT			0
> > +#define MTK_FD_IPI_CMD_INIT_ACK			1
> > +#define MTK_FD_IPI_CMD_ENQUEUE			2
> > +#define MTK_FD_IPI_CMD_ENQ_ACK			3
> > +#define MTK_FD_IPI_CMD_EXIT			4
> > +#define MTK_FD_IPI_CMD_EXIT_ACK			5
> > +#define MTK_FD_IPI_CMD_RESET			6
> > +#define MTK_FD_IPI_CMD_RESET_ACK		7
> > +
> > +#define MTK_FD_REG_OFFSET_HW_ENABLE		0x4
> > +#define MTK_FD_REG_OFFSET_INT_EN		0x15c
> > +#define MTK_FD_REG_OFFSET_INT_VAL		0x168
> > +#define MTK_FD_REG_OFFSET_RESULT		0x178
> > +
> > +#define MTK_FD_SET_HW_ENABLE			0x111
> > +#define MTK_FD_RS_BUF_SIZE			2289664
> > +#define MTK_FD_HW_WORK_BUF_SIZE			0x100000
> 
> How about using the SZ_1M?
> 
yes, fixed.
> > +#define MTK_FD_MAX_SPEEDUP			7
> > +#define MTK_FD_MAX_RESULT_NUM			1026
> 
> Perhaps NUM_RESULTS?
> 
fixed as MTK_FD_MAX_NUM_RESULT.

> > +
> > +/* Max scale size counts */
> > +#define MTK_FD_SCALE_ARR_NUM			15
> 
> Perhaps NUM_SCALE_SIZES?
> 
fixed as MTK_FD_NUM_SCALE_SIZE

> > +
> > +#define MTK_FD_HW_TIMEOUT			1000
> 
> What's the unit?
it's in milliseconds, I would like to rename it to
MTK_FD_HW_TIMEOUT_MSEC

> 
> > +
> > +enum face_angle {
> > +	MTK_FD_FACE_FRONT,
> > +	MTK_FD_FACE_RIGHT_50,
> > +	MTK_FD_FACE_LEFT_50,
> > +	MTK_FD_FACE_RIGHT_90,
> > +	MTK_FD_FACE_LEFT_90,
> > +	MTK_FD_FACE_ANGLE_NUM,
> > +};
> 
> This enum seems to define values for the V4L2_CID_MTK_FD_DETECT_POSE
> control. Considering that this is an enumeration and the values are
> actually integers (-90, -50, 0, 50, 90), perhaps this should be an
> INTEGER_MENU control instead?
> 

this ioctl let user select multiple face positions(combination of angles
and directions) to be detected. so I thought I am not able to use the
INTEGER_MENU for this purpose.

A bit-field as following should be used by user.
I consider adding it to uapi.

struct face_direction_def {
__u16 MTK_FD_FACE_DIR_0 : 1,
	MTK_FD_FACE_DIR_30 : 1,
	MTK_FD_FACE_DIR_60 : 1,
	MTK_FD_FACE_DIR_90 : 1,
	MTK_FD_FACE_DIR_120 : 1,
	MTK_FD_FACE_DIR_150 : 1,
	MTK_FD_FACE_DIR_180 : 1,
	MTK_FD_FACE_DIR_210 : 1,
	MTK_FD_FACE_DIR_240 : 1,
	MTK_FD_FACE_DIR_270 : 1,
	MTK_FD_FACE_DIR_300 : 1,
	MTK_FD_FACE_DIR_330 : 1,
	: 4;
};

User can also select some face directions of each face angle in one
ioctl, for example:

/* 
 * u16 face_directions[MTK_FD_FACE_ANGLE_NUM] = {0};
 *
 *	face_directions[MTK_FD_FACE_FRONT] = 0x7; //angle:0, dir:0,30,60
 *	face_directions[MTK_FACE_RIGHT_50] = 0x2; //angle:50, dir:30 
 * 
 */

> > +
> > +struct fd_buffer {
> > +	__u32 scp_addr;	/* used by SCP */
> > +	__u32 dma_addr;	/* used by DMA HW */
> > +} __packed;
fd buffer is used for scp ipi

> > +
> > +struct fd_face_result {
> > +	char data[16];
> > +};
fd_face_result is used for user, so it should be moved to
include/uapi/linux.
In fact, it has bit-field definition for user, so I would like to define
it in include/uapi/linux as following:

struct fd_face_result {
  __u64 face_idx : 12,
	type : 1,
	x0 : 10,
	y0 : 10,
	x1 : 10,
	y1 : 10,
	fcv1 : 11;
  __u64 fcv2 : 7,
	rip_dir : 4,
	rop_dir : 3,
	det_size : 5;
};


> > +
> > +struct fd_user_output {
> > +	struct fd_face_result results[MTK_FD_MAX_RESULT_NUM];
> > +	__u16 number;
> 
> Is this perhaps the number of results? If so, would num_results be a better
> name?
> 
yes, fixed.
> > +};
> 
> Since this struct is the meta buffer format, it is a part of the userspace
> interface and should be defined in a header under include/uapi/linux/.
> 
Ok, I will create include/uapi/linux/mtk_fd_40.h
which suppose to include structures that userspace will use.
should the private IOCTLs be placed in it together?


> > +
> > +struct user_param {
> > +	u8 fd_speedup;
> > +	u8 fd_extra_model;
> > +	u8 scale_img_num;
> > +	u8 src_img_fmt;
> > +	__u16 scale_img_width[MTK_FD_SCALE_ARR_NUM];
> > +	__u16 scale_img_height[MTK_FD_SCALE_ARR_NUM];
> > +	__u16 face_directions[MTK_FD_FACE_ANGLE_NUM];
> 
> Is this a user-facing definition or an interface between the kernel driver
> and firmware? If the latter, the __ types shouldn't be used.
> 
It's the later, I'll fix it.


> > +} __packed;
> > +
> > +struct fd_init_param {
> > +	struct fd_buffer fd_manager;
> > +	__u32 rs_dma_addr;
> 
> Ditto.
> 
done.

> > +} __packed;
> > +
> > +struct fd_enq_param {
> > +	__u64 output_vaddr;
> 
> Ditto.
done.

> 
> > +	struct fd_buffer src_img[2];
> > +	struct fd_buffer user_result;
> > +	struct user_param user_param;
> > +} __packed;
> > +
> > +struct fd_ack_param {
> > +	__u32 ret_code;
> > +	__u32 ret_msg;
> 
> Ditto.
done.

> 
> > +} __packed;
> [snip]
> > +/*  */
> 
> Was there supposed to be a comment here? :)
Ooops, no, it should be removed.
> 
> > +static int mtk_fd_hw_alloc_rs_dma_addr(struct mtk_fd_dev *fd)
> > +{
> > +	struct device *dev = fd->dev;
> > +	void *va;
> > +	dma_addr_t dma_handle;
> > +
> > +	va = dma_alloc_coherent(dev, MTK_FD_RS_BUF_SIZE, &dma_handle,
> > +				GFP_KERNEL);
> > +	if (!va) {
> > +		dev_err(dev, "dma_alloc null va\n");
> 
> No need to print errors for memory allocation failures, because one will be
> printed automatically.
Ok, log removed.
> 
> [snip]
> > +static int mtk_fd_hw_connect(struct mtk_fd_dev *fd)
> > +{
> > +	int ret;
> > +
> > +	ret = rproc_boot(fd->rproc_handle);
> > +
> 
> nit: Unnecessary blank line.
> 
fixed.

> [snip]
> > +static int mtk_fd_vb2_queue_setup(struct vb2_queue *vq,
> > +				  unsigned int *num_buffers,
> > +				  unsigned int *num_planes,
> > +				  unsigned int sizes[],
> > +				  struct device *alloc_devs[])
> > +{
> > +	struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > +	unsigned int size[2];
> > +	unsigned int plane;
> > +
> > +	switch (vq->type) {
> > +	case V4L2_BUF_TYPE_META_CAPTURE:
> > +		size[0] = ctx->dst_fmt.buffersize;
> > +		break;
> > +	case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
> > +		size[0] = ctx->src_fmt.plane_fmt[0].sizeimage;
> > +		if (*num_planes == 2)
> > +			size[1] = ctx->src_fmt.plane_fmt[1].sizeimage;
> > +		break;
> > +	}
> 
> Is this code above needed? The code below sets sizes[] and it uses a for loop,
> without opencoded assignment for the second plane.
> 

Looks like not really useful here,
it should check sizes and num_planes if num_plane not zero,
and for V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, it will at most have 2
planes, maybe no need for loop as well.
I will refine this function as following:
mtk_fd_vb2_queue_setup(...)
{
	struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);

	if (*num_planes == 0) {
		if (vq->type == V4L2_BUF_TYPE_META_CAPTURE) {
			sizes[0] = ctx->dst_fmt.buffersize;
			*num_planes = 1;
			return 0;
		} else if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
			*num_planes = ctx->src_fmt.num_planes;
			sizes[0] = ctx->src_fmt.plane_fmt[0].sizeimage;
			if (*num_planes == 2)
				sizes[1] = ctx->src_fmt.plane_fmt[1].sizeimage;
			return 0;
		}
		return -EINVAL;
	}

	/* If num_plane not zero, check the num_plane and sizes*/
	if (vq->type == V4L2_BUF_TYPE_META_CAPTURE) {
		if ((*num_planes == 1) &&
		    (sizes[0] <= ctx->dst_fmt.buffersize))
			return 0;
		else
			return -EINVAL;
	}
	if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {
		if ((*num_planes == 1) &&
		    (sizes[0] <= ctx->src_fmt.plane_fmt[0].sizeimage))
			return 0;
		else if ((*num_planes == 2) &&
			 (sizes[0] <= ctx->src_fmt.plane_fmt[0].sizeimage) &&
			 (sizes[1] <= ctx->src_fmt.plane_fmt[1].sizeimage))
			return 0;
		else
			return -EINVAL;

	}
	return 0;
}

> > +
> > +	if (*num_planes > 2)
> > +		return -EINVAL;
> > +	if (*num_planes == 0) {
> > +		if (vq->type == V4L2_BUF_TYPE_META_CAPTURE) {
> > +			sizes[0] = ctx->dst_fmt.buffersize;
> > +			*num_planes = 1;
> > +			return 0;
> > +		 }
> > +
> > +		*num_planes = ctx->src_fmt.num_planes;
> > +		for (plane = 0; plane < *num_planes; plane++)
> > +			sizes[plane] = ctx->src_fmt.plane_fmt[plane].sizeimage;
> > +		return 0;
> > +	}
> > +
> > +	for (plane = 0; plane < *num_planes; plane++) {
> > +		if (sizes[plane] < size[plane])
> > +			return -EINVAL;
> > +	}
> > +	return 0;
> > +}
> [snip]
> > +static int mtk_fd_enum_fmt_out_mp(struct file *file, void *fh,
> > +				  struct v4l2_fmtdesc *f)
> > +{
> > +	if (f->index >= NUM_FORMATS)
> 
> Please use ARRAY_SIZE().
fixed.

> 
> > +		return -EINVAL;
> > +
> > +	f->pixelformat = mtk_fd_img_fmts[f->index].pixelformat;
> > +	return 0;
> > +}
> > +
> > +static void mtk_fd_fill_pixfmt_mp(struct v4l2_pix_format_mplane *dfmt,
> > +				  const struct v4l2_pix_format_mplane *sfmt)
> > +{
> > +	dfmt->field = V4L2_FIELD_NONE;
> > +	dfmt->colorspace = V4L2_COLORSPACE_BT2020;
> > +	dfmt->num_planes = sfmt->num_planes;
> > +	dfmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> > +	dfmt->quantization = V4L2_QUANTIZATION_DEFAULT;
> > +	dfmt->xfer_func =
> > +		V4L2_MAP_XFER_FUNC_DEFAULT(dfmt->colorspace);
> > +
> > +	/* Keep user setting as possible */
> > +	dfmt->width = clamp(dfmt->width,
> > +			    MTK_FD_OUTPUT_MIN_WIDTH,
> > +			    MTK_FD_OUTPUT_MAX_WIDTH);
> > +	dfmt->height = clamp(dfmt->height,
> > +			     MTK_FD_OUTPUT_MIN_HEIGHT,
> > +			     MTK_FD_OUTPUT_MAX_HEIGHT);
> > +
> > +	if (sfmt->num_planes == 2) {
> > +		/* NV16M and NV61M has 1 byte per pixel */
> > +		dfmt->plane_fmt[0].bytesperline = dfmt->width;
> > +		dfmt->plane_fmt[1].bytesperline = dfmt->width;
> > +	} else {
> > +		/* 2 bytes per pixel */
> > +		dfmt->plane_fmt[0].bytesperline = dfmt->width * 2;
> > +	}
> > +
> > +	dfmt->plane_fmt[0].sizeimage =
> > +		dfmt->height * dfmt->plane_fmt[0].bytesperline;
> 
> Could some of the code above be replaced with v4l2_fill_pixfmt_mp()?
> 
I would like to refine as following

mtk_fd_fill_pixfmt_mp(...){
	v4l2_fill_pixfmt_mp(dfmt, sfmt->pixelformat, dfmt->width,
dfmt->height);

	dfmt->field = V4L2_FIELD_NONE;
	dfmt->colorspace = V4L2_COLORSPACE_BT2020;
	dfmt->num_planes = sfmt->num_planes;
	dfmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
	dfmt->quantization = V4L2_QUANTIZATION_DEFAULT;
	dfmt->xfer_func =
		V4L2_MAP_XFER_FUNC_DEFAULT(dfmt->colorspace);
}


> > +}
> > +
> > +static const struct v4l2_pix_format_mplane *mtk_fd_find_fmt(u32 format)
> > +{
> > +	unsigned int i;
> > +	const struct v4l2_pix_format_mplane *dev_fmt;
> > +
> > +	for (i = 0; i < NUM_FORMATS; i++) {
> 
> Please use ARRAY_SIZE rather than a custom macro.
fixed.

> 
> > +		dev_fmt = &mtk_fd_img_fmts[i];
> > +		if (dev_fmt->pixelformat == format)
> > +			return dev_fmt;
> > +	}
> > +
> > +	return NULL;
> > +}
> > +
> > +static int mtk_fd_try_fmt_out_mp(struct file *file,
> > +				 void *fh,
> > +				 struct v4l2_format *f)
> > +{
> > +	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> > +	const struct v4l2_pix_format_mplane *fmt;
> > +
> > +	fmt = mtk_fd_find_fmt(pix_mp->pixelformat);
> > +	if (!fmt)
> > +		fmt = &mtk_fd_img_fmts[0];	/* Get default img fmt */
> 
> nit: Please move the comment to a separate line and add braces.
> 
fixed.

> > +
> > +	mtk_fd_fill_pixfmt_mp(pix_mp, fmt);
> > +	return 0;
> > +}
> [snip]
> > +static unsigned int get_fd_img_fmt(unsigned int fourcc)
> > +{
> > +	switch (fourcc) {
> > +	case V4L2_PIX_FMT_VYUY:
> > +		return MTK_FD_HW_FMT_VYUY;
> > +	case V4L2_PIX_FMT_YUYV:
> > +		return MTK_FD_HW_FMT_YUYV;
> > +	case V4L2_PIX_FMT_YVYU:
> > +		return MTK_FD_HW_FMT_YVYU;
> > +	case V4L2_PIX_FMT_UYVY:
> > +		return MTK_FD_HW_FMT_UYVY;
> > +	case V4L2_PIX_FMT_NV16M:
> > +		return MTK_FD_HW_FMT_YUV_2P;
> > +	case V4L2_PIX_FMT_NV61M:
> > +		return MTK_FD_HW_FMT_YVU_2P;
> > +	default:
> > +		return MTK_FD_HW_FMT_UNKNOWN;
> 
> If we want to be paranoid, we can just add a WARN here and return 0.
> Shouldn't be a need to define an unknown format.
Ok, I will refine as following:
	
default:
	dev_warn(dev, "%s: Unsupported V4L2_PIX_FMT\n", __func__);
	return 0;
> 
> [snip]
> > +static void mtk_fd_fill_user_param(struct user_param *user_param,
> > +				   struct v4l2_ctrl_handler *hdl)
> > +{
> > +	struct v4l2_ctrl *ctrl;
> > +	int i;
> > +
> > +	ctrl = v4l2_ctrl_find(hdl, V4L2_CID_MTK_FD_SCALE_DOWN_IMG_WIDTH);
> > +	if (ctrl)
> > +		for (i = 0; i < ctrl->elems; i++)
> > +			user_param->scale_img_width[i] = ctrl->p_new.p_u16[i];
> > +	ctrl = v4l2_ctrl_find(hdl, V4L2_CID_MTK_FD_SCALE_DOWN_IMG_HEIGHT);
> > +	if (ctrl)
> > +		for (i = 0; i < ctrl->elems; i++)
> > +			user_param->scale_img_height[i] = ctrl->p_new.p_u16[i];
> > +	ctrl = v4l2_ctrl_find(hdl, V4L2_CID_MTK_FD_SCALE_IMG_NUM);
> > +	if (ctrl)
> > +		user_param->scale_img_num = ctrl->val;
> > +
> 
> nit: Either separate the code dealing with all controls from each other, or
> none.
> 
Fixed. 

> > +	ctrl = v4l2_ctrl_find(hdl, V4L2_CID_MTK_FD_DETECT_POSE);
> > +	if (ctrl)
> > +		for (i = 0; i < ctrl->elems; i++)
> > +			user_param->face_directions[i] = ctrl->p_new.p_u16[i];
> > +	ctrl = v4l2_ctrl_find(hdl, V4L2_CID_MTK_FD_DETECT_SPEED);
> > +	if (ctrl)
> > +		user_param->fd_speedup = ctrl->val;
> > +	ctrl = v4l2_ctrl_find(hdl, V4L2_CID_MTK_FD_DETECTION_MODEL);
> > +	if (ctrl)
> > +		user_param->fd_extra_model = ctrl->val;
> > +}
> > +
> > +static void mtk_fd_device_run(void *priv)
> > +{
> > +	struct mtk_fd_ctx *ctx = priv;
> > +	struct mtk_fd_dev *fd = ctx->fd_dev;
> > +	struct vb2_v4l2_buffer *src_buf, *dst_buf;
> > +	struct fd_enq_param fd_param;
> > +	void *plane_vaddr;
> > +
> > +	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> > +	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> > +
> > +	fd_param.src_img[0].dma_addr =
> > +		vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
> > +	fd_param.user_result.dma_addr =
> > +		vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
> > +	plane_vaddr = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
> > +	fd_param.output_vaddr = (u64)(unsigned long)plane_vaddr;
> 
> Why is the vaddr needed here? Specfically, it could pose a security problem
> if CPU virtual addresses are exchanged with firmware.
> 
This should be removed... SCP side as well. 

> > +	fd_param.user_param.src_img_fmt =
> > +		get_fd_img_fmt(ctx->src_fmt.pixelformat);
> > +	if (ctx->src_fmt.num_planes == 2)
> > +		fd_param.src_img[1].dma_addr =
> > +			vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 1);
> 
> nit: Could this be moved above, to be just below src_img[0] initialization,
> for readability reasons?
> 
Ok, this function will be refined as 

static void mtk_fd_device_run(void *priv)
{
	struct mtk_fd_ctx *ctx = priv;
	struct mtk_fd_dev *fd = ctx->fd_dev;
	struct vb2_v4l2_buffer *src_buf, *dst_buf;
	struct fd_enq_param fd_param;

	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);

	fd_param.src_img[0].dma_addr =
		vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 0);
	if (ctx->src_fmt.num_planes == 2)
		fd_param.src_img[1].dma_addr =
			vb2_dma_contig_plane_dma_addr(&src_buf->vb2_buf, 1);
	fd_param.user_result.dma_addr =
		vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
	fd_param.user_param.src_img_fmt =
		get_fd_img_fmt(fd->dev, ctx->src_fmt.pixelformat);

	mtk_fd_fill_user_param(&fd_param.user_param, &ctx->hdl);

	/* Complete request controls if any */
	v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req, &ctx->hdl);

	fd->output = vb2_plane_vaddr(&dst_buf->vb2_buf, 0);
	mtk_fd_hw_job_exec(fd, &fd_param);
}
> > +	mtk_fd_fill_user_param(&fd_param.user_param, &ctx->hdl);
> > +
> > +	/* Complete request controls if any */
> > +	v4l2_ctrl_request_complete(src_buf->vb2_buf.req_obj.req, &ctx->hdl);
> > +
> > +	fd->output = plane_vaddr;
> > +	mtk_fd_hw_job_exec(fd, &fd_param);
> > +}
> > +
> > +static struct v4l2_m2m_ops fd_m2m_ops = {
> > +	.device_run = mtk_fd_device_run,
> > +};
> > +
> > +static const struct media_device_ops fd_m2m_media_ops = {
> > +	.req_validate	= vb2_request_validate,
> > +	.req_queue	= v4l2_m2m_request_queue,
> > +};
> > +
> > +static int mtk_fd_video_device_register(struct mtk_fd_dev *fd)
> > +{
> > +	struct video_device *vfd = &fd->vfd;
> > +	struct v4l2_m2m_dev *m2m_dev = fd->m2m_dev;
> > +	struct device *dev = fd->dev;
> > +	int ret;
> > +
> > +	vfd->fops = &fd_video_fops;
> > +	vfd->release = video_device_release;
> > +	vfd->lock = &fd->vfd_lock;
> > +	vfd->v4l2_dev = &fd->v4l2_dev;
> > +	vfd->vfl_dir = VFL_DIR_M2M;
> > +	vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_OUTPUT_MPLANE |
> > +		V4L2_CAP_META_CAPTURE;
> > +	vfd->ioctl_ops = &mtk_fd_v4l2_video_out_ioctl_ops;
> > +
> > +	strscpy(vfd->name, dev_driver_string(dev), sizeof(vfd->name));
> > +
> > +	video_set_drvdata(vfd, fd);
> > +
> > +	ret = video_register_device(vfd, VFL_TYPE_GRABBER, 0);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to register video device\n");
> > +		goto err_free_dev;
> > +	}
> > +
> > +	ret = v4l2_m2m_register_media_controller(m2m_dev, vfd,
> > +					     MEDIA_ENT_F_PROC_VIDEO_STATISTICS);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to init mem2mem media controller\n");
> > +		goto err_unreg_video;
> > +	}
> > +	return 0;
> > +
> > +err_unreg_video:
> > +	video_unregister_device(vfd);
> > +err_free_dev:
> > +	video_device_release(vfd);
> > +	return ret;
> > +}
> > +
> > +static int mtk_fd_dev_v4l2_init(struct mtk_fd_dev *fd)
> > +{
> > +	struct media_device *mdev = &fd->mdev;
> > +	struct device *dev = fd->dev;
> > +	int ret;
> > +
> > +	ret = v4l2_device_register(dev, &fd->v4l2_dev);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to register v4l2 device\n");
> > +		return ret;
> > +	}
> > +
> > +	fd->m2m_dev = v4l2_m2m_init(&fd_m2m_ops);
> > +	if (IS_ERR(fd->m2m_dev)) {
> > +		dev_err(dev, "Failed to init mem2mem device\n");
> > +		ret = PTR_ERR(fd->m2m_dev);
> > +		goto err_unreg_v4l2_dev;
> > +	}
> > +
> > +	mdev->dev = dev;
> > +	strscpy(mdev->model, dev_driver_string(dev), sizeof(mdev->model));
> > +	snprintf(mdev->bus_info, sizeof(mdev->bus_info),
> > +		 "platform:%s", dev_name(dev));
> > +	media_device_init(mdev);
> > +	mdev->ops = &fd_m2m_media_ops;
> > +	fd->v4l2_dev.mdev = mdev;
> > +
> > +	ret = mtk_fd_video_device_register(fd);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to register video device\n");
> > +		goto err_cleanup_mdev;
> > +	}
> > +
> > +	ret = media_device_register(mdev);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to register mem2mem media device\n");
> > +		goto err_unreg_vdev;
> > +	}
> > +
> > +	return 0;
> > +
> > +err_unreg_vdev:
> > +	v4l2_m2m_unregister_media_controller(fd->m2m_dev);
> > +	video_unregister_device(&fd->vfd);
> > +	video_device_release(&fd->vfd);
> 
> This is inconsistent with the registration, which registers all of these in
> a function. Perhaps it would be worth to move this cleanup to a
> mtk_fd_video_device_unregister() function?
> 
Fixed.

> > +err_cleanup_mdev:
> > +	media_device_cleanup(mdev);
> > +	v4l2_m2m_release(fd->m2m_dev);
> > +err_unreg_v4l2_dev:
> > +	v4l2_device_unregister(&fd->v4l2_dev);
> > +	return ret;
> > +}
> > +
> > +static void mtk_fd_dev_v4l2_release(struct mtk_fd_dev *fd)
> > +{
> > +	v4l2_m2m_unregister_media_controller(fd->m2m_dev);
> > +	video_unregister_device(&fd->vfd);
> > +	video_device_release(&fd->vfd);
> > +	media_device_cleanup(&fd->mdev);
> > +	v4l2_m2m_release(fd->m2m_dev);
> > +	v4l2_device_unregister(&fd->v4l2_dev);
> > +}
> > +
> > +static irqreturn_t mtk_fd_irq(int irq, void *data)
> > +{
> > +	struct mtk_fd_dev *fd = (struct mtk_fd_dev *)data;
> > +
> > +	/* must read this register otherwise HW will keep sending irq */
> > +	readl(fd->fd_base + MTK_FD_REG_OFFSET_INT_VAL);
> > +	fd->output->number = readl(fd->fd_base + MTK_FD_REG_OFFSET_RESULT);
> > +	dev_dbg(fd->dev, "mtk_fd_face_num:%d\n", fd->output->number);
> > +
> > +	mtk_fd_hw_done(fd, VB2_BUF_STATE_DONE);
> > +	return IRQ_HANDLED;
> > +}
> > +
> > +static int mtk_fd_hw_get_scp_mem(struct mtk_fd_dev *fd)
> > +{
> > +	struct device *dev = fd->dev;
> > +	dma_addr_t addr;
> > +	void *ptr;
> > +	u32 ret;
> > +
> > +	/*
> > +	 * Allocate coherent reserved memory for SCP firmware usage.
> > +	 * The size of SCP composer's memory is fixed to 0x100000
> > +	 * for the requirement of firmware.
> > +	 */
> > +	ptr = dma_alloc_coherent(&fd->scp_pdev->dev,
> > +				 MTK_FD_HW_WORK_BUF_SIZE, &addr, GFP_KERNEL);
> > +	if (!ptr)
> > +		return -ENOMEM;
> > +
> > +	fd->scp_mem.scp_addr = addr;
> > +	fd->scp_mem_virt_addr = ptr;
> > +	dev_info(dev, "scp addr:%pad va:%pK\n", &addr, ptr);
> 
> These addresses are nothing a user should be concerned about, so please
> don't use the _info level here. If you think this is an important debugging
> information, please make it dev_dbg(). Otherwise, please just remove.
> 
Removed.

> > +
> > +	/*
> > +	 * This reserved memory is also be used by FD HW.
> > +	 * Need to get iova address for FD DMA.
> > +	 */
> > +	addr = dma_map_resource(dev, addr, MTK_FD_HW_WORK_BUF_SIZE,
> > +				DMA_TO_DEVICE, DMA_ATTR_SKIP_CPU_SYNC);
> 
> Note that the second argument to dma_map_resource() is phys_addr_t, but the
> code above passes a DMA address. This works only by luck, because both
> physical and SCP DMA address space have the same addresses. To be fully
> correct, dma_map_single() needs to be used, with the kernel virtual address
> passed to it, but currently it doesn't handle the memory from a reserved
> pool. Thus, we can only keep the hack as is, but please add a comment
> explaining it, e.g.
> 
> /*
>  * FIXME: Assume SCP DMA and physical addresses are the same until
>  * dma_map_single() is fixed to handle reserved memory allocations.
>  */
> 
Ok, I've insert it above the comments there.
as following:

/*
 * FIXME: Assume SCP DMA and physical addresses are the same until
 * dma_map_single() is fixed to handle reserved memory allocations.
 *
 * This reserved memory will also be used by FD HW.
 * Need to get iova address for FD DMA.
 */

> > +	if (dma_mapping_error(dev, addr)) {
> > +		dev_err(dev, "Failed to map scp iova\n");
> > +		ret = -ENOMEM;
> > +		goto fail_free_mem;
> > +	}
> > +	fd->scp_mem.dma_addr = addr;
> > +	dev_info(dev, "scp iova addr:%pad\n", &addr);
> 
> Ditto.
fixed.

> 
> Best regards,
> Tomasz

Thanks and best regards,
Jerry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
