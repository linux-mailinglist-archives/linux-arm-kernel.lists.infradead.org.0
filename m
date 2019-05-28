Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9872D1ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 01:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zOm+v9Dj8eX5nxUs38ZzN6XnZho31ydwYmHKCfNBoWI=; b=soEOaUBJRo3ammI83IAANeuPwH
	NbqwBuAIgLYCMG6kDiUwLrKRVfLsIoo0lCnVfCE0KCQluwIkCjAhkeJUqp8YTwWXlulb8udSpG54o
	7UYdS51WKjqKZPa1eypkbPUN9lIYpJsmjwUsSB7U3kqdies4k/pLWJVBm9qzsobE0QgK390EZUoTD
	05nYG6mrhoQKzMTqXVfgwHqoIRQn3CxOZ4lz9wRQ0LqkgHpuEdp2yrVoMuc2TpOyWJ2VOC4t9rlYm
	BVTMgV0443mDmKavyP5OD4EHVHbfFwfCOrnPWZu7C8PFVQllS+jN7QHjvQX+SVHcWoJYsRhvRLDkf
	gbsJIIrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVl86-0002Gv-UI; Tue, 28 May 2019 23:03:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVl6r-0000n3-Ax
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 23:02:23 +0000
Received: by mail-pf1-x442.google.com with SMTP id n19so267254pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 16:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JrcPDuAFrT0kBFAkL3W3QNhPSv5oCk1/oSUkr2l2aQg=;
 b=RpbbByeIQSuxpCpW000iv9NexBvHSPXVbUWRIQdw2/m8q/ohtNGBYflUZgy9ZKltGA
 aJSEwHEHHHgjoysC5gacLMJuTuRqIM3kZZFLq8UaXX9DYIxIUygYz7nmd4G6/WE5YADe
 ylYnDLrhjaUSft+KuqT8j5xq24UcbqpVnSzI4aIHDqs6IJ5RGp52k+b/+riPV03IWFB2
 2TjW89G4Io95py93GZie6KCOhZEQRE4NpbOIkq4qR29uYmlQYE77HDCbnijLTX5pFBU8
 rrBmscbnXEhYI03D8sLzy3gNo9DGooJcoCVB0Z0NuuT5CeKBdhLI6TPLnRew3v730qPH
 QenA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JrcPDuAFrT0kBFAkL3W3QNhPSv5oCk1/oSUkr2l2aQg=;
 b=JCZ83wluXUW8+YcsAb+dTBi2BgmtzeQ6b9wzniziyd9jUPsgz+IXyNoYW+Kp45TO2s
 CXW+vac08ZO9r4HGd2VdT6/VG7ve3iWNp7Jjrtw6DXyUO6u9AvXNxoHkpmmcAODD0PQt
 tuBPVJiNu0EESvTK+I695QLsW5iDFNZQMbHPkGOf9GH4QPV4Oo2qnf7Yc6KA4CpgQJ5Q
 veWbB5H9snsFB1MvGsP7Ec/lf3EAAvy/V2B8kTjp5DkdyJxtoKRsWjsYeLD6yTSLXi22
 LixrrTMh00hwf7cBQtexAXuJw4lGFSqdcRiOfRBCJX+McMGQG3G9tbiIvAZHaUOWvie0
 1LBg==
X-Gm-Message-State: APjAAAX7ZWChMMQDsWyT+P7AMUYfsNLWpgPbHEGhyGjgBzOsyFw9ZwmA
 Ua4a4LNKNBKnGP26R13BseFjrmS2
X-Google-Smtp-Source: APXvYqzmyQ4N+ykhgfKclIyz83roWdW3COf/TLcBCRdQQyOr7Y0HBhdCu30wnl7INN8Tcu0LC9OpkA==
X-Received: by 2002:a63:2ad2:: with SMTP id
 q201mr131357493pgq.94.1559084539511; 
 Tue, 28 May 2019 16:02:19 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm14369573pfh.13.2019.05.28.16.02.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 16:02:18 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 7/7] ARM: dts: NSP: Fix the bulk of W=1 DTC warnings
