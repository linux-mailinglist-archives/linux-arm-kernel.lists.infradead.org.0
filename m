Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106538B91C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 14:48:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAtvV1Jp+TYHC7R+mhgWubP6by7Qrgcp1/OL86jo254=; b=EuCtfVCU0DTy15
	x8JTYWe9TPbRvG2UOwMtfBc18SI/OEJto+8GwBuSGPEdNHgxZAytP2jU2AGTki9f6rfPkXw8Gy4wz
	6OOo0qwF8vY/wq2/DGKyCYtMJTo2LFoM79m5jCp9hTk3kp0X3oQrgm4OMPQ8gtw7T1CV1Iqrn+0lD
	HG9gNK2vA+35fObzx8OIuPh0oEC34qfg5LJsfOvfSsVhW+tW+FKvQsUusww7ETYc/bwlMg/dosnWe
	Tz9JwwwPewA/HTEtlVOPswaWROWh1TfMIFV0rSgpA0j64ksR8/Yzm1uGgeqrqyf0wdBBPDwzGwpcl
	XZbIlDyqzD9OWct0Uipw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWER-0006qA-G5; Tue, 13 Aug 2019 12:48:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWDW-00061p-J2
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 12:48:00 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE24120874;
 Tue, 13 Aug 2019 12:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565700478;
 bh=c4y5Qjts7N/VOT4uSlIxH2JaJhhOQU5E5yCW2mxeICI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g899SHTS40cT9TonvzLmegaNMtr1gvDv6Ng8Xf6URZY1rHXkzNnFxpqlDwrCX2c7k
 cGb563BVIBTipLzkO9UVJeEbf5qNV72TvH4sx+E74SpTFhTj+FxTWE8Cq+cL5LvplU
 6T1f1QekY51IkiSPTAFDlgz7Q5C+tcg/+uhwSSm0=
From: Maxime Ripard <mripard@kernel.org>
To: linux@roeck-us.net,
	wim@linux-watchdog.org
Subject: [PATCH 5/5] ARM: dts: sunxi: Add missing watchdog interrupts
Date: Tue, 13 Aug 2019 14:47:44 +0200
Message-Id: <20190813124744.32614-5-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190813124744.32614-1-mripard@kernel.org>
References: <20190813124744.32614-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_054758_693756_C73C6EE4 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The watchdog has an interrupt on all our SoCs, but it wasn't always listed.
Add it to the devicetree where it's missing.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 arch/arm/boot/dts/sun4i-a10.dtsi | 1 +
 arch/arm/boot/dts/sun5i.dtsi     | 1 +
 arch/arm/boot/dts/sun6i-a31.dtsi | 1 +
 arch/arm/boot/dts/sun7i-a20.dtsi | 1 +
 arch/arm/boot/dts/sun8i-r40.dtsi | 1 +
 5 files changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/sun4i-a10.dtsi b/arch/arm/boot/dts/sun4i-a10.dtsi
index 077d45c7db6f..eed9fcb46185 100644
--- a/arch/arm/boot/dts/sun4i-a10.dtsi
+++ b/arch/arm/boot/dts/sun4i-a10.dtsi
@@ -815,6 +815,7 @@
 		wdt: watchdog@1c20c90 {
 			compatible = "allwinner,sun4i-a10-wdt";
 			reg = <0x01c20c90 0x10>;
+			interrupts = <24>;
 		};
 
 		rtc: rtc@1c20d00 {
diff --git a/arch/arm/boot/dts/sun5i.dtsi b/arch/arm/boot/dts/sun5i.dtsi
index 4e725afe7203..29a825f7afd1 100644
--- a/arch/arm/boot/dts/sun5i.dtsi
+++ b/arch/arm/boot/dts/sun5i.dtsi
@@ -600,6 +600,7 @@
 		wdt: watchdog@1c20c90 {
 			compatible = "allwinner,sun4i-a10-wdt";
 			reg = <0x01c20c90 0x10>;
+			interrupts = <24>;
 		};
 
 		ir0: ir@1c21800 {
diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index 916f99db6206..b32d2d7cad4e 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -744,6 +744,7 @@
 		wdt1: watchdog@1c20ca0 {
 			compatible = "allwinner,sun6i-a31-wdt";
 			reg = <0x01c20ca0 0x20>;
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		spdif: spdif@1c21000 {
diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
index 9ad8e445b240..aeb682e757f2 100644
--- a/arch/arm/boot/dts/sun7i-a20.dtsi
+++ b/arch/arm/boot/dts/sun7i-a20.dtsi
@@ -1115,6 +1115,7 @@
 		wdt: watchdog@1c20c90 {
 			compatible = "allwinner,sun4i-a10-wdt";
 			reg = <0x01c20c90 0x10>;
+			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		rtc: rtc@1c20d00 {
diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 09e20768228c..f1be554b5894 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -404,6 +404,7 @@
 		wdt: watchdog@1c20c90 {
 			compatible = "allwinner,sun4i-a10-wdt";
 			reg = <0x01c20c90 0x10>;
+			interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		uart0: serial@1c28000 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
