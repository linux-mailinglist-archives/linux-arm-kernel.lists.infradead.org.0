Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D69FB498A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 10:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4PZjDjctlJ87cNiXS+CdYBr6sw9hUGif8sOrXkUP58A=; b=LfLSvbbI0T1EUD
	4t1Nlnp2PlwKUbbnXsqiktdNdty7orDT5teV4PQFXhKlcFjB8q5LTuItNcQP0FYPa9KA3DAaI8SDF
	SrdMKJu7nr4ptTdhknHqZsCgSkjzYxjsdFzrb7pwQsXy6jz3uXvuQvNy8KILvgFz2Z7cN4M4VbOQh
	hB+TD+VDtjNwXKbdI//m1SkHk3HLuYf61ku/2iFbMe2T03AS5r1iElQje1QVN+lkvuoKrT2Tx9ISK
	EcTQlmVo9QGpdXHFoLac6ZEdfJB8PhgQjEqHKyU0M9PM0vLL6g9ttzugbTT6MwFnb9+WDconPmTid
	z1p+G904azmoPFgoNvJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8sS-0005Fn-Kv; Tue, 17 Sep 2019 08:30:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8pN-0002Ii-N8; Tue, 17 Sep 2019 08:27:15 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8pJ-0005ZY-KU; Tue, 17 Sep 2019 10:27:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 09/13] arm64: dts: rockchip: document explicit px30 cru
 dependencies
Date: Tue, 17 Sep 2019 10:26:55 +0200
Message-Id: <20190917082659.25549-9-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917082659.25549-1-heiko@sntech.de>
References: <20190917082659.25549-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_012713_922378_B79D9166 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The px30 contains 2 separate clock controllers the regular cru creating
most clocks as well as the pmucru managing the GPLL and some other clocks.

The gpll of course also is needed by the cru, so while we normally do rely
on clock names to associate clocks getting probed later on (for example
xin32k coming from an i2c device in most cases) it is safer to declare the
explicit dependency between the two crus. This makes sure that for example
the clock-framework probes them in the correct order from the start.

The assigned-clocks properties were simply working by chance in the past
so split them accordingly to the 2 crus to honor the loading direction.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/clock/rockchip,px30-cru.txt      |  5 ++++
 arch/arm64/boot/dts/rockchip/px30.dtsi        | 25 +++++++++++--------
 2 files changed, 20 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
index 39f0c1ac84ee..55e78cddec8c 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
+++ b/Documentation/devicetree/bindings/clock/rockchip,px30-cru.txt
@@ -10,6 +10,11 @@ Required Properties:
 - compatible: CRU should be "rockchip,px30-cru"
 - reg: physical base address of the controller and length of memory mapped
   region.
+- clocks: A list of phandle + clock-specifier pairs for the clocks listed
+          in clock-names
+- clock-names: Should contain the following:
+  - "xin24m" for both PMUCRU and CRU
+  - "gpll" for CRU (sourced from PMUCRU)
 - #clock-cells: should be 1.
 - #reset-cells: should be 1.
 
diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 63499d27994c..9ad1c2f04ea9 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -667,33 +667,38 @@
 	cru: clock-controller@ff2b0000 {
 		compatible = "rockchip,px30-cru";
 		reg = <0x0 0xff2b0000 0x0 0x1000>;
+		clocks = <&xin24m>, <&pmucru PLL_GPLL>;
+		clock-names = "xin24m", "gpll";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 
-		assigned-clocks = <&cru PLL_NPLL>;
-		assigned-clock-rates = <1188000000>;
+		assigned-clocks = <&cru PLL_NPLL>,
+			<&cru ACLK_BUS_PRE>, <&cru ACLK_PERI_PRE>,
+			<&cru HCLK_BUS_PRE>, <&cru HCLK_PERI_PRE>,
+			<&cru PCLK_BUS_PRE>, <&cru SCLK_GPU>;
+
+		assigned-clock-rates = <1188000000>,
+			<200000000>, <200000000>,
+			<150000000>, <150000000>,
+			<100000000>, <200000000>;
 	};
 
 	pmucru: clock-controller@ff2bc000 {
 		compatible = "rockchip,px30-pmucru";
 		reg = <0x0 0xff2bc000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 
 		assigned-clocks =
 			<&pmucru PLL_GPLL>, <&pmucru PCLK_PMU_PRE>,
-			<&pmucru SCLK_WIFI_PMU>, <&cru ARMCLK>,
-			<&cru ACLK_BUS_PRE>, <&cru ACLK_PERI_PRE>,
-			<&cru HCLK_BUS_PRE>, <&cru HCLK_PERI_PRE>,
-			<&cru PCLK_BUS_PRE>, <&cru SCLK_GPU>;
+			<&pmucru SCLK_WIFI_PMU>;
 		assigned-clock-rates =
 			<1200000000>, <100000000>,
-			<26000000>, <600000000>,
-			<200000000>, <200000000>,
-			<150000000>, <150000000>,
-			<100000000>, <200000000>;
+			<26000000>;
 	};
 
 	usb20_otg: usb@ff300000 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
