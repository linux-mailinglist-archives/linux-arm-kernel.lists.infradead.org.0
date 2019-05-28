Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B60E52D1D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 01:02:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j6QjG+aiaxv168Z9yb7eoZuDpqQshoUSRoP15GaggFw=; b=GiQtwMc4LWAwnVPLSpibq9y+cD
	p7DJB3EYzs7GEjK9GKZ8zq/wR1CXZ3GFCzR4ZUBudJOVicJ4fCxU11wwCn3fTdrMav/4lRhDU2nYu
	C8ZOhPpi9bZpbv0RUpA5xvCNm2tnrIxKp/pvtlvMsZqpUfTr1k5ZuS6RMilvH64SofnFru3tEF1xc
	caxG0BBEQpnhCrXHaeG/ilSdMrRNvkUDax8rWskvhNnh3OlPFr9g9Qazavp8ap6AU9oAHKwtymLs4
	23BIG7iJ35CaW90q+ZKhYpXdbbXwVfsVwS6ve/gHEqb7nvZ0aRHWY/vTp5axQTfIqPxWS7yAwFcKX
	55wM1lbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVl72-0000sN-8V; Tue, 28 May 2019 23:02:32 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVl6h-0000dN-F2
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 23:02:12 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so91053pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 16:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jGnyRR3m4AUKHhiBC/dTV8rAAismHJ9WvTgbhLm7upM=;
 b=EwJj4+OYvEnyLsIHAHfrCqUTEPuN76PNj1E+QxnDFQj7ZnK40ocbKBogP9K32HpE14
 ZVPzvelwthDxrJUTajrVa25po41p5iiElrgZEuOf+dq1hVo5K/DAR4RjtDaJRhp//tCR
 ItJXBc7ZxB2NYjDIZ1/qigHIrrdXzMOlAoFc1impuySfsWUT4zXR1afj7nYXmefyzb7A
 G5wbfg1I1SgoRzpaxQGvkRzMv4+UDxbS9x/UBOyTiJAzAYNr2dN2nTS7YFtfJsWYDYQy
 IijaO46lrYlBfNjvoWSlgDiuqhQymQDCAwydsVAzyK+LRdL8Ka0ugn9rJpYvSXa1HFf8
 PP4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jGnyRR3m4AUKHhiBC/dTV8rAAismHJ9WvTgbhLm7upM=;
 b=RcXW7yJa+vysU+bOHniEOZeKSs6h7Mm/tXPhaCIcR2Aa/091Ud5QSznM5DhuOFNDRT
 fAw2Ks0tpNilyDUr2xhUoD8UhaTAA91q0z5rI1LrS2CzPVGW0+cd1NNFpYUx934r9Ia+
 Ejr4FaUWZgKb0vMQPxD4i/rdA726j3RV5T7+jEhkIjx2daR7r1cRucFfqkV3tFxg1BUN
 /fdEV5XWFyUQjpLpj/PwGcGDe7E14F2CU8N6ZP/hNF3oG1KGu5XBt2DFEi16djBQ3b+X
 suVIs7tkiJeVhN+BrLE7I6Nhu0/7mw9nYnvOC5TjZy3Ra25gLw0+iwRLiJk2ToLExNHG
 52Ug==
X-Gm-Message-State: APjAAAUlhF8+S2wFlh4DcpXvhfNIL90ViS0xszSrKxM+bWuCE0ghpGlq
 QfgVOHQXwDG2Rgfi1K1NSJB31EuQ
X-Google-Smtp-Source: APXvYqwElJnkGtpaWfKSCjWQ2c93XEo9sBmxL0ahodqVjbFOxwxO/EY6kzTU2lYD/iV8pQoLD3SVZg==
X-Received: by 2002:a63:7:: with SMTP id 7mr136754307pga.108.1559084530463;
 Tue, 28 May 2019 16:02:10 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm14369573pfh.13.2019.05.28.16.02.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 16:02:09 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/7] ARM: dts: Fix BCM7445 DTC warnings
Date: Tue, 28 May 2019 16:01:28 -0700
Message-Id: <20190528230134.27007-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528230134.27007-1-f.fainelli@gmail.com>
References: <20190528230134.27007-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_160211_501008_C94ADAC3 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

Fixes a number of unit_address_vs_reg warnings:

  DTC     arch/arm/boot/dts/bcm7445-bcm97445svmb.dtb
arch/arm/boot/dts/bcm7445.dtsi:66.6-225.4: Warning (unit_address_vs_reg): /rdb: node has a reg or ranges property, but no unit name
arch/arm/boot/dts/bcm7445.dtsi:227.21-298.4: Warning (unit_address_vs_reg): /memory_controllers: node has a reg or ranges property, but no unit name
arch/arm/boot/dts/bcm7445-bcm97445svmb.dts:9.9-14.4: Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name
arch/arm/boot/dts/bcm7445.dtsi:255.10-275.5: Warning (simple_bus_reg): /memory_controllers/memc@1: simple-bus unit address format error, expected "80000"
arch/arm/boot/dts/bcm7445.dtsi:277.10-297.5: Warning (simple_bus_reg): /memory_controllers/memc@2: simple-bus unit address format error, expected "100000"

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/boot/dts/bcm7445-bcm97445svmb.dts | 2 +-
 arch/arm/boot/dts/bcm7445.dtsi             | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/bcm7445-bcm97445svmb.dts b/arch/arm/boot/dts/bcm7445-bcm97445svmb.dts
index 8006c69a3fdf..8313b7cad542 100644
--- a/arch/arm/boot/dts/bcm7445-bcm97445svmb.dts
+++ b/arch/arm/boot/dts/bcm7445-bcm97445svmb.dts
@@ -6,7 +6,7 @@
 	model = "Broadcom STB (bcm7445), SVMB reference board";
 	compatible = "brcm,bcm7445", "brcm,brcmstb";
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x00 0x00000000 0x00 0x40000000>,
 		      <0x00 0x40000000 0x00 0x40000000>,
diff --git a/arch/arm/boot/dts/bcm7445.dtsi b/arch/arm/boot/dts/bcm7445.dtsi
index 504a63236a5e..58f67c9b830b 100644
--- a/arch/arm/boot/dts/bcm7445.dtsi
+++ b/arch/arm/boot/dts/bcm7445.dtsi
@@ -63,7 +63,7 @@
 			     <GIC_PPI 10 (GIC_CPU_MASK_RAW(15) | IRQ_TYPE_LEVEL_LOW)>;
 	};
 
-	rdb {
+	rdb@f0000000 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "simple-bus";
@@ -224,7 +224,7 @@
 
 	};
 
-	memory_controllers {
+	memory_controllers@f1100000 {
 		compatible = "simple-bus";
 		ranges = <0x0 0x0 0xf1100000 0x200000>;
 		#address-cells = <1>;
@@ -252,7 +252,7 @@
 			};
 		};
 
-		memc@1 {
+		memc@80000 {
 			compatible = "brcm,brcmstb-memc", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -274,7 +274,7 @@
 			};
 		};
 
-		memc@2 {
+		memc@100000 {
 			compatible = "brcm,brcmstb-memc", "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