Date: Tue, 28 May 2019 16:01:34 -0700
Message-Id: <20190528230134.27007-8-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528230134.27007-1-f.fainelli@gmail.com>
References: <20190528230134.27007-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_160221_471644_A8A4C84B 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 arch/arm/boot/dts/bcm-nsp.dtsi     | 9 +++------
 arch/arm/boot/dts/bcm958522er.dts  | 2 +-
 arch/arm/boot/dts/bcm958525er.dts  | 2 +-
 arch/arm/boot/dts/bcm958525xmc.dts | 2 +-
 arch/arm/boot/dts/bcm958622hr.dts  | 2 +-
 arch/arm/boot/dts/bcm958623hr.dts  | 2 +-
 arch/arm/boot/dts/bcm958625hr.dts  | 2 +-
 arch/arm/boot/dts/bcm958625k.dts   | 2 +-
 arch/arm/boot/dts/bcm988312hr.dts  | 2 +-
 9 files changed, 11 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-nsp.dtsi b/arch/arm/boot/dts/bcm-nsp.dtsi
index 6925b30c2253..da6d70f09ef1 100644
--- a/arch/arm/boot/dts/bcm-nsp.dtsi
+++ b/arch/arm/boot/dts/bcm-nsp.dtsi
@@ -77,7 +77,7 @@
 		interrupt-affinity = <&cpu0>, <&cpu1>;
 	};
 
-	mpcore {
+	mpcore@19000000 {
 		compatible = "simple-bus";
 		ranges = <0x00000000 0x19000000 0x00023000>;
 		#address-cells = <1>;
@@ -122,7 +122,7 @@
 			      <0x20100 0x100>;
 		};
 
-		L2: l2-cache {
+		L2: l2-cache@22000 {
 			compatible = "arm,pl310-cache";
 			reg = <0x22000 0x1000>;
 			cache-unified;
@@ -166,7 +166,7 @@
 		};
 	};
 
-	axi {
+	axi@18000000 {
 		compatible = "simple-bus";
 		ranges = <0x00000000 0x18000000 0x0011c40c>;
 		#address-cells = <1>;
@@ -415,9 +415,6 @@
 					  "imp_sleep_timer_p5",
 					  "imp_sleep_timer_p7",
 					  "imp_sleep_timer_p8";
-			#address-cells = <1>;
-			#size-cells = <0>;
-
 			status = "disabled";
 
 			/* ports are defined in board DTS */
diff --git a/arch/arm/boot/dts/bcm958522er.dts b/arch/arm/boot/dts/bcm958522er.dts
index 21479b4ce823..8c388eb8a08f 100644
--- a/arch/arm/boot/dts/bcm958522er.dts
+++ b/arch/arm/boot/dts/bcm958522er.dts
@@ -43,7 +43,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x80000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm958525er.dts b/arch/arm/boot/dts/bcm958525er.dts
index cda3d790965b..c339771bb22e 100644
--- a/arch/arm/boot/dts/bcm958525er.dts
+++ b/arch/arm/boot/dts/bcm958525er.dts
@@ -43,7 +43,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x80000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm958525xmc.dts b/arch/arm/boot/dts/bcm958525xmc.dts
index f86649812b59..1c72ec8288de 100644
--- a/arch/arm/boot/dts/bcm958525xmc.dts
+++ b/arch/arm/boot/dts/bcm958525xmc.dts
@@ -43,7 +43,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x40000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm958622hr.dts b/arch/arm/boot/dts/bcm958622hr.dts
index df60602b054d..96a021cebd97 100644
--- a/arch/arm/boot/dts/bcm958622hr.dts
+++ b/arch/arm/boot/dts/bcm958622hr.dts
@@ -43,7 +43,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x80000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm958623hr.dts b/arch/arm/boot/dts/bcm958623hr.dts
index 3893e7af343a..b2c7f21d471e 100644
--- a/arch/arm/boot/dts/bcm958623hr.dts
+++ b/arch/arm/boot/dts/bcm958623hr.dts
@@ -43,7 +43,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x80000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm958625hr.dts b/arch/arm/boot/dts/bcm958625hr.dts
index cf226b02141f..a2c9de35ddfb 100644
--- a/arch/arm/boot/dts/bcm958625hr.dts
+++ b/arch/arm/boot/dts/bcm958625hr.dts
@@ -43,7 +43,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x20000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm958625k.dts b/arch/arm/boot/dts/bcm958625k.dts
index 10b3d512bb33..3fcca12d83c2 100644
--- a/arch/arm/boot/dts/bcm958625k.dts
+++ b/arch/arm/boot/dts/bcm958625k.dts
@@ -42,7 +42,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x80000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm988312hr.dts b/arch/arm/boot/dts/bcm988312hr.dts
index e39db14d805e..edd0f630e025 100644
--- a/arch/arm/boot/dts/bcm988312hr.dts
+++ b/arch/arm/boot/dts/bcm988312hr.dts
@@ -43,7 +43,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	memory {
+	memory@60000000 {
 		device_type = "memory";
 		reg = <0x60000000 0x80000000>;
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
