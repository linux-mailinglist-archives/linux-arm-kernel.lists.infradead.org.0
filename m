Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D0A1374D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:30:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PMRPHpsnLUkcK8HCpuDsWuSXVfiDzoKnMSxKvr5WD7Y=; b=O2vq7M3/y4Lu5j
	MCU1iuxRc2eyrV6LT62zr0p72zsHRNMa87ew0c2/F0rHDL+p+iQ78xV5GnTMSmMtI4LJjUdubY2XV
	J+b8fdS591vP6TFCbTAPisu32DNLrcLUKDgNW8qGN5E/gFN5LOetW/WGUhaVZMvHUjhUaPFAt2fha
	L+AgLBUfos8kfJWG357njbViS/+Z6+xlCtogEoHpF8KyxfLKjiqvqk4+Ejj8dJ00DmkWvgGWfi68S
	cdFpD1Dm/mhA2tDqXvPBvxloKfpQ5Zy724+SrjHaqFeWKbUYB1op4juN2jxgRoI+H27qILD1eZWfi
	Vt2by6kniztb5kLpKGMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipy6g-0006bB-EF; Fri, 10 Jan 2020 17:29:58 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipy6Y-0006ZJ-R5; Fri, 10 Jan 2020 17:29:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DEAABB25C;
 Fri, 10 Jan 2020 17:29:46 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH] ARM: dts: bcm283x: Unify CMA configuration
Date: Fri, 10 Jan 2020 18:29:35 +0100
Message-Id: <20200110172935.19709-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_092951_022565_FD0D75C6 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, phil@raspberrypi.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the introduction of the Raspberry Pi 4 we were forced to explicitly
configure CMA's location, since arm64 defaults it into the ZONE_DMA32
memory area, which is not good enough to perform DMA operations on that
device. To bypass this limitation a dedicated CMA DT node was created,
explicitly indicating the acceptable memory range and size.

That said, compatibility between boards is a must on the Raspberry Pi
ecosystem so this creates a common CMA DT node so as for DT overlays to
be able to update CMA's properties regardless of the board being used.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

If this doesn't make it into v5.5 I'd be tempted to add:
Fixes: d98a8dbdaec6 ("ARM: dts: bcm2711: force CMA into first GB of memory")

 arch/arm/boot/dts/bcm2711.dtsi | 33 +++++++++++++--------------------
 arch/arm/boot/dts/bcm283x.dtsi | 13 +++++++++++++
 2 files changed, 26 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 8687534d4528..c8e4041308e0 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -12,26 +12,6 @@ / {
 
 	interrupt-parent = <&gicv2>;
 
-	reserved-memory {
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges;
-
-		/*
-		 * arm64 reserves the CMA by default somewhere in ZONE_DMA32,
-		 * that's not good enough for the BCM2711 as some devices can
-		 * only address the lower 1G of memory (ZONE_DMA).
-		 */
-		linux,cma {
-			compatible = "shared-dma-pool";
-			size = <0x2000000>; /* 32MB */
-			alloc-ranges = <0x0 0x00000000 0x40000000>;
-			reusable;
-			linux,cma-default;
-		};
-	};
-
-
 	soc {
 		/*
 		 * Defined ranges:
@@ -869,6 +849,19 @@ pin-rts {
 	};
 };
 
+&rmem {
+	#address-cells = <2>;
+};
+
+&cma {
+	/*
+	 * arm64 reserves the CMA by default somewhere in ZONE_DMA32,
+	 * that's not good enough for the BCM2711 as some devices can
+	 * only address the lower 1G of memory (ZONE_DMA).
+	 */
+	alloc-ranges = <0x0 0x00000000 0x40000000>;
+};
+
 &i2c0 {
 	compatible = "brcm,bcm2711-i2c", "brcm,bcm2835-i2c";
 	interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm/boot/dts/bcm283x.dtsi b/arch/arm/boot/dts/bcm283x.dtsi
index 839491628e87..6128baed83c2 100644
--- a/arch/arm/boot/dts/bcm283x.dtsi
+++ b/arch/arm/boot/dts/bcm283x.dtsi
@@ -30,6 +30,19 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	rmem: reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		cma: linux,cma {
+			compatible = "shared-dma-pool";
+			size = <0x4000000>; /* 64MB */
+			reusable;
+			linux,cma-default;
+		};
+	};
+
 	thermal-zones {
 		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <0>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
