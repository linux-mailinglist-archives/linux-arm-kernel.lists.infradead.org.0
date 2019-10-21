Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C65DF2A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gKyR/mi+H0xWEkoAXEFNuAF0Iy3hbMTz13qB1aSz60=; b=m8ym6Vp2Idy84D
	7uQ7xJ9S5b7v1AU82v8eoO/EABGTr6ekn/tp1XSllMU3qr+hwcc3Cx1eJA1u/F/NGtkYYQ9LJn//4
	jYbnXVjk8P3zUN3KqhP+V7Anqe3SWzvbS+/tGKfq9eCeBZhBPBXsLiRgFvDvLD4zDfi+KtiAMQQOq
	DZoVCvTUItXWFTlXmo5qyI//Ev6UGP88uzdzaTb9frjLInwJNxAUGtprQMDllFQbQYfSouLxica2w
	wRnlQFTFAGwcFWXfc7dNWHtJCfrkXKG4owHrmewaPN71jqn+gbxZPrC7l1SPGjBxxsVULg0VwDO9+
	bnl1aoExrtN3zL5H7Z5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaKn-00011R-40; Mon, 21 Oct 2019 16:15:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMaJs-0000RE-Vt; Mon, 21 Oct 2019 16:14:10 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8024E2173B;
 Mon, 21 Oct 2019 16:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571674448;
 bh=PesYZ+HA875Gfaapu9lLXMBV2ZwPk+XBT+8vkmww23U=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=RFRhPoEiZVxyEt90zQAwknCO80KBatrwuzdN+N1r1iIu4kq/cxQZ3RxBIcEARt+ON
 DMnKUyONZ7WI75aa58PSKcXPuO1InU1lG/3tnFIR0IjC959EcC1dCHi3xsijoAms8o
 b7Pi5/tbl/GwZE21/h703VJwZV2ulVnXyFOozE9E=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 3/7] dt-bindings: sram: Merge Amlogic SRAM bindings into
 generic
Date: Mon, 21 Oct 2019 18:13:47 +0200
Message-Id: <20191021161351.20789-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021161351.20789-1-krzk@kernel.org>
References: <20191021161351.20789-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_091409_090042_4F9AC517 
X-CRM114-Status: GOOD (  13.73  )
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

The Amlogic SRAM bindings list only compatible so integrate them into
generic SRAM bindings schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. New patch
---
 .../bindings/arm/amlogic/smp-sram.txt         | 32 -------------------
 .../devicetree/bindings/sram/sram.yaml        | 22 +++++++++++++
 2 files changed, 22 insertions(+), 32 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic/smp-sram.txt

diff --git a/Documentation/devicetree/bindings/arm/amlogic/smp-sram.txt b/Documentation/devicetree/bindings/arm/amlogic/smp-sram.txt
deleted file mode 100644
index 3473ddaadfac..000000000000
--- a/Documentation/devicetree/bindings/arm/amlogic/smp-sram.txt
+++ /dev/null
@@ -1,32 +0,0 @@
-Amlogic Meson8 and Meson8b SRAM for smp bringup:
-------------------------------------------------
-
-Amlogic's SMP-capable SoCs use part of the sram for the bringup of the cores.
-Once the core gets powered up it executes the code that is residing at a
-specific location.
-
-Therefore a reserved section sub-node has to be added to the mmio-sram
-declaration.
-
-Required sub-node properties:
-- compatible : depending on the SoC this should be one of:
-		"amlogic,meson8-smp-sram"
-		"amlogic,meson8b-smp-sram"
-
-The rest of the properties should follow the generic mmio-sram discription
-found in ../../misc/sram.txt
-
-Example:
-
-	sram: sram@d9000000 {
-		compatible = "mmio-sram";
-		reg = <0xd9000000 0x20000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0 0xd9000000 0x20000>;
-
-		smp-sram@1ff80 {
-			compatible = "amlogic,meson8b-smp-sram";
-			reg = <0x1ff80 0x8>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 9ed94f8b0794..a78da7a686d0 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -65,6 +65,8 @@ patternProperties:
           Should contain a vendor specific string in the form
           <vendor>,[<device>-]<usage>
         enum:
+          - amlogic,meson8-smp-sram
+          - amlogic,meson8b-smp-sram
           - samsung,exynos4210-sysram
           - samsung,exynos4210-sysram-ns
 
@@ -164,3 +166,23 @@ examples:
             reg = <0x53000 0x1000>;
         };
     };
+
+  - |
+    // Amlogic's SMP-capable SoCs use part of the sram for the bringup of the cores.
+    // Once the core gets powered up it executes the code that is residing at a
+    // specific location.
+    //
+    // Therefore a reserved section sub-node has to be added to the mmio-sram
+    // declaration.
+    sram@d9000000 {
+        compatible = "mmio-sram";
+        reg = <0xd9000000 0x20000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0xd9000000 0x20000>;
+
+        smp-sram@1ff80 {
+            compatible = "amlogic,meson8b-smp-sram";
+            reg = <0x1ff80 0x8>;
+        };
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
