Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A7E83474
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 16:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MCyViIPCojlJPtZ2soU7b322RxOzpSqru+tPQc5vo/I=; b=soR/loKyOdcBzn
	oiz/zgWXmNOCaEwa7DfgEruDWEH7wjJKdHGKqMF2wLIw5VQq+MAJYJdTg0Sl5IUmvB3kmQmKJUGDK
	mmlG9IEXzghnu0UQTGnMaknZVH8UU63bYgYGrEzGCnHtIfLOtcPYElUd3BUlAltH7P1fJQqVQt9oP
	VJv2Akq5gTUqtXRyq+TD4bXAf/M4GTbQuArO1gC8DKCLNAbBrOhDEfYHc1G+BgZ3j5kDC5rolrTYz
	cKhIH6b4zkuyn5NdKEbx/zIWcfR8BGLN5ChKLkgPm2lFNGB8X3wvuDJ1X4pyO2puTyBwGmNeTkenm
	GbMpHM5RkXBR0MlbzthQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0sd-0008GU-EG; Tue, 06 Aug 2019 14:56:04 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0rx-0007l2-6m
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:55:24 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0EB56E0002;
 Tue,  6 Aug 2019 14:55:13 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 06/20] arm64: dts: marvell: Move clocks to AP806 specific file
Date: Tue,  6 Aug 2019 16:54:46 +0200
Message-Id: <20190806145500.24109-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806145500.24109-1-miquel.raynal@bootlin.com>
References: <20190806145500.24109-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_075521_410981_28644C75 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Regular clocks and CPU clocks are specific to AP806, move them out of
the generic AP80x file so that AP807 can use its own clocks.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 arch/arm64/boot/dts/marvell/armada-ap806.dtsi | 16 ++++++++++++++++
 arch/arm64/boot/dts/marvell/armada-ap80x.dtsi | 12 ------------
 2 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
index cdadb28f287e..866628679ac7 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap806.dtsi
@@ -12,3 +12,19 @@
 	model = "Marvell Armada AP806";
 	compatible = "marvell,armada-ap806";
 };
+
+&ap_syscon0 {
+	ap_clk: clock {
+		compatible = "marvell,ap806-clock";
+		#clock-cells = <1>;
+	};
+};
+
+&ap_syscon1 {
+	cpu_clk: clock-cpu@278 {
+		compatible = "marvell,ap806-cpu-clock";
+		clocks = <&ap_clk 0>, <&ap_clk 1>;
+		#clock-cells = <1>;
+		reg = <0x278 0xa30>;
+	};
+};
diff --git a/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
index c44cd7c64bf6..b74b5cf724be 100644
--- a/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-ap80x.dtsi
@@ -248,11 +248,6 @@
 				compatible = "syscon", "simple-mfd";
 				reg = <0x6f4000 0x2000>;
 
-				ap_clk: clock {
-					compatible = "marvell,ap806-clock";
-					#clock-cells = <1>;
-				};
-
 				ap_pinctrl: pinctrl {
 					compatible = "marvell,ap806-pinctrl";
 
@@ -278,13 +273,6 @@
 				#address-cells = <1>;
 				#size-cells = <1>;
 
-				cpu_clk: clock-cpu@278 {
-					compatible = "marvell,ap806-cpu-clock";
-					clocks = <&ap_clk 0>, <&ap_clk 1>;
-					#clock-cells = <1>;
-					reg = <0x278 0xa30>;
-				};
-
 				ap_thermal: thermal-sensor@80 {
 					compatible = "marvell,armada-ap806-thermal";
 					reg = <0x80 0x10>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
