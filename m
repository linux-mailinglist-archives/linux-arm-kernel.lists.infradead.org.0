Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C4AD429A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:19:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qf/Zp4NDYr7zM/I9y3Joy7BDiPbSHK/8wtA4XrCG11o=; b=b0GQJi+FBNABJ6
	64vMd9gwFPMP2qyQk0cA+2cv+WO0dfiAos9sY1Qwv8ja+xuhRPHnqzwCb7xvCURoSv6daJ08wztps
	nW569e2GYjZMdV0njB2c9I5Ykldx/JaxeA4iD4/8zVtbaosspJe5C1ZxoYC1IsbJL1jCm00o8hJxq
	QRT0K78PCihBUJ7dkFOwvOWc+woZT9Afj+htMkZuBExkluavcVrsbH1xvs+TrUV0YtP58zDt6ciSE
	KTMEEOpKxLspa6OA9Ex1R8ArDwb8hkZ0b4UZm+oZJX7xMJFwcN9d67xv00bXpf8imZcysdSIYJenH
	kpyjGl+2wqaLTGFXBs9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvlM-0002X7-NC; Fri, 11 Oct 2019 14:19:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvlB-0002Vs-Lq; Fri, 11 Oct 2019 14:19:15 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iIvl8-0002aN-FF; Fri, 11 Oct 2019 16:19:10 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add Beelink A1
Date: Fri, 11 Oct 2019 16:19:09 +0200
Message-ID: <5779329.sYoq9m6zvk@diego>
In-Reply-To: <4c490e48-7a85-4ef9-771c-165defde39cc@arm.com>
References: <9037b7edbbb41cbbf699ebe3a511daf22d886e7d.1570444695.git.robin.murphy@arm.com>
 <CAL_JsqKBy+i+=gGyYhBgcMUYsWd_CL_GnEoQqALBb+Gy7Ogb6A@mail.gmail.com>
 <4c490e48-7a85-4ef9-771c-165defde39cc@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_071913_864759_EFD70EF2 
