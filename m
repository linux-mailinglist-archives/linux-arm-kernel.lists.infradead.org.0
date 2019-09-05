Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEA4A9D05
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5ZackK6xU8vbnKvWQdbsInuFrlPSUdKZg+EiBHdlHg=; b=l0GEeWf3zPx3uF
	D+ymrTN/vQfX9kdJzpw2/E/FYkQPCXLIbV+ZRzUYKfu0pLbVGd6ZoeEeuhj96SIeh1arCz2UqTgSF
	khG9sr2yIeACN07r3qoBbOeUCY01nXkn7r3Y765Y/PuxjiGg9Yi9PFgNGjCWt7wJyNxx7g7AHEz9X
	SqWs59dLzuAQmOx0gNESi849jQefE67DWtaN0PibU0FhYzYuv7OVVPX+qfwM0gGreFsWNW9SuP1Ay
	IV8XUPpL8AyjBN3xL/5J+hTZJGqxpVBWvjOPzOvCWSLngGzB4P5X+Ucj2S0IK4vo9pJCni/ZySqTf
	75dYHr3Pof8lCJwhLhUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nAx-0007ij-SS; Thu, 05 Sep 2019 08:31:32 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nAk-0007hu-K8
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:31:20 +0000
Received: by mail-qk1-f196.google.com with SMTP id z67so1267813qkb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:31:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HfKuAxk9/bRoioSR+a2a8fhqX2PF1AL0BOFS3W9OiGc=;
 b=ZkmQvAzNQx+gaYd6xyaGT0P/kyer9VHhLu83TuJSyLXZZz6Re/+91TjqFeFNlqgFnm
 soMmpMLbIucX7G9VEGMzKiy5jjmijmHr8f7e1vOGEKhXkAKRE/65pHGhnRBMGNGr5i3n
 N2c7GunFuLt83pvxYmytrrJbTF1YoRFzjrHsY/zKhz3ojy950ZTD8uM33VyqDl52qqY4
 yNfhY9FXsqDxZDhCc1KLDgwS0uT9dcX80bUNEqFcCtPDVBUeTM9M6C7vGNOo90u9vGLX
 4BAhienKJlkoDaySWJWM3v5iIqbgXCod71JrUtrDEEdYUbwSkqtCozcl/tVHct+D5UGB
 Ef0w==
X-Gm-Message-State: APjAAAVafR4+SFZ3K/T1kn0M59oWEmstbNmop3s7BzQRcIAWCIJG+kMN
 zwZPK02vtPR21/+LAn8x7yiYkEz9IAuIF+yVA6s=
X-Google-Smtp-Source: APXvYqwJP0cESRmEZHpkjp58dScikbAuglfHxNNCW2CGpnwyPfyt43xGIybh72k+p4oPPZxz8/N0O2S7OWaot+tNSmQ=
X-Received: by 2002:a37:4051:: with SMTP id n78mr1599585qka.138.1567672276936; 
 Thu, 05 Sep 2019 01:31:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190905054647.1235-1-james.tai@realtek.com>
