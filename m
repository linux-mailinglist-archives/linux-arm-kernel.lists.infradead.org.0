Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421F412E49D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 10:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KDIgjxM9kvi/J7HAQNdSTU1lki9Y6vWkqlxo4LaGwW4=; b=NWmQYjcjQ3Bd5U
	7cDF5n9E9DPiBbIe9mrcY2IgxUWdujE5MeITzRiahysnXyPXP42h3fA7cnFZLj4Exr4nAS0BbL02s
	Tc4NqBx4HmnNE0s/f9S0W9n5nRPZwB9fPKXcx6ejC0C12omGmXTaQ1cXW92lr+OiTn0pbQU/18VQy
	XuNVnUZ+jtpdodCAcaqHCWL/nuJmeX0lSVJ2Dp3HBWRnMeS14F4QsScW2AvwsbIGjVzRl9HluD3Qk
	Fl/OYJaDqIbj/euHEkRp1I4ZIrjhxdGcjpTgyHceCCsbSLGlrPlOmMrgDAd+scfwsjq9XONmgb3em
	hmPStWgNgJevgwVhmhGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imxBl-0005Ie-2O; Thu, 02 Jan 2020 09:54:45 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imxBb-0005II-2j
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 09:54:36 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0029sV8p101183;
 Thu, 2 Jan 2020 03:54:31 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1577958872;
 bh=VEjOziF1DMpoAGWv4sePuJ9MJbI0BtpFi+zfGK4xmQU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=oTWf5/5s4n/4Pc+tUdb5tEdOI6a4uDtzj/U1USTQAkz2Yfmc9D6VCeiPpD0GygpeZ
 f5fjmmIiEpMgIQdM3/cBx+LbinMC/fJyomttbbMV7eeq9lFeV4AYZ8LqDRwlSu3ul3
 YaYTAFCW5/FsTcsT/E4UQyvbrf0rKWV5T9gQYyVc=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0029sVF8039711
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 2 Jan 2020 03:54:31 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 2 Jan
 2020 03:54:31 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 2 Jan 2020 03:54:31 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0029sSRa111415;
 Thu, 2 Jan 2020 03:54:29 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Swapnil Kashinath Jakhade
 <sjakhade@cadence.com>, Roger Quadros <rogerq@ti.com>, Jyri Sarha
 <jsarha@ti.com>
Subject: [PATCH v5 13/14] dt-bindings: phy: Document WIZ (SERDES wrapper)
 bindings
Date: Thu, 2 Jan 2020 15:26:31 +0530
Message-ID: <20200102095631.1165-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191216095712.13266-14-kishon@ti.com>
References: <20191216095712.13266-14-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_015435_204304_3B9B7F7D 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add DT binding documentation for WIZ (SERDES wrapper). WIZ is *NOT* a
PHY but a wrapper used to configure some of the input signals to the
SERDES. It is used with both Sierra(16G) and Torrent(10G) serdes.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
[jsarha@ti.com: Add separate compatible for Sierra(16G) and Torrent(10G)
 SERDES]
Signed-off-by: Jyri Sarha <jsarha@ti.com>
---
Changes from v4:
*) Fixed the indentation as suggested by Rob v4

 .../bindings/phy/ti,phy-j721e-wiz.yaml        | 204 ++++++++++++++++++
 1 file changed, 204 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
