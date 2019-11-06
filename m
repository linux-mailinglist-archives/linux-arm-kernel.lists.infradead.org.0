Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB2CF20F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 22:46:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HP8zLdJ2z6m6/B+DWbXUk+LkE6TMyThJl79I/HhBJ8g=; b=FPeYj5jsfazvwa
	dbinW8o2DiJniK1SoSGY9jZDQwTBbKJTAmtNrplRRseSseyFGzP8mXGG/k8JiT+ndhsq3X74+oaNz
	xrg05JTd1Glp9tfJS5KPB6G6Dh6ND10S8drkhmtofp+VoHCdoiZjMJJ12/i2EY3JANv7bPljk2zOJ
	TApOsoGQtMZ3CV8MbBa7mNGfFPYxtx9C2+0xLcl5zTJ8pDVRPL2rWf0NuoBph1jYabVaK6LDZ9vPL
	YgPGAaS49jbmx8IKlD5WknjOpAP2YJdvEjSlpFYAarep/K4U6XcV2me5dD8olO5m19qQqNOZzzSs/
	ZTlOn1xRy+6BFGV5+bgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iST8B-0005rN-4G; Wed, 06 Nov 2019 21:46:23 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iST7e-0005NN-4n; Wed, 06 Nov 2019 21:45:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D2C5EB3F6;
 Wed,  6 Nov 2019 21:45:48 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Andrew Murray <andrew.murray@arm.com>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH 2/4] ARM: dts: bcm2711: Enable PCIe controller
Date: Wed,  6 Nov 2019 22:45:24 +0100
Message-Id: <20191106214527.18736-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106214527.18736-1-nsaenzjulienne@suse.de>
References: <20191106214527.18736-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_134550_347750_F42ED7DA 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: f.fainelli@gmail.com, phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 mbrugger@suse.com, james.quinlan@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables bcm2711's PCIe bus, wich is hardwired to a VIA Technologies
XHCI USB 3.0 controller.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/boot/dts/bcm2711.dtsi | 47 ++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index a9d84e28f245..c7b2e7b57da6 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -288,6 +288,53 @@
 		arm,cpu-registers-not-fw-configured;
 	};
 
+	scb {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <1>;
+
+		ranges = <0x0 0x7c000000  0x0 0xfc000000  0x03800000>,
+			 <0x6 0x00000000  0x6 0x00000000  0x40000000>;
+
+		pcie_0: pcie@7d500000 {
+			compatible = "brcm,bcm2711-pcie";
+			reg = <0x0 0x7d500000 0x9310>;
+			msi-controller;
+			msi-parent = <&pcie_0>;
+			#address-cells = <3>;
+			#interrupt-cells = <1>;
+			#size-cells = <2>;
+			linux,pci-domain = <0>;
+			brcm,enable-ssc;
+			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "pcie", "msi";
+			interrupt-map-mask = <0x0 0x0 0x0 0x7>;
+			interrupt-map = <0 0 0 1 &gicv2 GIC_SPI 143
+							IRQ_TYPE_LEVEL_HIGH
+					 0 0 0 2 &gicv2 GIC_SPI 144
+							IRQ_TYPE_LEVEL_HIGH
+					 0 0 0 3 &gicv2 GIC_SPI 145
+							IRQ_TYPE_LEVEL_HIGH
+					 0 0 0 4 &gicv2 GIC_SPI 146
+							IRQ_TYPE_LEVEL_HIGH>;
+
+			ranges = <0x02000000 0x0 0xf8000000 0x6 0x00000000
+				  0x0 0x04000000>;
+			/*
+			 * The wrapper around the PCIe block has a bug
+			 * preventing it from accessing beyond the first 3GB of
+			 * memory. As the bus DMA mask is rounded up to the
+			 * closest power of two of the dma-range size, we're
+			 * forced to set the limit at 2GB. This can be
+			 * harmlessly changed in the future once the DMA code
+			 * handles non power of two DMA limits.
+			 */
+			dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000
+				      0x0 0x80000000>;
+		};
+	};
+
 	cpus: cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
