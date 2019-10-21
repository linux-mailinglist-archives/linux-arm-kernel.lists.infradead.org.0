Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A92DE7FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=958TwkamhVXeKKW96Fhbq/0Hd6ysgWhgMf2IV+Aj7bY=; b=HXP71/I5O2RaBj
	JhPpvRjmhKMU/SNoUJlcuC1+fSHxoQWzRGYFPNpcxtOp/5MaSSlWTGp75gzOtdfGEFfJegNc9m4XF
	IZ/kFRcT8qgM68VPfInCFGqpRuq6GOIa5mUvVizI9YrQjX5DTVgnJ+uG4JepBw75Gwbd614/kMQI/
	6/kzBRWVcUZ+WiVQm+6HB3CzSxAlp3McPAoXZPvI2BgyEqR+P8dIBdBiDsGPjn6diRNDATTyXcLQO
	GVDEi18oj8KgcyvR1EQ+vwG5a9kVHHn0M7AGfGXnDEY0Q2YEv0zLsQDaTssrMUiS6gOuLFhLf4fzD
	lEypB3C8xSlmEtz9zJAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTuW-0000Ex-S9; Mon, 21 Oct 2019 09:23:32 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTuJ-0000Dc-H7; Mon, 21 Oct 2019 09:23:22 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id MTu4iTW0no1ZhMTu7iLJFS; Mon, 21 Oct 2019 11:23:12 +0200
Subject: Re: [PATCH v4 5/5] media: platform: Add jpeg dec/enc feature
To: Xia Jiang <xia.jiang@mediatek.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Rick Chang <rick.chang@mediatek.com>
References: <20191017084033.28299-1-xia.jiang@mediatek.com>
 <20191017084033.28299-6-xia.jiang@mediatek.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <a2e66e05-3248-de84-85d5-b0c7e5a080f1@xs4all.nl>
Date: Mon, 21 Oct 2019 11:23:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191017084033.28299-6-xia.jiang@mediatek.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfBX4zeKC12ZrwQYD4Gu8nAfraoHeArJMkY6+EytbDESkYZwL6hzOhZZRpN2YyL28a5MldlJJB6nzlYnXGUNRb7ceJWpA4Bk5MBEjoV8Cs0hst2h/Odk1
 8Fs5shOYHZeh9crSahooaj6fyj5giPN1NR0ua8fsM4j2SJwGbq+Z04izzsDSeA9G75THtWPR9wZ9xuodA8Y2K4GP4qxRLA+d8KK2hgpq3aA5vlcL5dFFcnOT
 5RhOUJVG8LVKln4G80UITRtvYlVx7SpFsUlTYiJKhM19UwVwyPF34gQJrolTJ6eOA14NxOfnbyLF/xUI3437ir1cBaWCO+vp953B2MAGjD3hIjLd4289ABGQ
 e9T0QwmXqzaHf0SF/TvGAoipbEIARzMmlgXJ0r6y7hMuhb6P+Hcl/KN00Il/jKpSQIJG0sQ5zwwQ+qsWEuwf9MORMov7slZNwpxy67OpF1ULkJA+Z1rSroKH
 vuq5UPBjFs4R/60nTOtD7vGNdLbvxZAoiYePq5WrR4REefK/dV+1OGtFMN/Dw76g19gVwBucg7QJatLmhPQbzxGcvj7gMZIXiioAr4k63NMzQA2W22x1W108
 N0G/gIO4wEFQa3Mwgl8SjAifKowzwWwY7Cud+zqZshZM5NxoBhK/2pMjOMN5Cq7k7I4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_022319_721368_5C0FBBEB 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-mediatek@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xia,

Some comments about the selection code:

