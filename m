Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB4C19E991
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 08:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vO7OzoPH8FnCSTJoqz00VMNvGMjN5WaePt5bvztQXpI=; b=lEsaqehTI/taJc
	YcanfOPvw5HPcKmKnpQlxmKivJv2erPjGjjpq+lIClLyxfX3gmFe0R5Bze0ey6O5dDGP92VOoopXX
	SJQ+Y7KQ/ISdXW1VICJ1GGLvxJYedmvCgVshtdmrpASod4+sMWsewjJWa4eq78+9Y9WLdcZta2Lyp
	JY+e6s5PbrZFrR52e5UOh4YrVWx53vDWFssP90QPR7HRVjco56IM8h9/eZRUl4GbXuQKpKeJakrQW
	yY8S+Km+L7WwMDYgD4nCBSikcs+PJ1sTlGfhwFQw9j9/rA38dgzHsVe8u2gQyg7maKQi2sclVDbRi
	1/pGsH4kbRwrk568ekOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKyeZ-0006GB-OB; Sun, 05 Apr 2020 06:21:07 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKyeT-0006Fj-6X
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 06:21:03 +0000
Received: by mail-pj1-x1042.google.com with SMTP id k3so5024959pjj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Apr 2020 23:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ya6XsWj9NJlCl87tgEzDyRyY4BP+TOaWrz6fIMrtsg0=;
 b=WZL2MMJ6gJmt7tq4wu4jI3b7GPgBtjhebgM4Gu+1Wot9A8TwfkNBQV1rJlNN3nB8Ce
 SVeiTsgM6Jw+2eMVrCW7k7cfRCSqmu3BJC5UzXouoo/e3SiIXhhKIOJl9k9GPrWfCsMV
 YmTj4F4pOd8ApAH+yB9e22dBKB+ix0/PmYmYj5/721pLUj1BhVSmjSt5om1M0k1uB8vE
 bf3koF2N1kcVXYh7nOyCDudonsxt7Ml8A5rkk3Q2dTwOr5yY1tfCFh0ys58nTIU4LPZ3
 BOw6FTVxlXRcfLtNbgSvmYTVcrmJTf4JIyFBYWgUJi8iuWcwRmCrK4A2tqhDimaY4Y29
 3U4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ya6XsWj9NJlCl87tgEzDyRyY4BP+TOaWrz6fIMrtsg0=;
 b=rJS/a3D9gU0M8XGCkt+bh69og0940EZ4DCseybqxhMTd3LkbVscD6AO0TiKIc89O1F
 bx5cO99eWS/L+jhkkeYFxKRH84w4j0qk9xM63qhRZT1+hVJWLyjcz6kcWxhzpWZx7Fkx
 SfTpmDwDuHLPlBAgpytV/BJ9UEaKAnBt/pdGlclFUfrAXExEJTN09S5iS+0JBmAIj7CC
 lfZo1rjtbtDmCJLswRg2FQdJhjdools2ovHvx36MeBkpSifQUBEbjK98azD/CJRD5bSA
 o2oXjuOUTpKYvh5RgE/VUpHJRndeqDQdF0sUUKmIDGzhXZ4KbypGOoG/N8qMkl51pwhM
 AazA==
X-Gm-Message-State: AGi0Pub3mK+T/8wyTMkXC50HRLZtS8sPHi30IWCupWwjaQlElVjAp5D5
 D2GKoVDY39239HCIXhpDuxOJ
X-Google-Smtp-Source: APiQypKyVUSoA5hVmEgmvyZtMgtFGtP92aUvtJEdMPoBWsBbQf9V2HDKN8yBW0KQ1qIWyTVEL9UTVg==
X-Received: by 2002:a17:902:8a88:: with SMTP id
 p8mr8006943plo.134.1586067658497; 
 Sat, 04 Apr 2020 23:20:58 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e83:b2ab:75aa:fbdc:e9da:9d96])
 by smtp.gmail.com with ESMTPSA id a2sm9271081pja.44.2020.04.04.23.20.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 04 Apr 2020 23:20:57 -0700 (PDT)
Date: Sun, 5 Apr 2020 11:50:50 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/9] ARM: Remove redundant COMMON_CLK selects
Message-ID: <20200405062050.GA8912@Mani-XPS-13-9360>
References: <20200405025123.154688-1-sboyd@kernel.org>
 <20200405025123.154688-2-sboyd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200405025123.154688-2-sboyd@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_232101_757521_1DAE8BFD 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Alexander Shiyan <shc_work@mail.ru>,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 04, 2020 at 07:51:15PM -0700, Stephen Boyd wrote:
> The mulitplatform config already selects COMMON_CLK, so selecting it
> again is not useful. Remove these selects from ARM platforms that are
> part of the multiplatform build.
> =

> Cc: "Andreas F=E4rber" <afaerber@suse.de>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Alexander Shiyan <shc_work@mail.ru>
> Cc: Lubomir Rintel <lkundrak@v3.sk>
> Cc: <linux-arm-kernel@lists.infradead.org>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Stephen Boyd <sboyd@kernel.org>

For Actions,

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  arch/arm/mach-actions/Kconfig  | 1 -
>  arch/arm/mach-clps711x/Kconfig | 1 -
>  arch/arm/mach-mmp/Kconfig      | 1 -
>  3 files changed, 3 deletions(-)
> =

> diff --git a/arch/arm/mach-actions/Kconfig b/arch/arm/mach-actions/Kconfig
> index b5e0ac965ec0..00fb4babccdd 100644
> --- a/arch/arm/mach-actions/Kconfig
> +++ b/arch/arm/mach-actions/Kconfig
> @@ -7,7 +7,6 @@ menuconfig ARCH_ACTIONS
>  	select ARM_GLOBAL_TIMER
>  	select CACHE_L2X0
>  	select CLKSRC_ARM_GLOBAL_TIMER_SCHED_CLOCK
> -	select COMMON_CLK
>  	select GENERIC_IRQ_CHIP
>  	select HAVE_ARM_SCU if SMP
>  	select HAVE_ARM_TWD if SMP
> diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kcon=
fig
> index fc9188b54dd6..ba497a2032e9 100644
> --- a/arch/arm/mach-clps711x/Kconfig
> +++ b/arch/arm/mach-clps711x/Kconfig
> @@ -5,7 +5,6 @@ menuconfig ARCH_CLPS711X
>  	select AUTO_ZRELADDR
>  	select TIMER_OF
>  	select CLPS711X_TIMER
> -	select COMMON_CLK
>  	select CPU_ARM720T
>  	select GENERIC_CLOCKEVENTS
>  	select GPIOLIB
> diff --git a/arch/arm/mach-mmp/Kconfig b/arch/arm/mach-mmp/Kconfig
> index b58a03b18bde..6fe1550f43ec 100644
> --- a/arch/arm/mach-mmp/Kconfig
> +++ b/arch/arm/mach-mmp/Kconfig
> @@ -110,7 +110,6 @@ config MACH_MMP_DT
>  	depends on ARCH_MULTI_V5
>  	select PINCTRL
>  	select PINCTRL_SINGLE
> -	select COMMON_CLK
>  	select ARCH_HAS_RESET_CONTROLLER
>  	select CPU_MOHAWK
>  	help
> -- =

> Sent by a computer, using git, on the internet
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
