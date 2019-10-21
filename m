Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7BEDF2AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZVp6M+RWg6xBU/tp3MEDjCDpJ2+JBmvvHUk6u0p6AY=; b=XFOjEl+OWs47I2
	KJn6x354VHYAKWTb0ChqMRlJFiq3Ct6vUbqhu0soSZg1lfVsWlAnD66TmY+epg1qLlwYkkuMmIYy9
	n2ih/cUcFsdXwR5yjriFPQRQlrquzi9gmc++QSc/6okKMVlCAjM1za4PUHBQZEKnTPV/VaPVwUhVs
	6Ggg43hbf6NgG6EBxrg/7OAnozrsYam3uQsXhjE1367L7KCY9rOu9e6vZhnxb0CSMBrjKxPeR+JVf
	n1vjCXqxHOj2VPPhGyPoxjPUCVhsxASdD2P8fBWQWZR/+m3yyVeo/UUQ1u4t7o4bmvIPvMg1Unhb1
	R2J/PYWo4FESMAiMoaTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaLH-0002pO-Ik; Mon, 21 Oct 2019 16:15:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMaJz-0000Xx-8z; Mon, 21 Oct 2019 16:14:17 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0428217D7;
 Mon, 21 Oct 2019 16:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571674454;
 bh=eQ7bTx/R0P9vquohan/FmaxWHKD0fkRnjK6ziQ7PlFc=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=2Q1YaqNKPdkYowiYJXx5h4BKccMqHEJW7kCKv3hZjB8AH2PAMzasEtdBSWZZu1JSg
 7H3YcdmAl3AUluKtacleQMX5kb1wSigDlb/Ho8XpNi6rVqXEvaBDBg7PnwrPycDnNV
 hywI1o6nHdUmw6GjzMyYG0iuMyjHi6xaPwur2QPE=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 5/7] dt-bindings: sram: Merge Rockchip SRAM bindings into
 generic
Date: Mon, 21 Oct 2019 18:13:49 +0200
Message-Id: <20191021161351.20789-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021161351.20789-1-krzk@kernel.org>
References: <20191021161351.20789-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_091415_388737_C0AFE2A8 
X-CRM114-Status: GOOD (  12.63  )
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

The Rockchip SRAM bindings list only compatible so integrate them into
generic SRAM bindings schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. New patch
---
 .../bindings/sram/rockchip-smp-sram.txt       | 30 -------------------
 .../devicetree/bindings/sram/sram.yaml        | 15 ++++++++++
 2 files changed, 15 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-smp-sram.txt

diff --git a/Documentation/devicetree/bindings/sram/rockchip-smp-sram.txt b/Documentation/devicetree/bindings/sram/rockchip-smp-sram.txt
deleted file mode 100644
index 800701ecffca..000000000000
--- a/Documentation/devicetree/bindings/sram/rockchip-smp-sram.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-Rockchip SRAM for smp bringup:
-------------------------------
-
-Rockchip's smp-capable SoCs use the first part of the sram for the bringup
-of the cores. Once the core gets powered up it executes the code that is
-residing at the very beginning of the sram.
-
-Therefore a reserved section sub-node has to be added to the mmio-sram
-declaration.
-
-Required sub-node properties:
-- compatible : should be "rockchip,rk3066-smp-sram"
-
-The rest of the properties should follow the generic mmio-sram discription
-found in Documentation/devicetree/bindings/sram/sram.txt
-
-Example:
-
-	sram: sram@10080000 {
-		compatible = "mmio-sram";
-		reg = <0x10080000 0x10000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		smp-sram@10080000 {
-			compatible = "rockchip,rk3066-smp-sram";
-			reg = <0x10080000 0x50>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index b92e3e10fbfc..1c2d8b0408c0 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -68,6 +68,7 @@ patternProperties:
           - amlogic,meson8-smp-sram
           - amlogic,meson8b-smp-sram
           - renesas,smp-sram
+          - rockchip,rk3066-smp-sram
           - samsung,exynos4210-sysram
           - samsung,exynos4210-sysram-ns
 
@@ -201,3 +202,17 @@ examples:
             reg = <0 0x10>;
         };
     };
+
+  - |
+    sram@10080000 {
+        compatible = "mmio-sram";
+        reg = <0x10080000 0x10000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges;
+
+        smp-sram@10080000 {
+            compatible = "rockchip,rk3066-smp-sram";
+            reg = <0x10080000 0x50>;
+        };
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
