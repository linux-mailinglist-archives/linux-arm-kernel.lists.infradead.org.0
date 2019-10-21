Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CE0DF2AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iBsmx58rpR+VJbJj9cYXmBF6k3Snt3CGA2h9Q0FWrUs=; b=OpPhi2WNq1Xq/j
	EwvlkkMxVh2j8ToXVC3FwYLsr9+QBt64Y5JQXlwQs89LvWErLeSvMSckON1ceHMA+5CDtoBV9qfgf
	e9RnaHZ2W9HsZzijuUnEShJAM5rut2Ugn3PKB5qMknif3QdJhn6UQFdxJ+/ZWlP8rvAAaAkEL5Jzi
	OEQEZHYb9P/QhD0oNEFKsNch6MkTtyTawL1D/SnP48kawyDbdRMBZn69pzcCf+S/wI2OJ4L84XKZG
	BtMeauO64fG5mnhh8flmb1lPJdx/mQz1M+h05cMg5ZcMMVYceK4KZ3ntwH1osTVqZcf31DglhiNp7
	3njTPZ7VyENdPps0x5jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaL1-0001vm-O6; Mon, 21 Oct 2019 16:15:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMaJv-0000UQ-O0; Mon, 21 Oct 2019 16:14:13 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9359921920;
 Mon, 21 Oct 2019 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571674451;
 bh=OZV3IdG9TFjThEBiUSry0JTCOch8mmKj85p44+ujfdQ=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=eyKtANDmUfnBUpeXI3HZ0GbTN6xcLOtloEpO1dRwt7bs5hc8GV+M4K/N5Ff4FcGRA
 ykkkz/lvXLR/gIAldJZcMVhoOWvaYLTlXBuGbs7yDtrnNN3THklE6qQK96PT0YQga3
 wKW02YKlpmeBBEZYP+AWDIMmOtTXGgHLLvcgAW40=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 4/7] dt-bindings: sram: Merge Renesas SRAM bindings into
 generic
Date: Mon, 21 Oct 2019 18:13:48 +0200
Message-Id: <20191021161351.20789-4-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021161351.20789-1-krzk@kernel.org>
References: <20191021161351.20789-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_091411_816883_E3C2DE4F 
X-CRM114-Status: GOOD (  12.66  )
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

The Renesas SRAM bindings list only compatible so integrate them into
generic SRAM bindings schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. New patch
---
 .../bindings/sram/renesas,smp-sram.txt        | 27 -------------------
 .../devicetree/bindings/sram/sram.yaml        | 15 +++++++++++
 2 files changed, 15 insertions(+), 27 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sram/renesas,smp-sram.txt

diff --git a/Documentation/devicetree/bindings/sram/renesas,smp-sram.txt b/Documentation/devicetree/bindings/sram/renesas,smp-sram.txt
deleted file mode 100644
index 712d05e3e15e..000000000000
--- a/Documentation/devicetree/bindings/sram/renesas,smp-sram.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-* Renesas SMP SRAM
-
-Renesas R-Car Gen2 and RZ/G1 SoCs need a small piece of SRAM for the jump stub
-for secondary CPU bringup and CPU hotplug.
-This memory is reserved by adding a child node to a "mmio-sram" node, cfr.
-Documentation/devicetree/bindings/sram/sram.txt.
-
-Required child node properties:
-  - compatible: Must be "renesas,smp-sram",
-  - reg: Address and length of the reserved SRAM.
-    The full physical (bus) address must be aligned to a 256 KiB boundary.
-
-
-Example:
-
-	icram1:	sram@e63c0000 {
-		compatible = "mmio-sram";
-		reg = <0 0xe63c0000 0 0x1000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0 0 0xe63c0000 0x1000>;
-
-		smp-sram@0 {
-			compatible = "renesas,smp-sram";
-			reg = <0 0x10>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index a78da7a686d0..b92e3e10fbfc 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -67,6 +67,7 @@ patternProperties:
         enum:
           - amlogic,meson8-smp-sram
           - amlogic,meson8b-smp-sram
+          - renesas,smp-sram
           - samsung,exynos4210-sysram
           - samsung,exynos4210-sysram-ns
 
@@ -186,3 +187,17 @@ examples:
             reg = <0x1ff80 0x8>;
         };
     };
+
+  - |
+    sram@e63c0000 {
+        compatible = "mmio-sram";
+        reg = <0xe63c0000 0x1000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0xe63c0000 0x1000>;
+
+        smp-sram@0 {
+            compatible = "renesas,smp-sram";
+            reg = <0 0x10>;
+        };
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
