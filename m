Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 382FD4C4BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 03:02:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BNIeWdv/c1GrcWkUvncSJ1q6xTMuVOzJnxRfQIoxU54=; b=Pcb
	GaVoXIMYmFzywEg456EAt+7B3EkEB/4NGet3AsHESHD8hzUpK/1GIVe1S0l8tNlGwU7QCM/zYeMbQ
	3GhdSbhRVIzxI0hoFZU7uh+3qE3z0D7HNLy0N1TiRDWrFgAJ6M3DDKHSR1rwI3H0BGoPjHCSjdQhM
	FdSZvZFRUruynaDRptyiwXppc/RT/zKWr6m4QDSWT5GgYyA+dWjIJh0DkSd//XzymUhdiCR0PgTQd
	zZFPrFI9g21LLCd+KQnuSCgoETbA3rr1oDcpof/eZBwlDihRa9i7xxcFp2LiBRlrzd/8S39IRAaeV
	bcFL3NOG6ZnwC3X0wUrb6YgovX9cHtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdlTT-0001MK-8G; Thu, 20 Jun 2019 01:02:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdlTG-0001Ln-QH
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 01:02:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 40347360;
 Wed, 19 Jun 2019 18:02:31 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 096333F718;
 Wed, 19 Jun 2019 18:02:29 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH] arm64: dts: allwinner: properly connect USB PHY to port 0
Date: Thu, 20 Jun 2019 02:01:27 +0100
Message-Id: <20190620010127.12071-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_180234_943393_22409306 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 linux-sunxi@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In recent Allwinner SoCs the first USB host controller (HCI0) shares
the first PHY with the MUSB controller. Probably to make this sharing
work, we were avoiding to declare this in the DT. This has two
shortcomings:
- U-Boot (which uses the same .dts) cannot use this port without a PHY
  linked, so we were loosing one USB port there.
- It requires the MUSB driver to be enabled and loaded, although we
  don't actually use it.

For those (64-bit) boards which use an USB-A socket for HCI0/MUSB, add
a "phys" property pointing to the USB PHY 0.

This makes it work in U-Boot, also improves compatiblity when no MUSB
driver is loaded (for instance in distribution installers).

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
Hi,

I have the feeling this belongs into the .dtsi, but cant't tell for sure
how this interacts with the MUSB driver. If need be, we can always pull
this up later, I guess.

Thanks,
Andre

 arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts           | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts  | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts       | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts          | 2 ++
 5 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
index 409523cb0950..b23e827a6065 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
@@ -93,6 +93,7 @@
 };
 
 &ehci0 {
+	phys = <&usbphy 0>;
 	status = "okay";
 };
 
@@ -147,6 +148,7 @@
 };
 
 &ohci0 {
+	phys = <&usbphy 0>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
index e6fb9683f213..b422bef19fff 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
@@ -105,6 +105,7 @@
 };
 
 &ehci0 {
+	phys = <&usbphy 0>;
 	status = "okay";
 };
 
@@ -151,6 +152,7 @@
 };
 
 &ohci0 {
+	phys = <&usbphy 0>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
index 9887948d5c86..5da9cdfb4f48 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
@@ -124,6 +124,7 @@
 };
 
 &ehci0 {
+	phys = <&usbphy 0>;
 	status = "okay";
 };
 
@@ -179,6 +180,7 @@
 };
 
 &ohci0 {
+	phys = <&usbphy 0>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
index 0dc33c90dd60..293f66c44032 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
@@ -58,6 +58,7 @@
 };
 
 &ehci0 {
+	phys = <&usb2phy 0>;
 	status = "okay";
 };
 
@@ -104,6 +105,7 @@
 };
 
 &ohci0 {
+	phys = <&usb2phy 0>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 9e464d40cbff..577f8133181e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -96,6 +96,7 @@
 };
 
 &ehci0 {
+	phys = <&usb2phy 0>;
 	status = "okay";
 };
 
@@ -120,6 +121,7 @@
 };
 
 &ohci0 {
+	phys = <&usb2phy 0>;
 	status = "okay";
 };
 
-- 
2.14.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
