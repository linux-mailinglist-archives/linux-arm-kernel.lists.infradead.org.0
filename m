Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 472962D1D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 01:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DEcB5Pj4/W5VE90gHA4RuubR+88ithmmozHEkmo64Fc=; b=irJEId3ayg9jQLLfy2WrqyVUNX
	gzt/076ZqMq5XLXCWyN5yT0WzZQmHVBj3tSVugxtTrX9NDNJAWuAuXE0C3JPU2MxCfHVRgeB3jfE7
	yhox3tY6vJ9riO6wCg76VChMfEjP79axQqXsDt+hsvykS4vzeSp9sT+8Zh3Cs0S3e/np+yetxes68
	ZGY+bqACrGgX8VIIB2/QoodKuSu3CAbvsUH21Il+zTQ4yIt/D1BjPcSSX3FbRt0BGo2M8SCspwl3h
	1Sv9Xn4roO36U8135L3kldpcI05PgUCRO3bQ6bH2reKVCiE3GVbMk4+HLe5XdlLJih2yvGKyhT0Y/
	gj3SVVvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVl7C-00012m-QC; Tue, 28 May 2019 23:02:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVl6j-0000dj-3v
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 23:02:15 +0000
Received: by mail-pf1-x443.google.com with SMTP id y11so229627pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 16:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UhDRw3r3UGwm2vyQ38HyiVKpdnmKQn3bdX4h2mhrNw4=;
 b=iyEbEcxn6S/MuK024Xfl88KIaECfvI+zXln1AR9XOg8WZy8GokbylfZkMzKeynTUPN
 HtFLyoh6ec+Rd/1u2qefsNm0DuiD7dhMudBFqgylmPFCQhoIj/TYj6qLnuux+sdbr9d5
 Djvb68Oyzmal+nSgRtZv5za771gS8gBLPifkPYCpU7jYczVhthAyXblEN7KjV3EIK4Wd
 J0uIBsffT7IEkUSkvxoLap1v19xR4kivXL2EZt/u509hVifT+/LWjavKNAO88MkzRBAt
 P00qFtwH25EnhbInskB5HE26em2VnM/RJpwM54PGv851qtRFA8JibUub6yinXySPSjNd
 R9BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UhDRw3r3UGwm2vyQ38HyiVKpdnmKQn3bdX4h2mhrNw4=;
 b=sLzPQPKExmPCRTHwwBJSK/byi3WL7nx+nTawhtw51BNhqeqMI4NK5rSv8q6wPIQ4sw
 QvyE88Z9cNH7Sb8QswRZ+UKVhaludTdDDnZUmjwr8m0SshMmMkPhFLbsTONpxJFgg9iE
 UJ0idHLBu2I0OnY1PEb6Vf1kxfoXRUiv8ieh7Xl5tIduy2OmGpbo47OwKG7rOfPGYnUv
 jVf6zzTkSUV1ZkLoLcTGT4J7sRSKliVMk2FylEadc9NqRShkajFj0XSa0H5ANp9JaqGz
 AXTX4oVfI3oKr3DEY1OGphPWufYujyLg1txhsTSAwpOILoDWfY586cyxQ6lHA29QH5qW
 UhcQ==
X-Gm-Message-State: APjAAAW9qEbgql4Z47cxmdeB2+8A57t7JW3gSmIpIkFWAYr0/zq4QCmq
 /M/Uc607jGIanAo//ZbV+Lmd0S3k
X-Google-Smtp-Source: APXvYqypL8bzjXvnb1MD+6km7SNXH7zCKNwdFnUvmZfuP16nTTKhEk/IDuKtjgE3FGMJaclNa82XcA==
X-Received: by 2002:a17:90a:bb82:: with SMTP id
 v2mr8857173pjr.73.1559084531988; 
 Tue, 28 May 2019 16:02:11 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm14369573pfh.13.2019.05.28.16.02.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 16:02:11 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/7] ARM: dts: Cygnus: Fix most DTC W=1 warnings
