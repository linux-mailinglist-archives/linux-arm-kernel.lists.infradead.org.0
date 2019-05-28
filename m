Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A292D1EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 01:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ln0zzpKdfUMlVpxFkJ1aVa+zkIYWUNvXveoeFAmLSPg=; b=CBQKUwDlCJJlEwVlBO7EBX6Nqf
	+PtYRsTRxR1CjeOeFovYfoJHpm3csf/EkxwoHo90esSn2kIqzP8A+bHyheRQ5ixYt77IGnTfp6X5e
	S9SsMwbAxSlRxfBZMGmEfWXoBEICQYMF713frLahC5RYHDy5FXPDT/rTOlFeqi9713F0g9n07Mch0
	2We6gp6z60KeCkRNrEvK2dDitfAOuDUx63PdyGiQD0fIdrrLKdlumv51yLLRhBlft9ns4f3J91398
	RY02+Ewn/5QT1r1p7ZhihmLVHw81n93+qJ0c/8M/NAKAmppznQZYGmJKf6EyBRbJp5qUnzImRyU6z
	hzJa3AoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVl7w-000228-Om; Tue, 28 May 2019 23:03:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVl6p-0000lM-KC
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 23:02:22 +0000
Received: by mail-pg1-x544.google.com with SMTP id t1so112646pgc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 16:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jVU+6a4u+Jf9eV/QndDeMJUYSQ7q5yIqTVcER2plaJg=;
 b=uS5VGtRN91rJVl86a6xKhbWZP4YaeRWDME1t8dFW1Hro4J2zoy6+X92oMQf+fa4YzR
 ryCsfZB4oWdC0hehHDFfZ2hEDZowyHZgA2TCpCVASaI4BQSFC6G1nnvQewcgHyuhY9sA
 EvDha1SsruZmzXjQqc/yaBdHGRNUkYp8rkXHxVK69CyAV7Vv/ktE862ffyyww51OL7Ls
 IW9FiZC0ziqF42e+9M9kWijYJHC+NWhloaHt3Stm8oweBPuLojTawLiqtDjuEgSCV+qk
 HLXlUaCzux9kxulNpSEC8HGFNyXZe1RC6NYTH5OkC2ttdR3COo1GGZqze6KN1ifaR6Az
 x97A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jVU+6a4u+Jf9eV/QndDeMJUYSQ7q5yIqTVcER2plaJg=;
 b=DM2GR1SXF4xxoHRVu5KahVnoekC2+VC1/JT1ZrdDk7CbLRzQI3Bkff+P9AqQHj73up
 4UR0bXAQa/tq8ScsDae9vRKbpbxPulGzXOmS4YjNJAUQ65RUk5WhP5icRHDLeKAIEQnS
 2dMlaAjcY64ojj1nLbbeXEoe0wAD/casc8lt7bmZYfrm5EsGglCTRkKHT+smSxwiI3UA
 LJxIxf67CiSh9kbUMTHipBXQbVNbfFkQMWpQGvJZOHmvpbCLNIUOVovPCj7TWKLv20xP
 j3Z43StgPY/v6LSMSFzLbvfR1fNj4JeBD0CNeTFK9K5N1w2r3LBFiCUojZfjGpGYBAE8
 6UvA==
X-Gm-Message-State: APjAAAX3CrQzomKXv4mi8+djhJrthUFrSaOwIzPVOolXp8qanraeXVKm
 FmZ+z81VW5ZiP0Y7lTK/1bftp5Dg
X-Google-Smtp-Source: APXvYqxIRxYIYKtR0+NsjjDWuihiSornYWJ4WJoZPac84B6CqJD3YDtp1QHnWHOorNU6HdCDTyD6zw==
X-Received: by 2002:a63:8ac3:: with SMTP id y186mr4934441pgd.22.1559084538030; 
 Tue, 28 May 2019 16:02:18 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm14369573pfh.13.2019.05.28.16.02.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 16:02:17 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/7] ARM: dts: BCM5301X: Fix most DTC W=1 warnings
