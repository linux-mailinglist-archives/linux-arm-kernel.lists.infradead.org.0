Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C858C89FF1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 15:43:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=meJ9ftChbg3CpWAm9VKFy49K9ff8vxX5dvQmQlo6LA8=; b=r908NtZMHwwR1p
	3SDddzyYUORqBFZCYTg/bcMpT1p1VTBEwTMNbTcQGJzUtOT9JWZXWUBYqU0Rl1K45w0qs5ax2ka3U
	vdW/EMSGi63/zjPrC5oRSISuRV4J3ZWC3Ak6YsSi6kIKjTz+wMaSCtTY4zkuaehPOsLOzowgUertW
	0j8HYQROUi6FeXYDC8uj2NA9YQ5c/RTJa4Kbdi917tmxrfUKwXWi7Za/LCI+BkBVsBs3Y18n+c+r6
	8G7dW3MbNOvjWfAKCjPqGN3xFdxlzCPOpOawGa96Ruikxo13X/1pLWiqk0TpTDCVw5Nhcw+CYdOPX
	i5y8qCi1eNvyP7WY+ZnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxAbK-0003uF-Hz; Mon, 12 Aug 2019 13:43:06 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxAb8-0003ss-9Q
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 13:42:55 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 4686C28B0CA
Message-ID: <9374a16516e61978d58bff4d8721bff2f511c5c9.camel@collabora.com>
Subject: Re: [PATCH 4/7] media: cedrus: Remove dst_bufs from context
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>, paul.kocialkowski@bootlin.com,
 maxime.ripard@bootlin.com
Date: Mon, 12 Aug 2019 10:42:44 -0300
In-Reply-To: <20190530211516.1891-5-jernej.skrabec@siol.net>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-5-jernej.skrabec@siol.net>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_064254_462765_6FAA28E4 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-05-30 at 23:15 +0200, Jernej Skrabec wrote:
> This array is just duplicated capture buffer queue. Remove it and adjust
> code to look into capture buffer queue instead.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  4 +---
>  .../staging/media/sunxi/cedrus/cedrus_h264.c  |  4 ++--
>  .../staging/media/sunxi/cedrus/cedrus_video.c | 22 -------------------
>  3 files changed, 3 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
> index 3f476d0fd981..d8e6777e5e27 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> @@ -100,8 +100,6 @@ struct cedrus_ctx {
>  	struct v4l2_ctrl_handler	hdl;
>  	struct v4l2_ctrl		**ctrls;
>  
> -	struct vb2_buffer		*dst_bufs[VIDEO_MAX_FRAME];
> -
>  	union {
>  		struct {
>  			void		*mv_col_buf;
> @@ -187,7 +185,7 @@ static inline dma_addr_t cedrus_dst_buf_addr(struct cedrus_ctx *ctx,
>  	if (index < 0)
>  		return 0;
>  
> -	buf = ctx->dst_bufs[index];
> +	buf = ctx->fh.m2m_ctx->cap_q_ctx.q.bufs[index];

I think you can use v4l2_m2m_get_dst_vq() to access the queue,
and vb2_get_buffer() to access buffers in a vb2 queue.

>  	return buf ? cedrus_buf_addr(buf, &ctx->dst_fmt, plane) : 0;
>  }
>  
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> index d0ee3f90ff46..b2290f98d81a 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> @@ -119,7 +119,7 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
>  		if (buf_idx < 0)
>  			continue;
>  
> -		cedrus_buf = vb2_to_cedrus_buffer(ctx->dst_bufs[buf_idx]);
> +		cedrus_buf = vb2_to_cedrus_buffer(cap_q->bufs[buf_idx]);

Ditto about vb2_get_buffer.

>  		position = cedrus_buf->codec.h264.position;
>  		used_dpbs |= BIT(position);
>  
> @@ -194,7 +194,7 @@ static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
>  		if (buf_idx < 0)
>  			continue;
>  
> -		ref_buf = to_vb2_v4l2_buffer(ctx->dst_bufs[buf_idx]);
> +		ref_buf = to_vb2_v4l2_buffer(cap_q->bufs[buf_idx]);

Ditto about vb2_get_buffer.

With those changes:

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>

Thanks,
Ezequiel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
