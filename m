Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35538E267B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 00:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzwoYwh3GcBh5wqI/WMOw7CkKXQpc2GwR4wYouzftPs=; b=SQ/KpdqM3wDM1D
	H743mm2NoCNVWHeJSquFDHZIWps4fjs+cyNQnMx0Bgbs/wKPky72CeAKr/rOn78erI9YxTQKpyD8h
	CrJW/1qNFKNd0N8pU0NlyzeW1igwX0oy5VBRETAFb8KHmy4kVtA82457ny8IjA85brd1+F7ydSO4g
	mhxdtr+sIYN0YSsJKPBtZ/0vSFbZchy8z+K3vGQvlsqq931hBorSLAZu7ksTseXlqvYV4dgRG7Uhi
	5H8tIBIL1Kd2NcgJu+l02nVGaVNRZWHg6i12gx4ulUFHrk+VVE+H76BCX9mDSZAlTiUgylkPcjGWO
	ic9k8OxFYU0Brzb6k65w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNPI5-0006Zo-4c; Wed, 23 Oct 2019 22:39:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNPHe-0006O9-Ni; Wed, 23 Oct 2019 22:39:16 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iNPHR-0004FB-Kh; Thu, 24 Oct 2019 00:39:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: kishon@ti.com
Subject: [PATCH 2/3] dt-bindings: phy: add yaml binding for rockchip,
 px30-dsi-dphy
Date: Thu, 24 Oct 2019 00:38:50 +0200
Message-Id: <20191023223851.3030-2-heiko@sntech.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191023223851.3030-1-heiko@sntech.de>
References: <20191023223851.3030-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_153914_917936_8DEEE3CC 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, bivvy.bi@rock-chips.com,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a yaml binding for the external dsi phy found on Rockchip
socs of the px30, rk3128 and rk3368 variants.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/phy/rockchip,px30-dsi-dphy.yaml  | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
new file mode 100644
index 000000000000..c2e1a998a766
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,px30-dsi-dphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip MIPI DPHY with additional LVDS/TTL modes
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  "#phy-cells":
+    const: 0
+
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - rockchip,px30-dsi-dphy
+      - rockchip,rk3128-dsi-dphy
+      - rockchip,rk3368-dsi-dphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: PLL reference clock
+      - description: Module clock
+
+  clock-names:
+    items:
+      - const: ref
+      - const: pclk
+
+  power-domains:
+    maxItems: 1
+    description: phandle to the associated power domain
+
+  resets:
+    items:
+      - description: exclusive PHY reset line
+
+  reset-names:
+    items:
+      - const: apb
+
+required:
+  - "#phy-cells"
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi_dphy: phy@ff2e0000 {
+        compatible = "rockchip,px30-video-phy";
+        reg = <0x0 0xff2e0000 0x0 0x10000>;
+        clocks = <&pmucru 13>, <&cru 12>;
+        clock-names = "ref", "pclk";
+        #clock-cells = <0>;
+        resets = <&cru 12>;
+        reset-names = "apb";
+        #phy-cells = <0>;
+    };
+
+...
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