Date: Tue, 28 May 2019 16:01:33 -0700
Message-Id: <20190528230134.27007-7-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528230134.27007-1-f.fainelli@gmail.com>
References: <20190528230134.27007-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_160219_706608_9E63FDD6 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Brian Norris <computersforpeace@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the bulk of the unit_address_vs_reg warnings and unnecessary
\#address-cells/#size-cells without "ranges" or child "reg" property

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts        |  4 +---
 arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts        |  4 +---
 arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts  |  4 +---
 arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts    |  4 +---
 arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts    |  4 +---
 arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts       |  4 +---
 arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts       |  4 +---
 arch/arm/boot/dts/bcm4708-netgear-r6250.dts        |  4 +---
 arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts     |  4 +---
 arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts      |  4 +---
 arch/arm/boot/dts/bcm47081-asus-rt-n18u.dts        |  4 +---
 arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts |  4 +---
 arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts  |  4 +---
 arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts      |  4 +---
 arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts      |  4 +---
 arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts |  4 +---
 arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-linksys-panamera.dts    |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts      |  4 +---
 arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts   |  4 +---
 arch/arm/boot/dts/bcm47094-netgear-r8500.dts       |  4 +---
 arch/arm/boot/dts/bcm47094-phicomm-k3.dts          |  4 +---
 arch/arm/boot/dts/bcm5301x.dtsi                    | 10 ++++------
 arch/arm/boot/dts/bcm953012er.dts                  |  4 +---
 arch/arm/boot/dts/bcm953012k.dts                   |  2 +-
 28 files changed, 31 insertions(+), 85 deletions(-)

diff --git a/arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts b/arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts
index 79d454ff3be4..b906ec32830c 100644
--- a/arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts
+++ b/arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts
@@ -19,7 +19,7 @@
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
@@ -68,8 +68,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		rfkill {
 			label = "WiFi";
diff --git a/arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts b/arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts
index 99365bb8c41e..b2a01f4aaa76 100644
--- a/arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts
+++ b/arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts
@@ -19,7 +19,7 @@
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
@@ -52,8 +52,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		brightness {
 			label = "Backlight";
diff --git a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
index bc330b1f6de0..08188a8d7e63 100644
--- a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
+++ b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
@@ -19,7 +19,7 @@
 		bootargs = "console=ttyS0,115200 earlycon";
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x18000000>;
 	};
@@ -98,8 +98,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts b/arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts
index 258d2b251900..4001d0006c99 100644
--- a/arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts
+++ b/arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts
@@ -16,14 +16,12 @@
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x08000000>;
 	};
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		wps {
 			label = "WPS";
diff --git a/arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts b/arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts
index babcfec50dde..2091c0e33a70 100644
--- a/arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts
+++ b/arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts
@@ -17,14 +17,12 @@
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x08000000>;
 	};
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		wps {
 			label = "WPS";
diff --git a/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts b/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
index e7fdaed99bd0..02ec012a9e3c 100644
--- a/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
+++ b/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
@@ -15,7 +15,7 @@
 		bootargs = "console=ttyS0,115200 earlycon";
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x08000000>;
 	};
 
@@ -43,8 +43,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts b/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
index 42bafc644013..c5e530a46576 100644
--- a/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
+++ b/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
@@ -19,7 +19,7 @@
 		bootargs = "console=ttyS0,115200 earlycon";
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x08000000>;
 	};
 
