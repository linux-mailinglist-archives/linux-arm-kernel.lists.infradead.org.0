Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB64146731
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:48:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vb49+fCjgVJRAyZAvKzlYB0QpP4tKM8dSr0m2yRcEhY=; b=Hd2M5k0DiHOQGb
	L5aUzkjIbj1qEUP+YGVFkOVdR+7atEZdVEklWHPV56B4dAZM72zwmcitB003didfw0b0jCPaCxPHm
	slbeXluSTaf+eWwMWARF+Jlh/sX0TSjlY5ou8WDz1R0Hs/HLUBic1QA1o9RbUIeiI2PbVmu1/6Uiu
	D9CJtR7tGlLans5OJHPIQGoZpnWgxLDyxVzFF/EWvh2ELAWVIP71nUPSRuBgcjelvu82H2ka1n77N
	R+Dl0TRw33OXPNfQ+nFqXsHvKt4FEuEGYWDJK5QyFvwVFXfFPiLombBNZa509XV7Quk0ph2/zxpDx
	GvKB5TZIvUed+3vXXMDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuaxv-0003gs-VR; Thu, 23 Jan 2020 11:48:04 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuavA-0001Ab-0k
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:45:14 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00NBj6T3130198;
 Thu, 23 Jan 2020 05:45:06 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579779906;
 bh=slJUxoHOZxqRaOqSsOs68bAi+ruE2FhXGRk8o8t+2V8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=TQrwpIbWn9ichmcVtqPeQjZzV5OZ9ELaFuMl2TWYOLrlePx9/yhmRMBl1yLBwNy0d
 mLgFMLCRwiMkrB3d1j5FRGM3i/vzg+ZjQwr5Wtwt+6U2Flf5bGtts6aXYnGYQtBfjo
 Gmh+L07eOwM3+rOFPIT78bRte5NRMc9Ti040LcOM=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00NBj6Od060907;
 Thu, 23 Jan 2020 05:45:06 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 23
 Jan 2020 05:45:06 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 23 Jan 2020 05:45:06 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00NBijBL114078;
 Thu, 23 Jan 2020 05:45:04 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>, <lokeshvutla@ti.com>
Subject: [PATCH v3 8/9] arm64: dts: ti: k3-am654-main: Add McASP nodes
Date: Thu, 23 Jan 2020 13:45:27 +0200
Message-ID: <20200123114528.26552-9-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200123114528.26552-1-peter.ujfalusi@ti.com>
References: <20200123114528.26552-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_034512_242637_0AD5BC21 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the nodes for McASP 0-2 and keep them disabled because several
required properties are not present as they are board specific.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 57 ++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 7c4853a8a02c..a856079c4fa9 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -663,4 +663,61 @@ pcie1_ep: pcie-ep@5600000 {
 		dma-coherent;
 		interrupts = <GIC_SPI 355 IRQ_TYPE_EDGE_RISING>;
 	};
+
+	mcasp0: mcasp@2b00000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02b00000 0x0 0x2000>,
+			<0x0 0x02b08000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc400>, <&main_udmap 0x4400>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 104 0>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 104 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
+
+	mcasp1: mcasp@2b10000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02b10000 0x0 0x2000>,
+			<0x0 0x02b18000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 210 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 211 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc401>, <&main_udmap 0x4401>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 105 0>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 105 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
+
+	mcasp2: mcasp@2b20000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02b20000 0x0 0x2000>,
+			<0x0 0x02b28000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 212 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 213 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc402>, <&main_udmap 0x4402>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 106 0>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 106 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
 };
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
