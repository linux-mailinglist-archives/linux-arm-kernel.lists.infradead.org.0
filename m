Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A35EAF720
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 09:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ecv73KSmkAQ8EyLBdMj2qskHJX1346DC0Az/9vd3X8=; b=nDl9z1Ldbqh6Od
	AMN2Vkcml2/O9aWDrSuI9iqbok36fKHpf2VsAZ78h1XcO5KACJ97BwNhOTHOFc79m+1oHSa8YgRpO
	8MeSivvEJ0KVNabtnSeTgN+iwYnG33Oil3d6DeWI87Gvt2qlxeNrUttSRovdbTbr3Or2lvTq5zO9m
	/Ct3iINoZKIzmci6/SZ4ZfTnXN11vyOtqALhxUBlbehG47HPcjq2FM/aKx1jz+hZcYdhSkPEtfDVe
	Gv0ZHqGzCkOzqYHdKe7WBVwGuamLMgeD8hva3yo34jdj1m98SEXU+GYwV8dx+kpC3Nsa4InwLlnLb
	Pyyqawrcydv8XPmKb1VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7xL9-0008Nn-Pm; Wed, 11 Sep 2019 07:47:00 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xKt-0008N3-UE
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 07:46:46 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID x8B7jWvI012271,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS11.realtek.com.tw[172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id x8B7jWvI012271
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 11 Sep 2019 15:45:34 +0800
Received: from RTITMBSVM04.realtek.com.tw ([fe80::e404:880:2ef1:1aa1]) by
 RTITCAS11.realtek.com.tw ([fe80::7c6d:ced5:c4ff:8297%15]) with mapi id
 14.03.0468.000; Wed, 11 Sep 2019 15:45:31 +0800
From: =?utf-8?B?SmFtZXMgVGFpW+aItOW/l+WzsF0=?= <james.tai@realtek.com>
To: Arnd Bergmann <arnd@arndb.de>, "jamestai.sky@gmail.com"
 <jamestai.sky@gmail.com>
Subject: RE: [PATCH] ARM: Add support for Realtek SOC
Thread-Topic: [PATCH] ARM: Add support for Realtek SOC
Thread-Index: AQHVY67V+8blpY45FUyr2dN3mgK/RqccOwQAgAf67AA=
Date: Wed, 11 Sep 2019 07:45:30 +0000
Message-ID: <43B123F21A8CFE44A9641C099E4196FFCF8DA1D0@RTITMBSVM04.realtek.com.tw>
References: <20190905054647.1235-1-james.tai@realtek.com>
 <CAK8P3a13=VBZnj6E=s7mZk0o7Q3XkMHgcsL12s-3psuOWsfOtQ@mail.gmail.com>
In-Reply-To: <CAK8P3a13=VBZnj6E=s7mZk0o7Q3XkMHgcsL12s-3psuOWsfOtQ@mail.gmail.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_004644_289998_C5C8F515 
X-CRM114-Status: GOOD (  35.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Rob
 Herring <robh@kernel.org>, "Jason A . Donenfeld" <Jason@zx2c4.com>, Thierry
 Reding <treding@nvidia.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 =?utf-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Russell King <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Paul
 Burton <paul.burton@mips.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Doug
 Anderson <armlinux@m.disordat.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Phinex Hung <phinex@realtek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH] ARM: Add support for Realtek SOC
> 
> On Thu, Sep 5, 2019 at 7:48 AM <jamestai.sky@gmail.com> wrote:
> >
> > From: "james.tai" <james.tai@realtek.com>
> >
> > This patch adds the basic machine file for the Realtek RTD16XX
> > platform.
> >
> > Signed-off-by: james.tai <james.tai@realtek.com>
> 
> Hi James,
> 
> Thanks a lot for your submission! I'm glad to see interest in upstream support
> for this SoC family. I have a few small comments on details, mostly where I
> would either like to see an explanation in the patch description, or things that
> looks like they can be left out from the patch.
>
Thanks for your reply.

> > index 33b00579beff..c7c9a3662eb7 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -836,6 +836,8 @@ source "arch/arm/mach-zx/Kconfig"
> >
> >  source "arch/arm/mach-zynq/Kconfig"
> >
> > +source "arch/arm/mach-realtek/Kconfig"
> > +
> > diff --git a/arch/arm/mach-realtek/Kconfig
> b/arch/arm/mach-realtek/Kconfig
> > @@ -225,6 +226,7 @@ machine-$(CONFIG_ARCH_VT8500)
> += vt8500
> >  machine-$(CONFIG_ARCH_W90X900)         += w90x900
> >  machine-$(CONFIG_ARCH_ZX)              += zx
> >  machine-$(CONFIG_ARCH_ZYNQ)            += zynq
> > +machine-$(CONFIG_ARCH_REALTEK)         += realtek
> >  machine-$(CONFIG_PLAT_SPEAR)           += spear
> >
> >  # Platform directory name.  This list is sorted alphanumerically
> 
> Please keep these lists in alphabetical order.
> 
I will keep these lists in alphabetical order in new version patch.

> >  # ARMv7-M architecture
> >  config ARCH_EFM32
> >         bool "Energy Micro efm32"
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile index
> > c3624ca6c0bc..1f0926449d47 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -148,6 +148,7 @@ endif
> >  textofs-$(CONFIG_ARCH_MSM8X60) := 0x00208000
> >  textofs-$(CONFIG_ARCH_MSM8960) := 0x00208000
> >  textofs-$(CONFIG_ARCH_MESON) := 0x00208000
> > +textofs-$(CONFIG_ARCH_REALTEK) := 0x00208000
> >  textofs-$(CONFIG_ARCH_AXXIA) := 0x00308000
> 
> Can you explain why this is needed for your platform?
> 
We need to reserve memory (0x00000000 ~ 0x001B0000) for rom and boot code.

> >  # Machine directory name.  This list is sorted alphanumerically new
> > file mode 100644 index 000000000000..a8269964dbdb
> > --- /dev/null
> > +++ b/arch/arm/mach-realtek/Kconfig
> > @@ -0,0 +1,32 @@
> > +# SPDX-License-Identifier: GPL-2.0-only menuconfig ARCH_REALTEK
> > +       bool "Realtek SoCs"
> 
> Please add "depends on ARCH_MULTI_V7" to avoid compile time issues when
> selecting it on an earlier architecture.
> 
I will add "depends on ARCH_MULTI_V7" in new version patch.

> > +       select ARM_GLOBAL_TIMER
> > +       select CLKDEV_LOOKUP
> > +       select HAVE_SMP
> > +       select HAVE_MACH_CLKDEV
> > +       select GENERIC_CLOCKEVENTS
> > +       select HAVE_SCHED_CLOCK
> > +       select ARCH_HAS_CPUFREQ
> > +       select CLKSRC_OF
> > +       select ARCH_REQUIRE_GPIOLIB
> > +       select GENERIC_IRQ_CHIP
> > +       select IRQ_DOMAIN
> > +       select PINCTRL
> > +       select COMMON_CLK
> > +       select ARCH_HAS_BARRIERS
> > +       select SPARSE_IRQ
> > +       select PM_OPP
> > +       select ARM_HAS_SG_CHAIN
> > +       select ARM_PATCH_PHYS_VIRT
> > +       select AUTO_ZRELADDR
> > +       select MIGHT_HAVE_PCI
> > +       select MULTI_IRQ_HANDLER
> > +       select PCI_DOMAINS if PCI
> > +       select USE_OF
> 
> Almost all of the symbols above are implied by
> ARCH_MULTI_V7 and should not be selected separately.
>
OK, I understand.

> > +config ARCH_RTD16XX
> > +       bool "Enable support for RTD1619"
> > +       depends on ARCH_REALTEK
> > +       select ARM_GIC_V3
> > +       select ARM_PSCI
> 
> As I understand, this chip uses a Cortex-A55. What is the reason for adding
> support only to the 32-bit ARM architecture rather than 64-bit?

The RTD16XX platform also support the 64-bit ARM architecture.
I will add the 64-bit ARM architecture in new version patch.

> Most 64-bit SoCs are only supported with arch/arm64, but generally speaking
> that is not a requirement. My rule of thumb is that on systems with 1GB of
> RAM or more, one would want to run a 64-bit kernel, while systems with less
> than that are better off with a 32-bit one, but that is clearly not the only reason
> for picking one over the other.
> 
Support 32-bit ARM architecture is for application compatibility.

> > +
> > +static int rtk_boot_secondary(unsigned int cpu, struct task_struct
> > +*idle) {
> > +       unsigned long entry_pa = __pa_symbol(secondary_startup);
> > +
> > +       writel_relaxed(entry_pa | (cpu << CPUID), cpu_release_virt);
> > +
> > +       arch_send_wakeup_ipi_mask(cpumask_of(cpu));
> > +
> > +       return 0;
> > +}
> 
> It's very unusual to see custom smp operations on an ARMv8 system, as we
> normally use PSCI here. Can you explain what is going on here? Are you able to
> use a boot wrapper that implements these in psci instead?
>
The smp operations is porting form other Realtek platform.

Currently, The RTD16XX platform can use the PSCI method.
I will add PSCI method in new version patch.

> > +
> > +#include "platsmp.h"
> > +
> > +#define RBUS_BASE_PHYS (0x98000000)
> > +#define RBUS_BASE_VIRT (0xfe000000)
> > +#define RBUS_BASE_SIZE (0x00100000)
> > +
> > +static struct map_desc rtk_io_desc[] __initdata = {
> > +       {
> > +               .virtual = (unsigned long) IOMEM(RBUS_BASE_VIRT),
> > +               .pfn = __phys_to_pfn(RBUS_BASE_PHYS),
> > +               .length = RBUS_BASE_SIZE,
> > +               .type = MT_DEVICE,
> > +       },
> > +};
> 
> This needs a comment: Why do you require a static mapping for
> "RBUS_BASE_PHYS"? Normally device drivers should just use
> ioremap() for mapping whichever registers they want to access.
> 
The static mapping is for old Realtek devices driver.
I will 'use ioremap()' to replace with static mapping.

> > +static void __init rtk_dt_init(void)
> > +{
> > +       of_platform_populate(NULL, of_default_bus_match_table, NULL,
> > +NULL); }
> 
> This should be taken care of by the
> of_platform_default_populate_init() and can be dropped.
> 
I will remove rtk_dt_init() in new version patch.

> > +static void __init rtk_timer_init(void) { #ifdef CONFIG_COMMON_CLK
> > +       of_clk_init(NULL);
> > +#endif
> 
> COMMON_CLK is implied by ARCH_MULTI_V7, so the #ifdef can be dropped.
> 
OK, I understand.

> > +       timer_probe();
> > +       tick_setup_hrtimer_broadcast(); }
> 
> What do you need tick_setup_hrtimer_broadcast() for? I don't see any other
> platform calling this.
> 
I want to initialize the HR timer.

> > +bool __init rtk_smp_init_ops(void)
> > +{
> > +       smp_set_ops(smp_ops(rtk_smp_ops));
> > +
> > +       return true;
> > +}
> 
> I think this can also be dropped, as you set the smp_ops in the machine
> descriptor.
> 
OK, I understand.

>        Arnd
> 
> ------Please consider the environment before printing this e-mail.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