In-Reply-To: <20190905054647.1235-1-james.tai@realtek.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 5 Sep 2019 10:31:00 +0200
Message-ID: <CAK8P3a13=VBZnj6E=s7mZk0o7Q3XkMHgcsL12s-3psuOWsfOtQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: Add support for Realtek SOC
To: jamestai.sky@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_013118_663841_69308293 
X-CRM114-Status: GOOD (  27.67  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Rob Herring <robh@kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Thierry Reding <treding@nvidia.com>, "james.tai" <james.tai@realtek.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, CY_Huang <cy.huang@realtek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Paul Burton <paul.burton@mips.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Doug Anderson <armlinux@m.disordat.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Phinex Hung <phinex@realtek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 7:48 AM <jamestai.sky@gmail.com> wrote:
>
> From: "james.tai" <james.tai@realtek.com>
>
> This patch adds the basic machine file for
> the Realtek RTD16XX platform.
>
> Signed-off-by: james.tai <james.tai@realtek.com>

Hi James,

Thanks a lot for your submission! I'm glad to see interest in upstream
support for this SoC family. I have a few small comments on
details, mostly where I would either like to see an explanation
in the patch description, or things that looks like they can be
left out from the patch.

> index 33b00579beff..c7c9a3662eb7 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -836,6 +836,8 @@ source "arch/arm/mach-zx/Kconfig"
>
>  source "arch/arm/mach-zynq/Kconfig"
>
> +source "arch/arm/mach-realtek/Kconfig"
> +
> diff --git a/arch/arm/mach-realtek/Kconfig b/arch/arm/mach-realtek/Kconfig
> @@ -225,6 +226,7 @@ machine-$(CONFIG_ARCH_VT8500)               += vt8500
>  machine-$(CONFIG_ARCH_W90X900)         += w90x900
>  machine-$(CONFIG_ARCH_ZX)              += zx
>  machine-$(CONFIG_ARCH_ZYNQ)            += zynq
> +machine-$(CONFIG_ARCH_REALTEK)         += realtek
>  machine-$(CONFIG_PLAT_SPEAR)           += spear
>
>  # Platform directory name.  This list is sorted alphanumerically

Please keep these lists in alphabetical order.

>  # ARMv7-M architecture
>  config ARCH_EFM32
>         bool "Energy Micro efm32"
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index c3624ca6c0bc..1f0926449d47 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -148,6 +148,7 @@ endif
>  textofs-$(CONFIG_ARCH_MSM8X60) := 0x00208000
>  textofs-$(CONFIG_ARCH_MSM8960) := 0x00208000
>  textofs-$(CONFIG_ARCH_MESON) := 0x00208000
> +textofs-$(CONFIG_ARCH_REALTEK) := 0x00208000
>  textofs-$(CONFIG_ARCH_AXXIA) := 0x00308000

Can you explain why this is needed for your platform?

>  # Machine directory name.  This list is sorted alphanumerically
> new file mode 100644
> index 000000000000..a8269964dbdb
> --- /dev/null
> +++ b/arch/arm/mach-realtek/Kconfig
> @@ -0,0 +1,32 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +menuconfig ARCH_REALTEK
> +       bool "Realtek SoCs"

Please add "depends on ARCH_MULTI_V7" to avoid
compile time issues when selecting it on an earlier
architecture.

> +       select ARM_GLOBAL_TIMER
> +       select CLKDEV_LOOKUP
> +       select HAVE_SMP
> +       select HAVE_MACH_CLKDEV
> +       select GENERIC_CLOCKEVENTS
> +       select HAVE_SCHED_CLOCK
> +       select ARCH_HAS_CPUFREQ
> +       select CLKSRC_OF
> +       select ARCH_REQUIRE_GPIOLIB
> +       select GENERIC_IRQ_CHIP
> +       select IRQ_DOMAIN
> +       select PINCTRL
> +       select COMMON_CLK
> +       select ARCH_HAS_BARRIERS
> +       select SPARSE_IRQ
> +       select PM_OPP
> +       select ARM_HAS_SG_CHAIN
> +       select ARM_PATCH_PHYS_VIRT
> +       select AUTO_ZRELADDR
> +       select MIGHT_HAVE_PCI
> +       select MULTI_IRQ_HANDLER
> +       select PCI_DOMAINS if PCI
> +       select USE_OF

Almost all of the symbols above are implied by
ARCH_MULTI_V7 and should not be selected
separately.

> +config ARCH_RTD16XX
> +       bool "Enable support for RTD1619"
> +       depends on ARCH_REALTEK
> +       select ARM_GIC_V3
> +       select ARM_PSCI

As I understand, this chip uses a Cortex-A55. What is the reason
for adding support only to the 32-bit ARM architecture rather than
64-bit?

Most 64-bit SoCs are only supported with arch/arm64, but generally
speaking that is not a requirement. My rule of thumb is that on
systems with 1GB of RAM or more, one would want to run a 64-bit
kernel, while systems with less than that are better off with a 32-bit
one, but that is clearly not the only reason for picking one over the
other.

> +
> +static int rtk_boot_secondary(unsigned int cpu, struct task_struct *idle)
> +{
> +       unsigned long entry_pa = __pa_symbol(secondary_startup);
> +
> +       writel_relaxed(entry_pa | (cpu << CPUID), cpu_release_virt);
> +
> +       arch_send_wakeup_ipi_mask(cpumask_of(cpu));
> +
> +       return 0;
> +}

It's very unusual to see custom smp operations on an ARMv8
system, as we normally use PSCI here. Can you explain what
is going on here? Are you able to use a boot wrapper that implements
these in psci instead?
> +
> +#include "platsmp.h"
> +
> +#define RBUS_BASE_PHYS (0x98000000)
> +#define RBUS_BASE_VIRT (0xfe000000)
> +#define RBUS_BASE_SIZE (0x00100000)
> +
> +static struct map_desc rtk_io_desc[] __initdata = {
> +       {
> +               .virtual = (unsigned long) IOMEM(RBUS_BASE_VIRT),
> +               .pfn = __phys_to_pfn(RBUS_BASE_PHYS),
> +               .length = RBUS_BASE_SIZE,
> +               .type = MT_DEVICE,
> +       },
> +};

This needs a comment: Why do you require a static mapping for
"RBUS_BASE_PHYS"? Normally device drivers should just use
ioremap() for mapping whichever registers they want to access.

> +static void __init rtk_dt_init(void)
> +{
> +       of_platform_populate(NULL, of_default_bus_match_table, NULL, NULL);
> +}

This should be taken care of by the
of_platform_default_populate_init() and can be dropped.

> +static void __init rtk_timer_init(void)
> +{
> +#ifdef CONFIG_COMMON_CLK
> +       of_clk_init(NULL);
> +#endif

COMMON_CLK is implied by ARCH_MULTI_V7, so the
#ifdef can be dropped.

> +       timer_probe();
> +       tick_setup_hrtimer_broadcast();
> +}

What do you need tick_setup_hrtimer_broadcast() for? I don't
see any other platform calling this.

> +bool __init rtk_smp_init_ops(void)
> +{
> +       smp_set_ops(smp_ops(rtk_smp_ops));
> +
> +       return true;
> +}

I think this can also be dropped, as you set the smp_ops in the
machine descriptor.


       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
