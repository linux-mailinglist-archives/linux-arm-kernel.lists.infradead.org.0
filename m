Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A9F1F677C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 14:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPDlAy1YHYmRgeEoIwC+ABzTP4tGi11vxsc5Xk+Mdlc=; b=Wdq/3uYTVYNi31
	BOD8puHzYjf2N/KhSZ6ePFfHFSLWieAoM8TRUngyy7XS8k7NUcsE05sswlOVPBftOhjfrNGSy+Lle
	f6SslqiJecXbvHuLS92NKj+ru/68Tl4HdxV6OHDLJW4tJb2FSqBrYpvpsLoF/GoE7gUp93J67Ki5r
	FiLcUPigsg2w6j56Se5rEjr+ruPhzt3+r6cVBFuvlSZV1Lu3IWF/YgzABJfc6EXk90mNN2XC6sBQl
	MM5IB2Banb2IM837ajS0EyPaBcJYPFPCdEYJXNmD7uis8IYvt8MnXe/Fnsf/7rbmLbo+tRJWL4QVl
	ZUTwyxY4H4yN4Z+HNXRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjM0c-0005oK-Kk; Thu, 11 Jun 2020 12:08:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjM0O-0005ms-VX
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 12:08:26 +0000
Received: by mail-wm1-x341.google.com with SMTP id y20so4802748wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 05:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=l9/1IkVcWGgYEUiuZWnQIOE6uUjuPXFr0zUWFBzg324=;
 b=kIE33h7Lf2r+tx6hQ/ix/6+/19I3lB8Ldey0jlumYHalyyXnEmqjH3Ykw4mPIPgrcv
 4dkNF36frta7vt0Et8JEAJhO/OWx50XwV4omuBKChHuTgqeA1dZ4TD8tQT9UZmcYYDBD
 iVtWJnbCi9wgpwY0FWz7KnMUpzhRVlUGS2xbU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=l9/1IkVcWGgYEUiuZWnQIOE6uUjuPXFr0zUWFBzg324=;
 b=fORC6zgTBCm7YUb0oQlqnfNq9YrpCDvgXr/2xJhIyvheNQMzTdW1wbh5t6qKuhXSxA
 lKSavIMYhAnhQmSoayKjCNq1EEVm8K22n0gccq1ONjV4tHqLgnkcBg9Ew/BwAtt50PqQ
 KBoNK6X1GF7RSFN66YdqrA9HpIFqX2eAnkmZW5WUgrKN/V08DA/E9d7RFFd7dCwXs676
 vUo6czvZJMD7a0h96Ca6vkBNo3dpCdOcFHEV1GUS/p+s5cr4JOpJ4UOmu+DtPQMwXUfE
 1+VxGhzY7ugUHOyTGKmHGyI+jwmm7cNgEe5xYlhKFIAaOy2YeVQZjU5DZ7FtgtcikZxY
 7bfQ==
X-Gm-Message-State: AOAM533XeQTnfP21csmVj3p0pheJfoMSHzec0wd1ofyu1kS1au9uNZFM
 kj6BU689G/0vVco1hUuCRgfExg==
X-Google-Smtp-Source: ABdhPJw/4tFHFEvAplryswUi9eYGwKBoFlfEALinuD5TCcI+/+xf1W81Wni9oObHj3ji4UEsPf8kKQ==
X-Received: by 2002:a1c:7416:: with SMTP id p22mr7953394wmc.95.1591877303012; 
 Thu, 11 Jun 2020 05:08:23 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id 5sm6618926wrr.5.2020.06.11.05.08.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 05:08:22 -0700 (PDT)
Date: Thu, 11 Jun 2020 12:08:20 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH RESEND v9 05/18] media: platform: Improve power on and
 power off flow
Message-ID: <20200611120820.GC135826@chromium.org>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
 <20200604090553.10861-7-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604090553.10861-7-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_050825_010714_81668132 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org, mojahsu@chromium.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 senozhatsky@chromium.org, linux-kernel@vger.kernel.org,
 maoguang.meng@mediatek.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xia,

