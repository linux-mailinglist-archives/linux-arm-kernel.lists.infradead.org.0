Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4B6DF2B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2S+S+xR+ttoB66UVdf55EIS0pUd38o3T3aeqGYn4+E=; b=THj3aC20c8/Yoy
	9gXYzfpBdOyVBur/HFrm9BP618rNj0umUH6wBRq5CSMNO2LuYBTZTE6QOoM/fMIj8iIqQHuYvebR7
	LZEAIwDRQiur+LZqWYEBHUjEG5IOj06S8GcxELVPw4gAfdMMWEd5z7k2/jhuaZTj3085o6AKD7pdX
	gLGmgbe/S6W8WHBHcHUpqSao1WRksYct1SRNJJhGwYfOUd+laywS6gm7gTB1XLNBxB3s6S6ZLxm6D
	aQEqLggG/J189cNON4Okxffnja+pySUyT0OAf61Tf7SkvHP9WP1ZLKlfIrLoC7sg4TJsNcyCcETp6
	8UxOsuW+9gu6LPtRvCuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaLV-00033z-G0; Mon, 21 Oct 2019 16:15:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMaK2-0000ac-HX; Mon, 21 Oct 2019 16:14:20 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 327F921928;
 Mon, 21 Oct 2019 16:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571674458;
 bh=Ccmnu6nOxDiVIz1NGNVhXQ9dyLKK9QddZTiml6Ecya8=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=o+B4P02hmGXNzk0OhAGP0/wFMKWMmuCS885TPCqqBYEeCT/j1rmYRplBpJR6yJTl+
 ZWlYqXeU1W589WuJ5CQNPe4WjwkXgmrWqHwjFIX5fqnWkfdosncmtRcaM6euEdhURW
 bci/YEvMRwmfZ0Vvni42uUZRJpwxwHyARPRPT4x8=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 6/7] dt-bindings: sram: Merge Allwinner SRAM bindings into
 generic
Date: Mon, 21 Oct 2019 18:13:50 +0200
Message-Id: <20191021161351.20789-6-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021161351.20789-1-krzk@kernel.org>
References: <20191021161351.20789-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_091418_652382_4A9B61D4 
X-CRM114-Status: GOOD (  15.92  )
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

The Allwinner SRAM bindings list only compatible so integrate them into
generic SRAM bindings schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. New patch
---
 .../bindings/arm/sunxi/smp-sram.txt           | 44 -------------------
 .../devicetree/bindings/sram/sram.yaml        | 25 +++++++++++
 2 files changed, 25 insertions(+), 44 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/sunxi/smp-sram.txt

diff --git a/Documentation/devicetree/bindings/arm/sunxi/smp-sram.txt b/Documentation/devicetree/bindings/arm/sunxi/smp-sram.txt
deleted file mode 100644
index 082e6a9382d3..000000000000
--- a/Documentation/devicetree/bindings/arm/sunxi/smp-sram.txt
+++ /dev/null
@@ -1,44 +0,0 @@
-Allwinner SRAM for smp bringup:
-------------------------------------------------
-
-Allwinner's A80 SoC uses part of the secure sram for hotplugging of the
-primary core (cpu0). Once the core gets powered up it checks if a magic
-value is set at a specific location. If it is then the BROM will jump
-to the software entry address, instead of executing a standard boot.
-
-Therefore a reserved section sub-node has to be added to the mmio-sram
-declaration.
-
-Note that this is separate from the Allwinner SRAM controller found in
-../../sram/sunxi-sram.txt. This SRAM is secure only and not mappable to
-any device.
-
-Also there are no "secure-only" properties. The implementation should
-check if this SRAM is usable first.
-
-Required sub-node properties:
-- compatible : depending on the SoC this should be one of:
-		"allwinner,sun9i-a80-smp-sram"
-
-The rest of the properties should follow the generic mmio-sram discription
-found in ../../misc/sram.txt
-
-Example:
-
-	sram_b: sram@20000 {
-		/* 256 KiB secure SRAM at 0x20000 */
-		compatible = "mmio-sram";
-		reg = <0x00020000 0x40000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0 0x00020000 0x40000>;
-
-		smp-sram@1000 {
-			/*
-			 * This is checked by BROM to determine if
-			 * cpu0 should jump to SMP entry vector
-			 */
-			compatible = "allwinner,sun9i-a80-smp-sram";
-			reg = <0x1000 0x8>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 1c2d8b0408c0..95d8cc7e2b87 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -65,6 +65,7 @@ patternProperties:
           Should contain a vendor specific string in the form
           <vendor>,[<device>-]<usage>
         enum:
+          - allwinner,sun9i-a80-smp-sram
           - amlogic,meson8-smp-sram
           - amlogic,meson8b-smp-sram
           - renesas,smp-sram
@@ -216,3 +217,27 @@ examples:
             reg = <0x10080000 0x50>;
         };
     };
+
+  - |
+    // Allwinner's A80 SoC uses part of the secure sram for hotplugging of the
+    // primary core (cpu0). Once the core gets powered up it checks if a magic
+    // value is set at a specific location. If it is then the BROM will jump
+    // to the software entry address, instead of executing a standard boot.
+    //
+    // Also there are no "secure-only" properties. The implementation should
+    // check if this SRAM is usable first.
+    sram@20000 {
+        // 256 KiB secure SRAM at 0x20000
+        compatible = "mmio-sram";
+        reg = <0x00020000 0x40000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0x00020000 0x40000>;
+
+        smp-sram@1000 {
+            // This is checked by BROM to determine if
+            // cpu0 should jump to SMP entry vector
+            compatible = "allwinner,sun9i-a80-smp-sram";
+            reg = <0x1000 0x8>;
+        };
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
