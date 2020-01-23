Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D035C146733
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:48:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OevKPvSLh5tDiuJ6sSrAgXAA3NVzK4gbGGxZhxKXIsY=; b=aXr4aVnl+B6B+c
	CSkhLi2Lajz1CunbSieWsFHE3kXDYNXRK0rXkmTfxCnWuQ4j9rtyJWxeoa5YDtmaHwY/2897NXOjZ
	SksLSaRbYDVKfHI2jRnrzx/QK32BgGM+a7h2jQPudQp9h/FjH1rlBKoMvl+BlNLSI1vm8yeBiO/ee
	n0dZgHtw+N6Lw6AqTlU8biWA5/Tb+vxjuXuBTc5nOuWU+L24V/Srwm0gFbNRUX/SCmyW+vN3KCuoC
	c4h6U7ZmwGeZaEDIcPG7urUMTVL0FH5tm+q+qDboFGmkEWm95aIv1Zg7f7Tr0+ng3Y9Pp6t5TpPNc
	CBvNtQnypwINQuqXHatg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuayE-0003va-38; Thu, 23 Jan 2020 11:48:22 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuavC-0001NL-20
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:45:17 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00NBj96J014080;
 Thu, 23 Jan 2020 05:45:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579779909;
 bh=63sAqn5erf4xNEvqueAvduHlLaJiBo1Ph/nn0rBGpS0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=a1Yp1/LmaH/K5nuHV3mMI4CLud4GFaOh8WEqtj0PujxKMDJay9ZaqpdQdNEklWwpa
 jWnZLTn81AJEkdpdQJJFgGvDbuvecxPXr0P6y9BwJCbe5lQ4SpEe1Med00G4DkCnDd
 VOhez4t++4C85i68J2X0pz5ya80ddNCyJoc05wn8=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00NBj9cq060995;
 Thu, 23 Jan 2020 05:45:09 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 23
 Jan 2020 05:45:08 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 23 Jan 2020 05:45:08 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00NBijBM114078;
 Thu, 23 Jan 2020 05:45:06 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>, <lokeshvutla@ti.com>
Subject: [PATCH v3 9/9] arm64: dts: ti: k3-j721e-main: Add McASP nodes
Date: Thu, 23 Jan 2020 13:45:28 +0200
Message-ID: <20200123114528.26552-10-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200123114528.26552-1-peter.ujfalusi@ti.com>
References: <20200123114528.26552-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_034514_357089_2DCE192E 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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

Add the nodes for McASP 0-11 and keep them disabled because several
required properties are not present as they are board specific.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 228 ++++++++++++++++++++++
 1 file changed, 228 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 6c909bd98a6b..0b9d14b838a1 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -735,4 +735,232 @@ ufs@4e84000 {
 			dma-coherent;
 		};
 	};
+
+	mcasp0: mcasp@2b00000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02b00000 0x0 0x2000>,
+			<0x0 0x02b08000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 544 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 545 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc400>, <&main_udmap 0x4400>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 174 1>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 174 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
+
+	mcasp1: mcasp@2b10000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02b10000 0x0 0x2000>,
+			<0x0 0x02b18000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 546 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 547 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc401>, <&main_udmap 0x4401>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 175 1>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 175 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
+
+	mcasp2: mcasp@2b20000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02b20000 0x0 0x2000>,
+			<0x0 0x02b28000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 548 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 549 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc402>, <&main_udmap 0x4402>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 176 1>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 176 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
+
+	mcasp3: mcasp@2b30000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02b30000 0x0 0x2000>,
+			<0x0 0x02b38000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 550 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 551 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc500>, <&main_udmap 0x4500>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 177 1>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 177 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
+
+	mcasp4: mcasp@2b40000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02b40000 0x0 0x2000>,
+			<0x0 0x02b48000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 552 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 553 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc501>, <&main_udmap 0x4501>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 178 1>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 178 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
+
+	mcasp5: mcasp@2b50000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02b50000 0x0 0x2000>,
+			<0x0 0x02b58000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 554 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 555 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc502>, <&main_udmap 0x4502>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 179 1>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 179 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
+
+	mcasp6: mcasp@2b60000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02b60000 0x0 0x2000>,
+			<0x0 0x02b68000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 556 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 557 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc503>, <&main_udmap 0x4503>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 180 1>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 180 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
+
+	mcasp7: mcasp@2b70000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02b70000 0x0 0x2000>,
+			<0x0 0x02b78000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 558 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 559 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc504>, <&main_udmap 0x4504>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 181 1>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 181 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
+
+	mcasp8: mcasp@2b80000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02b80000 0x0 0x2000>,
+			<0x0 0x02b88000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 560 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 561 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc505>, <&main_udmap 0x4505>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 182 1>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 182 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
+
+	mcasp9: mcasp@2b90000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02b90000 0x0 0x2000>,
+			<0x0 0x02b98000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 562 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 563 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc506>, <&main_udmap 0x4506>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 183 1>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 183 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
+
+	mcasp10: mcasp@2ba0000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02ba0000 0x0 0x2000>,
+			<0x0 0x02ba8000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 564 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 565 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc507>, <&main_udmap 0x4507>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 184 1>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 184 TI_SCI_PD_EXCLUSIVE>;
+
+		status = "disabled";
+	};
+
+	mcasp11: mcasp@2bb0000 {
+		compatible = "ti,am33xx-mcasp-audio";
+		reg = <0x0 0x02bb0000 0x0 0x2000>,
+			<0x0 0x02bb8000 0x0 0x1000>;
+		reg-names = "mpu","dat";
+		interrupts = <GIC_SPI 566 IRQ_TYPE_LEVEL_HIGH>,
+				<GIC_SPI 567 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "tx", "rx";
+
+		dmas = <&main_udmap 0xc508>, <&main_udmap 0x4508>;
+		dma-names = "tx", "rx";
+
+		clocks = <&k3_clks 185 1>;
+		clock-names = "fck";
+		power-domains = <&k3_pds 185 TI_SCI_PD_EXCLUSIVE>;
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
