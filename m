Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141F713402E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 12:19:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhxFEXQ5u4WvvwwRPd/7DJ3E6bTxaHvdh4zgjjCYeqc=; b=m2zNr/BnJQ4dGv
	uwp40iEZBfObECXkSEFYMUNQFKfoKalyanJxWzb5IFNdNGqp5dKx2bwXNRhGtfADld2E0LvTlvPOG
	6Azb61H7/4TRPXvI/f13stcbqmL/vEj2vui6TziP5s4sgkdMnWdgkwMIi0H78CgSx+xwPOmJDGWTG
	GMhIMvPA30VSM0bIg7ULR1IiRsi8OWNl1Msm8Bd2qoTIQ8Wppd6S9ux/zCkcVsARtsCcrhmoG2Lco
	xxbmsN5oKwEOuQSAJU5j+w13mjE7V+wV23BYKXJr8tke6I3h1Q5kSNriZE6MIML5jtZnxtEwoZe7P
	GyX0idbZmHpTvlGdODWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9Mn-0001J2-AA; Wed, 08 Jan 2020 11:19:13 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9MG-00014R-T1
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 11:18:43 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 008BIcgD125828;
 Wed, 8 Jan 2020 05:18:38 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578482318;
 bh=S9aCH6w+lTHMSHTjjMK/u1g03UbNDD3XTbwh8A0ZhHg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=jQN6uUg9iMSaPHY6Ig6mcusibP60ZgoolSDIVJYy1/rb1RGAHlgH0UcFLiBOyvhox
 3rsm68EsOQLStOcBxO0iJJJJ5Wa7iJ7tCi3CDxbxS3e2pOUKLVhgoSiSEnbSEkOslz
 tIHGDXf+rECqgdt3Fi/mrE5qZURWIS1NivGwi040=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 008BIcrK036601
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 8 Jan 2020 05:18:38 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 8 Jan
 2020 05:18:37 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 8 Jan 2020 05:18:37 -0600
Received: from lta0400828a.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 008BIWBq087830;
 Wed, 8 Jan 2020 05:18:35 -0600
From: Roger Quadros <rogerq@ti.com>
To: <t-kristo@ti.com>
Subject: [PATCH 1/5] arm64: dts: ti: k3-j721e-main: Add WIZ and SERDES PHY
 nodes
Date: Wed, 8 Jan 2020 13:18:26 +0200
Message-ID: <20200108111830.8482-2-rogerq@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108111830.8482-1-rogerq@ti.com>
References: <20200108111830.8482-1-rogerq@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_031841_078277_AD07A020 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: nm@ti.com, devicetree@vger.kernel.org, vigneshr@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kishon Vijay Abraham I <kishon@ti.com>

Add DT nodes for all instances of WIZ and SERDES modules.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Signed-off-by: Roger Quadros <rogerq@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 241 ++++++++++++++++++++++
 1 file changed, 241 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 1e4c2b78d66d..24cb78db28e4 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -4,6 +4,7 @@
  *
  * Copyright (C) 2016-2019 Texas Instruments Incorporated - http://www.ti.com/
  */