new file mode 100644
index 000000000000..e010ea46b88d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -0,0 +1,204 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/ti,phy-j721e-wiz.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: TI J721E WIZ (SERDES Wrapper)
+
+maintainers:
+  - Kishon Vijay Abraham I <kishon@ti.com>
+
+properties:
+  compatible:
+    enum:
+      - ti,j721e-wiz-16g
+      - ti,j721e-wiz-10g
+
+  power-domains:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+    description: clock-specifier to represent input to the WIZ
+
+  clock-names:
+    items:
+      - const: fck
+      - const: core_ref_clk
+      - const: ext_ref_clk
+
+  num-lanes:
+    minimum: 1
+    maximum: 4
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  ranges: true
+
+  assigned-clocks:
+    maxItems: 2
+
+  assigned-clock-parents:
+    maxItems: 2
+
+patternProperties:
+  "^pll[0|1]-refclk$":
+    type: object
+    description: |
+      WIZ node should have subnodes for each of the PLLs present in
+      the SERDES.
+    properties:
+      clocks:
+        maxItems: 2
+        description: Phandle to clock nodes representing the two inputs to PLL.
+
+      "#clock-cells":
+        const: 0
+
+      assigned-clocks:
+        maxItems: 1
+
+      assigned-clock-parents:
+        maxItems: 1
+
+    required:
+      - clocks
+      - "#clock-cells"
+      - assigned-clocks
+      - assigned-clock-parents
+
+  "^cmn-refclk1?-dig-div$":
+    type: object
+    description:
+      WIZ node should have subnodes for each of the PMA common refclock
+      provided by the SERDES.
+    properties:
+      clocks:
+        maxItems: 1
+        description: Phandle to the clock node representing the input to the
+          divider clock.
+
+      "#clock-cells":
+        const: 0
+
+    required:
+      - clocks
+      - "#clock-cells"
+
+  "^refclk-dig$":
+    type: object
+    description: |
+      WIZ node should have subnode for refclk_dig to select the reference
+      clock source for the reference clock used in the PHY and PMA digital
+      logic.
+    properties:
+      clocks:
+        maxItems: 4
+        description: Phandle to four clock nodes representing the inputs to
+          refclk_dig
+
+      "#clock-cells":
+        const: 0
+
+      assigned-clocks:
+        maxItems: 1
+
+      assigned-clock-parents:
+        maxItems: 1
+
+    required:
+      - clocks
+      - "#clock-cells"
+      - assigned-clocks
+      - assigned-clock-parents
+
+  "^serdes@[0-9a-f]+$":
+    type: object
+    description: |
+      WIZ node should have '1' subnode for the SERDES. It could be either
+      Sierra SERDES or Torrent SERDES. Sierra SERDES should follow the
+      bindings specified in
+      Documentation/devicetree/bindings/phy/phy-cadence-sierra.txt
+      Torrent SERDES should follow the bindings specified in
+      Documentation/devicetree/bindings/phy/phy-cadence-dp.txt
+
+required:
+  - compatible
+  - power-domains
+  - clocks
+  - clock-names
+  - num-lanes
+  - "#address-cells"
+  - "#size-cells"
+  - "#reset-cells"
+  - ranges
+
+examples:
+  - |
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+    wiz@5000000 {
+           compatible = "ti,j721e-wiz-16g";
+           #address-cells = <1>;
+           #size-cells = <1>;
+           power-domains = <&k3_pds 292 TI_SCI_PD_EXCLUSIVE>;
+           clocks = <&k3_clks 292 5>, <&k3_clks 292 11>, <&dummy_cmn_refclk>;
+           clock-names = "fck", "core_ref_clk", "ext_ref_clk";
+           assigned-clocks = <&k3_clks 292 11>, <&k3_clks 292 0>;
+           assigned-clock-parents = <&k3_clks 292 15>, <&k3_clks 292 4>;
+           num-lanes = <2>;
+           #reset-cells = <1>;
+           ranges = <0x5000000 0x0 0x5000000 0x10000>;
+
+           pll0-refclk {
+                  clocks = <&k3_clks 293 13>, <&dummy_cmn_refclk>;
+                  #clock-cells = <0>;
+                  assigned-clocks = <&wiz1_pll0_refclk>;
+                  assigned-clock-parents = <&k3_clks 293 13>;
+           };
+
+           pll1-refclk {
+                  clocks = <&k3_clks 293 0>, <&dummy_cmn_refclk1>;
+                  #clock-cells = <0>;
+                  assigned-clocks = <&wiz1_pll1_refclk>;
+                  assigned-clock-parents = <&k3_clks 293 0>;
+           };
+
+           cmn-refclk-dig-div {
+                  clocks = <&wiz1_refclk_dig>;
+                  #clock-cells = <0>;
+           };
+
+           cmn-refclk1-dig-div {
+                  clocks = <&wiz1_pll1_refclk>;
+                  #clock-cells = <0>;
+           };
+
+           refclk-dig {
+                  clocks = <&k3_clks 292 11>, <&k3_clks 292 0>, <&dummy_cmn_refclk>, <&dummy_cmn_refclk1>;
+                  #clock-cells = <0>;
+                  assigned-clocks = <&wiz0_refclk_dig>;
+                  assigned-clock-parents = <&k3_clks 292 11>;
+           };
+
+           serdes@5000000 {
+                  compatible = "cdns,ti,sierra-phy-t0";
+                  reg-names = "serdes";
+                  reg = <0x5000000 0x10000>;
+                  #address-cells = <1>;
+                  #size-cells = <0>;
+                  resets = <&serdes_wiz0 0>;
+                  reset-names = "sierra_reset";
+                  clocks = <&wiz0_cmn_refclk_dig_div>, <&wiz0_cmn_refclk1_dig_div>;
+                  clock-names = "cmn_refclk_dig_div", "cmn_refclk1_dig_div";
+           };
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
