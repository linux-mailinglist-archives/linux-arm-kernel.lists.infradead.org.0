Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C41A4B7E41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:33:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qckyk4S8Xx4PMEzr4/+JqT8gyXkReaV42+dDdZ2sL7Y=; b=K2fSUHKfxfA8zo
	kXV+tR103/9j5iTtpIRicAkx0lceJEIystivReAfC86P3XaArcKssLHbr1tw/zO8EdMV61HBsOvCE
	4D/DKWkDR/cdUhO9pdCIvx9qijL7dm/P0RzzO06OP0+xxmtIfbno39c/6a7wpGW5IExw3GPVU8vSC
	aJH066OkhQEXJzIDJ0efGQXQFwiYsLYqYANPH6NOTAw2Wt9iaUdU5rriPs81C+8aKPMMPq9YGzSzJ
	8TwzrvKciBQQgT6mcokMfD0mx2/pQRo54jUxG8ZKlRiN69BOZ/rC1OG4TkrKQ8+Y5FSIiOmCzcqt1
	dAk86+bwhsKGfbdRSoDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAyQU-0006ot-3n; Thu, 19 Sep 2019 15:32:58 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAyPh-0006f5-En
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:32:11 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8JFW5T4130052;
 Thu, 19 Sep 2019 10:32:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568907125;
 bh=hgi52LcBYsdTA/OSGmQd/vP08szJy4H/8TwnILemHJg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=r/eiX4mR14TABN4He5IssAQkU/3y65ZVa9U5d5p3PtUQxg15VfswfvqfUdXDTm3PT
 3pipG94yIBqRFxQoNM/JLgtVuNymWzdkE+g5uDEvVkqoW1J4xx6oVI6+6eDKdFCcTs
 JyulpnEHnRKeKyE1QzyqrSbJ8HC2yYKdlqi8TbJU=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8JFW5CL009562;
 Thu, 19 Sep 2019 10:32:05 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 19
 Sep 2019 10:32:04 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 19 Sep 2019 10:32:01 -0500
Received: from a0230074-OptiPlex-7010.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8JFVxwL001224;
 Thu, 19 Sep 2019 10:32:02 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 1/2] arm64: dts: ti: j721e-main: Add SDHCI nodes
Date: Thu, 19 Sep 2019 21:02:41 +0530
Message-ID: <20190919153242.29399-2-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.19.2
In-Reply-To: <20190919153242.29399-1-faiz_abbas@ti.com>
References: <20190919153242.29399-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_083209_576413_38C82C58 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, nm@ti.com, robh+dt@kernel.org, t-kristo@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add nodes for the 3 SDHCI instances present on TI's J721E device.
instance 0 supports HS400 (8 bit bus widht, DDR, 400 MBps)
while instances 1 and 2 support SDR104 (4 bit width, SDR, 100 MBps) as
their highest speed modes. Currently, only High speed (50 MHz clock) has
been enabled.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 50 +++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index 199bc9a00b20..1650bbd10932 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -372,4 +372,54 @@
 		clocks = <&k3_clks 112 0>;
 		clock-names = "gpio";
 	};
+
+	main_sdhci0: sdhci@4f80000 {
+		compatible = "ti,j721e-sdhci-8bit";
+		reg = <0x0 0x4f80000 0x0 0x1000>, <0x0 0x4f88000 0x0 0x400>;
+		interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&k3_pds 91 TI_SCI_PD_EXCLUSIVE>;
+		clock-names = "clk_xin", "clk_ahb";
+		clocks = <&k3_clks 91 1>, <&k3_clks 91 0>;
+		assigned-clocks = <&k3_clks 91 1>;
+		assigned-clock-parents = <&k3_clks 91 2>;
+		bus-width = <8>;
+		mmc-hs400-1_8v;
+		mmc-ddr-1_8v;
+		ti,otap-del-sel = <0x2>;
+		ti,trm-icp = <0x8>;
+		ti,strobe-sel = <0x77>;
+		dma-coherent;
+	};
+
+	main_sdhci1: sdhci@4fb0000 {
+		compatible = "ti,j721e-sdhci-4bit";
+		reg = <0x0 0x04fb0000 0x0 0x1000>, <0x0 0x4fb8000 0x0 0x400>;
+		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&k3_pds 92 TI_SCI_PD_EXCLUSIVE>;
+		clock-names = "clk_xin", "clk_ahb";
+		clocks = <&k3_clks 92 0>, <&k3_clks 92 5>;
+		assigned-clocks = <&k3_clks 92 0>;
+		assigned-clock-parents = <&k3_clks 92 1>;
+		ti,otap-del-sel = <0x2>;
+		ti,trm-icp = <0x8>;
+		ti,clkbuf-sel = <0x7>;
+		dma-coherent;
+		no-1-8-v;
+	};
+
+	main_sdhci2: sdhci@4f98000 {
+		compatible = "ti,j721e-sdhci-4bit";
+		reg = <0x0 0x4f98000 0x0 0x1000>, <0x0 0x4f90000 0x0 0x400>;
+		interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+		power-domains = <&k3_pds 93 TI_SCI_PD_EXCLUSIVE>;
+		clock-names = "clk_xin", "clk_ahb";
+		clocks = <&k3_clks 93 0>, <&k3_clks 93 5>;
+		assigned-clocks = <&k3_clks 93 0>;
+		assigned-clock-parents = <&k3_clks 93 1>;
+		ti,otap-del-sel = <0x2>;
+		ti,trm-icp = <0x8>;
+		ti,clkbuf-sel = <0x7>;
+		dma-coherent;
+		no-1-8-v;
+	};
 };
-- 
2.19.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
