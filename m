Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A92937910A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HysrVJGW8We2w1WBrhzN0uEO6gflxw/ewZg6h8ruyUc=; b=Vo+LApMxt6Z9fy
	71KhVQQBnpRmsemm0HqyRCidMBdAxUlJ+sOzPWGrwkYpUKIiZAZ1gO7BuhDq+244TGuBjTMJ2p6jb
	QWTHq8AiMxhb6Miu5dqmyC7lSe1TV6HGvmQBFDNY8lWbI4L52fQNjoTqCXaTmjvHHr5IeM3YPfaWd
	DVBTCqHEQH1K5u0EoC1O+YMgPuhs1/psDl2R1Tw0wY1EnEm7gSmzKrb0gqG2m2lVu9OPXrOM8iJzN
	M+JR/iNoUTr2GkZew0z/r83saa7xINXFejFdxPJ0GtBw7k2lwFhsp9Bp/25lUzDYksS7aq5WBk7qa
	NxaSoDUso2wwSG+HhetQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8cQ-0005sF-0I; Mon, 29 Jul 2019 16:35:26 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8bi-0005Le-PW
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:34:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id k189so9483970pgk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vUjj6N1I6vMTCipD+qtqP93tKHcPzr/XHddLallJiUQ=;
 b=BQkHvxRpF2AAJ+UdBJQXbbI0xM/Y+dARaYo49C03ziIYjkFz5pUP1pQh04+R5Ouyh8
 06mEgzgPvGk/qWvvHfl4pn0hU+pE1OSamQLzLmTH7T/u40C4LYsLNa/aHdaA1+xkB3f5
 hIUIsGBkANMp3WAfzYKV3fmFZOJei+Rp2FsUs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vUjj6N1I6vMTCipD+qtqP93tKHcPzr/XHddLallJiUQ=;
 b=F/ZRoBmYXVwYvnETLw0l4Fq987wwCDPvz/2hsZcLsk+Zp1dqjA0RXiPBL6LQsB1JR0
 N87ozkx+kxYMT9IWHtWyfOfMlXF1XA13NCpQtDGJ2i+F77eb9sbRTzWmY48U6X+Iksex
 HA6/fqYUPT++vX9jNUTxwmjVnOPYH3UPhyrQDYfHUynj33KXPK+OWmuEpdUCT1LAx8lQ
 RNC7nZlZsgqxEV3KI4opD5/sdKcgcZ8C2Ms/tDdqLhyUNNOICm8Jt8jXuc22h26kaqzl
 KE/6I99pVq9dLEX4HbIDBR0nOLlfzo+h4L8FnLDVySa3kqcWUzgOgQMErfxwHsZzCYC5
 3Pbg==
X-Gm-Message-State: APjAAAUv3lB2fl9oWYgMxw3SQL+1k24ledj5TNxSByN4V0JIy/b3D17U
 fECb3EJ8kQaQ5S54SZxgDD+uJg==
X-Google-Smtp-Source: APXvYqx2FkrDdwq2i3WnLGDnQvHrZD/9LANeryz6v82uCSLvbbMEBPBAp1/MW4dWZBLjPOrNhzDhlw==
X-Received: by 2002:a63:eb56:: with SMTP id
 b22mr106511441pgk.355.1564418081835; 
 Mon, 29 Jul 2019 09:34:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c23sm56307412pgj.62.2019.07.29.09.34.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 09:34:41 -0700 (PDT)
Date: Mon, 29 Jul 2019 09:34:40 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] ARM: OMAP: dma: Mark expected switch fall-throughs
Message-ID: <201907290934.B2053972E3@keescook>
References: <20190728232240.GA22393@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728232240.GA22393@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_093442_984284_2C9AD078 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 06:22:40PM -0500, Gustavo A. R. Silva wrote:
> Mark switch cases where we are expecting to fall through.
> 
> This patch fixes the following warnings:
> 
> arch/arm/plat-omap/dma.c: In function 'omap_set_dma_src_burst_mode':
> arch/arm/plat-omap/dma.c:384:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    if (dma_omap2plus()) {
>       ^
> arch/arm/plat-omap/dma.c:393:2: note: here
>   case OMAP_DMA_DATA_BURST_16:
>   ^~~~
> arch/arm/plat-omap/dma.c:394:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    if (dma_omap2plus()) {
>       ^
> arch/arm/plat-omap/dma.c:402:2: note: here
>   default:
>   ^~~~~~~
> arch/arm/plat-omap/dma.c: In function 'omap_set_dma_dest_burst_mode':
> arch/arm/plat-omap/dma.c:473:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    if (dma_omap2plus()) {
>       ^
> arch/arm/plat-omap/dma.c:481:2: note: here
>   default:
>   ^~~~~~~
> 
> Notice that, in this particular case, the code comment is
> modified in accordance with what GCC is expecting to find.
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm/plat-omap/dma.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/plat-omap/dma.c b/arch/arm/plat-omap/dma.c
> index 79f43acf9acb..08c99413d02c 100644
> --- a/arch/arm/plat-omap/dma.c
> +++ b/arch/arm/plat-omap/dma.c
> @@ -388,17 +388,15 @@ void omap_set_dma_src_burst_mode(int lch, enum omap_dma_burst_mode burst_mode)
>  		/*
>  		 * not supported by current hardware on OMAP1
>  		 * w |= (0x03 << 7);
> -		 * fall through
>  		 */
> +		/* fall through */
>  	case OMAP_DMA_DATA_BURST_16:
>  		if (dma_omap2plus()) {
>  			burst = 0x3;
>  			break;
>  		}
> -		/*
> -		 * OMAP1 don't support burst 16
> -		 * fall through
> -		 */
> +		/* OMAP1 don't support burst 16 */
> +		/* fall through */
>  	default:
>  		BUG();
>  	}
> @@ -474,10 +472,8 @@ void omap_set_dma_dest_burst_mode(int lch, enum omap_dma_burst_mode burst_mode)
>  			burst = 0x3;
>  			break;
>  		}
> -		/*
> -		 * OMAP1 don't support burst 16
> -		 * fall through
> -		 */
> +		/* OMAP1 don't support burst 16 */
> +		/* fall through */
>  	default:
>  		printk(KERN_ERR "Invalid DMA burst mode\n");
>  		BUG();
> -- 
> 2.22.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
