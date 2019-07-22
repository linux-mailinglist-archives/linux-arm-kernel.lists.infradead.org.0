Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC506F959
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Plk3JQUllIfDz/hFw0ZLRp3uDJiZoYhXii4KNukV0Sc=; b=EIS8sU4IBFym21
	aXi4UeRS8Om3rUrg2G1lWh5us/r2lEfQrFlna/DRGvoUaw8cd0rnBmyv+mt1GpGcYWa33UfTg6Sgl
	9bz+3j3djJeEpnaxKJZtWGCzSETAW8r39XQa05UKArAuVMr9A7pppEIllgERTj5SVubBDjmrT13Tk
	nYj7KPrMzPRcDVznn5Q1T9WRY35P39aB/GFXOBhfVEHarWvSSHpEUxT17oaD1D0hYbWpqxWPjLYbn
	YmcWfnyvs7yB8LDhcuEh1c7PlXxaAAcDwVp/J0HcD4y4AeN2A8cMUvV1yUALUIdlmxg0Tdyhz9chw
	qzngEaN6h3ZzXbwHWJpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRWc-0005aE-ON; Mon, 22 Jul 2019 06:10:18 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRWK-0005J0-4g
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 06:10:01 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id CA87C803A;
 Mon, 22 Jul 2019 06:10:19 +0000 (UTC)
Date: Sun, 21 Jul 2019 23:09:51 -0700
From: Tony Lindgren <tony@atomide.com>
To: David Lechner <david@lechnology.com>
Subject: Re: [PATCH 1/4] ARM: OMAP2+: Drop mmc platform data for am330x and
 am43xx
Message-ID: <20190722060951.GL5447@atomide.com>
References: <20190326181324.32140-1-tony@atomide.com>
 <20190326181324.32140-2-tony@atomide.com>
 <0af63198-5a68-2f0d-f14e-2b514580d2d5@lechnology.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0af63198-5a68-2f0d-f14e-2b514580d2d5@lechnology.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_231000_225854_A4623C77 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* David Lechner <david@lechnology.com> [190721 02:43]:
> On 3/26/19 1:13 PM, Tony Lindgren wrote:
> > We can now drop legacy platform data one interconnect target module at
> > a time in favor of the device tree based data that has been added earlier.
> > 
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > ---
> 
> This breaks wifi on BeagleBone Blue (found via git bisect). In dmesg, I see:
> 
>     platform 47810000.mmc: Cannot lookup hwmod 'mmc3'

Thanks for letting me know and sorry for breaking it.

> How can we fix it?

The warning you pasted above hints that we're still trying to
probe mmc3 using platform data, and that data no longer exists.

Looks like I've completely missed updating the dts file for
mmc3 that is directly on the l3 interconnect instead of l4 like
all the other mmc instances. The same applies for am4 too, and
I've also left some "ti,hwmods" properties around too..

Care to try the following patch and see if it fixes the issue
for you?

I've only boot tested on bbb and am437x-idk and made sure
the mmc instance probes. But my beaglebone blue lost it's
serial connector and pads so I have not been testing on it.

Regards,

Tony

8< ----------
diff --git a/arch/arm/boot/dts/am33xx-l4.dtsi b/arch/arm/boot/dts/am33xx-l4.dtsi
--- a/arch/arm/boot/dts/am33xx-l4.dtsi
+++ b/arch/arm/boot/dts/am33xx-l4.dtsi
@@ -1312,7 +1312,6 @@
 
 		target-module@60000 {			/* 0x48060000, ap 36 0c.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "mmc1";
 			reg = <0x602fc 0x4>,
 			      <0x60110 0x4>,
 			      <0x60114 0x4>;
@@ -1802,7 +1801,6 @@
 
 		target-module@d8000 {			/* 0x481d8000, ap 64 66.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "mmc2";
 			reg = <0xd82fc 0x4>,
 			      <0xd8110 0x4>,
 			      <0xd8114 0x4>;
diff --git a/arch/arm/boot/dts/am33xx.dtsi b/arch/arm/boot/dts/am33xx.dtsi
--- a/arch/arm/boot/dts/am33xx.dtsi
+++ b/arch/arm/boot/dts/am33xx.dtsi
@@ -234,13 +234,32 @@
 			interrupt-names = "edma3_tcerrint";
 		};
 
-		mmc3: mmc@47810000 {
-			compatible = "ti,omap4-hsmmc";
-			ti,hwmods = "mmc3";
-			ti,needs-special-reset;
-			interrupts = <29>;
-			reg = <0x47810000 0x1000>;
-			status = "disabled";
+		target-module@47810000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
+			reg = <0x478102fc 0x4>,
+			      <0x47810110 0x4>,
+			      <0x47810114 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
+					 SYSC_OMAP2_ENAWAKEUP |
+					 SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,syss-mask = <1>;
+			clocks = <&l3s_clkctrl AM3_L3S_MMC3_CLKCTRL 0>;
+			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x47810000 0x1000>;
+
+			mmc3: mmc@0 {
+				compatible = "ti,omap4-hsmmc";
+				ti,needs-special-reset;
+				interrupts = <29>;
+				reg = <0x0 0x1000>;
+			};
 		};
 
 		usb: usb@47400000 {
diff --git a/arch/arm/boot/dts/am4372.dtsi b/arch/arm/boot/dts/am4372.dtsi
--- a/arch/arm/boot/dts/am4372.dtsi
+++ b/arch/arm/boot/dts/am4372.dtsi
@@ -228,13 +228,32 @@
 			interrupt-names = "edma3_tcerrint";
 		};
 
-		mmc3: mmc@47810000 {
-			compatible = "ti,omap4-hsmmc";
-			reg = <0x47810000 0x1000>;
-			ti,hwmods = "mmc3";
-			ti,needs-special-reset;
-			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
-			status = "disabled";
+		target-module@47810000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
+			reg = <0x478102fc 0x4>,
+			      <0x47810110 0x4>,
+			      <0x47810114 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
+					 SYSC_OMAP2_ENAWAKEUP |
+					 SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,syss-mask = <1>;
+			clocks = <&l3s_clkctrl AM4_L3S_MMC3_CLKCTRL 0>;
+			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x47810000 0x1000>;
+
+			mmc3: mmc@0 {
+				compatible = "ti,omap4-hsmmc";
+				ti,needs-special-reset;
+				interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+				reg = <0x0 0x1000>;
+			};
 		};
 
 		sham: sham@53100000 {
diff --git a/arch/arm/boot/dts/am437x-l4.dtsi b/arch/arm/boot/dts/am437x-l4.dtsi
--- a/arch/arm/boot/dts/am437x-l4.dtsi
+++ b/arch/arm/boot/dts/am437x-l4.dtsi
@@ -1085,7 +1085,6 @@
 
 		target-module@60000 {			/* 0x48060000, ap 30 14.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "mmc1";
 			reg = <0x602fc 0x4>,
 			      <0x60110 0x4>,
 			      <0x60114 0x4>;
@@ -1612,7 +1611,6 @@
 
 		target-module@d8000 {			/* 0x481d8000, ap 54 5e.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "mmc2";
 			reg = <0xd82fc 0x4>,
 			      <0xd8110 0x4>,
 			      <0xd8114 0x4>;
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
