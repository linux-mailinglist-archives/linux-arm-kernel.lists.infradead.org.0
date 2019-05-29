Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F6F2D8EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLN8mtgi5CoQvFwtzWGWfMkFxph3H8r0wCvUKiPfkkM=; b=DBNEzywO4BU7Uk
	xJiBjRnsQTlLrMOwH49JThyYmliKK7RFHceWZItM9752BAUrkdb0TWJjHucUVeUoa7Ye8FejmQPL2
	PT2c74iEE44XJQIAwdQe2WRkDJw1Tdvns9ZZXUewdFnCilwSyFS61G9n0/EpECAPAPAaPl8gP8r1v
	FN5N5Xm+tvS7wvfenfoiDsuA+hmDidy4OKabBqrcIhAgTuc8oqwm8dWRJLNkxa5dP0om85TvYya2Y
	V9xeMKzlc3JH9ZR35LKViSiyHTB8CFiCkUfUsmWWa6SjeSAVW9xU8tB9+slMq5e5CSnny+Asp4Jau
	ElASQ+Xv54lVd5UNuVcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVul2-0002Zj-9O; Wed, 29 May 2019 09:20:28 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVukP-0000tj-UC
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:19:53 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4T9JifF009253;
 Wed, 29 May 2019 04:19:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559121584;
 bh=+xTE10V8aohxT+Kq0AQML6/+dZPD7lAi9/07SdRegaY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=OxggvS07d1QGnNPKT2xbYCr3tGN+bMA8m0Ihxjwyo40LB1Hp+asIBeUbURCPcRF8Z
 DH90Bn7NhVBADXtAYfHCm2BTzSKq6KD92ix/tcDxUiVYJx/g8pTPwGCsHh2fCbxitC
 +O+hccVq9rrguRi5XWooDJ0TqFlA7Oxkxu/YIcFA=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4T9JiUl032612
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 29 May 2019 04:19:44 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 29
 May 2019 04:19:44 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 29 May 2019 04:19:44 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4T9JVxQ079377;
 Wed, 29 May 2019 04:19:42 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 3/6] arm64: dts: k3-am6: Add SERDES DT node
Date: Wed, 29 May 2019 14:48:09 +0530
Message-ID: <20190529091812.20764-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190529091812.20764-1-kishon@ti.com>
References: <20190529091812.20764-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_021950_320396_57C84ECD 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT node for SERDES0 and SERDES1.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 41 ++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 99d2402455d1..443de60576f8 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -4,6 +4,7 @@
  *
  * Copyright (C) 2016-2018 Texas Instruments Incorporated - http://www.ti.com/
  */
+#include <dt-bindings/phy/phy-am654-serdes.h>
 
 &cbass_main {
 	msmc_ram: sram@70000000 {
@@ -61,6 +62,36 @@
 		interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	serdes0: serdes@900000 {
+		compatible = "ti,phy-am654-serdes";
+		reg = <0x0 0x900000 0x0 0x2000>;
+		reg-names = "serdes";
+		#phy-cells = <2>;
+		power-domains = <&k3_pds 153>;
+		clocks = <&k3_clks 153 4>, <&k3_clks 153 1>, <&serdes1 AM654_SERDES_LO_REFCLK>;
+		clock-output-names = "serdes0_cmu_refclk", "serdes0_lo_refclk", "serdes0_ro_refclk";
+		assigned-clocks = <&k3_clks 153 4>, <&serdes0 AM654_SERDES_CMU_REFCLK>;
+		assigned-clock-parents = <&k3_clks 153 8>, <&k3_clks 153 4>;
+		ti,serdes-clk = <&serdes0_clk>;
+		#clock-cells = <1>;
+		mux-controls = <&serdes_mux 0>;
+	};
+
+	serdes1: serdes@910000 {
+		compatible = "ti,phy-am654-serdes";
+		reg = <0x0 0x910000 0x0 0x2000>;
+		reg-names = "serdes";
+		#phy-cells = <2>;
+		power-domains = <&k3_pds 154>;
+		clocks = <&serdes0 AM654_SERDES_RO_REFCLK>, <&k3_clks 154 1>, <&k3_clks 154 5>;
+		clock-output-names = "serdes1_cmu_refclk", "serdes1_lo_refclk", "serdes1_ro_refclk";
+		assigned-clocks = <&k3_clks 154 5>, <&serdes1 AM654_SERDES_CMU_REFCLK>;
+		assigned-clock-parents = <&k3_clks 154 9>, <&k3_clks 154 5>;
+		ti,serdes-clk = <&serdes1_clk>;
+		#clock-cells = <1>;
+		mux-controls = <&serdes_mux 1>;
+	};
+
 	main_uart0: serial@2800000 {
 		compatible = "ti,am654-uart";
 		reg = <0x00 0x02800000 0x00 0x100>;
@@ -234,6 +265,16 @@
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0x00100000 0x1c000>;
 
+		serdes0_clk: serdes_clk@4080 {
+			compatible = "syscon";
+			reg = <0x00004080 0x4>;
+		};
+
+		serdes1_clk: serdes_clk@4090 {
+			compatible = "syscon";
+			reg = <0x00004090 0x4>;
+		};
+
 		serdes_mux: mux-controller {
 			compatible = "mmio-mux";
 			#mux-control-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
