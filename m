Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B8B1DD253
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ASuowkY3i9ezdfgwE5IqI1eYu3qj3U9WuSp8A8Ixmk=; b=biLNc2DmM/HrYd
	EvqEzJpUfSpjvK/860q0z+jwD1onONOTTdvGu/P14HqBYBe3jPhSz1DlEZpjTEYKtzFOjQPTao16x
	3cEp4f0lJsBKS1Vpw1xiliyAwuEAF2hiR19xKi87H7khvG+h4We8Vg6GZ4JeUkDAN9xAfE23pl8Jn
	X0IQtDETv3cygYYOBXnZgqBcozrxt4/sAHTATvHGEx5CJBIuT+jN+GzMqikwxR80l2NNGeFuV7a/5
	1l6ZPeIAjSXcE30daCy7R1PKxpHcUItR+Q8rc62bBESMcyokuykiFQ190zg2K6nrZrY63BjowdotP
	DqI0PC6emiCHYnRkpwwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnSc-0005WB-BH; Thu, 21 May 2020 15:50:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnSM-0004k1-9V
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 15:50:04 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so5217994wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 08:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=I5QXaX52IPaG+95gPfmlZ0rD63JTAUJslTJmrnwNjQc=;
 b=ID1dvrYmYK5R1R7a0Cw6H9ckAbwIgzD1jEh8cLijWGS6z4cOVQD8npfgacuW3YzbTR
 6p53ASb2F8xqyBMI8KhptHeaQt1pyG6j16NzI19RwIF22j7IKpB1vdhv2vKICxvPmIGS
 L9IwRDjpD8PgKAcggZu7EgMhLsHQK5hYnPirU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=I5QXaX52IPaG+95gPfmlZ0rD63JTAUJslTJmrnwNjQc=;
 b=tx6R/QDK2ZZvk8kjuU1QrHF0KbHWRkGyYXZQhJtstGrbn/GdJ+L8i+1fNZCcpHAZis
 dpTwQI034UA6HoFPlwuOKgtb3PenHvgucdmvSI7ivCob+wD9TcX0o7xRxYNgHMNUo+1l
 Ku/UirRPWj+RySZhMcrCseUATbAo45DIFPniWj8MMU9P9ABiveoTwyVuqS6rhOghKL57
 hVrkkE/6E4UCo78889fdh/X2gWR4ZjG5QdeuAokTeg1fRMvxF2MuHLaBW2Yb2In4BfKH
 3c+FS7fsQJry9/GeoPYCgkd0q6OfnhGk2Ho07LbHV7vQF7oD2IduyHcXDO1OuhrsD78N
 6xuw==
X-Gm-Message-State: AOAM53282msoTBWnJsq0GG4W0q5uJKrEy8gFOfljxj6HK8k1XPf7JKwv
 sDlUq28u43cp67CNzi8YncZcYg==
X-Google-Smtp-Source: ABdhPJw5KfY6ZCQuAckjsE5E7cfiDb7ScpWMpUV7bgUyKbpKFR20CCu1lyQfVtv8YMw85K8xToqg9w==
X-Received: by 2002:adf:ec87:: with SMTP id z7mr9942589wrn.149.1590076200716; 
 Thu, 21 May 2020 08:50:00 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id r3sm6663037wmh.48.2020.05.21.08.50.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 08:50:00 -0700 (PDT)
Date: Thu, 21 May 2020 15:49:58 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH v8 10/14] media: platform: Delete redundant code for
 improving code quality
Message-ID: <20200521154958.GI209565@chromium.org>
References: <20200403094033.8288-1-xia.jiang@mediatek.com>
 <20200403094033.8288-11-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403094033.8288-11-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_085002_361657_6F57581E 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Fri, Apr 03, 2020 at 05:40:29PM +0800, Xia Jiang wrote:
> Delete unused member variables annotation.
> Delete unused variable definition.
> Delete redundant log print, because V4L2 debug logs already print it.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v8: no changes
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 16 ++--------------
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h |  5 +++--
>  2 files changed, 5 insertions(+), 16 deletions(-)
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> index 4e64046a6854..9e59b9a51ef0 100644
> --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> @@ -182,7 +182,6 @@ static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
>  				   struct mtk_jpeg_ctx *ctx, int q_type)
>  {
>  	struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> -	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
>  	int i;
>  
>  	memset(pix_mp->reserved, 0, sizeof(pix_mp->reserved));
> @@ -190,7 +189,7 @@ static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
>  
>  	if (ctx->state != MTK_JPEG_INIT) {
>  		mtk_jpeg_adjust_fmt_mplane(ctx, f);
> -		goto end;
> +		return 0;
>  	}
>  
>  	pix_mp->num_planes = fmt->colplanes;
> @@ -210,7 +209,7 @@ static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
>  		pfmt->sizeimage = round_up(pfmt->sizeimage, 128);
>  		if (pfmt->sizeimage == 0)
>  			pfmt->sizeimage = MTK_JPEG_DEFAULT_SIZEIMAGE;
> -		goto end;
> +		return 0;
>  	}
>  
>  	/* type is MTK_JPEG_FMT_TYPE_CAPTURE */
> @@ -224,20 +223,9 @@ static int mtk_jpeg_try_fmt_mplane(struct v4l2_format *f,
>  		u32 stride = pix_mp->width * fmt->h_sample[i] / 4;
>  		u32 h = pix_mp->height * fmt->v_sample[i] / 4;
>  
> -		memset(pfmt->reserved, 0, sizeof(pfmt->reserved));

This change is not mentioned in the description. I'd suggest moving it
to a separate patch, because it's a functional change.

>  		pfmt->bytesperline = stride;
>  		pfmt->sizeimage = stride * h;
>  	}
> -end:
> -	v4l2_dbg(2, debug, &jpeg->v4l2_dev, "wxh:%ux%u\n",
> -		 pix_mp->width, pix_mp->height);
> -	for (i = 0; i < pix_mp->num_planes; i++) {
> -		v4l2_dbg(2, debug, &jpeg->v4l2_dev,
> -			 "plane[%d] bpl=%u, size=%u\n",
> -			 i,
> -			 pix_mp->plane_fmt[i].bytesperline,
> -			 pix_mp->plane_fmt[i].sizeimage);
> -	}
>  	return 0;
>  }
>  
> diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> index 64a731261214..9bbd615b1067 100644
> --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
> @@ -30,6 +30,9 @@
>  
>  #define MTK_JPEG_DEFAULT_SIZEIMAGE	(1 * 1024 * 1024)
>  
> +/**
> + * enum mtk_jpeg_ctx_state - contex state of jpeg

typo: s/contex/context/

But I'd rephrase it to "states of the context state machine".

> + */

Not mentioned in the description. Also, the documentation of an enum
should have descriptions for the values.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
