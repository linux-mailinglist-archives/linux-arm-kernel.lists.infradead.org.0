Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD69E15B1B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 21:20:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHATW2usLnh44VKgpn/5MVCRR2VziXKNLvLdh/5vPKw=; b=uD37RIMKe0Pbfe
	95XNzt46UqiSHgTOyITyteUjBC9uh2MFRQ6KKHQKFAlaIEhdYHvoWFbc1EE5DvETQHR3hc3976ehE
	rYVdefooVtYSbo2VReYsOqnOH5XPCW+vAlOJ4zdPtCnOOWWvI6FIeba3Of6xYrvzbqWF3JKnW+LJ7
	Pj1fKYp0T5nRwqUVgC4DVzEFWXAVz7votMVXKUi6OgWO3O/s8xzfE7SqbpOW+hMnG3MotfY68HQV7
	rFL1RTDoIhRruUyER+y9jVNL/J0d8HilezOZ74nLD1zagufllDAYjYZVPwMaSuZY4gpEkOlwiCRy2
	hGGWDZBFy2/N5HG3OT7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1yUc-0005AV-RC; Wed, 12 Feb 2020 20:20:18 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1yUC-00052l-9x; Wed, 12 Feb 2020 20:19:54 +0000
Received: from mail-qk1-f177.google.com ([209.85.222.177]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MTzve-1itgzm3HDG-00Qxsw; Wed, 12 Feb 2020 21:19:49 +0100
Received: by mail-qk1-f177.google.com with SMTP id c188so3402200qkg.4;
 Wed, 12 Feb 2020 12:19:47 -0800 (PST)
X-Gm-Message-State: APjAAAX1dSnnyq3PoBgmh9eMiLSQ3pcVwKdMc6HITUxKRkzAf9WopDih
 Wep+awS1AU7WbZETp3xmGNqPFW9nBZYQZ1OxyPw=
X-Google-Smtp-Source: APXvYqwQIOhVnY9bQ1LDgJmsuv+7ni6xH/3BERILwIwIeUDXR88bOYRlBrWjmBW9A4udrXrmXhmIrc8oCdOVs0WJ/I0=
X-Received: by 2002:a37:e409:: with SMTP id y9mr12825473qkf.352.1581538786339; 
 Wed, 12 Feb 2020 12:19:46 -0800 (PST)
MIME-Version: 1.0
References: <20200110173425.21895-1-nsaenzjulienne@suse.de>
In-Reply-To: <20200110173425.21895-1-nsaenzjulienne@suse.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 12 Feb 2020 21:19:29 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1tLrkymeJfXvDk_kxPvW_PQy6zNmrmO++dOPCWm71vOA@mail.gmail.com>
Message-ID: <CAK8P3a1tLrkymeJfXvDk_kxPvW_PQy6zNmrmO++dOPCWm71vOA@mail.gmail.com>
Subject: Re: [RFC] ARM: add multi_v7_lpae_defconfig
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-Provags-ID: V03:K1:HxoS2vZRQww9XcdRaz2g5bXC+nksyeWIu//eXmoqNQVMrYyK/cp
 fDEMo10FyoKdNBlkj48YkPh/vP4Gb30ZgXaQTNPbD4VFlKe2Z9Ljebfcnn4SzeJx2R8J09z
 kZ5R2scln05lmrIzNIZ37JtzEQQjyfTfD2ha7uskD5FNKrepeVsnM/vr3bbwr7sBtBwLq02
 zNOphMd4l62LmcyjjYGwA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:j9eMqHw1n54=:hAF3M7y+83TyjOlokI0NC6
 HgZGMqQ5hcG1P+kUz3CdnD/3U/OrNDdfm6+0ktQPdjTIiQLtZxI0Ir2OPhEnSb6ysPLttGfCe
 myqWg49CQBnNSIkjSx3U2ihUfTXcE1NenR4qA/6Gl1H0uk1U/xZz/I2osehoqcNjUmQ/ZrJVW
 4LSwRGJO7UKAzAubVlnb102XDCdc99/HG7NQdu+k2mJRx9FdGLpQb8fI0ksld6DifQRg+xped
 CS7KhGjDuoa25LGHDWkoIsatYMTK/lTRvFQqnk2SY+1O4xiH+ZsE/Wz+7Hp1oUhTWhuqLc1o/
 a2odOsDw1Vg0XQiPAbUzTUwPgp0S3L+sLO5gmGLypHP2100JniCEaC3k+fdmrimaY1hNv3W4t
 QKTET1UfPMDvMCGKCZHLpzmitvT/PhwOFCwYUvFuM0fOOxVMFkIl6zPNRAcIo6mdZJzsB/rS6
 73tPpsoejKwqgZVN/Z5XWdHioZqXFjoPH6qj7icwwsx9QvnEPx/SpXzNFDbYXC+A/TOPKaBvH
 dKR/cQxP+gSlvscAF5H7useQDWE6mCRd0UggHErAd6K5HRHj7J98nCuv4FhKMKm9OnqwfWj1B
 3JlRBBw02p/dnKtSUVaLVGl+e7Lma3ShMliwxDBjZqLB8FKmmd1p2di0QhEaLcg5ot+rUUKBH
 NAa3H++8LwR2YsUMaVFlCMt/X1khktrSnWvbnxRWYpOSotZM+woSOPG2nB6u1pmwJ57moG0tL
 RwkfzEOVilZThDnUik/6aDotsfIvkyBPEtS+BGEAQy4NnzHAgDGSIDQSrEOlcXzDMBicBy8M3
 FRDaVhA/hpBOJliC83IxEpK0u7RSoZORonpv3e3JoObc+QJMfM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_121952_641938_ABE3A5E8 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Phil Elwell <phil@raspberrypi.org>,
 Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Wahren <wahrenst@gmx.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 6:35 PM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> The only missing configuration option preventing us from using
> multi_v7_defconfig with the RPi4 is ARM_LPAE. It's needed as the PCIe
> controller found on the SoC depends on 64bit addressing, yet can't be
> included as not all v7 boards support LPAE.
>
> Introduce multi_v7_lpae_defconfig, built off multi_v7_defconfig, which will
> avoid us having to duplicate and maintain multiple similar configurations.
>
> Note that merge_into_defconfig was taken from arch/powerpc/Makefile.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

I like the idea, but I would note that a lot of platforms enabled in
multi_v7_defconfig do not support LPAE. In particular, the first ARMv7
cores (Cortex-A8, -A9, -A5, and PJ4) don't, but the later ones (Cortex-A7,
-A15, -A17, and PJ4C-MP) do.