On Thu, Jun 04, 2020 at 05:05:40PM +0800, Xia Jiang wrote:
> Call pm_runtime_get_sync() before starting a frame and then
> pm_runtime_put() after completing it. This can save power for the time
> between processing two frames.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v9: use pm_runtime_put() to replace pm_runtime_put_sync()
> ---
>  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 27 +++++--------------
>  1 file changed, 6 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> index 12609ca46fd9..fb624385969e 100644
> --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> @@ -710,23 +710,6 @@ static struct vb2_v4l2_buffer *mtk_jpeg_buf_remove(struct mtk_jpeg_ctx *ctx,
>  		return v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
>  }
>  
> -static int mtk_jpeg_start_streaming(struct vb2_queue *q, unsigned int count)
> -{
> -	struct mtk_jpeg_ctx *ctx = vb2_get_drv_priv(q);
> -	struct vb2_v4l2_buffer *vb;
> -	int ret = 0;
> -
> -	ret = pm_runtime_get_sync(ctx->jpeg->dev);
> -	if (ret < 0)
> -		goto err;
> -
> -	return 0;
> -err:
> -	while ((vb = mtk_jpeg_buf_remove(ctx, q->type)))
> -		v4l2_m2m_buf_done(vb, VB2_BUF_STATE_QUEUED);
> -	return ret;
> -}
> -
>  static void mtk_jpeg_stop_streaming(struct vb2_queue *q)
>  {
>  	struct mtk_jpeg_ctx *ctx = vb2_get_drv_priv(q);
> @@ -751,8 +734,6 @@ static void mtk_jpeg_stop_streaming(struct vb2_queue *q)
>  
>  	while ((vb = mtk_jpeg_buf_remove(ctx, q->type)))
>  		v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
> -
> -	pm_runtime_put_sync(ctx->jpeg->dev);
>  }
>  
>  static const struct vb2_ops mtk_jpeg_qops = {
> @@ -761,7 +742,6 @@ static const struct vb2_ops mtk_jpeg_qops = {
>  	.buf_queue          = mtk_jpeg_buf_queue,
>  	.wait_prepare       = vb2_ops_wait_prepare,
>  	.wait_finish        = vb2_ops_wait_finish,
> -	.start_streaming    = mtk_jpeg_start_streaming,
>  	.stop_streaming     = mtk_jpeg_stop_streaming,
>  };
>  
> @@ -812,7 +792,7 @@ static void mtk_jpeg_device_run(void *priv)
>  	struct mtk_jpeg_src_buf *jpeg_src_buf;
>  	struct mtk_jpeg_bs bs;
>  	struct mtk_jpeg_fb fb;
> -	int i;
> +	int i, ret;
>  
>  	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
>  	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> @@ -832,6 +812,10 @@ static void mtk_jpeg_device_run(void *priv)
>  		return;
>  	}
>  
> +	ret = pm_runtime_get_sync(jpeg->dev);
> +	if (ret < 0)
> +		goto dec_end;
> +
>  	mtk_jpeg_set_dec_src(ctx, &src_buf->vb2_buf, &bs);
>  	if (mtk_jpeg_set_dec_dst(ctx, &jpeg_src_buf->dec_param, &dst_buf->vb2_buf, &fb))
>  		goto dec_end;
> @@ -957,6 +941,7 @@ static irqreturn_t mtk_jpeg_dec_irq(int irq, void *priv)
>  	v4l2_m2m_buf_done(src_buf, buf_state);
>  	v4l2_m2m_buf_done(dst_buf, buf_state);
>  	v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
> +	pm_runtime_put(ctx->jpeg->dev);

This patch itself is correct and feel free to add my

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

However, it looks like there might be one more problem with this driver.
What happens if the hardware locks up? The driver doesn't seem to take
any measures to detect that and recover the system.

If you take a look at other drivers, e.g. the MTK FD driver, there is a
delayed work scheduled before starting the hardware and canceled in the
interrupt handler. If the delayed work is executed, it resets the
hardware and reports the failure to V4L2, so that the execution can
continue from next frames.

This should be fixed in a separate patch, could be outside of this
series.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
