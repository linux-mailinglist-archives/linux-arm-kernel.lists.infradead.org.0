Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F381DD2CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 18:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvWhUc/dXvFMvF4Yh5BIPYEhyuQ3nwRrF6S3vacovwY=; b=fqdzoaIkoacmq+
	B76o1gxVL5sXdCV6/Xy+wKvZhvfP9xT2P/oXpDbpfFEGpDUXHh+bkz+c3NLob62dQGoJOmdY0mgBE
	FmTIUo8JUEs6hKeThLMNK6f9TZp+hSXMKvtaIutSnQtJvN8+7uECb1hxiNAkwboKv4ugpGsFKPwB7
	Cvf80oAl3uquGsXlL7GnVLdu13i1rt19kHmS4uPkv+XXWG0lDOjA8Fd5l8fb9wMvoYDyHi9wP1EmT
	KQbhEQYtO50AhImxNIurS/3tMmX/lNPxBpwGmk9Q4GbmjraB3IoJhw3GfClEKFyRNjuZ4y5U+IiWI
	JivaKrI+BkihkDSim9UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnkx-0001Xf-29; Thu, 21 May 2020 16:09:15 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnkk-0001Vq-FP
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 16:09:04 +0000
Received: by mail-wr1-x442.google.com with SMTP id w7so7141866wre.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 09:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RaC8loFLlcSNg14GKqnFZxfWstB46ZrSBfPhwjQfG8c=;
 b=bCXDsCgYV0CSrRRnuf5+7lTo0NBYDtuebWPY6hj3INHvJK561Jp7QFDckmYmGUfS/t
 DhG4y89ElZE34sqQC9yQ78tUvgI7ZIpCs1MBy0bgzwhLAr3obg12vh/jJjPL9xpNK7n3
 pJwSKDTCDokUZ+6mGVdJ2EnB4VspWLFJ4gotY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RaC8loFLlcSNg14GKqnFZxfWstB46ZrSBfPhwjQfG8c=;
 b=hyI9dXpka0d0DCEkceRitxkgTwbKaPK7xqyVZDz+fevEdOEJCJqBh+FRzFT2Q5RdZf
 lsKT8wgZizLXFb6g/XCKEZE24nr3b8APVZOSXpx1vdb27ov769v9o0yfg5f7I35kxtL0
 aiXkZgYH5D1ku11y+Qny1wVga4JcsObceZwfVS8zkNcZ+AXz0S2dmRuRM7lBw0bXBFz8
 9qc91G9DEhBny0Ie/FDEVNMSxi0SGBhb1qXdZfudVmaTz7CnDB6AXcs+dAU9P+2kq6hD
 AqDK5HKz8jWK6UbaFLT3RbMt2fJdSWrKQihg4lWSTXF35z7asfbungneEPkXiZAEtW3I
 vSLg==
X-Gm-Message-State: AOAM530XxFMBw8vt7x7P1QyfbG+3b1NyfF+RHF1Ke25dakw14KmkgMa1
 Pitg7z3I2ahJhn1R3m5+dP80QoQ2FijCjg==
X-Google-Smtp-Source: ABdhPJxofDwgei5nJILFlmeUVYT5sPEg4Co9C6L/QHzh+MWc0ciLfVXyWKXT+NreFg41NQoX52BzBQ==
X-Received: by 2002:adf:d4c6:: with SMTP id w6mr9583901wrk.92.1590077340874;
 Thu, 21 May 2020 09:09:00 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id c143sm7134776wmd.43.2020.05.21.09.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 09:09:00 -0700 (PDT)
Date: Thu, 21 May 2020 16:08:58 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH v8 14/14] media: platform: Add jpeg dec/enc feature
Message-ID: <20200521160858.GL209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-15-xia.jiang@mediatek.com>
 <b62b303c-10cd-fdf6-52fa-90d63124487a@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b62b303c-10cd-fdf6-52fa-90d63124487a@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_090902_578623_ECAE49FE 
