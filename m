Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC00DF105
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 17:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LMwHgk4tXJzb9QmT01drmFsFT2HFyky/Nmlh6BTOhHI=; b=WdozRzbrSNvkqN
	q5cjz+71bmGmAgjOz8meNyY43F9ccfuperY9J6AfNTxeIgv1pChoYXn0wDTOKUOLZ57H+38CJotQ0
	MeJk/oSPI61WRIClOBzqJqucieZeMU1NeJoyZGKM4QmxmrEZpuIzA8yMDap5LVn6a/LU4+QZ4dhzZ
	0tWib2NsNq9kEMT3UWsY4/+CgRTlIx4oYcP2ZXIs1uUk79DbVo0z0y5YWF1UW5N6BpeMIwzatJsO6
	nTjHMwOdcxOTrPa6Y7R6j1/dT47MYt1xF7etYxkItS8buV04ZLIDg8iAaVRrBPXSzZ3DAgm/6bjP9
	7xVyBZUWue3eJSHjxpEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZOc-0005vC-V4; Mon, 21 Oct 2019 15:14:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZOT-0005ul-MY
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 15:14:51 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77F2E2084B;
 Mon, 21 Oct 2019 15:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571670888;
 bh=20+irw0UPt3VHlL+Lz86BZVkn+H0HupSOrlw0ITzCmA=;
 h=From:To:Subject:Date:From;
 b=GmS0kp9tMOpZB5ciq3a4LvFpKoQd/vpmOUPSVdh4WINPN9iFnuxrgZAThByj8Q3uR
 kMlb0QxcAaNCsUzb70KWLN5UAcgsN30SV/MgNAxFHzDCiCrffkAUfMAAqTdQDHC43x
 sMDatall2Z8txqTfJC5f+Siq0ePU/ruIifo8fTgI=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: exynos: Rename children of SysRAM node to "sram"
Date: Mon, 21 Oct 2019 17:14:40 +0200
Message-Id: <20191021151440.13505-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_081449_775855_D1E4137C 
X-CRM114-Status: GOOD (  11.95  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The device node name should reflect generic class of a device so rename
the children of SysRAM node to "smp-sysram".  This will be also in sync
with upcoming DT schema.  No functional change.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/boot/dts/exynos3250.dtsi               | 4 ++--
 arch/arm/boot/dts/exynos4210-universal_c210.dts | 6 +++---
 arch/arm/boot/dts/exynos4210.dtsi               | 4 ++--
 arch/arm/boot/dts/exynos4412.dtsi               | 4 ++--
 arch/arm/boot/dts/exynos5250.dtsi               | 4 ++--
 arch/arm/boot/dts/exynos54xx.dtsi               | 4 ++--
 6 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boot/dts/exynos3250.dtsi b/arch/arm/boot/dts/exynos3250.dtsi
index b016b0b68306..044e5da64a76 100644
--- a/arch/arm/boot/dts/exynos3250.dtsi
+++ b/arch/arm/boot/dts/exynos3250.dtsi
@@ -145,12 +145,12 @@
 			#size-cells = <1>;
 			ranges = <0 0x02020000 0x40000>;
 
-			smp-sysram@0 {
+			smp-sram@0 {
 				compatible = "samsung,exynos4210-sysram";
 				reg = <0x0 0x1000>;
 			};
 
-			smp-sysram@3f000 {
+			smp-sram@3f000 {
 				compatible = "samsung,exynos4210-sysram-ns";
 				reg = <0x3f000 0x1000>;
 			};
diff --git a/arch/arm/boot/dts/exynos4210-universal_c210.dts b/arch/arm/boot/dts/exynos4210-universal_c210.dts
index 09d3d54d09ff..a1bdf7830a87 100644
--- a/arch/arm/boot/dts/exynos4210-universal_c210.dts
+++ b/arch/arm/boot/dts/exynos4210-universal_c210.dts
@@ -590,16 +590,16 @@
 };
 
 &sysram {
-	smp-sysram@0 {
+	smp-sram@0 {
 		status = "disabled";
 	};
 
-	smp-sysram@5000 {
+	smp-sram@5000 {
 		compatible = "samsung,exynos4210-sysram";
 		reg = <0x5000 0x1000>;
 	};
 
-	smp-sysram@1f000 {
+	smp-sram@1f000 {
 		status = "disabled";
 	};
 };
diff --git a/arch/arm/boot/dts/exynos4210.dtsi b/arch/arm/boot/dts/exynos4210.dtsi
index 554819ae1446..b4466232f0c1 100644
--- a/arch/arm/boot/dts/exynos4210.dtsi
+++ b/arch/arm/boot/dts/exynos4210.dtsi
@@ -79,12 +79,12 @@
 			#size-cells = <1>;
 			ranges = <0 0x02020000 0x20000>;
 
-			smp-sysram@0 {
+			smp-sram@0 {
 				compatible = "samsung,exynos4210-sysram";
 				reg = <0x0 0x1000>;
 			};
 
-			smp-sysram@1f000 {
+			smp-sram@1f000 {
 				compatible = "samsung,exynos4210-sysram-ns";
 				reg = <0x1f000 0x1000>;
 			};
diff --git a/arch/arm/boot/dts/exynos4412.dtsi b/arch/arm/boot/dts/exynos4412.dtsi
index 5022aa574b26..48868947373e 100644
--- a/arch/arm/boot/dts/exynos4412.dtsi
+++ b/arch/arm/boot/dts/exynos4412.dtsi
@@ -195,12 +195,12 @@
 			#size-cells = <1>;
 			ranges = <0 0x02020000 0x40000>;
 
-			smp-sysram@0 {
+			smp-sram@0 {
 				compatible = "samsung,exynos4210-sysram";
 				reg = <0x0 0x1000>;
 			};
 
-			smp-sysram@2f000 {
+			smp-sram@2f000 {
 				compatible = "samsung,exynos4210-sysram-ns";
 				reg = <0x2f000 0x1000>;
 			};
diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
index e1f0215e3985..ec983283f573 100644
--- a/arch/arm/boot/dts/exynos5250.dtsi
+++ b/arch/arm/boot/dts/exynos5250.dtsi
@@ -171,12 +171,12 @@
 			#size-cells = <1>;
 			ranges = <0 0x02020000 0x30000>;
 
-			smp-sysram@0 {
+			smp-sram@0 {
 				compatible = "samsung,exynos4210-sysram";
 				reg = <0x0 0x1000>;
 			};
 
-			smp-sysram@2f000 {
+			smp-sram@2f000 {
 				compatible = "samsung,exynos4210-sysram-ns";
 				reg = <0x2f000 0x1000>;
 			};
diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
index f78dee801cd9..8aa5117e58ce 100644
--- a/arch/arm/boot/dts/exynos54xx.dtsi
+++ b/arch/arm/boot/dts/exynos54xx.dtsi
@@ -62,12 +62,12 @@
 			#size-cells = <1>;
 			ranges = <0 0x02020000 0x54000>;
 
-			smp-sysram@0 {
+			smp-sram@0 {
 				compatible = "samsung,exynos4210-sysram";
 				reg = <0x0 0x1000>;
 			};
 
-			smp-sysram@53000 {
+			smp-sram@53000 {
 				compatible = "samsung,exynos4210-sysram-ns";
 				reg = <0x53000 0x1000>;
 			};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