@@ -50,8 +50,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
index dce35eb79dbe..c1c5a7042a37 100644
--- a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
+++ b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
@@ -20,7 +20,7 @@
 		bootargs = "console=ttyS0,115200 earlycon";
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
@@ -61,8 +61,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		wps {
 			label = "WPS";
diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
index b7a024b7951b..b7e4eb45f80b 100644
--- a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
+++ b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
@@ -19,7 +19,7 @@
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
@@ -57,8 +57,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		wps {
 			label = "WPS";
diff --git a/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts b/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts
index f7f834cd3448..b6c237542b7f 100644
--- a/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts
+++ b/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts
@@ -19,7 +19,7 @@
 		bootargs = "console=ttyS0,115200 earlycon";
 	};
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
@@ -92,8 +92,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		rfkill {
 			label = "WiFi";
diff --git a/arch/arm/boot/dts/bcm47081-asus-rt-n18u.dts b/arch/arm/boot/dts/bcm47081-asus-rt-n18u.dts
index fe842f2f1ca7..c29950b43a95 100644
--- a/arch/arm/boot/dts/bcm47081-asus-rt-n18u.dts
+++ b/arch/arm/boot/dts/bcm47081-asus-rt-n18u.dts
@@ -19,7 +19,7 @@
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
@@ -59,8 +59,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
index 6fcbb0509ba0..4dcec6865469 100644
--- a/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
+++ b/arch/arm/boot/dts/bcm47081-buffalo-wzr-600dhp2.dts
@@ -19,7 +19,7 @@
 		bootargs = "console=ttyS0,115200 earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
@@ -90,8 +90,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		aoss {
 			label = "AOSS";
diff --git a/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts b/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
index b3e8cc90b13f..0e349e39f608 100644
--- a/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
+++ b/arch/arm/boot/dts/bcm47081-buffalo-wzr-900dhp.dts
@@ -19,7 +19,7 @@
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
@@ -95,8 +95,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts b/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
index fdeaa895512f..b9d95011637d 100644
--- a/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
+++ b/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
@@ -15,7 +15,7 @@
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
@@ -44,8 +44,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts b/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
index 0d510cb15ec3..0052e1b24130 100644
--- a/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
+++ b/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
@@ -16,7 +16,7 @@
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
@@ -88,8 +88,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts b/arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts
index 962e89edba11..01c390ed48ea 100644
--- a/arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts
+++ b/arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dts
@@ -15,7 +15,7 @@
 		bootargs = "earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
@@ -76,8 +76,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		rfkill {
 			label = "WiFi";
diff --git a/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts b/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
index 658a56ff8a5c..911c65fbf251 100644
--- a/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
+++ b/arch/arm/boot/dts/bcm47094-dlink-dir-885l.dts
@@ -19,7 +19,7 @@
 		bootargs = "console=ttyS0,115200 earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
@@ -85,8 +85,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		wps {
 			label = "WPS";
diff --git a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
index 5fd47eec4407..18d0ae46e76c 100644
--- a/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
+++ b/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
@@ -16,7 +16,7 @@
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
@@ -24,8 +24,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		wps {
 			label = "WPS";
diff --git a/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts b/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
index 6604be6ff0a0..50f7cd08cfbb 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-abr-4500.dts
@@ -16,7 +16,7 @@
 		bootargs = "earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x18000000>;
@@ -43,8 +43,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts b/arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts
index 567ebbd5a0e9..b47fb0700a1f 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xap-1610.dts
@@ -15,7 +15,7 @@
 		bootargs = "earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
@@ -42,8 +42,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts b/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
index ac2d136ed334..bcc420f85b56 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xbr-4500.dts
@@ -16,7 +16,7 @@
 		bootargs = "earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x18000000>;
@@ -43,8 +43,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts b/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
index 74371e821b1a..ac7515423474 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
@@ -16,7 +16,7 @@
 		bootargs = "console=ttyS0,115200 earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
@@ -83,8 +83,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
index b44af63ee310..6d28b7dacd05 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwr-3150-v1.dts
@@ -16,7 +16,7 @@
 		bootargs = "earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x18000000>;
@@ -58,8 +58,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm47094-netgear-r8500.dts b/arch/arm/boot/dts/bcm47094-netgear-r8500.dts
index eebc0d43e220..f42a1703f4ab 100644
--- a/arch/arm/boot/dts/bcm47094-netgear-r8500.dts
+++ b/arch/arm/boot/dts/bcm47094-netgear-r8500.dts
@@ -16,7 +16,7 @@
 		bootargs = "console=ttyS0,115200";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x18000000>;
@@ -64,8 +64,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		brightness {
 			label = "Backlight";
diff --git a/arch/arm/boot/dts/bcm47094-phicomm-k3.dts b/arch/arm/boot/dts/bcm47094-phicomm-k3.dts
index ec09c0426d16..494983e851e8 100644
--- a/arch/arm/boot/dts/bcm47094-phicomm-k3.dts
+++ b/arch/arm/boot/dts/bcm47094-phicomm-k3.dts
@@ -13,15 +13,13 @@
 	compatible = "phicomm,k3", "brcm,bcm47094", "brcm,bcm4708";
 	model = "Phicomm K3";
 
-	memory {
+	memory@0 {
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x18000000>;
 	};
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm5301x.dtsi b/arch/arm/boot/dts/bcm5301x.dtsi
index ac5266ee8d4c..372dc1eb88a0 100644
--- a/arch/arm/boot/dts/bcm5301x.dtsi
+++ b/arch/arm/boot/dts/bcm5301x.dtsi
@@ -19,7 +19,7 @@
 	#size-cells = <1>;
 	interrupt-parent = <&gic>;
 
-	chipcommonA {
+	chipcommonA@18000000 {
 		compatible = "simple-bus";
 		ranges = <0x00000000 0x18000000 0x00001000>;
 		#address-cells = <1>;
@@ -44,7 +44,7 @@
 		};
 	};
 
-	mpcore {
+	mpcore@19000000 {
 		compatible = "simple-bus";
 		ranges = <0x00000000 0x19000000 0x00023000>;
 		#address-cells = <1>;
@@ -148,7 +148,7 @@
 		};
 	};
 
-	usb2_phy: usb2-phy {
+	usb2_phy: usb2-phy@1800c000 {
 		compatible = "brcm,ns-usb2-phy";
 		reg = <0x1800c000 0x1000>;
 		reg-names = "dmu";
@@ -357,7 +357,7 @@
 		#address-cells = <0>;
 	};
 
-	mdio-bus-mux {
+	mdio-bus-mux@18003000 {
 		compatible = "mdio-mux-mmioreg";
 		mdio-parent-bus = <&mdio>;
 		#address-cells = <1>;
@@ -464,8 +464,6 @@
 	srab: srab@18007000 {
 		compatible = "brcm,bcm5301x-srab";
 		reg = <0x18007000 0x1000>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		status = "disabled";
 
diff --git a/arch/arm/boot/dts/bcm953012er.dts b/arch/arm/boot/dts/bcm953012er.dts
index 250a1d6f2d05..957468224622 100644
--- a/arch/arm/boot/dts/bcm953012er.dts
+++ b/arch/arm/boot/dts/bcm953012er.dts
@@ -39,15 +39,13 @@
 	model = "NorthStar Enterprise Router (BCM953012ER)";
 	compatible = "brcm,bcm953012er", "brcm,brcm53012", "brcm,bcm4708";
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x8000000>;
 	};
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		wps {
 			label = "WPS";
diff --git a/arch/arm/boot/dts/bcm953012k.dts b/arch/arm/boot/dts/bcm953012k.dts
index 52c4c6c9d3f1..046c59fb4846 100644
--- a/arch/arm/boot/dts/bcm953012k.dts
+++ b/arch/arm/boot/dts/bcm953012k.dts
@@ -43,7 +43,7 @@
 		serial1 = &uart1;
 	};
 
-	memory {
+	memory@80000000 {
 		device_type = "memory";
 		reg = <0x80000000 0x10000000>;
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
