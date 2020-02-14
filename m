Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E12515D4D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 10:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9swkz4u5eOk9DEAXAFsVkvoRohSrzOFVJubDFPzv0S0=; b=C8nf8GlQEeQn3B
	FppAckNY6ljCD19cbvfWgB/a+yISg+4b62KoqJnLeG9+fLvAtjMb91ITDSaZRr6BnaRDEpIMinqKe
	CGSlwLaf1uAx7DVFlvTBYDenOkpXY/CsNqqhEZSuY0sr3ntfBGS7mNJ14RHI+/MHihHUSDJFUeADg
	3dhIkcDBJIo/X2NC/l3i0L5ViOme8YDp2ebjPhMwB1PIjnc/UQN2AFUlT+y5gJ0G629U54qfQdTD/
	36NKCxugBpDVvXpF8pp/cVcDyaDCAkJ5Uivr+FBSc0KvmFT+HyKaPSfBo985ZNTtvXWEgfLPQEg1C
	GZUFFrvYpxmuh4/yoCEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2XNb-0002eR-Q5; Fri, 14 Feb 2020 09:35:23 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2XNR-0002cs-2w
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 09:35:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id x185so4613597pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 01:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5AfLEWxBfNqD1QkilGzCQL+klQ2n6nhzMgLjS7kpjJM=;
 b=GoEjXRGHToaAgFkeLpViY1gsJSUIEVFtb8QW+MOKy9T8+kP7xEFTsFYvjUW6MSs7gy
 o28Rzuk0lUdIq/2gWktTi8aG6FVSe5Fp1qD6uMY3WpVJREQ0h3/avtmmbfeIwMUFGd43
 5rx0TuSgzQZHI3TlPFC52tzrHGnYIgDgvMgvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5AfLEWxBfNqD1QkilGzCQL+klQ2n6nhzMgLjS7kpjJM=;
 b=OfHMeV3dYveKyy9pm6c4myIgTKGRF9WgNYV8BfSp7iMTNoDRSqvpUk4z22d0RvMCP7
 sYXRTO+Jax3YHdyvMA63jRA3kAH4joBtwHgX43cVk8pEGRPi74WLKn4fwvd2wURy5y6O
 qc1UsDy+yabIafAHZ/hz5VS1uHBbEpaEnR8n4i4qnFTU+tkgzoI2i29qS4SaK0rBobZB
 eC7iHCTiZ2SWIhtDDL9JFQQDZ+ju9k/BHAXPb9viipNc/Pbyyw0+saj44M7VofJIBVEQ
 W6I5NSS+ygunMaxCI78au7UoGghRiHvWAyDB/g1RY+yd4feMC2Sd6fK6Rv1AI3euEO4Z
 sWXA==
X-Gm-Message-State: APjAAAW1zOEFjxMCkW2Fwm4dQ208GkJBRghYSU44n9K/AMRmsRj2g6wm
 2eAbRJbrQFNvxR9bEqoQcJ1AfQ==
X-Google-Smtp-Source: APXvYqzWsScMU1xLX4fTpri3lhL7mpabTPnY7iU6UbbEijI0fSi9fuMBHpf+qZeK5MxPv57X50roQA==
X-Received: by 2002:a65:4486:: with SMTP id l6mr2326605pgq.1.1581672911556;
 Fri, 14 Feb 2020 01:35:11 -0800 (PST)
Received: from chromium.org ([2401:fa00:8f:203:f5fe:2a5e:f953:c0ed])
 by smtp.gmail.com with ESMTPSA id w11sm6067926pgh.5.2020.02.14.01.35.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 01:35:10 -0800 (PST)
Date: Fri, 14 Feb 2020 18:35:06 +0900
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH v6 1/5] media: platform: Fix jpeg dec driver bug and
 improve code quality
Message-ID: <20200214093506.GA193786@chromium.org>
References: <20200121095320.32258-1-xia.jiang@mediatek.com>
 <20200121095320.32258-2-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121095320.32258-2-xia.jiang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_013513_124723_9056FA2D 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 Rick Chang <rick.chang@mediatek.com>, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xia,

On Tue, Jan 21, 2020 at 05:53:17PM +0800, Xia Jiang wrote:
> Fix v4l2-compliance test bug and improve code quality of jpeg decode
> driver, because the jpeg encode driver will base on it.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v6: alignment 'MTK_JPEG_DCTSIZE' match open parenthesis.
>                                            
> v5: Use clamp()to replace mtk_jpeg_bound_align_image() and round_up()
>     to replace mtk_jpeg_align().
>     Get correct compose value in mtk_jpeg_selection().
>     Cancel spin lock and unlock operation in device run function.
>     Change register offset hex numberals from upercase to lowercase.
> 
> v4: new add patch for v4l2-compliance test bug fix.

Thanks for the patch. The changes look good to me, but each of the
unrelated changes should be split into its own patch, with proper
explanation in its commit message. Especially the ones that introduce
behavior changes, such as the S_SELECTION or locking change.

Also please see one comment inline.

[snip]

> @@ -801,7 +778,6 @@ static void mtk_jpeg_device_run(void *priv)
>  	struct mtk_jpeg_dev *jpeg = ctx->jpeg;
>  	struct vb2_v4l2_buffer *src_buf, *dst_buf;
>  	enum vb2_buffer_state buf_state = VB2_BUF_STATE_ERROR;
> -	unsigned long flags;
>  	struct mtk_jpeg_src_buf *jpeg_src_buf;
>  	struct mtk_jpeg_bs bs;
>  	struct mtk_jpeg_fb fb;
> @@ -829,13 +805,11 @@ static void mtk_jpeg_device_run(void *priv)
>  	if (mtk_jpeg_set_dec_dst(ctx, &jpeg_src_buf->dec_param, &dst_buf->vb2_buf, &fb))
>  		goto dec_end;
>  
> -	spin_lock_irqsave(&jpeg->hw_lock, flags);

Why is it safe to remove the locking here?

>  	mtk_jpeg_dec_reset(jpeg->dec_reg_base);
>  	mtk_jpeg_dec_set_config(jpeg->dec_reg_base,
>  				&jpeg_src_buf->dec_param, &bs, &fb);
>  
>  	mtk_jpeg_dec_start(jpeg->dec_reg_base);
> -	spin_unlock_irqrestore(&jpeg->hw_lock, flags);
>  	return;
>  
>  dec_end:

Best regards,
Tomasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
