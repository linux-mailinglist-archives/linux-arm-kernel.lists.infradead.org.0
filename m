Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2C31DD127
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t1d5VB0xiTURbxKAthLxJvLRhvgy7LgwSiHxGWQL5Bw=; b=qBzBz3spxaXvqN
	R7WN7IWupvDJItmMBBUh1SunKN9RW305IER2POiRtu+7CjR97bFxEl1zZY1iXJKtFgeu8UJryzO6J
	kXzveu69Pm7CcYuZdpnyn/zBvLDFkjX+bhNUhMniqLoLS8gRCVWyBJWxqHsG2lq7J1PhEbZOXtIm8
	678oGxYuFgwxays0jrTyIUfEwCpGmBGYB/PNGo23umk3gjuN1RL7GXNERa9WH6Hj8fnrZkjbKKA3l
	YwGmcm/fBns/hm6k6wNq39ltB/4z5yjmq8mKXsoXC4Hvk1uU0Z9EEhzW1Lq572+4XB8UcRoTltgPS
	HJcrEjzWKHcoViFwlf8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbn2P-0003xy-QO; Thu, 21 May 2020 15:23:13 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbn2B-0003vA-Ae
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:23:00 +0000
Received: by mail-wm1-x343.google.com with SMTP id z4so5895818wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 08:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BAKLcpITx/3kGgWTBYxDEZTohF/5xKJj7rJDCLE80Zo=;
 b=jO1m0/v5PI18i/EX4FCyeJ0cr5KPOWycKpGnRQGN0bSwCpxt8XWGDKkwubaWb0doVL
 QFggHPhQuapuwFk2GcAO/sFU/5KXmx6tmurSe+maOk6IxIvLE1mzL7tSB5gKF1y76rqk
 6N5xVsZYZakqqegyFos4roVrtKTae2J8IVQO8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BAKLcpITx/3kGgWTBYxDEZTohF/5xKJj7rJDCLE80Zo=;
 b=Y/HjfCsTwmYuZ5Nhx6bpClYTQLU6mjKXCzOuxkrphUv92v2M1aTM/RKAcitfgA0uVt
 hEqFsQpyIFHt2Ll762pDqU1KpwgejEXitfh1aDmQlfvQIZh3mM/g0m/rkECWLlNHqDKk
 aFWMTFmt8bO9Kbw0bdKSva+F6XH1aW1V5s1tL2AQaX/dmA0epa2egjvGz6qXkYOEqUor
 UrKLCBsjadgC5PWKqJfjeGDeUvtXjyjJrzb518CpKxe735bl3fWB4RnZW6YUWZ0ewVyy
 62T0S7EdpmyGX9rR5PBfkhNo4vsFatqButF7oZAFtReD1ebFFD661J1PgocfHA0S9taP
 kZbA==
X-Gm-Message-State: AOAM5306tKDBF5Qo55C+v0hXfw0Iack3XUivjefw475naJ0r5kKTEk3r
 QwiRz1FC/GBGOs2VVxJWX0HCJA==
X-Google-Smtp-Source: ABdhPJwMue+mt+thE6n7MP8xM0aOjfshOU4d1sP9ElGBs9Eu1VhZydaalBi9QV0v2+BvJeu8Riv4sg==
X-Received: by 2002:a1c:a74a:: with SMTP id q71mr9177584wme.23.1590074575192; 
 Thu, 21 May 2020 08:22:55 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id j190sm7073152wmb.33.2020.05.21.08.22.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 08:22:54 -0700 (PDT)
Date: Thu, 21 May 2020 15:22:53 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH v8 05/14] media: platform: Improve power on and power off
 flow
Message-ID: <20200521152253.GE209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-6-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403094033.8288-6-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_082259_375608_1A56C29B 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

On Fri, Apr 03, 2020 at 05:40:24PM +0800, Xia Jiang wrote:
> Call pm_runtime_get_sync() before starting a frame and then
> pm_runtime_put() after completing it. This can save power for the time
> between processing two frames.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
>  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 27 +++++--------------
>  1 file changed, 6 insertions(+), 21 deletions(-)
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> index a536fa95b3d6..dd5cadd101ef 100644
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
> +	pm_runtime_put_sync(ctx->jpeg->dev);

The _sync variant explicitly waits until the asynchronous PM operation
completes. This is usually undesired, because the CPU stays blocked for
no good reason. In this context it is actually a bug, because this is an
interrupt handler and it's not allowed to sleep. I wonder why this
actually didn't crash in your testing. Please change to the regular
pm_runtime_put().

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