On 10/17/19 10:40 AM, Xia Jiang wrote:
> Add mtk jpeg encode v4l2 driver based on jpeg decode, because that jpeg
> decode and encode have great similarities with function operation.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v4: split mtk_jpeg_try_fmt_mplane() to two functions, one for encoder,
>     one for decoder.
>     split mtk_jpeg_set_default_params() to two functions, one for
>     encoder, one for decoder.
>     add cropping support for encoder in g/s_selection ioctls.
>     change exif mode support by using V4L2_JPEG_ACTIVE_MARKER_APP1.
>     change MTK_JPEG_MAX_WIDTH/MTK_JPEG_MAX_HEIGH from 8192 to 65535 by
>     specification.
>     move width shifting operation behind aligning operation in
>     mtk_jpeg_try_enc_fmt_mplane() for bug fix.
>     fix user abuseing data_offset issue for DMABUF in
>     mtk_jpeg_set_enc_src().
>     fix kbuild warings: change MTK_JPEG_MIN_HEIGHT/MTK_JPEG_MAX_HEIGHT
>                         and MTK_JPEG_MIN_WIDTH/MTK_JPEG_MAX_WIDTH from
>                         'int' type to 'unsigned int' type.
>                         fix msleadingly indented of 'else'.
> 
> v3: delete Change-Id.
>     only test once handler->error after the last v4l2_ctrl_new_std().
>     seperate changes of v4l2-ctrls.c and v4l2-controls.h to new patch.
> 
> v2: fix compliance test fail, check created buffer size in driver.
> ---
>  drivers/media/platform/mtk-jpeg/Makefile      |   5 +-
>  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 731 +++++++++++++++---
>  .../media/platform/mtk-jpeg/mtk_jpeg_core.h   | 123 ++-
>  .../media/platform/mtk-jpeg/mtk_jpeg_dec_hw.h |   7 +-
>  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c | 175 +++++
>  .../media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h |  60 ++
>  .../platform/mtk-jpeg/mtk_jpeg_enc_reg.h      |  49 ++
>  7 files changed, 1004 insertions(+), 146 deletions(-)
>  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c
>  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.h
>  create mode 100644 drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_reg.h
> 

<snip>

> @@ -455,11 +679,19 @@ static int mtk_jpeg_g_selection(struct file *file, void *priv,
>  				struct v4l2_selection *s)
>  {
>  	struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(priv);
> +	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
>  
> -	if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
> +	if (jpeg->mode == MTK_JPEG_ENC && s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
> +		return -EINVAL;
> +
> +	if (jpeg->mode == MTK_JPEG_DEC &&
> +	    s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
>  		return -EINVAL;
>  
>  	switch (s->target) {
> +	case V4L2_SEL_TGT_CROP:
> +	case V4L2_SEL_TGT_CROP_BOUNDS:
> +	case V4L2_SEL_TGT_CROP_DEFAULT:

This is wrong...

>  	case V4L2_SEL_TGT_COMPOSE:
>  	case V4L2_SEL_TGT_COMPOSE_DEFAULT:
>  		s->r.width = ctx->out_q.w;
> @@ -484,11 +716,17 @@ static int mtk_jpeg_s_selection(struct file *file, void *priv,
>  				struct v4l2_selection *s)
>  {
>  	struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(priv);
> +	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
>  
> -	if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
> +	if (jpeg->mode == MTK_JPEG_ENC && s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
> +		return -EINVAL;
> +
> +	if (jpeg->mode == MTK_JPEG_DEC &&
> +	    s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
>  		return -EINVAL;
>  
>  	switch (s->target) {
> +	case V4L2_SEL_TGT_CROP:

...and so is this.

The decoder only supports COMPOSE, the encoder only supports CROP.

This signals support for both cropping and composition for both encoder and
decoder, and that's wrong. You can see this in the compliance output as well:
it says that both cropping and composition are 'OK', meaning that both features
are implemented.

It also claims that the decoder supports scaling. Is that correct? Is there a
scaler in the JPEG decoder? Usually codecs do not have a scaler.

Regards,

	Hans

>  	case V4L2_SEL_TGT_COMPOSE:
>  		s->r.left = 0;
>  		s->r.top = 0;
> @@ -658,10 +896,92 @@ static void mtk_jpeg_set_queue_data(struct mtk_jpeg_ctx *ctx,
>  		 param->dec_w, param->dec_h);
>  }



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
