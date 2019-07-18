Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A903C6C916
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 08:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MYE+M0b5i/g5Fv5r1wHgIycZizKGLHJjDdb4+gvgjE=; b=Vwhp4Nq8YwE9rl
	DgZQ3UErSoQM3SvBk9JnA5+OnGQ1+1QMEcRN8ZuIHWl65nqBDl9Kx83SoL2MJxblh3EPBU3N+al0V
	D+6M5jXZ8T2Gp0Kduvf6F8o4+XtlBdNlTxnKegrYsVax7z4oanAAyN/v8FIkj6P+cYNccc45YAuP0
	/Jp6TxGkY2O5GLwdQbXxh94rGFKfzo1Rz4AOdCji9G7UeCU921J3ueUIN8ofeM01HyM71Wm5yiEWB
	3/sYPtjNyrVFoeF4xqnKbHrEJGIujfM4xROlpUyEl1OVCHpSwwxC3Oc84MFZHfBusORT6oy482pI6
	mmlBLgPSKKOgzVL9EyIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnzYD-0006dZ-50; Thu, 18 Jul 2019 06:05:57 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnzXY-0006Fk-QR
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 06:05:19 +0000
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com
 [209.85.221.181]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x6I64nAd016445
 for <linux-arm-kernel@lists.infradead.org>; Thu, 18 Jul 2019 15:04:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x6I64nAd016445
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1563429890;
 bh=9Cn27QIZQfB3/PlsDEzrhs3gsGNmfjgopl2Ueaqh2co=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DZ3QsT76aj6vYbKEXrr2j5egWye+7CzEUgQsrfOWOKHmx7JvShI+lArzlcW+AOyvW
 wSnANMWV0XV6vrhCS54i04y7kxYcznx4J77KcLz+b+yAgJBWXHPYsfxZAUbkGlbIEg
 Wpy1jycQ9ihqjwaQ6+dRgXMvQVOVCKDbuVVeu8pezwhgRb0iPhW2HMmEJrXpN0Hwca
 Z9XpiacJPM0Xn6AZVGCdUw/RQ291pjY+J6nJm2TER9rzOusSlfNAz4EE6IWstB5/c9
 sipLWjExYxEma8+YyZTycddtWzAD1pkERquktIODyC0IbIeXj8FJ0WaNnwVYx3yTzq
 EiYfwG04kugtw==
X-Nifty-SrcIP: [209.85.221.181]
Received: by mail-vk1-f181.google.com with SMTP id v68so1820061vkd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 23:04:49 -0700 (PDT)
X-Gm-Message-State: APjAAAXQmCidu61MLDqf+Yhpxri8EFHmPSyY5icpmR9cBLLuQFNwIxfm
 xLfFfW1n0rHbhdmaYBoBHEHFl3uHuEMF2YSnKgg=
X-Google-Smtp-Source: APXvYqzXwpNJxPAL3xak/xnvOG1FGRThsufi0IBo8anhshmeGUb3O1ZZmDqs4cK2QAroVJNrjr7kw7opeFsKmiXQ9mA=
X-Received: by 2002:a1f:a34c:: with SMTP id m73mr4593622vke.74.1563429888906; 
 Wed, 17 Jul 2019 23:04:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190710051320.8738-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190710051320.8738-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 18 Jul 2019 15:04:13 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQFPLcVrF4PiirqTy3PjPh_BTWNMzdMiNFaen6g1ew+Mw@mail.gmail.com>
Message-ID: <CAK7LNAQFPLcVrF4PiirqTy3PjPh_BTWNMzdMiNFaen6g1ew+Mw@mail.gmail.com>
Subject: Re: [PATCH] ARM: stm32: use "depends on" instead of "if" after prompt
To: arm-soc <arm@kernel.org>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_230517_193154_5E74F553 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.81 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, soc@kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof,



On Wed, Jul 10, 2019 at 2:15 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> This appeared after the global fixups by commit e32465429490 ("ARM: use
> "depends on" for SoC configs instead of "if" after prompt"). Fix it now.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---


I think probably this is too late,
but I am afraid you silently added a wrong Fixes tag.




commit 7e8a0f10899075ac2665c78c4e49dbaf32bf3346
Author: Masahiro Yamada <yamada.masahiro@socionext.com>
Date:   Wed Jul 10 14:13:20 2019 +0900

    ARM: stm32: use "depends on" instead of "if" after prompt

    This appeared after the global fixups by commit e32465429490 ("ARM: use
    "depends on" for SoC configs instead of "if" after prompt"). Fix it now.

    Link: https://lore.kernel.org/r/20190710051320.8738-1-yamada.masahiro@socionext.com
    Fixes: e32465429490 ("ARM: use "depends on" for SoC configs
instead of "if" after prompt")
    Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
    Signed-off-by: Olof Johansson <olof@lixom.net>





Commit e32465429490 converted all instances at that time.
This is absolutely fine.


Later, in 2018, commit 3ed71f8ad98a added a new instance.

So, if this Fixes is wanted, it should have been
Fixes: 3ed71f8ad98a ("ARM: stm32: prepare stm32 family to welcome
armv7 architecture")


This would confuse the stable kernel maintainers.



>  arch/arm/mach-stm32/Kconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-stm32/Kconfig b/arch/arm/mach-stm32/Kconfig
> index 05d6b5aada80..57699bd8f107 100644
> --- a/arch/arm/mach-stm32/Kconfig
> +++ b/arch/arm/mach-stm32/Kconfig
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  menuconfig ARCH_STM32
> -       bool "STMicroelectronics STM32 family" if ARM_SINGLE_ARMV7M || ARCH_MULTI_V7
> +       bool "STMicroelectronics STM32 family"
> +       depends on ARM_SINGLE_ARMV7M || ARCH_MULTI_V7
>         select ARMV7M_SYSTICK if ARM_SINGLE_ARMV7M
>         select HAVE_ARM_ARCH_TIMER if ARCH_MULTI_V7
>         select ARM_GIC if ARCH_MULTI_V7
> --
> 2.17.1
>


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
