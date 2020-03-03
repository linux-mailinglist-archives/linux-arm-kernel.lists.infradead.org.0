Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906491775A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 13:09:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t2YnahQL49kdA0qOQ56sql7I0AdQYfmvPQHHeWqyBkI=; b=p6q/U0IDmXZdx0
	UYphSEXrXtxT/6P4iSnRb/hTQlVkMwJG3gq1sS3LQUpqCrvRi2mzFJ7lGXaZEcuLyBukvcHN4rjNy
	teCxFIekg2DtLKMQeV35qtq0RMidbSQVAHMS7J046crJpnTc+VXhRTCNE0n+hmM3cTpFtC8LeWQe5
	blmuvJGr+ig33OzRKAxyU1DyGX8YtfIJIg8OWiQ0T512F4SGGRESEToDZ7hA6HVJ4xwKoiF07/lYX
	GXVYttSjCZZXopLlqSsdlRYP+0X8/K67SCpuaDZMpTrZtlQPcYD2dNSb3c7q9PnIBWVIn5Ng6KGB3
	qAr3AqdhomEaDzEDYxdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j96M9-00009H-6Z; Tue, 03 Mar 2020 12:09:01 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j96Lh-0008Bx-SZ; Tue, 03 Mar 2020 12:08:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D37C7AEE7;
 Tue,  3 Mar 2020 12:08:31 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Rob Herring <robh+dt@kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH] DTS: bcm2711: Move emmc2 into its own bus
Date: Tue,  3 Mar 2020 13:08:20 +0100
Message-Id: <20200303120820.4377-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_040834_071155_39017901 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, florian.fainelli@broadcom.com,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Depending on bcm2711's revision its emmc2 controller might have
different DMA constraints. Raspberry Pi 4's firmware will take care of
updating those, but only if a certain alias is found in the device tree.
So, move emmc2 into its own bus, so as not to pollute other devices with
dma-ranges changes and create the emmc2bus alias.

Based in Phil ELwell's downstream implementation.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts |  1 +
 arch/arm/boot/dts/bcm2711.dtsi        | 19 ++++++++++++++-----
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index 1d4b589fe233..e26ea9006378 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -20,6 +20,7 @@ memory@0 {
 	};
 
 	aliases {
+		emmc2bus = &emmc2bus;
 		ethernet0 = &genet;
 		pcie0 = &pcie0;
 	};
diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index d1e684d0acfd..61ea8b44c51e 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -241,17 +241,26 @@ pwm1: pwm@7e20c800 {
 			status = "disabled";
 		};
 
+		hvs@7e400000 {
+			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
+		};
+	};
+
+	emmc2bus: emmc2bus {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <1>;
+
+		ranges = <0x0 0x7e000000  0x0 0xfe000000  0x01800000>;
+		dma-ranges = <0x0 0xc0000000  0x0 0x00000000  0x40000000>;
+
 		emmc2: emmc2@7e340000 {
 			compatible = "brcm,bcm2711-emmc2";
-			reg = <0x7e340000 0x100>;
+			reg = <0x0 0x7e340000 0x100>;
 			interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clocks BCM2711_CLOCK_EMMC2>;
 			status = "disabled";
 		};
-
-		hvs@7e400000 {
-			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
-		};
 	};
 
 	arm-pmu {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
