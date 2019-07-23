Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D87A7171C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqEr3VnDoZD9phjt8GecjxeOLwvvqINKJ70wPvC/qPI=; b=hWTVW3QiH6f/A9
	GPHuKM2OLdAGw293rEgPO169a7K4+ynQnr4LkQEvaGLT3UXauHBat+caoUfk8w7Hyn/bXSmzhqy5B
	UKE9kNnRuWcvw+7qPdfk3sf4ZS+S4L3Gym6SkkY3FPyhC99u3fXOZAluZtYz/HgQQsprpNrYCwvka
	AYge9lbsEb42UKVRup9d9xgPG+xAgYgJAp3+J+4EFoVxpNO1/8dkTVfaGJbjXAuNjy94KB5EaUGSm
	qeBxB8yESOOvGueyfwgDtZBac7+WD1uWaBw37OO0PjgZYGkF57Gnr7QNU7IEyYd7OHZ79ulWv0zFr
	aCdSWMv4U3fAfRpPPiFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpt03-0003GO-Bw; Tue, 23 Jul 2019 11:30:31 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpsy5-0000pc-9T
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:28:30 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 5078B81A0;
 Tue, 23 Jul 2019 11:28:53 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 5/8] ARM: dts: Drop bogus ahclkr clocks for dra7 mcasp 3 to 8
Date: Tue, 23 Jul 2019 04:28:08 -0700
Message-Id: <20190723112811.44381-6-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723112811.44381-1-tony@atomide.com>
References: <20190723112811.44381-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_042829_497927_07DE7651 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ahclkr clkctrl clock bit 28 only exists for mcasp 1 and 2 on dra7.
Otherwise we get the following warning on beagle-x15:

ti-sysc 48468000.target-module: could not add child clock ahclkr: -19

Fixes: 5241ccbf2819 ("ARM: dts: Add missing ranges for dra7 mcasp l3 ports")
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/dra7-l4.dtsi | 25 ++++++++++---------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boot/dts/dra7-l4.dtsi b/arch/arm/boot/dts/dra7-l4.dtsi
--- a/arch/arm/boot/dts/dra7-l4.dtsi
+++ b/arch/arm/boot/dts/dra7-l4.dtsi
@@ -2818,9 +2818,8 @@
 					<SYSC_IDLE_SMART>;
 			/* Domains (P, C): l4per_pwrdm, l4per2_clkdm */
 			clocks = <&l4per2_clkctrl DRA7_L4PER2_MCASP3_CLKCTRL 0>,
-				 <&l4per2_clkctrl DRA7_L4PER2_MCASP3_CLKCTRL 24>,
-				 <&l4per2_clkctrl DRA7_L4PER2_MCASP3_CLKCTRL 28>;
-			clock-names = "fck", "ahclkx", "ahclkr";
+				 <&l4per2_clkctrl DRA7_L4PER2_MCASP3_CLKCTRL 24>;
+			clock-names = "fck", "ahclkx";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x0 0x68000 0x2000>,
@@ -2854,9 +2853,8 @@
 					<SYSC_IDLE_SMART>;
 			/* Domains (P, C): l4per_pwrdm, l4per2_clkdm */
 			clocks = <&l4per2_clkctrl DRA7_L4PER2_MCASP4_CLKCTRL 0>,
-				 <&l4per2_clkctrl DRA7_L4PER2_MCASP4_CLKCTRL 24>,
-				 <&l4per2_clkctrl DRA7_L4PER2_MCASP4_CLKCTRL 28>;
-			clock-names = "fck", "ahclkx", "ahclkr";
+				 <&l4per2_clkctrl DRA7_L4PER2_MCASP4_CLKCTRL 24>;
+			clock-names = "fck", "ahclkx";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x0 0x6c000 0x2000>,
@@ -2890,9 +2888,8 @@
 					<SYSC_IDLE_SMART>;
 			/* Domains (P, C): l4per_pwrdm, l4per2_clkdm */
 			clocks = <&l4per2_clkctrl DRA7_L4PER2_MCASP5_CLKCTRL 0>,
-				 <&l4per2_clkctrl DRA7_L4PER2_MCASP5_CLKCTRL 24>,
-				 <&l4per2_clkctrl DRA7_L4PER2_MCASP5_CLKCTRL 28>;
-			clock-names = "fck", "ahclkx", "ahclkr";
+				 <&l4per2_clkctrl DRA7_L4PER2_MCASP5_CLKCTRL 24>;
+			clock-names = "fck", "ahclkx";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x0 0x70000 0x2000>,
@@ -2926,9 +2923,8 @@
 					<SYSC_IDLE_SMART>;
 			/* Domains (P, C): l4per_pwrdm, l4per2_clkdm */
 			clocks = <&l4per2_clkctrl DRA7_L4PER2_MCASP6_CLKCTRL 0>,
-				 <&l4per2_clkctrl DRA7_L4PER2_MCASP6_CLKCTRL 24>,
-				 <&l4per2_clkctrl DRA7_L4PER2_MCASP6_CLKCTRL 28>;
-			clock-names = "fck", "ahclkx", "ahclkr";
+				 <&l4per2_clkctrl DRA7_L4PER2_MCASP6_CLKCTRL 24>;
+			clock-names = "fck", "ahclkx";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x0 0x74000 0x2000>,
@@ -2962,9 +2958,8 @@
 					<SYSC_IDLE_SMART>;
 			/* Domains (P, C): l4per_pwrdm, l4per2_clkdm */
 			clocks = <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 0>,
-				 <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 24>,
-				 <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 28>;
-			clock-names = "fck", "ahclkx", "ahclkr";
+				 <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 24>;
+			clock-names = "fck", "ahclkx";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x0 0x78000 0x2000>,
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
