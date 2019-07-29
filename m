Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21BC8790F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ib9ZnihHhuNBdESolLBlxZRtQPsN6FgiOxzDCVcelKM=; b=Xs64t6LcSC2VHU
	php2RTMR8T48e2ymufAuVahlsCDsRnMh9e6H2QF9TXMYEvJI8f6WcMyYUeMXJHqcBg2jDgM1v6+mD
	//xmzzikY+N91T9BZAC+iiPqt2B3EYh/KEDCLuUdWWUDCohQXpEYld9U6D4r7VjfbayCMNaZGsVF2
	cvjQ+GZ/ebo+ejT6NG441cXDowc+L3JE18aOUhNOAhl5BYwx5RCH6CjjwzOevXRf5x+zDpeW7bnYh
	P+GCckBGRE/YqZZZJQsRdxNXV5sZDM7S4fDD9OikLXmtr/SBUUknEt1TEjXwN17rs5f6hVhx5OXLW
	UXyvlBoIumoMACRcv43Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8ax-0004bh-RO; Mon, 29 Jul 2019 16:33:56 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8aZ-0004aw-RU
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:33:33 +0000
Received: by mail-pl1-x643.google.com with SMTP id a93so27668562pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=OZSRVaoM+0+WmVEymEml5vQPpYtYXaF0mFy6wxL1q74=;
 b=mZGupuQMoQYHI+QnKYUZdMKrRhU3YvfrCNNs6q6RO4lI2b5TDHy+xIzq6HsrC0/IA+
 0EXUwzeCErYJ4pWYl5ih/unhL3xIc4hwKGc2lCX1jP190DhVD0a0eX/06alHjUbtVRWk
 HkCm0cSpCmBNddCI6mRINbdIO4KoWEKeV+gi4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OZSRVaoM+0+WmVEymEml5vQPpYtYXaF0mFy6wxL1q74=;
 b=kPX7e8pncyY4xy3l9ECMTPRghadfVTjMM37k9Y2NM4IvGn837uRxgMzb5Hz0tP8Ig0
 oXm5kl1q+89PoWQBHSgsDm/NBdRriCVErGU4FIMrSQIe3iIc/woRzrJ33fM75kefnd/V
 hWCubpkHkBxP3uCxM7u13XT7ST86HW6Sv2WicZ73x651xOEX8ydgYwQZhh3CapgaRR8V
 Bhd40uHo6FbIiREoV7brmwVgBcedwRzlYKPKDrhm0C/FBo95sXFufMr7RHC35ONwzrxW
 j3/mgVOvLfBZs/ksgtNDmMIEfrX9Go55UzC3kb4n/YRUGW7WG7juPWm18TgFp1ZyeVEC
 CcxQ==
X-Gm-Message-State: APjAAAWUWLxicBIrDJ4y4mgbK9EEBDDsxeGDieXpn2TrdKibCo5CZH/M
 6aBv2BxDA1ZFEWoXIzquA5rXOA==
X-Google-Smtp-Source: APXvYqzFZvyeg4iqQvDoi5IW5U+rEL+TBAqu8DV6miguhTKiPv/OQfHqkaRDVvNhv1RWGgk5GEEHnw==
X-Received: by 2002:a17:902:2889:: with SMTP id
 f9mr105224391plb.230.1564418010852; 
 Mon, 29 Jul 2019 09:33:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id cx22sm51949300pjb.25.2019.07.29.09.33.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 09:33:30 -0700 (PDT)
Date: Mon, 29 Jul 2019 09:33:29 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] ARM: tegra: Mark expected switch fall-through
Message-ID: <201907290933.7D54BDAB@keescook>
References: <20190728231526.GA22066@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728231526.GA22066@embeddedor>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_093331_892765_ACA43DC4 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Thierry Reding <thierry.reding@gmail.com>, linux-tegra@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 06:15:26PM -0500, Gustavo A. R. Silva wrote:
> Mark switch cases where we are expecting to fall through.
> 
> This patch fixes the following warning:
> 
> arch/arm/mach-tegra/reset.c: In function 'tegra_cpu_reset_handler_enable':
> arch/arm/mach-tegra/reset.c:72:3: warning: this statement may fall through [-Wimplicit-fallthrough=]
>    tegra_cpu_reset_handler_set(reset_address);
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> arch/arm/mach-tegra/reset.c:74:2: note: here
>   case 0:
>   ^~~~
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/arm/mach-tegra/reset.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-tegra/reset.c b/arch/arm/mach-tegra/reset.c
> index 5a67a71f80cc..76a65df42d10 100644
> --- a/arch/arm/mach-tegra/reset.c
> +++ b/arch/arm/mach-tegra/reset.c
> @@ -70,7 +70,7 @@ static void __init tegra_cpu_reset_handler_enable(void)
>  	switch (err) {
>  	case -ENOSYS:
>  		tegra_cpu_reset_handler_set(reset_address);
> -		/* pass-through */
> +		/* fall through */
>  	case 0:
>  		is_enabled = true;
>  		break;
> -- 
> 2.22.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