Date: Tue, 28 May 2019 16:01:29 -0700
Message-Id: <20190528230134.27007-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528230134.27007-1-f.fainelli@gmail.com>
References: <20190528230134.27007-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_160213_157664_B0D7AD66 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
 arch/arm/boot/dts/bcm-cygnus-clock.dtsi | 12 ++++++------
 arch/arm/boot/dts/bcm-cygnus.dtsi       |  6 +++---
 arch/arm/boot/dts/bcm911360_entphn.dts  |  2 --
 3 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-cygnus-clock.dtsi b/arch/arm/boot/dts/bcm-cygnus-clock.dtsi
index 80b6ba4ca50c..52f91a12a99a 100644
--- a/arch/arm/boot/dts/bcm-cygnus-clock.dtsi
+++ b/arch/arm/boot/dts/bcm-cygnus-clock.dtsi
@@ -42,7 +42,7 @@ clocks {
 	};
 
 	/* Cygnus ARM PLL */
-	armpll: armpll {
+	armpll: armpll@19000000 {
 		#clock-cells = <0>;
 		compatible = "brcm,cygnus-armpll";
 		clocks = <&osc>;
@@ -67,7 +67,7 @@ clocks {
 		clock-mult = <1>;
 	};
 
-	genpll: genpll {
+	genpll: genpll@301d000 {
 		#clock-cells = <1>;
 		compatible = "brcm,cygnus-genpll";
 		reg = <0x0301d000 0x2c>, <0x0301c020 0x4>;
@@ -94,7 +94,7 @@ clocks {
 		clock-mult = <1>;
 	};
 
-	lcpll0: lcpll0 {
+	lcpll0: lcpll0@301d02c {
 		#clock-cells = <1>;
 		compatible = "brcm,cygnus-lcpll0";
 		reg = <0x0301d02c 0x1c>, <0x0301c020 0x4>;
@@ -103,7 +103,7 @@ clocks {
 				     "usb_phy", "smart_card", "ch5";
 	};
 
-	mipipll: mipipll {
+	mipipll: mipipll@180a9800 {
 		#clock-cells = <1>;
 		compatible = "brcm,cygnus-mipipll";
 		reg = <0x180a9800 0x2c>, <0x0301c020 0x4>, <0x180aa024 0x4>;
@@ -113,7 +113,7 @@ clocks {
 				     "ch5_unused";
 	};
 
-	asiu_clks: asiu_clks {
+	asiu_clks: asiu_clks@301d048 {
 		#clock-cells = <1>;
 		compatible = "brcm,cygnus-asiu-clk";
 		reg = <0x0301d048 0xc>, <0x180aa024 0x4>;
@@ -122,7 +122,7 @@ clocks {
 		clock-output-names = "keypad", "adc/touch", "pwm";
 	};
 
-	audiopll: audiopll {
+	audiopll: audiopll@180aeb00 {
 		#clock-cells = <1>;
 		compatible = "brcm,cygnus-audiopll";
 		reg = <0x180aeb00 0x68>;
diff --git a/arch/arm/boot/dts/bcm-cygnus.dtsi b/arch/arm/boot/dts/bcm-cygnus.dtsi
index 5f7b46503a51..2dac3efc7640 100644
--- a/arch/arm/boot/dts/bcm-cygnus.dtsi
+++ b/arch/arm/boot/dts/bcm-cygnus.dtsi
@@ -45,7 +45,7 @@
 		ethernet0 = &eth0;
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0 0>;
 	};
@@ -69,7 +69,7 @@
 		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
-	core {
+	core@19000000 {
 		compatible = "simple-bus";
 		ranges = <0x00000000 0x19000000 0x1000000>;
 		#address-cells = <1>;
@@ -91,7 +91,7 @@
 			      <0x20100 0x100>;
 		};
 
-		L2: l2-cache {
+		L2: l2-cache@22000 {
 			compatible = "arm,pl310-cache";
 			reg = <0x22000 0x1000>;
 			cache-unified;
diff --git a/arch/arm/boot/dts/bcm911360_entphn.dts b/arch/arm/boot/dts/bcm911360_entphn.dts
index 53f990defd6a..b2d323f4a5ab 100644
--- a/arch/arm/boot/dts/bcm911360_entphn.dts
+++ b/arch/arm/boot/dts/bcm911360_entphn.dts
@@ -49,8 +49,6 @@
 
 	gpio_keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		hook {
 			label = "HOOK";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