+#include <dt-bindings/phy/phy.h>
 
 &cbass_main {
 	msmc_ram: sram@70000000 {
@@ -225,6 +226,246 @@
 		pinctrl-single,function-mask = <0xffffffff>;
 	};
 
+	dummy_cmn_refclk: dummy_cmn_refclk {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <0>;
+	};
+
+	dummy_cmn_refclk1: dummy_cmn_refclk1 {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <0>;
+	};
+
+	serdes_wiz0: wiz@5000000 {
+		compatible = "ti,j721e-wiz-16g";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		power-domains = <&k3_pds 292 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 292 5>, <&k3_clks 292 11>, <&dummy_cmn_refclk>;
+		clock-names = "fck", "core_ref_clk", "ext_ref_clk";
+		assigned-clocks = <&k3_clks 292 11>, <&k3_clks 292 0>;
+		assigned-clock-parents = <&k3_clks 292 15>, <&k3_clks 292 4>;
+		num-lanes = <2>;
+		#reset-cells = <1>;
+		ranges = <0x5000000 0x0 0x5000000 0x10000>;
+
+		wiz0_pll0_refclk: pll0-refclk {
+			clocks = <&k3_clks 292 11>, <&dummy_cmn_refclk>;
+			#clock-cells = <0>;
+			assigned-clocks = <&wiz0_pll0_refclk>;
+			assigned-clock-parents = <&k3_clks 292 11>;
+		};
+
+		wiz0_pll1_refclk: pll1-refclk {
+			clocks = <&k3_clks 292 0>, <&dummy_cmn_refclk1>;
+			#clock-cells = <0>;
+			assigned-clocks = <&wiz0_pll1_refclk>;
+			assigned-clock-parents = <&k3_clks 292 0>;
+		};
+
+		wiz0_refclk_dig: refclk-dig {
+			clocks = <&k3_clks 292 11>, <&k3_clks 292 0>, <&dummy_cmn_refclk>, <&dummy_cmn_refclk1>;
+			#clock-cells = <0>;
+			assigned-clocks = <&wiz0_refclk_dig>;
+			assigned-clock-parents = <&k3_clks 292 11>;
+		};
+
+		wiz0_cmn_refclk_dig_div: cmn-refclk-dig-div {
+			clocks = <&wiz0_refclk_dig>;
+			#clock-cells = <0>;
+		};
+
+		wiz0_cmn_refclk1_dig_div: cmn-refclk1-dig-div {
+			clocks = <&wiz0_pll1_refclk>;
+			#clock-cells = <0>;
+		};
+
+		serdes0: serdes@5000000 {
+			compatible = "ti,sierra-phy-t0";
+			reg-names = "serdes";
+			reg = <0x5000000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			resets = <&serdes_wiz0 0>;
+			reset-names = "sierra_reset";
+			clocks = <&wiz0_cmn_refclk_dig_div>, <&wiz0_cmn_refclk1_dig_div>;
+			clock-names = "cmn_refclk_dig_div", "cmn_refclk1_dig_div";
+		};
+	};
+
+	serdes_wiz1: wiz@5010000 {
+		compatible = "ti,j721e-wiz-16g";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		power-domains = <&k3_pds 293 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 293 5>, <&k3_clks 293 13>, <&dummy_cmn_refclk>;
+		clock-names = "fck", "core_ref_clk", "ext_ref_clk";
+		assigned-clocks = <&k3_clks 293 13>, <&k3_clks 293 0>;
+		assigned-clock-parents = <&k3_clks 293 17>, <&k3_clks 293 4>;
+		num-lanes = <2>;
+		#reset-cells = <1>;
+		ranges = <0x5010000 0x0 0x5010000 0x10000>;
+
+		wiz1_pll0_refclk: pll0-refclk {
+			clocks = <&k3_clks 293 13>, <&dummy_cmn_refclk>;
+			#clock-cells = <0>;
+			assigned-clocks = <&wiz1_pll0_refclk>;
+			assigned-clock-parents = <&k3_clks 293 13>;
+		};
+
+		wiz1_pll1_refclk: pll1-refclk {
+			clocks = <&k3_clks 293 0>, <&dummy_cmn_refclk1>;
+			#clock-cells = <0>;
+			assigned-clocks = <&wiz1_pll1_refclk>;
+			assigned-clock-parents = <&k3_clks 293 0>;
+		};
+
+		wiz1_refclk_dig: refclk-dig {
+			clocks = <&k3_clks 293 13>, <&k3_clks 293 0>, <&dummy_cmn_refclk>, <&dummy_cmn_refclk1>;
+			#clock-cells = <0>;
+			assigned-clocks = <&wiz1_refclk_dig>;
+			assigned-clock-parents = <&k3_clks 293 13>;
+		};
+
+		wiz1_cmn_refclk_dig_div: cmn-refclk-dig-div{
+			clocks = <&wiz1_refclk_dig>;
+			#clock-cells = <0>;
+		};
+
+		wiz1_cmn_refclk1_dig_div: cmn-refclk1-dig-div {
+			clocks = <&wiz1_pll1_refclk>;
+			#clock-cells = <0>;
+		};
+
+		serdes1: serdes@5010000 {
+			compatible = "ti,sierra-phy-t0";
+			reg-names = "serdes";
+			reg = <0x5010000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			resets = <&serdes_wiz1 0>;
+			reset-names = "sierra_reset";
+			clocks = <&wiz1_cmn_refclk_dig_div>, <&wiz1_cmn_refclk1_dig_div>;
+			clock-names = "cmn_refclk_dig_div", "cmn_refclk1_dig_div";
+		};
+	};
+
+	serdes_wiz2: wiz@5020000 {
+		compatible = "ti,j721e-wiz-16g";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		power-domains = <&k3_pds 294 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 294 5>, <&k3_clks 294 11>, <&dummy_cmn_refclk>;
+		clock-names = "fck", "core_ref_clk", "ext_ref_clk";
+		assigned-clocks = <&k3_clks 294 11>, <&k3_clks 294 0>;
+		assigned-clock-parents = <&k3_clks 294 15>, <&k3_clks 294 4>;
+		num-lanes = <2>;
+		#reset-cells = <1>;
+		ranges = <0x5020000 0x0 0x5020000 0x10000>;
+
+		wiz2_pll0_refclk: pll0-refclk {
+			clocks = <&k3_clks 294 11>, <&dummy_cmn_refclk>;
+			#clock-cells = <0>;
+			assigned-clocks = <&wiz2_pll0_refclk>;
+			assigned-clock-parents = <&k3_clks 294 11>;
+		};
+
+		wiz2_pll1_refclk: pll1-refclk {
+			clocks = <&k3_clks 294 0>, <&dummy_cmn_refclk1>;
+			#clock-cells = <0>;
+			assigned-clocks = <&wiz2_pll1_refclk>;
+			assigned-clock-parents = <&k3_clks 294 0>;
+		};
+
+		wiz2_refclk_dig: refclk-dig {
+			clocks = <&k3_clks 294 11>, <&k3_clks 294 0>, <&dummy_cmn_refclk>, <&dummy_cmn_refclk1>;
+			#clock-cells = <0>;
+			assigned-clocks = <&wiz2_refclk_dig>;
+			assigned-clock-parents = <&k3_clks 294 11>;
+		};
+
+		wiz2_cmn_refclk_dig_div: cmn-refclk-dig-div {
+			clocks = <&wiz2_refclk_dig>;
+			#clock-cells = <0>;
+		};
+
+		wiz2_cmn_refclk1_dig_div: cmn-refclk1-dig-div {
+			clocks = <&wiz2_pll1_refclk>;
+			#clock-cells = <0>;
+		};
+
+		serdes2: serdes@5020000 {
+			compatible = "ti,sierra-phy-t0";
+			reg-names = "serdes";
+			reg = <0x5020000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			resets = <&serdes_wiz2 0>;
+			reset-names = "sierra_reset";
+			clocks = <&wiz2_cmn_refclk_dig_div>, <&wiz2_cmn_refclk1_dig_div>;
+			clock-names = "cmn_refclk_dig_div", "cmn_refclk1_dig_div";
+		};
+	};
+
+	serdes_wiz3: wiz@5030000 {
+		compatible = "ti,j721e-wiz-16g";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		power-domains = <&k3_pds 295 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 295 5>, <&k3_clks 295 9>, <&dummy_cmn_refclk>;
+		clock-names = "fck", "core_ref_clk", "ext_ref_clk";
+		assigned-clocks = <&k3_clks 295 9>, <&k3_clks 295 0>;
+		assigned-clock-parents = <&k3_clks 295 13>, <&k3_clks 295 4>;
+		num-lanes = <2>;
+		#reset-cells = <1>;
+		ranges = <0x5030000 0x0 0x5030000 0x10000>;
+
+		wiz3_pll0_refclk: pll0-refclk {
+			clocks = <&k3_clks 295 9>, <&dummy_cmn_refclk>;
+			#clock-cells = <0>;
+			assigned-clocks = <&wiz3_pll0_refclk>;
+			assigned-clock-parents = <&k3_clks 295 9>;
+		};
+
+		wiz3_pll1_refclk: pll1-refclk {
+			clocks = <&k3_clks 295 0>, <&dummy_cmn_refclk1>;
+			#clock-cells = <0>;
+			assigned-clocks = <&wiz3_pll1_refclk>;
+			assigned-clock-parents = <&k3_clks 295 0>;
+		};
+
+		wiz3_refclk_dig: refclk-dig {
+			clocks = <&k3_clks 295 9>, <&k3_clks 295 0>, <&dummy_cmn_refclk>, <&dummy_cmn_refclk1>;
+			#clock-cells = <0>;
+			assigned-clocks = <&wiz3_refclk_dig>;
+			assigned-clock-parents = <&k3_clks 295 9>;
+		};
+
+		wiz3_cmn_refclk_dig_div: cmn-refclk-dig-div {
+			clocks = <&wiz3_refclk_dig>;
+			#clock-cells = <0>;
+		};
+
+		wiz3_cmn_refclk1_dig_div: cmn-refclk1-dig-div {
+			clocks = <&wiz3_pll1_refclk>;
+			#clock-cells = <0>;
+		};
+
+		serdes3: serdes@5030000 {
+			compatible = "ti,sierra-phy-t0";
+			reg-names = "serdes";
+			reg = <0x5030000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			resets = <&serdes_wiz3 0>;
+			reset-names = "sierra_reset";
+			clocks = <&wiz3_cmn_refclk_dig_div>, <&wiz3_cmn_refclk1_dig_div>;
+			clock-names = "cmn_refclk_dig_div", "cmn_refclk1_dig_div";
+		};
+	};
+
 	main_uart0: serial@2800000 {
 		compatible = "ti,j721e-uart", "ti,am654-uart";
 		reg = <0x00 0x02800000 0x00 0x100>;
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
