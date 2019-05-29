Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCE32D8F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGcHxvayk4oj9Xx0Ljbuxa/zy93d1iZPjf04KLJ8ZZc=; b=ar3WmPSG3xf2aZ
	CzGZOfYKdpzIgfzo+Sn1RUrPEnHgboMyjtkbysoIW8MCJFg0ht/9pzE0daY/Bqk0JHg7mHckc9bC4
	jFH8Ddhh8U8heeN5l0vN3viHMtLEvohK4YEmosYlVuqi8qmHIzx/EwHbvg2Q8qV1mM3+OZw/qCOkN
	iScIMaiQKDF4MCUyGsT2FntZpDxIk2y7zvs4Lsn3OCjIvD+xOFjGAuWgnVuMN/oSTePxsupg/+duM
	TR453QK+mzYM1QdhMktrv5AEHhX+GSsh+okVaqYt4AJh4aQl3jyS8ppH3m8QJ8gA74aOQT7PfzS4Q
	9Ql5UvufgwCKaPp4fxkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVulO-00035h-8D; Wed, 29 May 2019 09:20:50 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVukS-0000x5-6H
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:19:57 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4T9JmQD010006;
 Wed, 29 May 2019 04:19:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559121588;
 bh=SnNDdZO8f1mZszMzppiz05NBYAG7PY4/O0tZ3qXbBwo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=owxkauXfO/r5ux0jSFnu45Hwrf7olLgUiv2HMl5LggOn0R33Sp8ecsN1NPY9BlDLu
 A8+jZy2w2W9GzOmD9CM1iMuuU7LIZkZqy3W1CbIo1IeIHJbNcwt8He7KMUeXheIqxT
 jGjTqeeI2CYKpZH63gh26zIKMn2OphKmSxyoVbxI=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4T9JlB9050484
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 29 May 2019 04:19:47 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 29
 May 2019 04:19:47 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 29 May 2019 04:19:47 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4T9JVxR079377;
 Wed, 29 May 2019 04:19:45 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
Subject: [PATCH 4/6] arm64: dts: k3-am6: Add PCIe Root Complex DT node
Date: Wed, 29 May 2019 14:48:10 +0530
Message-ID: <20190529091812.20764-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190529091812.20764-1-kishon@ti.com>
References: <20190529091812.20764-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_021952_848619_444F574C 
X-CRM114-Status: GOOD (  18.27  )
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

Add PCIe Root Complex DT node.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 53 ++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am65.dtsi      |  1 +
 2 files changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
index 443de60576f8..09f18b1e70f2 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
@@ -265,6 +265,21 @@
 		#size-cells = <1>;
 		ranges = <0x0 0x0 0x00100000 0x1c000>;
 
+		pcie0_mode: pcie-mode@4060 {
+			compatible = "syscon";
+			reg = <0x00004060 0x4>;
+		};
+
+		pcie1_mode: pcie-mode@4070 {
+			compatible = "syscon";
+			reg = <0x00004070 0x4>;
+		};
+
+		pcie_devid: pcie-devid@210 {
+			compatible = "syscon";
+			reg = <0x00000210 0x4>;
+		};
+
 		serdes0_clk: serdes_clk@4080 {
 			compatible = "syscon";
 			reg = <0x00004080 0x4>;
@@ -358,4 +373,42 @@
 		clock-names = "wkupclk", "refclk";
 		#phy-cells = <0>;
 	};
+
+	pcie0_rc: pcie@5500000 {
+		compatible = "ti,am654-pcie-rc";
+		reg =  <0x0 0x5500000 0x0 0x1000>, <0x0 0x5501000 0x0 0x1000>, <0x0 0x10000000 0x0 0x2000>, <0x0 0x5506000 0x0 0x1000>;
+		reg-names = "app", "dbics", "config", "atu";
+		power-domains = <&k3_pds 120>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges = <0x81000000 0 0          0x0 0x10020000 0 0x00010000
+			  0x82000000 0 0x10030000 0x0 0x10030000 0 0x07FD0000>;
+		ti,syscon-pcie-id = <&pcie_devid>;
+		ti,syscon-pcie-mode = <&pcie0_mode>;
+		bus-range = <0x0 0xff>;
+		num-viewport = <16>;
+		max-link-speed = <3>;
+		dma-coherent;
+		interrupts = <GIC_SPI 340 IRQ_TYPE_EDGE_RISING>;
+		msi-map = <0x0 &gic_its 0x0 0x10000>;
+	};
+
+	pcie1_rc: pcie@5600000 {
+		compatible = "ti,am654-pcie-rc";
+		reg =  <0x0 0x5600000 0x0 0x1000>, <0x0 0x5601000 0x0 0x1000>, <0x0 0x18000000 0x0 0x2000>, <0x0 0x5606000 0x0 0x1000>;
+		reg-names = "app", "dbics", "config", "atu";
+		power-domains = <&k3_pds 121>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges = <0x81000000 0 0          0x0   0x18020000 0 0x00010000
+			  0x82000000 0 0x18030000 0x0   0x18030000 0 0x07FD0000>;
+		ti,syscon-pcie-id = <&pcie_devid>;
+		ti,syscon-pcie-mode = <&pcie1_mode>;
+		bus-range = <0x0 0xff>;
+		num-viewport = <16>;
+		max-link-speed = <3>;
+		dma-coherent;
+		interrupts = <GIC_SPI 355 IRQ_TYPE_EDGE_RISING>;
+		msi-map = <0x0 &gic_its 0x10000 0x10000>;
+	};
 };
diff --git a/arch/arm64/boot/dts/ti/k3-am65.dtsi b/arch/arm64/boot/dts/ti/k3-am65.dtsi
index 50f4be2047a9..5a021321d4ed 100644
--- a/arch/arm64/boot/dts/ti/k3-am65.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65.dtsi
@@ -68,6 +68,7 @@
 			 <0x00 0x00900000 0x00 0x00900000 0x00 0x00012000>, /* serdes */
 			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0af02400>, /* Most peripherals */
 			 <0x00 0x30800000 0x00 0x30800000 0x00 0x0bc00000>, /* MAIN NAVSS */
+			 <0x00 0x10000000 0x00 0x10000000 0x00 0x10000000>, /* PCIe DAT */
 			 /* MCUSS Range */
 			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
 			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00900100>,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
