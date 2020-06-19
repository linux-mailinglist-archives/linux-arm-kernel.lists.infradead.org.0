Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96C820004D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 04:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9QvSjC5ATVCIHY5k6CxVCt2RVYP8SHxZqoP32yTiDg0=; b=qqpgpMFAqdGicMgJPd8pnguU60
	BzF6/d/t5LSs0qXTDDEgXydLK6YTlcZneqsW89Eyrd3AazdOeeCpnGD0xwBivRYahxm2J41Y2MfWb
	DvREJ4n7aN+DdqNxudgoXx7rZRJ7tLQHtqPEBulWCFx46EyfC9mic7e/YWLT0dpx4DPBigU1U6CYK
	vuZNBBjzQzLjZWl1YNYXBtD6PLBBrscKz+5hfs31stOHMG5LidgSi1HxoWP8TMtUmSeJMOIueDolh
	qq2EbQPEp6iQNjKSE5MFKdv6tP8pGZ+KznYEHrTzYp8TpLTtSBNmV3xKgmvwL0mpfXe4ItT8P73dW
	E/GCHr1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm6uA-0007Gs-Gq; Fri, 19 Jun 2020 02:37:22 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm6ti-000747-8h
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 02:36:56 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 19 Jun 2020 11:36:51 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 808DB60057;
 Fri, 19 Jun 2020 11:36:51 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 19 Jun 2020 11:36:51 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 1A88B1A0E67;
 Fri, 19 Jun 2020 11:36:51 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH 1/2] dt-bindings: phy: Add UniPhier AHCI PHY description
Date: Fri, 19 Jun 2020 11:36:46 +0900
Message-Id: <1592534207-13550-2-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592534207-13550-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1592534207-13550-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_193654_415910_8C32CC44 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT bindings for PHY interface built into ahci controller implemented
in UniPhier SoCs.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../bindings/phy/socionext,uniphier-ahci-phy.yaml  | 76 ++++++++++++++++++++++
 1 file changed, 76 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
new file mode 100644
index 0000000..9391e2e
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/socionext,uniphier-ahci-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Socionext UniPhier AHCI PHY
+
+description: |
+  This describes the deivcetree bindings for PHY interfaces built into
+  AHCI controller implemented on Socionext UniPhier SoCs.
+
+maintainers:
+  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
+
+properties:
+  compatible:
+    enum:
+      - socionext,uniphier-pxs2-ahci-phy
+      - socionext,uniphier-pxs3-ahci-phy
+
+  reg:
+    description: PHY register region (offset and length)
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    oneOf:
+      - items:          # for PXs2
+        - const: link
+      - items:          # for others
+        - const: link
+        - const: phy
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    - items:
+      - const: link
+      - const: phy
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    ahci-glue@65700000 {
+        compatible = "socionext,uniphier-pxs3-ahci-glue",
+                     "simple-mfd";
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0x65700000 0x100>;
+
+        ahci_phy: phy@10 {
+            compatible = "socionext,uniphier-pxs3-ahci-phy";
+            reg = <0x10 0x10>;
+            #phy-cells = <0>;
+            clock-names = "link", "phy";
+            clocks = <&sys_clk 28>, <&sys_clk 30>;
+            reset-names = "link", "phy";
+            resets = <&sys_rst 28>, <&sys_rst 30>;
+        };
+    };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