Here is a list from the defconfig file

CONFIG_ARCH_VIRT=y
CONFIG_ARCH_ALPINE=y
CONFIG_ARCH_ARTPEC=y
CONFIG_MACH_ARTPEC6=y

Artpec is A9

CONFIG_ARCH_ASPEED=y
CONFIG_MACH_ASPEED_G6=y
CONFIG_ARCH_AT91=y
CONFIG_SOC_SAMA5D2=y
CONFIG_SOC_SAMA5D3=y
CONFIG_SOC_SAMA5D4=y

AT91/SAMA5 is A5

CONFIG_ARCH_BCM=y
CONFIG_ARCH_BCM_CYGNUS=y
CONFIG_ARCH_BCM_HR2=y
CONFIG_ARCH_BCM_NSP=y
CONFIG_ARCH_BCM_5301X=y
CONFIG_ARCH_BCM_281XX=y
CONFIG_ARCH_BCM_21664=y
CONFIG_ARCH_BCM_63XX=y
CONFIG_ARCH_BRCMSTB=y

I think most of the above are A9, but not sure

CONFIG_ARCH_BCM2835=y
CONFIG_ARCH_BERLIN=y
CONFIG_MACH_BERLIN_BG2CD=y
CONFIG_MACH_BERLIN_BG2Q=y
CONFIG_MACH_BERLIN_BG2=y

