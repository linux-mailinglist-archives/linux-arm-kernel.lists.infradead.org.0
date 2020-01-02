Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD82E12E5D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 12:49:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHUEmOcCqZX513hA4FE/mIgtY1XvYpPbGBTL+Kwft1M=; b=fjXBt9iiQhuLLo
	PmkBefErN0eubUAU9Qn3X3YzjxOUkc0vsSJZlkCGsR+wNXp9voq/lhYuTc2HdX1AlYTdT/YEwNp3u
	/T8EwuADXJoZ9Ny4SC8IY6PddRAWC+RXKI+AH186RjUN0yuQLiJe6v2ZbshnRSG3bVHrpEqK4uqic
	10EChuu9hxF2SWBDXmCFSkoqEBHIm9sefYyfQEWcezx1m9av5g4J/ccyJsOpoBTmT4vrWN2p/wmpf
	6kdZ2L44vQVK+FgkEG5k0sVNEpY76wMtWCcWQAAAIjCUo9yKSpsO/bDxJ4gWr9MpdoZC0+94hH9i7
	euVh9ubHU4VEU16yW4yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imyzB-0004S7-OE; Thu, 02 Jan 2020 11:49:53 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imyz2-0004RF-QA
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 11:49:48 +0000
Received: from mail-qk1-f172.google.com ([209.85.222.172]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MSZDt-1jArdK0rpx-00Svtr for <linux-arm-kernel@lists.infradead.org>; Thu,
 02 Jan 2020 12:49:39 +0100
Received: by mail-qk1-f172.google.com with SMTP id z14so29901364qkg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 03:49:39 -0800 (PST)
X-Gm-Message-State: APjAAAUtguNLLxY8MQC6qbYO/jLCvGK/YUSW7qWgDk+6kGePGAQb/mdU
 mD3i0U/CImDfStBVIlTutK3zbP0QKRIfS2S6F0k=
X-Google-Smtp-Source: APXvYqxydssWmkTg9COOlagrp5A+51TGitaXs//MyLhzxeBFOq9tZRxhmj6IwWv8LnVZ3yHfar1ZPMwPeZq4rn9wkjU=
X-Received: by 2002:a05:620a:a5b:: with SMTP id
 j27mr66559974qka.286.1577965778074; 
 Thu, 02 Jan 2020 03:49:38 -0800 (PST)
MIME-Version: 1.0
References: <20191228162929.GA29269@duo.ucw.cz>
 <20191228193622.GA13047@duo.ucw.cz>
 <20191230173507.GM35479@atomide.com> <20200102110025.GA29035@amd>
In-Reply-To: <20200102110025.GA29035@amd>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 2 Jan 2020 12:49:22 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2Ya+GZRRA_THZBVDq7SWO8UYoUPwW5fEyorCVjPnd1qA@mail.gmail.com>
Message-ID: <CAK8P3a2Ya+GZRRA_THZBVDq7SWO8UYoUPwW5fEyorCVjPnd1qA@mail.gmail.com>
Subject: Re: Droid 4 regression in 5.5-rc1, armsoc-soc tree
To: Pavel Machek <pavel@ucw.cz>
X-Provags-ID: V03:K1:snj8RrTWsKdNqEeAyZrjR4Lz5U1XSJjYiYbGCuuZz9nCT/exvv0
 64vh4yBHzXytTrQL7nNYGvhYX/2SCEaugoW6dButnOrtMHKaoTxuP0d8ehbvASJZ7yul8tN
 S36wOTcwqYDT89JFOXEILEhPWHxqt813OKHbsHO7xUrGd4W5Aa0m7hdnGUOskrFIs0ZMPCL
 +OBk6xScBWA5PNpnstCuw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9obGR1M0IpE=:F7Hs45n/hjBXqOuM5yiqaj
 Y8G+dYaiaR7D8NTyvAwFwT/7puqQlpJeUohDRfF0zz7dlOd9Lbsr41/MjqWdUYI6yF7mBLhuU
 AWpExsV+nnG8QepHBjpdmwIahrgkpyQtw2z6iA/rCFSfL3h33KRKJYFwCouwmmsGltatHUFmA
 1bTaws8t+nV4BgSJK98E+9N7DjEkVj3zH15os0vr//OP5FW7OMmsb5bchd8XY/4mM03z8pC/J
 oiR8LJ6an89ceGotk0k2jNuu6gRKLdzA+asm8bPoaVrJz6fEZl1fiLobgOgrS126lG0LkbjeP
 3qEwbYgLIUwT3mn87mZX/dcJFqpGfCFYscBz9Ag4fvWnoimcccFb9BEu87EpnOJOxmDyp+I2L
 IKQwJqYT0iujH+EEKtZvtwTPTPO05jtR9vhvLwDt6TLOGNt/fwgdjeu+Kwqy1/tyqJ7mT52NY
 J1TELFai5wFQxq35MpboFSCEZFXs1hJSGt4WNDw7Fk0jsyfe4NGilYKJl7h8VcJdKgMZne0TD
 IlLhdlhGHHeMWReIQmxZB/4uatHbYSRsluD3YVv2K3fFIinis1skcLtfbPPvgaIFb/OTDTmMT
 JKioP2JkVHYBuW2h+gYE85eKl/l78Bf3cg3hafuuNxI1zHIFv+JA2KCgbZzhioY5xEkhvmlV9
 ow9WqaccG3R4dMESWMHhfHMbvPQ16fMJb2mN1MScJFbjkvsjUDVjw4AkhYbxJpPW4RcQYgt6A
 Dyd1TmNRt0R4OtvxL041PRiLo+9i/FrkK7GVRdcbJPXsgqUWb/9YKjPFgE0XYZtus+F7MMjwh
 YfZZHsV7m9CfqA229VHjGvlSnZWUpzty/rmwrTIbiIi7F5Zke/sribxbLMnh12yfsBdPa+gpA
 +NWrhNIcVV9N5Sf/AFXQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_034945_668005_FD6E26E1 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
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
Cc: Marcel Partap <mpartap@gmx.net>, Tony Lindgren <tony@atomide.com>,
 merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, Sebastian Reichel <sre@kernel.org>,
 nekit1000@gmail.com, Olof Johansson <olof@lixom.net>,
 linux-omap <linux-omap@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 12:00 PM Pavel Machek <pavel@ucw.cz> wrote:
>
> On Mon 2019-12-30 09:35:07, Tony Lindgren wrote:
> > * Pavel Machek <pavel@ucw.cz> [191228 19:37]:
> > > Hi!
> > >
> > > > 5.4-based kernel works ok on my droid 4.
> > > >
> > > > 5.5-rc3 based kernel has problems; it reboots when I try to kexec it.
> > > >
> > > > Vanilla 5.5-rc3 reboots, too.
> > > >
> > > > If you have any ideas, let me know.
> > >
> > > I managed to get partial serial dump. This should be 5.5-rc3: And then
> > > a bit better serial dump (below). But it is silent for few seconds,
> > > and then it restarts...
> >
> > If spi or regulators have problems, nothing will really work..
>
> arm-soc merge seems to be responsible:
>
> bad 38206c24ab09b4f4c2a57de5c1af0bb2e69cf5b6 Merge tag 'armsoc-soc' of
> good d9e48dc2a71a836f17d1febbedb31470f957edb4 Merge tag
>
>                                                                         Pavel
>
> # bad: [738d2902773e30939a982c8df7a7f94293659810] Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net
> # good: [219d54332a09e8d8741c1e1982f5eae56099de85] Linux 5.4
> git bisect start '738d2902773e' '219d54332a09'
> # bad: [46cf053efec6a3a5f343fead837777efe8252a46] Linux 5.5-rc3
> git bisect bad 46cf053efec6a3a5f343fead837777efe8252a46
> # bad: [e42617b825f8073569da76dc4510bfa019b1c35a] Linux 5.5-rc1
> git bisect bad e42617b825f8073569da76dc4510bfa019b1c35a
> # good: [9a3d7fd275be4559277667228902824165153c80] Merge tag 'driver-core-5.5-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core
> git bisect good 9a3d7fd275be4559277667228902824165153c80
> # good: [0b4295b5e2b9b42f3f3096496fe4775b656c9ba6] io_uring: fix a typo in a comment
> git bisect good 0b4295b5e2b9b42f3f3096496fe4775b656c9ba6
> # good: [056df578c2dcac1e624254567f5df5ddaa223234] Merge tag 'arc-5.5-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/vgupta/arc
> git bisect good 056df578c2dcac1e624254567f5df5ddaa223234
> # bad: [25cfb0c7de3f14e283a43dcd6de903657f9f98c7] Merge branch 'for-next' of git://git.kernel.org/pub/scm/linux/kernel/git/gerg/m68knommu
> git bisect bad 25cfb0c7de3f14e283a43dcd6de903657f9f98c7
> # bad: [38206c24ab09b4f4c2a57de5c1af0bb2e69cf5b6] Merge tag 'armsoc-soc' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
> git bisect bad 38206c24ab09b4f4c2a57de5c1af0bb2e69cf5b6
> # good: [d9e48dc2a71a836f17d1febbedb31470f957edb4] Merge tag 'pwm/for-5.5-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/thierry.reding/linux-pwm
> git bisect good d9e48dc2a71a836f17d1febbedb31470f957edb4

In that branch, I see the following non-merge commits:

0b491904f053 ARM: OMAP2+: Add missing put_device() call in omapdss_init_of()
7b6560b4bc62 OMAP2: fixup doc comments in omap_device
dafd24c727e8 ARM: OMAP1: drop duplicated dependency on ARCH_OMAP1
a3ee4fea24e8 ARM: ASPEED: update default ARCH_NR_GPIO for ARCH_ASPEED
d7eb28d2740f ARM: imx: use generic function to exit coherency
91d7ff5aa7e3 ARM: tegra: Use WFE for power-gating on Tegra30
d70f7d31a9e2 ARM: tegra: Fix FLOW_CTLR_HALT register clobbering by
tegra_resume()
4134b762eb13 ARM: exynos: Enable exynos-asv driver for ARCH_EXYNOS
603bba8d0e05 ARM: s3c: Rename s5p_usb_phy functions
e966fedeabe1 ARM: s3c: Rename s3c64xx_spi_setname() function
8267ff89b713 ARM: imx: Add serial number support for i.MX6/7 SoCs
427fca60ee45 ARM: imx: Drop imx_anatop_usb_chrg_detect_disable()
3d4e0158c1db arm64: Introduce config for S32
88ae095b2855 ARM: hisi: drop useless depend on ARCH_MULTI_V7
e3ca9556f75c arm64: realtek: Select reset controller
0a4319b5c87a ARM: shmobile: rcar-gen2: Drop legacy DT clock support
0a4818c19221 ARM: OMAP2+: Remove duplicated include from pmic-cpcap.c
ed2b6b129c2b ARM: OMAP1: ams-delta FIQ: Fix a typo ("Initiaize")
93a212ebfb08 MAINTAINERS: Add logicpd-som-lv and logicpd-torpedo to OMAP TREE
1994ebd1f746 ARM: OMAP2+: pdata-quirks: drop TI_ST/KIM support
06bd77f965ae ARM: OMAP2+: make omap44xx_sha0_hwmod and
omap44xx_l3_main_2__des static
89ffcdba95bd ARM: OMAP2+: prm44xx: make prm_{save,restore}_context static
607295af8870 ARM: OMAP2+: make dra7xx_sha0_hwmod static
87c59ca22b48 ARM: OMAP2+: do not export am43xx_control functions
3a828f5eda30 MAINTAINERS: Add mailing list for Realtek SoCs
c145649bf262 ARM: OMAP2+: Configure voltage controller for cpcap to low-speed
71065d3fe82d ARM: OMAP2+: Configure voltage controller for retention
821093e1fd3c ARM: OMAP2+: Make some functions static
759c2837f7e4 MAINTAINERS: mmp: add Git repository
dde465457fc9 ARM: mmp: remove MMP3 USB PHY registers from regs-usb.h
32adcaa010fa ARM: mmp: move cputype.h to include/linux/soc/
d093bc0378f5 ARM: mmp: add SMP support
a9372a5fb205 ARM: mmp: add support for MMP3 SoC
199c936e37f9 ARM: mmp: define MMP_CHIPID by the means of CIU_REG()
1732050f48a3 ARM: mmp: DT: convert timer driver to use TIMER_OF_DECLARE
e69fd5090dbd ARM: mmp: map the PGU as well
df8bf2d8a020 ARM: mmp: don't select CACHE_TAUROS2 on all ARCH_MMP
b513d3ff267d ARM: l2c: add definition for FWA in PL310 aux register
b47879aa85ed ARM: bcm: fix missing __iomem in bcm_kona_smc.c
d67fa6caae51 ARM: bcm: include local platsmp.h for bcm2836_smp_ops
21a18129edd7 ARM: OMAP2+: Simplify code for clkdm_clock_enable and disable
645ad6f3ca45 ARM: OMAP2+: Drop unused enable_wakeup and disable_wakeup
4873843718f9 ARM: OMAP2+: Initialize voltage controller for omap4
caf8c87d7ff2 ARM: OMAP2+: Allow core oswr for omap4
623429d5b901 ARM: OMAP2+: Allow per oswr for omap4
d44fa156dcb2 ARM: OMAP2+: Configure voltage controller for cpcap
32236a84906f ARM: OMAP2+: Update 4430 voltage controller operating points
ccd369455a23 ARM: OMAP2+: Remove bogus warnings for machines without twl PMIC
dfc065aa8963 ARM: OMAP2+: Drop bogus wkup domain oswr setting
5395b5557acb ARM: OMAP2+: Remove unused wakeup_cpu
781fa0a95424 ARM: bcm: Add support for BCM2711 SoC

Among these, the most likely candidates would be

0b491904f053 ARM: OMAP2+: Add missing put_device() call in omapdss_init_of()
06bd77f965ae ARM: OMAP2+: make omap44xx_sha0_hwmod and
omap44xx_l3_main_2__des static
c145649bf262 ARM: OMAP2+: Configure voltage controller for cpcap to low-speed
71065d3fe82d ARM: OMAP2+: Configure voltage controller for retention
21a18129edd7 ARM: OMAP2+: Simplify code for clkdm_clock_enable and disable
4873843718f9 ARM: OMAP2+: Initialize voltage controller for omap4
caf8c87d7ff2 ARM: OMAP2+: Allow core oswr for omap4
623429d5b901 ARM: OMAP2+: Allow per oswr for omap4
d44fa156dcb2 ARM: OMAP2+: Configure voltage controller for cpcap
32236a84906f ARM: OMAP2+: Update 4430 voltage controller operating points
ccd369455a23 ARM: OMAP2+: Remove bogus warnings for machines without twl PMIC
dfc065aa8963 ARM: OMAP2+: Drop bogus wkup domain oswr setting
5395b5557acb ARM: OMAP2+: Remove unused wakeup_cpu

Maybe try reverting these on top of the latest version to narrow it
down further?

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
