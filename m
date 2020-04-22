Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3680E1B3AFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 11:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uN7J0zlINvgV2hk4p3ri7to2RKvx2NHdAPaPwHcxxac=; b=HCBlWU9mv5gRzz
	HUx71dhnsvVcjNBpW5QHUzxiESUbT+JQbaT+dOOk8muzGujJTKvE1ZJN8T5IADJMdzYEKRb3UsXoq
	MNXFx2AhKB1RLcFhiPl+YCKYwHEdL0DW7u76SzDISl9EBc7P1sDdLsM2mSSZblry64tGRzRv+vdaN
	xx6s2ftIiYv2EADVbuBaJS0fIMvahHNSz5gVvsfEXLNjf7gDxK4DXEtc/zaSPeK2w1gXJwZUkD8wx
	xE1TluDSo9UX0n+VlWFLuYFsJ2vn39WhKruJEl57Aw4ibY+VL6q7dxXmMSW+wbyJ929KpBjiVtl1w
	PPLxM5mmjYsZURWX2b/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRBUX-00013i-VQ; Wed, 22 Apr 2020 09:16:25 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRBU5-0000oW-G5
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 09:15:59 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03M9Fsj0039617;
 Wed, 22 Apr 2020 04:15:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587546954;
 bh=2nTyf4kIFJt1q2fpNAVmctL88e8DgCyZPbnv1uC0QKM=;
 h=From:To:CC:Subject:Date;
 b=nj229JH9/FDtiZuz7PZXz7If5DBlo+jc6hxxvbwhgxefBo7wLffKX+qx0vao8s1iI
 KTAx8uFazigzlP4Yx0Ui6vcSUNPeQPk+VL7obaTpkp9wpsCCdL2QIoyNAT09HBdRsq
 2mvkvlEDOsI7QF/gTLQqSAIjfM1SsDQLEQ3lxVok=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03M9FsSU057556
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 Apr 2020 04:15:54 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Apr 2020 04:15:53 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 22 Apr 2020 04:15:53 -0500
Received: from deskari.lan (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03M9FpLK050948;
 Wed, 22 Apr 2020 04:15:52 -0500
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Rob Herring
 <robh+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Jyri Sarha <jsarha@ti.com>
Subject: [PATCH 1/3] arm64: dts: ti: am654: Add DSS node
Date: Wed, 22 Apr 2020 12:15:10 +0300
Message-ID: <20200422091512.950-1-tomi.valkeinen@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_021557_681552_0AE03A6B 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jyri Sarha <jsarha@ti.com>

Add DSS node to k3-am65-main.dtsi with labels for board specific
support and syscon node for oldi-io-ctrl.

Signed-off-by: Jyri Sarha <jsarha@ti.com>
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 44 ++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 11887c72f23a..7d1bc991708e 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -287,6 +287,11 @@
 			mux-reg-masks = <0x4080 0x3>, /* SERDES0 lane select */
 					<0x4090 0x3>; /* SERDES1 lane select */
 		};
+
+		dss_oldi_io_ctrl: dss_oldi_io_ctrl@41E0 {
+			compatible = "syscon";
+			reg = <0x0000041E0 0x14>;
+		};
 	};
 
 	dwc3_0: dwc3@4000000 {
@@ -746,4 +751,43 @@
 			};
 		};
 	};
+
+	dss: dss@04a00000 {
+		compatible = "ti,am65x-dss";
+		reg =	<0x0 0x04a00000 0x0 0x1000>, /* common */
+			<0x0 0x04a02000 0x0 0x1000>, /* vidl1 */
+			<0x0 0x04a06000 0x0 0x1000>, /* vid */
+			<0x0 0x04a07000 0x0 0x1000>, /* ovr1 */
+			<0x0 0x04a08000 0x0 0x1000>, /* ovr2 */
+			<0x0 0x04a0a000 0x0 0x1000>, /* vp1 */
+			<0x0 0x04a0b000 0x0 0x1000>; /* vp2 */
+		reg-names = "common", "vidl1", "vid",
+			"ovr1", "ovr2", "vp1", "vp2";
+
+		ti,am65x-oldi-io-ctrl = <&dss_oldi_io_ctrl>;
+
+		power-domains = <&k3_pds 67 TI_SCI_PD_EXCLUSIVE>;
+
+		clocks =	<&k3_clks 67 1>,
+				<&k3_clks 216 1>,
+				<&k3_clks 67 2>;
+		clock-names = "fck", "vp1", "vp2";
+
+		/*
+		 * Set vp2 clk (DPI_1_IN_CLK) mux to PLL4 via
+		 * DIV1. See "Figure 12-3365. DSS Integration"
+		 * in AM65x TRM for details.
+		 */
+		assigned-clocks = <&k3_clks 67 2>;
+		assigned-clock-parents = <&k3_clks 67 5>;
+
+		interrupts = <GIC_SPI 166 IRQ_TYPE_EDGE_RISING>;
+
+		status = "disabled";
+
+		dss_ports: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
 };
-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
