Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AA11F69C4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 16:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIu+hP5JAkO/ZGZ8J/MWhWn62kQ48bJckm/d0oW+poA=; b=XRMyZhbMW8wojW
	6GqAfVBqCLvXpZY3AFvKIQHd+5zVJDXB9J5UoyLFKlEdJgVYEpzJL/AoNE2bMSe7mg4OvTuBEKpTt
	9fvD6LYv49Q2901FCaBZdUGcj1oy6fPh2Q9vwSOS7g+q6S+QAb0cvVMoSwxnLKhmAMCvrucfL+0uI
	8waVqOGHNZfpQgxglZ4dNm8gLO9RHFQD7pUWdtKs09RiBsRUwPNPHiKB0l3zxwUTneyTT3XQdIQk7
	SMepIGOKe/lUhaUxt1L250AX0eH/imTx13wfuvXc7citvh4COFk8gRls6iaG9jnTA1Znf3zX51VP1
	QO4vBmYw4Pdlg+0hyaMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjO1Q-0007lZ-Cz; Thu, 11 Jun 2020 14:17:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjO1H-0007ku-63
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 14:17:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id l17so5148253wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 07:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RNw0t5OF2i7drNguzCKs4BhL36r2VlgNY7GbFOTjqzw=;
 b=AxV/Sk0DEDT54gQbWwbuHMzsD6e/E7rOARS21Yrb+YqlY/aM5Ccc/oKi9TqQiGSafa
 H9j+XMp2do7JhHGU93olyhpUGKoWHDkgt21qI8IRXXvvFnxLEBNRt2Yt55Pvowjathtg
 7jandyKb8/7FIK5JeEn2ibq1k2C0PxlylKzYI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RNw0t5OF2i7drNguzCKs4BhL36r2VlgNY7GbFOTjqzw=;
 b=ldtktABjDHtdlwo0x9ZERAtNE3tNzdPYY7gZ/vHR3SNjFUVeCuTZvAwBKoyxqytRYm
 OGhlq20ssmWbUQ5EFbfIRhxQITCiIAhrAZdqLQMcpgPST8YTXiaaUHMLpwklfOvGNZYh
 HcVOKn17PIBkeTMPWOZHWRfAG+ApjlOlH+jyfVL89l3MzdkZrfWwsVNkS2SZYDTE35yJ
 U8KOGXk9ixeba9OkyiCHkgkicLiRnx+9kbYlmLutWlg73mTleW9YYhElVvveEtUsdz1w
 FKakf7M7lRjS/8zSC65/Ip3YkA5+rUGXBalmh2AhUvuOMnk8n6dxdDowTCkE6fEm9kho
 TYUw==
X-Gm-Message-State: AOAM530ULaLzqYtD+zO4XaCXViA3BQNcWATN5t5f/nk1Q8fPu38nerxK
 +5JgcszKBKUTlXw1HuV4stL25w==
X-Google-Smtp-Source: ABdhPJwxfmfetZw9SoQatIxsaEyd3GfuKkNflglFUsvZOtyhVxP2C6KyLrgx+G/tzAa2Jda/IPxaig==
X-Received: by 2002:a1c:c3d7:: with SMTP id t206mr8521727wmf.69.1591885040174; 
 Thu, 11 Jun 2020 07:17:20 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id t7sm4879946wrq.41.2020.06.11.07.17.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 07:17:19 -0700 (PDT)
Date: Thu, 11 Jun 2020 14:17:18 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH RESEND v9 07/18] media: platform: Improve the
 implementation of the system PM ops
Message-ID: <20200611141718.GA158633@chromium.org>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
 <20200604090553.10861-9-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604090553.10861-9-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_071727_243435_57FECA2A 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

On Thu, Jun 04, 2020 at 05:05:42PM +0800, Xia Jiang wrote:
> Add v4l2_m2m_suspend() function call in mtk_jpeg_suspend() to make sure
> that the current frame is processed completely before suspend.
> Add v4l2_m2m_resume() function call in mtk_jpeg_resume() to unblock the
> driver from scheduling next frame.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v9: use v4l2_m2m_suspend() and v4l2_m2m_resume() to improve the
>     implemention of the system PM ops
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> index 7f74597262fc..49bdbf1c435f 100644
> --- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> +++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
> @@ -1208,10 +1208,13 @@ static __maybe_unused int mtk_jpeg_pm_resume(struct device *dev)
>  static __maybe_unused int mtk_jpeg_suspend(struct device *dev)
>  {
>  	int ret;
> +	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
>  
>  	if (pm_runtime_suspended(dev))
>  		return 0;
>  
> +	v4l2_m2m_suspend(jpeg->m2m_dev);
> +
>  	ret = mtk_jpeg_pm_suspend(dev);
>  	return ret;
>  }

This could be simplified into:

{
	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);

	v4l2_m2m_suspend(jpeg->m2m_dev);
	return pm_runtime_force_suspend(dev);
}

> @@ -1219,12 +1222,15 @@ static __maybe_unused int mtk_jpeg_suspend(struct device *dev)
>  static __maybe_unused int mtk_jpeg_resume(struct device *dev)
>  {
>  	int ret;
> +	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
>  
>  	if (pm_runtime_suspended(dev))
>  		return 0;
>  
>  	ret = mtk_jpeg_pm_resume(dev);
>  
> +	v4l2_m2m_resume(jpeg->m2m_dev);
> +
>  	return ret;
>  }

Similarly here:

{
	struct mtk_jpeg_dev *jpeg = dev_get_drvdata(dev);
	int ret;

	ret = pm_runtime_force_resume(dev);
	if (ret < 0)
		return ret;

	v4l2_m2m_resume(jpeg->m2m_dev);
}

The pm_runtime_force_*() helpers will make sure that the right runtime PM
state is restored.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
