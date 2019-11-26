Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 768B8109B22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 10:21:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F8rTvs+SF+3txrRiN1kwf9jw7DzijZJP2PFm11u8BAk=; b=pIOx/qrnBIOxAB
	eMeh3VWEpzdsm3f6AMrmagGVydneQxkFgUnI251nkaphF+0nigbaQyQE/B+95luWlceCIGm7LAH7X
	6B0HqK0J8xQVGzAnHBa8ZUgOg+sweJsE2W9Uz01m5okvsMEmFRCw82Ze68kZYMOuHVQAu3TbKYUnZ
	snIMEazJ0nJtXPYqhUEC7vD9ydvTnlia/l7IU5+LHbsVZiVXng5VIu6rvftd1OKSZjmRqieRWf3ur
	ucxzsz0zN6C2QtqVMZpZvzilLe4CE8zIef94qGMz1x/aIJD1MguMUwgAZ8WWYflQ5MwZu90QnZoXW
	TizgQETu9XvLCXXsin7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZX2M-00075L-9G; Tue, 26 Nov 2019 09:21:34 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZX1T-0006Vx-J1; Tue, 26 Nov 2019 09:20:41 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 50643BAB1;
 Tue, 26 Nov 2019 09:20:38 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: andrew.murray@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH v3 3/7] ARM: dts: bcm2711: Enable PCIe controller
Date: Tue, 26 Nov 2019 10:19:41 +0100
Message-Id: <20191126091946.7970-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191126091946.7970-1-nsaenzjulienne@suse.de>
References: <20191126091946.7970-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_012039_765235_38F31939 
X-CRM114-Status: GOOD (  12.90  )
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 f.fainelli@gmail.com, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 jeremy.linton@arm.com, mbrugger@suse.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 james.quinlan@broadcom.com, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables bcm2711's PCIe bus, which is hardwired to a VIA
Technologies XHCI USB 3.0 controller.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

This will likely need a rebase once the RPi GENET patches land.

Changes since v2:
  - Remove unused interrupt-map
  - correct dma-ranges to it's full size, non power of 2 bus DMA
    constraints now supported in linux-next[1]
  - add device_type
  - rename alias from pcie_0 to pcie0

Changes since v1:
  - remove linux,pci-domain

[1] https://lkml.org/lkml/2019/11/21/235

 arch/arm/boot/dts/bcm2711.dtsi | 41 ++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 667658497898..2e121fc8b3d0 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -288,6 +288,47 @@ IRQ_TYPE_LEVEL_LOW)>,
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
+		pcie0: pcie@7d500000 {
+			compatible = "brcm,bcm2711-pcie";
+			reg = <0x0 0x7d500000 0x9310>;
+			device_type = "pci";
+			#address-cells = <3>;
+			#interrupt-cells = <1>;
+			#size-cells = <2>;
+			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "pcie", "msi";
+			interrupt-map-mask = <0x0 0x0 0x0 0x7>;
+			interrupt-map = <0 0 0 1 &gicv2 GIC_SPI 143
+							IRQ_TYPE_LEVEL_HIGH>;
+			msi-controller;
+			msi-parent = <&pcie0>;
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
+				      0x0 0xc0000000>;
+			brcm,enable-ssc;
+		};
+	};
+
 	cpus: cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
