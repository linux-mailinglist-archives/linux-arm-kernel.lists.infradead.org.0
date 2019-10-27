Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B2FE69CF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 22:57:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBfA1LY9ssQZ3sybwZ15mxH48n76qfVFQ3tGQZf4Wu4=; b=iB/4t+m2L4yGKk
	Buhi3krr8i5ZwGoJMJrWlnthxgVJWQWJpwcZNc6P7k84p1DUnLU9mz/qa6qj7k7ppwjr1yOgM96SD
	pHSydSggdqF6RInZIq/mLwlP0l6omfKXgsOq6Z+0Ugto8ztkS4dxEKjqWd56vnK7zzSHeq1iUVEjV
	rSwYdqqStQOaN+Ph29nCLWt9FP5A7MTbjE4bi5OcfcSvY4K//vvvwS1cPC3vLVL0PBZWy8bQOTI5M
	Po64BwzAbkfnlo0p6bwd4MGoyTclIpEjniEcieLosb507o/lAJtY+UNRIE6OwA6rXSkldBNM4Hitd
	P9FlKnt5FtaDv16Ww53Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOqX6-0005oS-Dv; Sun, 27 Oct 2019 21:57:08 +0000
Received: from mailoutvs51.siol.net ([185.57.226.242] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOqWv-0005mm-EN
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 21:56:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 5A14A522815;
 Sun, 27 Oct 2019 22:56:47 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id HL8mW0m7ZVtU; Sun, 27 Oct 2019 22:56:47 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id DE48C522841;
 Sun, 27 Oct 2019 22:56:46 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 8E24B52282D;
 Sun, 27 Oct 2019 22:56:45 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: linux-sunxi@googlegroups.com
Subject: Re: [linux-sunxi] [PATCH 4/4] media: cedrus: hevc: Add support for
 multiple slices
Date: Sun, 27 Oct 2019 22:56:45 +0100
Message-ID: <3093393.es1Za2YUDY@jernej-laptop>
In-Reply-To: <20191026174703.1120023-5-jernej.skrabec@siol.net>
References: <20191026174703.1120023-1-jernej.skrabec@siol.net>
 <20191026174703.1120023-5-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_145657_662119_B0910C34 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.242 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, boris.brezillon@collabora.com,
 p.zabel@pengutronix.de, hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne sobota, 26. oktober 2019 ob 19:47:03 CET je Jernej Skrabec napisal(a):
> Now that segment address is available, support for multi-slice frames
> can be easily added.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  .../staging/media/sunxi/cedrus/cedrus_h265.c  | 21 +++++++++++++++----
>  .../staging/media/sunxi/cedrus/cedrus_video.c |  1 +
>  2 files changed, 18 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c index
> 888bfd5ca224..e909adf6f30f 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> @@ -366,15 +366,28 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
>  	reg = VE_DEC_H265_BITS_END_ADDR_BASE(src_buf_end_addr);
>  	cedrus_write(dev, VE_DEC_H265_BITS_END_ADDR, reg);
> 
> -	/* Coding tree block address: start at the beginning. */
> +	/* Coding tree block address */
>  	reg = VE_DEC_H265_DEC_CTB_ADDR_X(0) | 
VE_DEC_H265_DEC_CTB_ADDR_Y(0);
> +	if (!ctx->fh.m2m_ctx->new_frame) {

There is no reason why would this block be guarded by above if clause. I'll 
remove it in next revision. However, it uncovered a bug where new_frame is set 
to true for every slice. I have to debug this further. At this point I can't 
say for sure if it is in kernel or in ffmpeg.

Best regards,
Jernej

> +		unsigned int log2_max_luma_coding_block_size =
> +			sps->log2_min_luma_coding_block_size_minus3 + 
3 +
> +			sps->log2_diff_max_min_luma_coding_block_size;
> +		unsigned int ctb_size_luma =
> +			1UL << log2_max_luma_coding_block_size;
> +		unsigned int width_in_ctb_luma =
> +			DIV_ROUND_UP(sps->pic_width_in_luma_samples, 
ctb_size_luma);
> +
> +		reg = VE_DEC_H265_DEC_CTB_ADDR_X(slice_params-
>slice_segment_addr %
> width_in_ctb_luma); +		reg |=
> VE_DEC_H265_DEC_CTB_ADDR_Y(slice_params->slice_segment_addr /
> width_in_ctb_luma); +	}
>  	cedrus_write(dev, VE_DEC_H265_DEC_CTB_ADDR, reg);
> 
>  	cedrus_write(dev, VE_DEC_H265_TILE_START_CTB, 0);
>  	cedrus_write(dev, VE_DEC_H265_TILE_END_CTB, 0);
> 
>  	/* Clear the number of correctly-decoded coding tree blocks. */
> -	cedrus_write(dev, VE_DEC_H265_DEC_CTB_NUM, 0);
> +	if (ctx->fh.m2m_ctx->new_frame)
> +		cedrus_write(dev, VE_DEC_H265_DEC_CTB_NUM, 0);
> 
>  	/* Initialize bitstream access. */
>  	cedrus_write(dev, VE_DEC_H265_TRIGGER, 
VE_DEC_H265_TRIGGER_INIT_SWDEC);
> @@ -523,8 +536,8 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
>  				
V4L2_HEVC_PPS_FLAG_DEPENDENT_SLICE_SEGMENT,
>  				pps->flags);
> 
> -	/* FIXME: For multi-slice support. */
> -	reg |= 
VE_DEC_H265_DEC_SLICE_HDR_INFO0_FLAG_FIRST_SLICE_SEGMENT_IN_PIC;
> +	if (ctx->fh.m2m_ctx->new_frame)
> +		reg |= 
VE_DEC_H265_DEC_SLICE_HDR_INFO0_FLAG_FIRST_SLICE_SEGMENT_IN_PIC;
> 
>  	cedrus_write(dev, VE_DEC_H265_DEC_SLICE_HDR_INFO0, reg);
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> b/drivers/staging/media/sunxi/cedrus/cedrus_video.c index
> 15cf1f10221b..497b1199d3fe 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -311,6 +311,7 @@ static int cedrus_s_fmt_vid_out(struct file *file, void
> *priv,
> 
>  	switch (ctx->src_fmt.pixelformat) {
>  	case V4L2_PIX_FMT_H264_SLICE:
> +	case V4L2_PIX_FMT_HEVC_SLICE:
>  		vq->subsystem_flags |=
>  			VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;
>  		break;





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
