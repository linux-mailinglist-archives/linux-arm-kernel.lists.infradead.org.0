Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B827168CF9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 07:46:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vCZWYMd60ylEvPmcuYi+tpQpecq0UBIrtmO0W3n8Qsk=; b=q6u
	jLRut7A3NXagUnNOXb/hsF7dzS7C5U6xPUYBusatTP/L8BkCMcsglYKaY0Iuvu20ijCQ7nZMLxWYn
	CUGb81w3jvS8pPuRukAuHTk62F8X5vBw2Jg+kRKwUkAMv3fDp/rcH4f+F5N1R2grLGhodDcltOW/L
	KtNDc9sB/51HikVh44CbGyGWxeOQF819iG6syN2hOop5jfRM0+AesSc7TqKLlJq5Bj6abg89ZYWlv
	NTQ2Spi98zouYBmMMzkblDq2zlhnil+pqqVwHXH6ysBmuPBVb8XiEHSAAwdiOXOdPU19ZheOA8H1q
	3m8Nm15w3p9FFGYTPpRJ4OGXkPyuR8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5OYH-00016m-0L; Sat, 22 Feb 2020 06:46:13 +0000
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5OXQ-0000NP-WB
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 06:45:29 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-07.nifty.com with ESMTP id 01M6ik5P005982;
 Sat, 22 Feb 2020 15:44:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 01M6ik5P005982
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582353887;
 bh=pw80puZqFh3HIHozKVPIxQUqE9lmyrEYJKdro2WSFao=;
 h=From:To:Cc:Subject:Date:From;
 b=HfTPlUp6gRIDOM5AHjHcEoJbHhsA6IQ8dnxS7J5KrSP/Ez3Vwzsj/ZT8dooUjJI3p
 qbk1DKyeDhD6acKXMrPMkudpMKXIWHJ5CPQq8whHCcr352EEqebWpibBPgEsukJ3lx
 iSfNvle3Vz+9+Y4P2q7O03gcKCV9OluLy4YZedWnwsxKCAECgPd3VuuhHkQz3m/3Yk
 WCkSxasMFRqdTRjdppN9Zoib6+rt7sWRtvj/odAsW0kyOdppfhxOB6H9VCMTzaenTa
 fcpmAA64MfEIRPcfCuzWkXbXKs9K5DieDc9B00+6NXZO7M7X0IIUy+9n1jiAW1EXjP
 2b2Xv7oXiZeVw==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] ARM: dts: uniphier: change SD/eMMC node names to follow
 json-schema
Date: Sat, 22 Feb 2020 15:44:42 +0900
Message-Id: <20200222064445.14903-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_224521_262050_F949394D 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.74 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 masahiroy@kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Follow the standard nodename pattern "^mmc(@.*)?$" defined in
Documentation/devicetree/bindings/mmc/mmc-controller.yaml

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/boot/dts/uniphier-ld4.dtsi  | 4 ++--
 arch/arm/boot/dts/uniphier-pro4.dtsi | 6 +++---
 arch/arm/boot/dts/uniphier-pro5.dtsi | 4 ++--
 arch/arm/boot/dts/uniphier-pxs2.dtsi | 4 ++--
 arch/arm/boot/dts/uniphier-sld8.dtsi | 4 ++--
 5 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/uniphier-ld4.dtsi b/arch/arm/boot/dts/uniphier-ld4.dtsi
index 64ec46c72a4c..f3a20dc0b22b 100644
--- a/arch/arm/boot/dts/uniphier-ld4.dtsi
+++ b/arch/arm/boot/dts/uniphier-ld4.dtsi
@@ -245,7 +245,7 @@
 			#dma-cells = <1>;
 		};
 
-		sd: sdhc@5a400000 {
+		sd: mmc@5a400000 {
 			compatible = "socionext,uniphier-sd-v2.91";
 			status = "disabled";
 			reg = <0x5a400000 0x200>;
@@ -265,7 +265,7 @@
 			sd-uhs-sdr50;
 		};
 
-		emmc: sdhc@5a500000 {
+		emmc: mmc@5a500000 {
 			compatible = "socionext,uniphier-sd-v2.91";
 			status = "disabled";
 			reg = <0x5a500000 0x200>;
diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
index 2ec04d7972ef..e96b5796f0f8 100644
--- a/arch/arm/boot/dts/uniphier-pro4.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
@@ -279,7 +279,7 @@
 			#dma-cells = <1>;
 		};
 
-		sd: sdhc@5a400000 {
+		sd: mmc@5a400000 {
 			compatible = "socionext,uniphier-sd-v2.91";
 			status = "disabled";
 			reg = <0x5a400000 0x200>;
@@ -299,7 +299,7 @@
 			sd-uhs-sdr50;
 		};
 
-		emmc: sdhc@5a500000 {
+		emmc: mmc@5a500000 {
 			compatible = "socionext,uniphier-sd-v2.91";
 			status = "disabled";
 			reg = <0x5a500000 0x200>;
@@ -317,7 +317,7 @@
 			non-removable;
 		};
 
-		sd1: sdhc@5a600000 {
+		sd1: mmc@5a600000 {
 			compatible = "socionext,uniphier-sd-v2.91";
 			status = "disabled";
 			reg = <0x5a600000 0x200>;
diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
index ea3961f920a0..f794a0676760 100644
--- a/arch/arm/boot/dts/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
@@ -469,7 +469,7 @@
 			resets = <&sys_rst 2>, <&sys_rst 2>;
 		};
 
-		emmc: sdhc@68400000 {
+		emmc: mmc@68400000 {
 			compatible = "socionext,uniphier-sd-v3.1";
 			status = "disabled";
 			reg = <0x68400000 0x800>;
@@ -485,7 +485,7 @@
 			non-removable;
 		};
 
-		sd: sdhc@68800000 {
+		sd: mmc@68800000 {
 			compatible = "socionext,uniphier-sd-v3.1";
 			status = "disabled";
 			reg = <0x68800000 0x800>;
diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
index 13b0d4a7741f..04d6bef3a00f 100644
--- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
+++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
@@ -446,7 +446,7 @@
 			};
 		};
 
-		emmc: sdhc@5a000000 {
+		emmc: mmc@5a000000 {
 			compatible = "socionext,uniphier-sd-v3.1.1";
 			status = "disabled";
 			reg = <0x5a000000 0x800>;
@@ -462,7 +462,7 @@
 			non-removable;
 		};
 
-		sd: sdhc@5a400000 {
+		sd: mmc@5a400000 {
 			compatible = "socionext,uniphier-sd-v3.1.1";
 			status = "disabled";
 			reg = <0x5a400000 0x800>;
diff --git a/arch/arm/boot/dts/uniphier-sld8.dtsi b/arch/arm/boot/dts/uniphier-sld8.dtsi
index 4fc6676f5486..beb1eac85436 100644
--- a/arch/arm/boot/dts/uniphier-sld8.dtsi
+++ b/arch/arm/boot/dts/uniphier-sld8.dtsi
@@ -249,7 +249,7 @@
 			#dma-cells = <1>;
 		};
 
-		sd: sdhc@5a400000 {
+		sd: mmc@5a400000 {
 			compatible = "socionext,uniphier-sd-v2.91";
 			status = "disabled";
 			reg = <0x5a400000 0x200>;
@@ -269,7 +269,7 @@
 			sd-uhs-sdr50;
 		};
 
-		emmc: sdhc@5a500000 {
+		emmc: mmc@5a500000 {
 			compatible = "socionext,uniphier-sd-v2.91";
 			status = "disabled";
 			reg = <0x5a500000 0x200>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
