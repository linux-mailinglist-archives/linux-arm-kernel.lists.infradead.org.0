Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B88E1C7920
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 20:15:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tWUcm3Y0HYmOyIcsXsGZHfyI/3A+3w12TUn1t7JqIMk=; b=P8c6/g9AaiRBnS
	vAol9R39eJtV4goNXD+xz0W84wGLIELDy5FZXvWmGc+DRTeLHCbgEacKsW4G1LhE8LTh43RTKTDJB
	Gi3vHZd/zpJRW30F8bOS5Ux6Hv3ToqO9fwTlqz968U3jR5n8LI8K3eytU5tejm2/RUC7q8FLGAe0L
	/JxGNtJfzsp5MdUBXMFpHr04qqDjtQTuU/LWqoTrXjLJamSqc6EYx0ggyO2VdfLUOF/X91geXXABY
	98WD0SY1BcDQajWy6amoRnYjGivZkXZAziYEaKKgy9n7vT1c1hI0M2735l3pdTrM6Y0CXjuhefEZb
	f3YoFRZe5nsO8mejEy/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWOZp-0002zG-0d; Wed, 06 May 2020 18:15:25 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWOYu-0002Mk-VH
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 18:14:30 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 046IEPJO111558;
 Wed, 6 May 2020 13:14:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588788865;
 bh=dufM3xHtstw3fL+VZJpkmiMWZxt+Xeyp7CijsYKqoBk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=lUGjgeF0TZ50dWSmPcsOT9gkpQF3Nqnk9IpFoinB+dHB8j5dyW8E9T3paSQ0yiHlm
 UfFZV8zSOuRUEAr2xvnePnA6DSWWSZKAoNXw1+0pDUU90FzSTcWnUMKVQBjAxNCVBA
 eSHhoOO0AX+RV5TxJXv8EbxY/oaHvcK7HnLcxfRU=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 046IEO35075024
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 6 May 2020 13:14:25 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 6 May
 2020 13:14:24 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 6 May 2020 13:14:24 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 046IENbM089699;
 Wed, 6 May 2020 13:14:24 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 <devicetree@vger.kernel.org>, Tero Kristo <t-kristo@ti.com>
Subject: [PATCH net-next 2/3] dt-binding: net: ti: am65x-cpts: make reg and
 compatible required
Date: Wed, 6 May 2020 21:14:00 +0300
Message-ID: <20200506181401.28699-3-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506181401.28699-1-grygorii.strashko@ti.com>
References: <20200506181401.28699-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_111429_137746_D679797E 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 netdev@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch follows K3 CPTS review comments from Rob Herring
<robh@kernel.org>.
 - "reg" and "compatible" properties are required now
 - minor format changes
 - K3 CPTS example added to K3 MCU CPSW bindings

Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 .../bindings/net/ti,k3-am654-cpsw-nuss.yaml   | 15 ++++++++++-
 .../bindings/net/ti,k3-am654-cpts.yaml        | 25 +++++++------------
 2 files changed, 23 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
index 0c054a2ce5ba..c87395f360a6 100644
--- a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
+++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
@@ -144,7 +144,7 @@ patternProperties:
     description:
       CPSW MDIO bus.
 
-  "^cpts$":
+  "^cpts@[0-9a-f]+":
     type: object
     allOf:
       - $ref: "ti,k3-am654-cpts.yaml#"
@@ -171,6 +171,8 @@ examples:
     #include <dt-bindings/pinctrl/k3.h>
     #include <dt-bindings/soc/ti,sci_pm_domain.h>
     #include <dt-bindings/net/ti-dp83867.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
 
     mcu_cpsw: ethernet@46000000 {
         compatible = "ti,am654-cpsw-nuss";
@@ -229,4 +231,15 @@ examples:
                     ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
               };
         };
+
+        cpts@3d000 {
+             compatible = "ti,am65-cpts";
+             reg = <0x0 0x3d000 0x0 0x400>;
+             clocks = <&k3_clks 18 2>;
+             clock-names = "cpts";
+             interrupts-extended = <&gic500 GIC_SPI 858 IRQ_TYPE_LEVEL_HIGH>;
+             interrupt-names = "cpts";
+             ti,cpts-ext-ts-inputs = <4>;
+             ti,cpts-periodic-outputs = <2>;
+        };
     };
diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
index df83c320e61b..50e027911dd4 100644
--- a/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
+++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
@@ -42,7 +42,7 @@ description: |+
 
 properties:
   $nodename:
-    pattern: "^cpts(@.*|-[0-9a-f])*$"
+    pattern: "^cpts@[0-9a-f]+$"
 
   compatible:
     oneOf:
@@ -52,7 +52,7 @@ properties:
   reg:
     maxItems: 1
     description:
-       The physical base address and size of CPTS IO range
+      The physical base address and size of CPTS IO range
 
   reg-names:
     items:
@@ -65,27 +65,27 @@ properties:
     items:
       - const: cpts
 
-  interrupts-extended:
+  interrupts:
     items:
       - description: CPTS events interrupt
 
   interrupt-names:
     items:
-      - const: "cpts"
+      - const: cpts
 
   ti,cpts-ext-ts-inputs:
     allOf:
       - $ref: /schemas/types.yaml#/definitions/uint32
     maximum: 8
     description:
-        Number of hardware timestamp push inputs (HWx_TS_PUSH)
+      Number of hardware timestamp push inputs (HWx_TS_PUSH)
 
   ti,cpts-periodic-outputs:
     allOf:
       - $ref: /schemas/types.yaml#/definitions/uint32
     maximum: 8
     description:
-         Number of timestamp Generator function outputs (TS_GENFx)
+      Number of timestamp Generator function outputs (TS_GENFx)
 
   refclk-mux:
     type: object
@@ -107,9 +107,11 @@ properties:
       - clocks
 
 required:
+  - compatible
+  - reg
   - clocks
   - clock-names
-  - interrupts-extended
+  - interrupts
   - interrupt-names
 
 additionalProperties: false
@@ -140,13 +142,4 @@ examples:
                assigned-clock-parents = <&k3_clks 118 11>;
          };
     };
-  - |
 
-    cpts {
-             clocks = <&k3_clks 18 2>;
-             clock-names = "cpts";
-             interrupts-extended = <&gic500 GIC_SPI 858 IRQ_TYPE_LEVEL_HIGH>;
-             interrupt-names = "cpts";
-             ti,cpts-ext-ts-inputs = <4>;
-             ti,cpts-periodic-outputs = <2>;
-    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
