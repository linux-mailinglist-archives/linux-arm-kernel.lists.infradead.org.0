Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7648517178F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 13:38:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DjtR3SVBNkXHvG3B02x1DPDkJ/zWdMzpTaQ4byS+HCU=; b=cjQ
	R8nnDdlh0Si5vEUHFyrplQNVFuTJyfsZZszR7VmS/oOhbAVUBx5OrPm78UrXOEKLRcwKY1axOPrTk
	pGuWbFD+jl3rfx/SJ0gyyVp2ccJFUlVLew7r552MQT6X9NDs1wBFao6DDJ7woYX1EqdtOY5oeN/p0
	RId0AgTKoxaRUZdqXUOD0KyKvGZZrR2k6ofTjEG735RJfdFI3R/OXUMacSrGcocBggEPcFMZpd9JW
	nJs8BGMJkYPHLxV2EY0h3D8iyFBrk45Qqww7fD2v+tdEHJ8nR5Gm13Co5so9v5/9yicasNE3lzk3v
	LyrBA/ufE1tJElbFVjt/0ty+hnnodWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IQX-0001Yv-Jp; Thu, 27 Feb 2020 12:38:05 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7IQL-0001Xt-SA
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 12:37:55 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id 01RCbb6U019114;
 Thu, 27 Feb 2020 21:37:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 01RCbb6U019114
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582807057;
 bh=OfBqph3sclJ76L08S3946c2Ab+KCXHqtiVA7HkK9BFE=;
 h=From:To:Cc:Subject:Date:From;
 b=JeS4J17PgWBPIUM4+qnMqoRLn0+3vj7iqACMn6BnXwYD+uQESrarxrHetq2mEFtCP
 P1qMcqqS0uu+9zvZh1DzGTZNmuM3OI559uymLfWxN9C7ut7yIJdpQCLhfjW015GY+Q
 ZYh80f+cPASB1amYBWVOVnIGzh/7d/Xwh0LqB6dN0B/wRbc0UliN2fHTFP0PkoguGX
 PUSVREG2rpYhZmtcUEhv7ek9f5V22oYrusGvlx4QeeRhohwmw8+/f0/WEbyA+Wgi23
 U/XR1uCeP41JbkBWxgirkfSuWoSnaNa26lMe1Ti1HV+KPDInysyX3x5QkTzq0cwhmI
 G2Vvhc1+8503g==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: uniphier: rename cache controller nodes to follow
 json-schema
Date: Thu, 27 Feb 2020 21:37:26 +0900
Message-Id: <20200227123726.12910-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_043754_141272_11E8CC76 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Follow the standard nodename pattern
"^(cache-controller|cpu)(@[0-9a-f,]+)*$" defined in
schemas/cache-controller.yaml of dt-schema.

Otherwise, after the dt-binding is converted to json-schema,
'make ARCH=arm dtbs_check' will show a warning like this:

  l2-cache@500c0000: $nodename:0: 'l2-cache@500c0000' does not match '^(cache-controller|cpu)(@[0-9a-f,]+)*$'

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/boot/dts/uniphier-ld4.dtsi  | 2 +-
 arch/arm/boot/dts/uniphier-pro4.dtsi | 2 +-
 arch/arm/boot/dts/uniphier-pro5.dtsi | 4 ++--
 arch/arm/boot/dts/uniphier-pxs2.dtsi | 2 +-
 arch/arm/boot/dts/uniphier-sld8.dtsi | 2 +-
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/uniphier-ld4.dtsi b/arch/arm/boot/dts/uniphier-ld4.dtsi
index 197bee7d8b7f..06e7400d2940 100644
--- a/arch/arm/boot/dts/uniphier-ld4.dtsi
+++ b/arch/arm/boot/dts/uniphier-ld4.dtsi
@@ -51,7 +51,7 @@
 		ranges;
 		interrupt-parent = <&intc>;
 
-		l2: l2-cache@500c0000 {
+		l2: cache-controller@500c0000 {
 			compatible = "socionext,uniphier-system-cache";
 			reg = <0x500c0000 0x2000>, <0x503c0100 0x4>,
 			      <0x506c0000 0x400>;
diff --git a/arch/arm/boot/dts/uniphier-pro4.dtsi b/arch/arm/boot/dts/uniphier-pro4.dtsi
index b02bc8a6346b..1c866f0306fc 100644
--- a/arch/arm/boot/dts/uniphier-pro4.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro4.dtsi
@@ -59,7 +59,7 @@
 		ranges;
 		interrupt-parent = <&intc>;
 
-		l2: l2-cache@500c0000 {
+		l2: cache-controller@500c0000 {
 			compatible = "socionext,uniphier-system-cache";
 			reg = <0x500c0000 0x2000>, <0x503c0100 0x4>,
 			      <0x506c0000 0x400>;
diff --git a/arch/arm/boot/dts/uniphier-pro5.dtsi b/arch/arm/boot/dts/uniphier-pro5.dtsi
index f84a43a10f38..da772429b55a 100644
--- a/arch/arm/boot/dts/uniphier-pro5.dtsi
+++ b/arch/arm/boot/dts/uniphier-pro5.dtsi
@@ -131,7 +131,7 @@
 		ranges;
 		interrupt-parent = <&intc>;
 
-		l2: l2-cache@500c0000 {
+		l2: cache-controller@500c0000 {
 			compatible = "socionext,uniphier-system-cache";
 			reg = <0x500c0000 0x2000>, <0x503c0100 0x8>,
 			      <0x506c0000 0x400>;
@@ -144,7 +144,7 @@
 			next-level-cache = <&l3>;
 		};
 
-		l3: l3-cache@500c8000 {
+		l3: cache-controller@500c8000 {
 			compatible = "socionext,uniphier-system-cache";
 			reg = <0x500c8000 0x2000>, <0x503c8100 0x8>,
 			      <0x506c8000 0x400>;
diff --git a/arch/arm/boot/dts/uniphier-pxs2.dtsi b/arch/arm/boot/dts/uniphier-pxs2.dtsi
index 989b2a241822..7044f8700cb2 100644
--- a/arch/arm/boot/dts/uniphier-pxs2.dtsi
+++ b/arch/arm/boot/dts/uniphier-pxs2.dtsi
@@ -157,7 +157,7 @@
 		ranges;
 		interrupt-parent = <&intc>;
 
-		l2: l2-cache@500c0000 {
+		l2: cache-controller@500c0000 {
 			compatible = "socionext,uniphier-system-cache";
 			reg = <0x500c0000 0x2000>, <0x503c0100 0x8>,
 			      <0x506c0000 0x400>;
diff --git a/arch/arm/boot/dts/uniphier-sld8.dtsi b/arch/arm/boot/dts/uniphier-sld8.dtsi
index fbfd25050a04..09992163e1f4 100644
--- a/arch/arm/boot/dts/uniphier-sld8.dtsi
+++ b/arch/arm/boot/dts/uniphier-sld8.dtsi
@@ -51,7 +51,7 @@
 		ranges;
 		interrupt-parent = <&intc>;
 
-		l2: l2-cache@500c0000 {
+		l2: cache-controller@500c0000 {
 			compatible = "socionext,uniphier-system-cache";
 			reg = <0x500c0000 0x2000>, <0x503c0100 0x4>,
 			      <0x506c0000 0x400>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
