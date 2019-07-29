Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3483779110
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzT31di3mdZUKby/03GpbmR1QZLnUHRli/RfAu5qYLA=; b=ZX/8C701L8pj10
	VAZQyoP1f/0qJmGyRye1D/3U1Fcuy8fuCp+jw5il9+X4+sRqWXh7ABl1XUJ3ZJxA78ZC6kTpvjs2v
	qZLNgsE+POj9HXNvLy9UEm7ekKgW1WXKN3bnkRs87Gufe9bOyED0eli3pDb6bDipHESsuj8idaS9s
	0k72CI86ybSFNtO4pQuzSPsU+VxZKrBMCTkHpcmjFAUvrmlH8XgZBd2uCKCkRwU+WIpJ8QCoRdHe3
	5igK65jPOC/tGB0pU3Jg5Zj/xppMEG7MorshYljfZg8FZk+RxOGZ+b6rZUMBLWfSfWrSTtWZNZXwQ
	7w0SL/0Dko1vXXX1MJjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8cx-0007Is-R2; Mon, 29 Jul 2019 16:35:59 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8cF-0006v2-RU
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:35:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id k189so9484715pgk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LosA34Pi06t550ndfWq1HZ2X46u/LpML1Ea5fccWC7E=;
 b=NDvJyUbd4FPZnEzvHlG0+LLOrnWEIWl8T1uF/R3sM9rTbDL1xgrMCms2SH12h3QByl
 jQzeedo8qh7F1CKOkRgu6JO8CNoHChExWpJqfPHUx0yYX43YkvvT/cT8HfLH3HdVawEM
 TZ0YrjtHl/lRT++4pspAHq2IqXkmm/X0gjEg4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LosA34Pi06t550ndfWq1HZ2X46u/LpML1Ea5fccWC7E=;
 b=DobpfUxllTx2e8cg5ykOnjUnhPzHXzdaKYn2P3o8R57TEEf8rTtPrxetoQwNnI6P4q
 3J8/RsUHTxSNkwtAHCshNemr7CTqiOlJwpQzv2p2zrWstE1auz6j8ySlo+IjHnUFull+
 Dg09K6CXQb+YyEhlcspWmdjYEx38vnsIyG5Ah1CzyV33e31KBBoyo65IBpdN3tNrQ/bF
 aErOPdQFnVDIfe2kjlk7+RvRz7k4shzw4HTkEHc0m6bh+U9qG+21GUwk4TAi6FS4OJGt
 8mBJaeyxXJ8zjmKXbh9AD2I/GrYPI2yPt4/9WBVb1Hn0+Bnxx7g0Y7GUmFGt5czHAB6/
 L3Jg==
X-Gm-Message-State: APjAAAXDXH7L9VUFESuUFalkn00z7Y9hjOmURAX3l0j/l1RTIQxoq8Es
 5U3pW3E2Tmnf2tvjQCxI2bc/Jw==
X-Google-Smtp-Source: APXvYqxiO8pf2kEJ5WYkyipUkk47CIU4vFX7JK7bgUojD7XXorF+A7b4LosOiyjpsDE+ksy35reuqQ==
X-Received: by 2002:aa7:9118:: with SMTP id 24mr36133516pfh.56.1564418115354; 
 Mon, 29 Jul 2019 09:35:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w2sm53553878pgc.32.2019.07.29.09.35.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 09:35:14 -0700 (PDT)
Date: Mon, 29 Jul 2019 09:35:13 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] mfd: db8500-prcmu: Mark expected switch fall-throughs
Message-ID: <201907290935.B02CE809F@keescook>
References: <20190728235614.GA23618@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728235614.GA23618@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_093515_971156_C9CFC1E7 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 Linus Walleij <linus.walleij@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 06:56:14PM -0500, Gustavo A. R. Silva wrote:
> Mark switch cases where we are expecting to fall through.
> 
> This patch fixes the following warnings:
> 
> drivers/mfd/db8500-prcmu.c: In function 'dsiclk_rate':
> drivers/mfd/db8500-prcmu.c:1592:7: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    div *= 2;
>    ~~~~^~~~
> drivers/mfd/db8500-prcmu.c:1593:2: note: here
>   case PRCM_DSI_PLLOUT_SEL_PHI_2:
>   ^~~~
> drivers/mfd/db8500-prcmu.c:1594:7: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    div *= 2;
>    ~~~~^~~~
> drivers/mfd/db8500-prcmu.c:1595:2: note: here
>   case PRCM_DSI_PLLOUT_SEL_PHI:
>   ^~~~
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  drivers/mfd/db8500-prcmu.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mfd/db8500-prcmu.c b/drivers/mfd/db8500-prcmu.c
> index 3f21e26b8d36..90e0f21bc49c 100644
> --- a/drivers/mfd/db8500-prcmu.c
> +++ b/drivers/mfd/db8500-prcmu.c
> @@ -1590,8 +1590,10 @@ static unsigned long dsiclk_rate(u8 n)
>  	switch (divsel) {
>  	case PRCM_DSI_PLLOUT_SEL_PHI_4:
>  		div *= 2;
> +		/* Fall through */
>  	case PRCM_DSI_PLLOUT_SEL_PHI_2:
>  		div *= 2;
> +		/* Fall through */
>  	case PRCM_DSI_PLLOUT_SEL_PHI:
>  		return pll_rate(PRCM_PLLDSI_FREQ, clock_rate(PRCMU_HDMICLK),
>  			PLL_RAW) / div;
> -- 
> 2.22.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
