Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DED6E2D1E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 01:03:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N+bPRpxZogjD3NhcS1KTanlJrb5b3xvGzUUl+7WILRc=; b=N8nlrab5/nO7vuVrIsCcBRYT+B
	RNMWAeoGbANDBOvKgKNMH//v3A7+io2seeKGXntGfc4TQ4C2aZXm3B8EXRc3HMThy4KyazBtf9fCz
	slK6yiKekcRrcA/qimZsZhV5FcUHVMyc3hbHEgvQiz6ykQ1jtozKQI8aJLPZDpge4OVX3gjISSwzu
	/Z02C0EDBN3U7/OGEM18VX/VVPl1iyxwzSaS4ro4yLrZWd6L6HROoDN6DpupuVzReGOktL3UEwyda
	KygNCFNsBB6OLyg0Qgb2jj38x621hUf5aePEYOcB35hYb2yQKTww+dOVNgQ7kpQt6I7tFzk/lZ+Z5
	gG+wlSHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVl7a-0001Zn-1P; Tue, 28 May 2019 23:03:06 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVl6l-0000gH-UE
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 23:02:19 +0000
Received: by mail-pf1-x441.google.com with SMTP id u17so248280pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 16:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SeJxePvC4sabxiRHYAabfO1ipBpmHj92mjpgW9k3e3s=;
 b=IRA6tw2I1cstnL3LtM4RRGS2qL9ertV8mv5Uw5LUAQlQ8Zit2XhesSqI4EPtxtceaw
 cmMvvOorT/cz66YR9oBtcLh9DJ/LLqHSOSA0MeYaxFtfwdh9ymlhmdqlZ/NNG3sWGzPY
 0cF4ekr5bkE2gJFcGa4iVB+YADFXl5wnIFQ9XRtXbiyId7AFybqBZxN0bszXTmmIAErq
 lj3/VWtLFo3LlPVld63mQPI+TVGCzebU5RHXp13R0OzFwe01YiqHMYt0VFviS+O9xv3T
 vulDDSQJQApO7poz1PVasIgrxaL9ykCEb45uLxYKw+Qbt41l2mAmtT331UwEbSEumu3K
 nuBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SeJxePvC4sabxiRHYAabfO1ipBpmHj92mjpgW9k3e3s=;
 b=VrIcfvwvaMUYjbd7EUMlmoJQGFH+Z+QNVh8r/kAepL3AZ6o8h0geWO3Hpx0Fskf+2T
 l/5fUu4KZGdCWZXOWSh7smWXUzEqZRASKzoLPYnQEYk1addwaHwBbplzYHmTLfgUsoLs
 AVOQocNjkSgpXlXNxMHn6tPDicHsWvuw1wDxMjQflFWYxS8vasieMf08IZfv2OA50VOI
 pzvMdtum/wPMfifNJGA/g7e4q7OdKqLmKNFqBdw+wuP13mZzJYLqLxp+Ftirgtwx2GO2
 /wA4DuSwecslomEShhsFXCxSWBYKRW3UD2klTMu3eoaaMXAy9VXIXZQWfv9DOZ57QmiG
 y/Cg==
X-Gm-Message-State: APjAAAW3Ps8iAa9VXc9wwxu/TNdC2PYPKzFIatG+ju66yIelqNz9P0Vt
 olLt1gq5b+zRuv2hukfOZpYsEdUd
X-Google-Smtp-Source: APXvYqxi9YK6HGk2Gh1uvuFERX3GE48Kp223TejwXLP240IqtsOu+uDEpzZgTxbUhc0z5eH+IFnOqA==
X-Received: by 2002:a17:90a:b388:: with SMTP id
 e8mr8676659pjr.97.1559084534943; 
 Tue, 28 May 2019 16:02:14 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm14369573pfh.13.2019.05.28.16.02.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 16:02:14 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/7] ARM: dts: BCM53573: Fix DTC W=1 warnings
Date: Tue, 28 May 2019 16:01:31 -0700
Message-Id: <20190528230134.27007-5-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528230134.27007-1-f.fainelli@gmail.com>
References: <20190528230134.27007-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_160216_249988_14F604D3 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

Fix the the unit_address_vs_reg warnings and unnecessary
\#address-cells/#size-cells without "ranges" or child "reg" property
warnings.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/boot/dts/bcm47189-luxul-xap-1440.dts | 4 +---
 arch/arm/boot/dts/bcm47189-luxul-xap-810.dts  | 4 +---
 arch/arm/boot/dts/bcm47189-tenda-ac9.dts      | 4 +---
 arch/arm/boot/dts/bcm53573.dtsi               | 2 +-
 arch/arm/boot/dts/bcm947189acdbmr.dts         | 4 +---
 5 files changed, 5 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/bcm47189-luxul-xap-1440.dts b/arch/arm/boot/dts/bcm47189-luxul-xap-1440.dts
index eb59508578e4..57ca1cfaecd8 100644
--- a/arch/arm/boot/dts/bcm47189-luxul-xap-1440.dts
+++ b/arch/arm/boot/dts/bcm47189-luxul-xap-1440.dts
@@ -15,7 +15,7 @@
 		bootargs = "earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
@@ -38,8 +38,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm47189-luxul-xap-810.dts b/arch/arm/boot/dts/bcm47189-luxul-xap-810.dts
index 4c71f5e95e00..2e1a7e382cb7 100644
--- a/arch/arm/boot/dts/bcm47189-luxul-xap-810.dts
+++ b/arch/arm/boot/dts/bcm47189-luxul-xap-810.dts
@@ -15,7 +15,7 @@
 		bootargs = "earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
@@ -48,8 +48,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
diff --git a/arch/arm/boot/dts/bcm47189-tenda-ac9.dts b/arch/arm/boot/dts/bcm47189-tenda-ac9.dts
index 5ad53ea52d0a..049cdfd92706 100644
--- a/arch/arm/boot/dts/bcm47189-tenda-ac9.dts
+++ b/arch/arm/boot/dts/bcm47189-tenda-ac9.dts
@@ -15,7 +15,7 @@
 		bootargs = "console=ttyS0,115200 earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
@@ -58,8 +58,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		rfkill {
 			label = "WiFi";
diff --git a/arch/arm/boot/dts/bcm53573.dtsi b/arch/arm/boot/dts/bcm53573.dtsi
index b29695bd4855..4af8e3293cff 100644
--- a/arch/arm/boot/dts/bcm53573.dtsi
+++ b/arch/arm/boot/dts/bcm53573.dtsi
@@ -32,7 +32,7 @@
 		};
 	};
 
-	mpcore {
+	mpcore@18310000 {
 		compatible = "simple-bus";
 		ranges = <0x00000000 0x18310000 0x00008000>;
 		#address-cells = <1>;
diff --git a/arch/arm/boot/dts/bcm947189acdbmr.dts b/arch/arm/boot/dts/bcm947189acdbmr.dts
index 4991700ae6b0..b0b8c774a37f 100644
--- a/arch/arm/boot/dts/bcm947189acdbmr.dts
+++ b/arch/arm/boot/dts/bcm947189acdbmr.dts
@@ -17,7 +17,7 @@
 		bootargs = "console=ttyS0,115200 earlycon";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
@@ -43,8 +43,6 @@
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		restart {
 			label = "Reset";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