X-CRM114-Status: GOOD (  26.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Xia Jiang <xia.jiang@mediatek.com>, devicetree@vger.kernel.org,
 mojahsu@chromium.org, srv_heupstream@mediatek.com,
 Rick Chang <rick.chang@mediatek.com>, senozhatsky@chromium.org,
 drinkcat@chromium.org, linux-kernel@vger.kernel.org,
 maoguang.meng@mediatek.com, Matthias Brugger <matthias.bgg@gmail.com>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 11:04:19AM +0200, Hans Verkuil wrote:
> On 03/04/2020 11:40, Xia Jiang wrote:
> > Add mtk jpeg encode v4l2 driver based on jpeg decode, because that jpeg
> > decode and encode have great similarities with function operation.
> > 
> > Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> > ---
> > v8:jpeg encoder and decoder use separate callbacks instead of repeating
> >    the if/else in every callback.
> >    improve vidioc_try_fmt() implementation that can be shared by jpeg
> >    encoder and decoder.
> >    fix the bug of jpeg encoder s_selection implementation.
> >    cancel the state of the jpeg encoder.
> >    improve jpeg encoder and decoder set default params flow.
> >    put the clock names and other datas in a match_data struct.
> >    fix the bug of geting correctly quality value.
> >    do the all the bits' settings of one register in one function.
> >    move the code of mtk_jpeg_enc_reg.h to mtk_jpeg_enc_hw.h and delete
> >    mtk_jpeg_enc_reg.h.
> > 
> > v7: reverse spin lock and unlock operation in device run function for
> >     multi-instance.
> > 
> > v6: add space to arounding '+'.
> >     alignment 'struct mtk_jpeg_fmt *fmt' match open parenthesis.
> >     change 'mtk_jpeg_enc_set_encFormat' to 'mtk_jpeg_enc_set_enc_format'.
> >     make 'mtk_jpeg_ctrls_setup' to static prototype.
> >     delete unused variables 'jpeg'/'align_h'/'align_w'/'flags'.
> >     initialize 'yuv_format'/'enc_quality' variables.
> >     
> > v5: support crop for encoder and compose for decoder in s_selection and
> >     g_selection function.
> >     use clamp() to replace mtk_jpeg_bound_align_image() and round_up()
> >     to replace mtk_jpeg_align().
> >     delete jpeg_enc_param/mtk_jpeg_enc_param structure and
> >     mtk_jpeg_set_param(), program the registers directly based on
> >     the original V4L2 values.
> >     move macro definition about hw to mtk_jpeg_enc_reg.h.
> >     delete unnecessary V4L2 logs in driver.
> >     cancel spin lock and unlock operation in deviec run function.
> >     change jpeg enc register offset hex numberals from upercase to lowercase.
> > 
> > v4: split mtk_jpeg_try_fmt_mplane() to two functions, one for encoder,                                                      
> >     one for decoder.                                                          
> >     split mtk_jpeg_set_default_params() to two functions, one for                                                          
> >     encoder, one for decoder.                                                          
> >     add cropping support for encoder in g/s_selection ioctls.                                                          
> >     change exif mode support by using V4L2_JPEG_ACTIVE_MARKER_APP1.                                                         
> >     change MTK_JPEG_MAX_WIDTH/MTK_JPEG_MAX_HEIGH from 8192 to 65535 by                                                      
> >     specification.                                                          
> >     move width shifting operation behind aligning operation in                                                          
> >     mtk_jpeg_try_enc_fmt_mplane() for bug fix.                                                          
> >     fix user abuseing data_offset issue for DMABUF in                                                          
> >     mtk_jpeg_set_enc_src().                                                          
> >     fix kbuild warings: change MTK_JPEG_MIN_HEIGHT/MTK_JPEG_MAX_HEIGHT                                                      
> >                         and MTK_JPEG_MIN_WIDTH/MTK_JPEG_MAX_WIDTH from                                                      
> >                         'int' type to 'unsigned int' type.                                                          
> >                         fix msleadingly indented of 'else'.                                                                                                              
> > v3: delete Change-Id.                                                          
> >     only test once handler->error after the last v4l2_ctrl_new_std().                                                       
> >     seperate changes of v4l2-ctrls.c and v4l2-controls.h to new patch.                                                      
> > v2: fix compliance test fail, check created buffer size in driver.
> > ---
> >  drivers/media/platform/mtk-jpeg/Makefile      |    5 +-
> >  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 1038 +++++++++++++----
> >  .../media/platform/mtk-jpeg/mtk_jpeg_core.h   |   51 +-
> >  .../media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h |    7 +-
> >  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c |  193 +++
> >  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h |  123 ++
> >  6 files changed, 1188 insertions(+), 229 deletions(-)
> >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
> >  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
> > 
> > diff --git a/drivers/media/platform/mtk-jpeg/Makefile b/drivers/media/platform/mtk-jpeg/Makefile
> > index 48516dcf96e6..76c33aad0f3f 100644
> > --- a/drivers/media/platform/mtk-jpeg/Makefile
> > +++ b/drivers/media/platform/mtk-jpeg/Makefile
> > @@ -1,3 +1,6 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> > -mtk_jpeg-objs := mtk_jpeg_core.o mtk_jpeg_dec_hw.o mtk_jpeg_dec_parse.o
> > +mtk_jpeg-objs := mtk_jpeg_core.o \
> > +		 mtk_jpeg_dec_hw.o \
> > +		 mtk_jpeg_dec_parse.o \
> > +		 mtk_jpeg_enc_hw.o
> >  obj-$(CONFIG_VIDEO_MEDIATEK_JPEG) += mtk_jpeg.o
> > diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > index 77a95185584c..18a759ce2c46 100644
> > --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> > @@ -3,6 +3,7 @@
> >   * Copyright (c) 2016 MediaTek Inc.
> >   * Author: Ming Hsiu Tsai <minghsiu.tsai@mediatek.com>
> >   *         Rick Chang <rick.chang@mediatek.com>
> > + *         Xia Jiang <xia.jiang@mediatek.com>
> >   */
> >  
> >  #include <linux/clk.h>
> > @@ -23,11 +24,60 @@
> >  #include <media/videobuf2-dma-contig.h>
> >  #include <soc/mediatek/smi.h>
> >  
> > +#include "mtk_jpeg_enc_hw.h"
> >  #include "mtk_jpeg_dec_hw.h"
> >  #include "mtk_jpeg_core.h"
> >  #include "mtk_jpeg_dec_parse.h"
> >  
> > -static struct mtk_jpeg_fmt mtk_jpeg_formats[] = {
> > +static struct mtk_jpeg_fmt mtk_jpeg_enc_formats[] = {
> > +	{
> > +		.fourcc		= V4L2_PIX_FMT_JPEG,
> > +		.colplanes	= 1,
> > +		.flags		= MTK_JPEG_FMT_FLAG_ENC_CAPTURE,
> > +	},
> > +	{
> > +		.fourcc		= V4L2_PIX_FMT_NV12M,
> > +		.hw_format	= JPEG_ENC_YUV_FORMAT_NV12,
> > +		.h_sample	= {4, 4},
> > +		.v_sample	= {4, 2},
> > +		.colplanes	= 2,
> > +		.h_align	= 4,
> > +		.v_align	= 4,
> > +		.flags		= MTK_JPEG_FMT_FLAG_ENC_OUTPUT,
> > +	},
> > +	{
> > +		.fourcc		= V4L2_PIX_FMT_NV21M,
> > +		.hw_format	= JEPG_ENC_YUV_FORMAT_NV21,
> > +		.h_sample	= {4, 4},
> > +		.v_sample	= {4, 2},
> > +		.colplanes	= 2,
> > +		.h_align	= 4,
> > +		.v_align	= 4,
> > +		.flags		= MTK_JPEG_FMT_FLAG_ENC_OUTPUT,
> > +	},
> > +	{
> > +		.fourcc		= V4L2_PIX_FMT_YUYV,
> > +		.hw_format	= JPEG_ENC_YUV_FORMAT_YUYV,
> > +		.h_sample	= {8},
> > +		.v_sample	= {4},
> > +		.colplanes	= 1,
> > +		.h_align	= 5,
> > +		.v_align	= 3,
> > +		.flags		= MTK_JPEG_FMT_FLAG_ENC_OUTPUT,
> > +	},
> > +	{
> > +		.fourcc		= V4L2_PIX_FMT_YVYU,
> > +		.hw_format	= JPEG_ENC_YUV_FORMAT_YVYU,
> > +		.h_sample	= {8},
> > +		.v_sample	= {4},
> > +		.colplanes	= 1,
> > +		.h_align	= 5,
> > +		.v_align	= 3,
> > +		.flags		= MTK_JPEG_FMT_FLAG_ENC_OUTPUT,
> > +	},
> > +};
> > +
> > +static struct mtk_jpeg_fmt mtk_jpeg_dec_formats[] = {
> >  	{
> >  		.fourcc		= V4L2_PIX_FMT_JPEG,
> >  		.colplanes	= 1,
> > @@ -53,7 +103,8 @@ static struct mtk_jpeg_fmt mtk_jpeg_formats[] = {
> >  	},
> >  };
> >  
> > -#define MTK_JPEG_NUM_FORMATS ARRAY_SIZE(mtk_jpeg_formats)
> > +#define MTK_JPEG_ENC_NUM_FORMATS ARRAY_SIZE(mtk_jpeg_enc_formats)
> > +#define MTK_JPEG_DEC_NUM_FORMATS ARRAY_SIZE(mtk_jpeg_dec_formats)
> >  
> >  enum {
> >  	MTK_JPEG_BUF_FLAGS_INIT			= 0,
> > @@ -70,6 +121,11 @@ struct mtk_jpeg_src_buf {
> >  static int debug;
> >  module_param(debug, int, 0644);
> >  
> > +static inline struct mtk_jpeg_ctx *ctrl_to_ctx(struct v4l2_ctrl *ctrl)
> > +{
> > +	return container_of(ctrl->handler, struct mtk_jpeg_ctx, ctrl_hdl);
> > +}
> > +
> >  static inline struct mtk_jpeg_ctx *mtk_jpeg_fh_to_ctx(struct v4l2_fh *fh)
> >  {
> >  	return container_of(fh, struct mtk_jpeg_ctx, fh);
> > @@ -81,12 +137,25 @@ static inline struct mtk_jpeg_src_buf *mtk_jpeg_vb2_to_srcbuf(
> >  	return container_of(to_vb2_v4l2_buffer(vb), struct mtk_jpeg_src_buf, b);
> >  }
> >  
> > -static int mtk_jpeg_querycap(struct file *file, void *priv,
> > -			     struct v4l2_capability *cap)
> > +static int mtk_jpeg_enc_querycap(struct file *file, void *priv,
> > +				 struct v4l2_capability *cap)
> > +{
> > +	struct mtk_jpeg_dev *jpeg = video_drvdata(file);
> > +
> > +	strscpy(cap->driver, MTK_JPEG_NAME, sizeof(cap->driver));
> > +	strscpy(cap->card, MTK_JPEG_NAME " encoder", sizeof(cap->card));
> > +	snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
> > +		 dev_name(jpeg->dev));
> > +
> > +	return 0;
> > +}
> > +
> > +static int mtk_jpeg_dec_querycap(struct file *file, void *priv,
> > +				 struct v4l2_capability *cap)
> >  {
> >  	struct mtk_jpeg_dev *jpeg = video_drvdata(file);
> >  
> > -	strscpy(cap->driver, MTK_JPEG_NAME " decoder", sizeof(cap->driver));
> > +	strscpy(cap->driver, MTK_JPEG_NAME, sizeof(cap->driver));
> >  	strscpy(cap->card, MTK_JPEG_NAME " decoder", sizeof(cap->card));
> >  	snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
> >  		 dev_name(jpeg->dev));
> > @@ -94,6 +163,54 @@ static int mtk_jpeg_querycap(struct file *file, void *priv,
> >  	return 0;
> >  }
> >  
> > +static int vidioc_jpeg_enc_s_ctrl(struct v4l2_ctrl *ctrl)
> > +{
> > +	struct mtk_jpeg_ctx *ctx = ctrl_to_ctx(ctrl);
> > +
> > +	switch (ctrl->id) {
> > +	case V4L2_CID_JPEG_RESTART_INTERVAL:
> > +		ctx->restart_interval = ctrl->val;
> > +		break;
> > +	case V4L2_CID_JPEG_COMPRESSION_QUALITY:
> > +		ctx->enc_quality = ctrl->val;
> > +		break;
> > +	case V4L2_CID_JPEG_ACTIVE_MARKER:
> > +		ctx->enable_exif = ctrl->val & V4L2_JPEG_ACTIVE_MARKER_APP1 ?
> > +				   true : false;
> > +		break;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct v4l2_ctrl_ops mtk_jpeg_enc_ctrl_ops = {
> > +	.s_ctrl = vidioc_jpeg_enc_s_ctrl,
> > +};
> > +
> > +static int mtk_jpeg_enc_ctrls_setup(struct mtk_jpeg_ctx *ctx)
> > +{
> > +	const struct v4l2_ctrl_ops *ops = &mtk_jpeg_enc_ctrl_ops;
> > +	struct v4l2_ctrl_handler *handler = &ctx->ctrl_hdl;
> > +
> > +	v4l2_ctrl_handler_init(handler, 3);
> > +
> > +	v4l2_ctrl_new_std(handler, ops, V4L2_CID_JPEG_RESTART_INTERVAL, 0, 100,
> > +			  1, 0);
> > +	v4l2_ctrl_new_std(handler, ops, V4L2_CID_JPEG_COMPRESSION_QUALITY, 48,
> > +			  100, 1, 90);
> > +	v4l2_ctrl_new_std(handler, ops, V4L2_CID_JPEG_ACTIVE_MARKER, 0,
> > +			  V4L2_JPEG_ACTIVE_MARKER_APP1, 0, 0);
> > +
> > +	if (handler->error) {
> > +		v4l2_ctrl_handler_free(&ctx->ctrl_hdl);
> > +		return handler->error;
> > +	}
> > +
> > +	v4l2_ctrl_handler_setup(&ctx->ctrl_hdl);
> > +
> > +	return 0;
> > +}
> > +
> >  static int mtk_jpeg_enum_fmt(struct mtk_jpeg_fmt *mtk_jpeg_formats, int n,
> >  			     struct v4l2_fmtdesc *f, u32 type)
> >  {
> > @@ -115,117 +232,105 @@ static int mtk_jpeg_enum_fmt(struct mtk_jpeg_fmt *mtk_jpeg_formats, int n,
> >  	return 0;
> >  }
> >  
> > -static int mtk_jpeg_enum_fmt_vid_cap(struct file *file, void *priv,
> > -				     struct v4l2_fmtdesc *f)
> > +static int mtk_jpeg_enc_enum_fmt_vid_cap(struct file *file, void *priv,
> > +					 struct v4l2_fmtdesc *f)
> >  {
> > -	return mtk_jpeg_enum_fmt(mtk_jpeg_formats, MTK_JPEG_NUM_FORMATS, f,
> > +	return mtk_jpeg_enum_fmt(mtk_jpeg_enc_formats,
> > +				 MTK_JPEG_ENC_NUM_FORMATS, f,
> > +				 MTK_JPEG_FMT_FLAG_ENC_CAPTURE);
> > +}
> > +
> > +static int mtk_jpeg_dec_enum_fmt_vid_cap(struct file *file, void *priv,
> > +					 struct v4l2_fmtdesc *f)
> > +{
> > +	return mtk_jpeg_enum_fmt(mtk_jpeg_dec_formats,
> > +				 MTK_JPEG_DEC_NUM_FORMATS, f,
> >  				 MTK_JPEG_FMT_FLAG_DEC_CAPTURE);
> >  }
> >  
> > -static int mtk_jpeg_enum_fmt_vid_out(struct file *file, void *priv,
> > -				     struct v4l2_fmtdesc *f)
> > +static int mtk_jpeg_enc_enum_fmt_vid_out(struct file *file, void *priv,
> > +					 struct v4l2_fmtdesc *f)
> > +{
> > +	return mtk_jpeg_enum_fmt(mtk_jpeg_enc_formats,
> > +				 MTK_JPEG_ENC_NUM_FORMATS, f,
> > +				 MTK_JPEG_FMT_FLAG_ENC_OUTPUT);
> > +}
> > +
> > +static int mtk_jpeg_dec_enum_fmt_vid_out(struct file *file, void *priv,
> > +					 struct v4l2_fmtdesc *f)
> >  {
> > -	return mtk_jpeg_enum_fmt(mtk_jpeg_formats, MTK_JPEG_NUM_FORMATS, f,
> > -				 MTK_JPEG_FMT_FLAG_DEC_OUTPUT);
> > +	return mtk_jpeg_enum_fmt(mtk_jpeg_dec_formats, MTK_JPEG_DEC_NUM_FORMATS,
> > +				 f, MTK_JPEG_FMT_FLAG_DEC_OUTPUT);
> >  }
> 
> OK, so this patch is very hard to read because there are two independent changes
> taking place:
> 
> 1) rename existing functions/defines/variables with a _dec prefix to prepare
>    for the addition of the encoder feature.
> 
> 2) add the encoder feature.
> 
> Please split up this patch into two parts: one that does the rename and as much of
> the preparation to support both decoder and encoder without changing the
> functionality, and a second one that actually adds the new encoder feature.
> 
> In fact, once that's done it is likely that most of this patch series can be
> merged, even if there are still things that need to be changed for the last
> patch adding the encoder support. I see nothing objectionable in patches 1-10
> and 13. So merging those together with a new rename patch wouldn't be an issue,
> I think.
> 
> In any case, the diffs should be a lot cleaner and easier to review by splitting
> it up like that.

Agreed with Hans. The split will make it much easier to review this one
for me, so I'll wait for it. Thanks in advance.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
