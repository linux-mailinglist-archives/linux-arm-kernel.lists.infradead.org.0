Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96C44EE4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 20:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PVlw0AIpSGbnvGCplCnVDGkN08Og+QF3e2/5uyL2R/Y=; b=pqD
	FfRkLwMb1e7pekh1/15cywDx5HXaazr1SFzk0KCgvx5TMmTMkZvVifvP9Eb4Z5bRAWUhAgH+FpQls
	oXoYZDdGl1XPoJzBkl1hHlAnpV4aOPm2mR/McxZDEBCXp4MFbQkJpD0kMbJ1gFxsWfb8GO3ZGybPA
	vnk0PL3vPSK5jnm8xsIgiqJ4Vy2SPUM94R6M29dHbOLRKgVbG23wGQDBwsddG/gEKD2K6HIRq/SQK
	34IJwI2onMQGtNHy9uoPVot8FD8scgm/yS7iKKik99b/kN6EcXFLMjei/Zls/Vym/QxX0XesPqeT9
	yS+qVA3F1MuQ4PmxBxqAYkDGKkGARXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNqZ-0004RC-AE; Fri, 21 Jun 2019 18:01:11 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNqL-0004Q5-9e
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 18:00:59 +0000
Received: from grover.flets-west.jp (softbank126125154139.bbtec.net
 [126.125.154.139]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id x5LI0Wvw030591;
 Sat, 22 Jun 2019 03:00:33 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com x5LI0Wvw030591
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561140033;
 bh=gmN+6EpvZxwlHEVbdGNCjhmKTNUl54+7mWpdXjRHo+8=;
 h=From:To:Cc:Subject:Date:From;
 b=ILnjeNcNJ6aEAgZBkHfURXwDC8QagWDgMY5McU02iJtGrDE5GHwtHJ6FoPOWDKvE+
 5pJjGMfunMT13NCOY5zYqVWWqmY4ggxJ26fU2dmvQlunWlFmITtLkAn1WxHnUgw4HF
 06uih0+BhOrofH5n0/hHtVWHgsU7vILen0iH6CJQQmfh+DtKK52ALV4dSEXThCIn6H
 OGxic7pnepBkMI83oaPb/c6KCVFBiKIo0qNz7oROKuWlcrm102TQnOOl9C+5h6dJoi
 nph+72NKw5b7Q/Vh4RoUMQD/A/0sniSBvXulZfaT2N4FTrUnCI2CsM/kxFVhlsSHwH
 +cKCC5nwoDOXQ==
X-Nifty-SrcIP: [126.125.154.139]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: uniphier: add reserved-memory for secure memory
Date: Sat, 22 Jun 2019 03:00:26 +0900
Message-Id: <20190621180026.25071-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_110057_695442_1CD7FB93 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.78 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The memory regions specified by /memreserve/ are passed to
early_init_dt_reserve_memory_arch() with nomap=false, so it is
not suitable for reserving memory for Trusted Firmware-A etc.

Use the more robust /reserved-memory node with the no-map property
to prevent the kernel from mapping it.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi | 13 +++++++++++--
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 13 +++++++++++--
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 13 +++++++++++--
 3 files changed, 33 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
index e32f8aef40bf..8ec40a0b8b1e 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi
@@ -8,8 +8,6 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/gpio/uniphier-gpio.h>
 
-/memreserve/ 0x80000000 0x02000000;
-
 / {
 	compatible = "socionext,uniphier-ld11";
 	#address-cells = <2>;
@@ -110,6 +108,17 @@
 			     <1 10 4>;
 	};
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		secure-memory@81000000 {
+			reg = <0x0 0x81000000 0x0 0x01000000>;
+			no-map;
+		};
+	};
+
 	soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index 0e1b30656fea..b658f2b641e2 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -9,8 +9,6 @@
 #include <dt-bindings/gpio/uniphier-gpio.h>
 #include <dt-bindings/thermal/thermal.h>
 
-/memreserve/ 0x80000000 0x02000000;
-
 / {
 	compatible = "socionext,uniphier-ld20";
 	#address-cells = <2>;
@@ -215,6 +213,17 @@
 		};
 	};
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		secure-memory@81000000 {
+			reg = <0x0 0x81000000 0x0 0x01000000>;
+			no-map;
+		};
+	};
+
 	soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index d3863157ddd9..d6f6cee4d549 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -8,8 +8,6 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/gpio/uniphier-gpio.h>
 
-/memreserve/ 0x80000000 0x02000000;
-
 / {
 	compatible = "socionext,uniphier-pxs3";
 	#address-cells = <2>;
@@ -138,6 +136,17 @@
 			     <1 10 4>;
 	};
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		secure-memory@81000000 {
+			reg = <0x0 0x81000000 0x0 0x01000000>;
+			no-map;
+		};
+	};
+
 	soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