X-CRM114-Status: GOOD (  26.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 11. Oktober 2019, 14:20:38 CEST schrieb Robin Murphy:
> On 07/10/2019 13:53, Rob Herring wrote:
> > On Mon, Oct 7, 2019 at 6:33 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> Beelink A1 is a TV box implementing the higher-end options of the
> >> RK3328 reference design - the DTB from the stock Android firmware is
> >> clearly the "rk3328-box-plus" variant from the Rockchip 3.10 BSP with
> >> minor modifications to accommodate the USB WiFi module and additional
> >> VFD-style LED driver. It features:
> >>
> >> - 4GB of 32-bit LPDDR3
> >> - 16GB of HS200 eMMC (newer models with 32GB also exist)
> >> - Realtek RTL8211F phy for gigabit ethernet
> >> - Fn-Link 6221E-UUC module (RealTek RTL8821CU) for 11ac WiFi and Bluetooth 4.2
> >> - HDMI and analog A/V
> >> - 1x USB 3.0 type A host, 1x USB 2.0 type A OTG, 1x micro SD
> >> - IR receiver and a neat little LED clock display.
> >>
> >> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> >> ---
> >>
> >> One question I'm wondering about is whether it's worth pushing the HDMI
> >> and analog codec audio cards down into rk3328.dtsi (as with HDMI audio
> >> on RK3399), since those audio pipelines are internal to the SoC and the
> >> board only really governs whether the outputs are wired up or not.
> > 
> > Seems reasonable. One other candidate below.
> > 
> >>
> >>   .../devicetree/bindings/arm/rockchip.yaml     |   5 +
> > 
> > In the future, please split bindings to a separate patch.
> 
> Ha, busted! I thought this might be trivial enough to slip through, but 
> I'll split it out if you prefer.
> 
> >>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >>   arch/arm64/boot/dts/rockchip/rk3328-a1.dts    | 399 ++++++++++++++++++
> >>   3 files changed, 405 insertions(+)
> >>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> index c82c5e57d44c..f27f7805f57e 100644
> >> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> >> @@ -40,6 +40,11 @@ properties:
> >>             - const: asus,rk3288-tinker-s
> >>             - const: rockchip,rk3288
> >>
> >> +      - description: Beelink A1
> >> +        items:
> >> +          - const: azw,beelink-a1
> >> +          - const: rockchip,rk3328
> >> +
> >>         - description: bq Curie 2 tablet
> >>           items:
> >>             - const: mundoreader,bq-curie2
> >> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> >> index 1f18a9392d15..a6f250e7cde2 100644
> >> --- a/arch/arm64/boot/dts/rockchip/Makefile
> >> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> >> @@ -1,5 +1,6 @@
> >>   # SPDX-License-Identifier: GPL-2.0
> >>   dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
> >> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-a1.dtb
> >>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
> >>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
> >>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-roc-cc.dtb
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> >> new file mode 100644
> >> index 000000000000..03ad663ff821
> >> --- /dev/null
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> >> @@ -0,0 +1,399 @@
> >> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
> >> +// Copyright (c) 2017-2019 Arm Ltd.
> >> +
> >> +/dts-v1/;
> >> +#include "rk3328.dtsi"
> >> +
> >> +/ {
> >> +       model = "Beelink A1";
> >> +       compatible = "azw,beelink-a1", "rockchip,rk3328";
> >> +
> >> +       /*
> >> +        * UART pins, as viewed with bottom of case removed:
> >> +        *
> >> +        *           Front
> >> +        *        /-------
> >> +        *  L    / o <- Gnd
> >> +        *  e   / o <-- Rx
> >> +        *  f  / o <--- Tx
> >> +        *  t / o <---- +3.3v
> >> +        *    |
> >> +        */
> >> +       chosen {
> >> +               stdout-path = "serial2:1500000n8";
> >> +       };
> >> +
> >> +       gmac_clkin: external-gmac-clock {
> >> +               compatible = "fixed-clock";
> >> +               clock-frequency = <125000000>;
> >> +               clock-output-names = "gmac_clkin";
> >> +               #clock-cells = <0>;
> >> +       };
> >> +
> >> +       vcc_host_5v: usb3-current-switch {
> >> +               compatible = "regulator-fixed";
> >> +               enable-active-high;
> >> +               gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
> >> +               pinctrl-names = "default";
> >> +               pinctrl-0 = <&usb30_host_drv>;
> >> +               regulator-name = "vcc_host_5v";
> >> +               vin-supply = <&vcc_sys>;
> >> +       };
> >> +
> >> +       vcc_sys: vcc-sys {
> >> +               compatible = "regulator-fixed";
> >> +               regulator-name = "vcc_sys";
> >> +               regulator-min-microvolt = <5000000>;
> >> +               regulator-max-microvolt = <5000000>;
> >> +       };
> >> +
> >> +       cpus {
> >> +               idle-states {
> >> +                       entry-method = "arm,psci";
> >> +
> >> +                       cpu_sleep: cpu-sleep {
> >> +                               compatible = "arm,idle-state";
> >> +                               arm,psci-suspend-param = <0x0010000>;
> >> +                               local-timer-stop;
> >> +                               entry-latency-us = <120>;
> >> +                               exit-latency-us = <250>;
> >> +                               min-residency-us = <900>;
> > 
> > This doesn't seem like something that's board specific, but I guess
> > the regulator could have some influence on these times. If so, the
> > board file could always override a default.
> 
> True, this is traceable back to the Rockchip Android BSP where it's 
> actually applied to the entire SoC family[1]. I don't know if there's 
> likely to be any difference between the downstream "RKTRUST" firmware 
> binaries (which this nominally represents) and upstream ATF in terms of 
> their PSCI implementation/performance.
> 
> I've not got round to properly tinkering with suspend/resume and power 
> management stuff yet, so I guess another option would be to just forget 
> about this part for now - Heiko, any opinions?

I think nobody actually knows what goes on in Rockchip's binary ATF
variant, which is the reason I dislike it so much ;-) .

What's in the upstream sources should always take precedent. Looking
at rk3399 as an example where they had oversight from ChromeOS people
there are idle-states in rk3399.dtsi and I guess there should be a
counterpart int ATF.

The idle-state values also match rk3399's cpu-sleep, so seem pretty
standard. So should just go into rk3328.dtsi after someone could verify
that this works with upstream ATF.

Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