These are mixed, I think BG2CD is A7, but the older ones are A9 or PJ4

CONFIG_ARCH_DIGICOLOR=y

CX92755 is an A8

CONFIG_ARCH_EXYNOS=y

exynos is a mix of A9 and A15/A7, so this is fine

CONFIG_ARCH_HIGHBANK=y

A9 and A15, also fine

CONFIG_ARCH_HISI=y
CONFIG_ARCH_HI3xxx=y
CONFIG_ARCH_HIP01=y
CONFIG_ARCH_HIP04=y
CONFIG_ARCH_HIX5HD2=y
CONFIG_ARCH_MXC=y
CONFIG_SOC_IMX50=y
CONFIG_SOC_IMX51=y
CONFIG_SOC_IMX53=y

IMX5 is A8

CONFIG_SOC_IMX6Q=y
CONFIG_SOC_IMX6SL=y
CONFIG_SOC_IMX6SX=y

These older imx6 variants are A9, but the 6UL and 7D are A7.

CONFIG_SOC_IMX6UL=y
CONFIG_SOC_LS1021A=y
CONFIG_SOC_IMX7D=y
CONFIG_SOC_VF610=y

VF610 is an A5

CONFIG_ARCH_KEYSTONE=y
CONFIG_ARCH_MEDIATEK=y

Mediatek is mostly A7, but some A9

CONFIG_ARCH_MESON=y

Mixed

CONFIG_ARCH_MILBEAUT=y
CONFIG_ARCH_MILBEAUT_M10V=y
CONFIG_ARCH_MMP=y
CONFIG_MACH_MMP2_DT=y
CONFIG_MACH_MMP3_DT=y

MMP is a PJ4, I don't think there is LPAE, but not sure

CONFIG_ARCH_MVEBU=y
CONFIG_MACH_ARMADA_370=y
CONFIG_MACH_ARMADA_375=y
CONFIG_MACH_ARMADA_38X=y
CONFIG_MACH_ARMADA_39X=y
CONFIG_MACH_ARMADA_XP=y
CONFIG_MACH_DOVE=y

Fairly sure only Armada XP has LPAE out of these

CONFIG_ARCH_OMAP3=y
CONFIG_ARCH_OMAP4=y
CONFIG_SOC_OMAP5=y
CONFIG_SOC_AM33XX=y
CONFIG_SOC_AM43XX=y
CONFIG_SOC_DRA7XX=y

only OMAP5 and DRA7 use an A15, the others are A8 or A9

CONFIG_ARCH_SIRF=y
CONFIG_ARCH_QCOM=y
CONFIG_ARCH_MSM8X60=y
CONFIG_ARCH_MSM8960=y
CONFIG_ARCH_MSM8974=y

Not sure whether there is LPAE on Qualcomm's custom cores

CONFIG_ARCH_ROCKCHIP=y

Mixed

CONFIG_ARCH_RENESAS=y

Mixed

CONFIG_ARCH_SOCFPGA=y

A9 only

CONFIG_PLAT_SPEAR=y
CONFIG_ARCH_SPEAR13XX=y
CONFIG_MACH_SPEAR1310=y
CONFIG_MACH_SPEAR1340=y

A9 only

CONFIG_ARCH_STI=y
CONFIG_ARCH_STM32=y
CONFIG_ARCH_SUNXI=y

sunxi has A8 and A7 (and one that is A15+A7)

CONFIG_ARCH_TEGRA=y

Mixed

CONFIG_ARCH_UNIPHIER=y

 A9 only so far

CONFIG_ARCH_U8500=y

A9 only

CONFIG_ARCH_VEXPRESS=y

A9 or A15

CONFIG_ARCH_WM8850=y

A9

CONFIG_ARCH_ZYNQ=y

A9

I think it would make sense to either turn off the various A8/A9/A5 platforms
in the fragment, or add a CONFIG_ARCH_MULTI_V7VE option, and then
change the Kconfig dependencies so that the older platforms get turned off
when only V7 but not V7VE is set.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
