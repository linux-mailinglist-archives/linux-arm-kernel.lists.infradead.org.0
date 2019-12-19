Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4164125D49
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:08:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PqcVO76S/8WSJHb/uuMfDLydm8iNliYzXmRoAinLvBs=; b=Eh9gwRUgsUhNCc
	oiW+4oZvkMo3DaF9tfQmGmgn85qxYowe1r7w4nw7tm7bjUrIN515wzwrbKYP5sH5mAV0oaXCLbUbp
	PGXXz/pET5mc//HG1kKlfF19lAMXMoCe9lu60VaukFAMgFd3ua8N/YvmOzq6gaYia7G1pkvMaV2zD
	J1rz48OyUpf6j3tMMay3UJ21dgvvBX4yKdrLTZ0bng9dAnhv6l2TyQtFqDl7xENyaOLhPcNA3rxeN
	ddCyIOV/DG/TGhyxjMum7pOJgNodpcsXd40DiT6tbNEagqQmw4mEy9DDnLxqTAgbkekmbNySSOHtO
	crIjyF3EBbzrnL0f1HEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihrmr-0001lX-Cy; Thu, 19 Dec 2019 09:08:01 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihrmB-0001Hp-4J
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 09:07:25 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D09106CD3;
 Thu, 19 Dec 2019 04:07:17 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 19 Dec 2019 04:07:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=jnzkI0T5PxXqCmW9opN7jiRRmL
 H6tMElaFDP+8+WDQU=; b=P6wAsjadVACto19HICzcHtXXZW4fGN2nrqlC2ILdRB
 uLGi25CqxaOVT4ab835kQiDElOnJLpMzO9x7/iaKJFD8LDgXMJIHlDf27/Z7z7gh
 N5Kx9yQF9bM7cBbi3djg9HIRYDKbNZdzOe3oulnc5O8pdE6xSAJFyWgjUpoXS9yE
 MUNiLLWGn6VsTMw9m2KrCvpnPfma0BYb7Kpwa3ykDJj2emABnMSYP4aQaRqB+ftU
 2scw/UwNg+Y0Y1oUWqb6Y+gR9KdeScY6ksMm5/1kc4dmgzHl+DOL3R6FkewTgR1v
 n3ebqEl4RQXrA7Mud/Go4C3CtO5whLDhajAAVktu+pxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=jnzkI0T5PxXqCmW9o
 pN7jiRRmLH6tMElaFDP+8+WDQU=; b=uvQepipqFDN2+I9RiLI0FTk1k6pl410zB
 22m3gD9usKY6D7h+kqN/FjUjnpxNnAiDbAIDwtX9qnECmbXjuasaw4YGSpBP2JqO
 3EiKnNVDVHyuKIZ/VJlx9oi6ey8C77YzBAm35wbGTeTV7CEogyJAOMpzn18NCaL8
 iB7S1LvSQh1zoGqPTdA0zOA0/6Kpwc40xFuSjwnoQmFNtWdJz/ANSmq3eqVg5BIf
 4v7NDbJdsDX8bENxQO3PJ18PHVEZnb1UsQHVPUed5MJY2B0Se8Bnt7PfPoKoaK4Q
 gVhjdhiTThhabTuhev/KVw5SEdEElPZsfSb5SlY40yzPcnwkhFejw==
X-ME-Sender: <xms:wz37XdZq41ywE6Gb2l3G_rh-LeIZsw0092ngU6n5TpSkVQsVH2qJZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdduudcutefuodetggdotefrodftvfcurf
 hrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
 hrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhp
 rghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinhepuggvvh
 hitggvthhrvggvrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecurfgrrhgrmhep
 mhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghhnecuvehluhhsthgvrh
 fuihiivgeptd
X-ME-Proxy: <xmx:wz37XcA50Oc7G3Ws9_ftRNIykpcdlHq5XplP7IYqXVRPrSvM-EyRjw>
 <xmx:wz37XQIeVJqYNfQUNOpddw813oWCEJWrZ8B0auRcMyJoE_KUBMYbJA>
 <xmx:wz37XTp4YBU7rep3AMqReJ2rnomvAS5Gcp-Fbokdv4DeZQ2E8HDfcw>
 <xmx:xT37XRQB2FCU2tbVItKZ837Dev0Z8FtNljLcODRGquF4J0NoCXGJZg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1AF7A8005A;
 Thu, 19 Dec 2019 04:07:15 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: p.zabel@pengutronix.de, Mike Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@codeaurora.org>, lee.jones@linaro.org,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 1/3] dt-bindings: clocks: Convert Allwinner legacy clocks to
 schemas
Date: Thu, 19 Dec 2019 10:07:10 +0100
Message-Id: <20191219090712.947490-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_010719_387671_4758E607 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime@cerno.tech>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have a legacy set of bindings (and a framework to
support it in Linux) for their clock controllers.

Now that we have the DT validation in place, let's split into separate file
and convert the device tree bindings for those clocks to schemas, and mark
them all as deprecated.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../clock/allwinner,sun4i-a10-ahb-clk.yaml    | 108 +++++++++
 .../clock/allwinner,sun4i-a10-apb0-clk.yaml   |  50 ++++
 .../clock/allwinner,sun4i-a10-apb1-clk.yaml   |  52 ++++
 .../clock/allwinner,sun4i-a10-axi-clk.yaml    |  61 +++++
 .../clock/allwinner,sun4i-a10-cpu-clk.yaml    |  52 ++++
 .../allwinner,sun4i-a10-display-clk.yaml      |  57 +++++
 .../clock/allwinner,sun4i-a10-gates-clk.yaml  | 152 ++++++++++++
 .../clock/allwinner,sun4i-a10-mbus-clk.yaml   |  63 +++++
 .../clock/allwinner,sun4i-a10-mmc-clk.yaml    |  87 +++++++
 .../clock/allwinner,sun4i-a10-mod0-clk.yaml   |  80 +++++++
 .../clock/allwinner,sun4i-a10-mod1-clk.yaml   |  57 +++++
 .../clock/allwinner,sun4i-a10-osc-clk.yaml    |  51 ++++
 .../clock/allwinner,sun4i-a10-pll1-clk.yaml   |  71 ++++++
 .../clock/allwinner,sun4i-a10-pll3-clk.yaml   |  50 ++++
 .../clock/allwinner,sun4i-a10-pll5-clk.yaml   |  53 +++++
 .../clock/allwinner,sun4i-a10-pll6-clk.yaml   |  53 +++++
 .../allwinner,sun4i-a10-tcon-ch0-clk.yaml     |  77 ++++++
 .../clock/allwinner,sun4i-a10-usb-clk.yaml    | 166 +++++++++++++
 .../clock/allwinner,sun4i-a10-ve-clk.yaml     |  55 +++++
 .../clock/allwinner,sun5i-a13-ahb-clk.yaml    |  52 ++++
 .../clock/allwinner,sun6i-a31-pll6-clk.yaml   |  53 +++++
 .../clock/allwinner,sun7i-a20-gmac-clk.yaml   |  51 ++++
 .../clock/allwinner,sun7i-a20-out-clk.yaml    |  52 ++++
 .../allwinner,sun8i-h3-bus-gates-clk.yaml     | 103 ++++++++
 .../clock/allwinner,sun9i-a80-ahb-clk.yaml    |  52 ++++
 .../clock/allwinner,sun9i-a80-apb0-clk.yaml   |  63 +++++
 .../clock/allwinner,sun9i-a80-cpus-clk.yaml   |  52 ++++
 .../clock/allwinner,sun9i-a80-gt-clk.yaml     |  52 ++++
 .../allwinner,sun9i-a80-mmc-config-clk.yaml   |  68 ++++++
 .../clock/allwinner,sun9i-a80-pll4-clk.yaml   |  50 ++++
 .../allwinner,sun9i-a80-usb-mod-clk.yaml      |  60 +++++
 .../allwinner,sun9i-a80-usb-phy-clk.yaml      |  60 +++++
 .../devicetree/bindings/clock/sunxi.txt       | 225 ------------------
 33 files changed, 2163 insertions(+), 225 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ahb-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb0-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb1-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-axi-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-cpu-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-display-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-gates-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mbus-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mmc-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod0-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod1-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll1-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll3-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll5-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll6-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-tcon-ch0-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-usb-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ve-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun5i-a13-ahb-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun6i-a31-pll6-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-gmac-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-out-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun8i-h3-bus-gates-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-ahb-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-apb0-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-cpus-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-gt-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-mmc-config-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-pll4-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-mod-clk.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-phy-clk.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/sunxi.txt

diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ahb-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ahb-clk.yaml
new file mode 100644
index 000000000000..558db4b6ed17
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ahb-clk.yaml
@@ -0,0 +1,108 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-ahb-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 AHB Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-ahb-clk
+      - allwinner,sun6i-a31-ahb1-clk
+      - allwinner,sun8i-h3-ahb2-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 4
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun4i-a10-ahb-clk
+
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun6i-a31-ahb1-clk
+
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun8i-h3-ahb2-clk
+
+    then:
+      properties:
+        clocks:
+          maxItems: 2
+
+examples:
+  - |
+    ahb@1c20054 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun4i-a10-ahb-clk";
+        reg = <0x01c20054 0x4>;
+        clocks = <&axi>;
+        clock-output-names = "ahb";
+    };
+
+  - |
+    ahb1@1c20054 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun6i-a31-ahb1-clk";
+        reg = <0x01c20054 0x4>;
+        clocks = <&osc32k>, <&osc24M>, <&axi>, <&pll6 0>;
+        clock-output-names = "ahb1";
+    };
+
+  - |
+    ahb2_clk@1c2005c {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun8i-h3-ahb2-clk";
+        reg = <0x01c2005c 0x4>;
+        clocks = <&ahb1>, <&pll6d2>;
+        clock-output-names = "ahb2";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb0-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb0-clk.yaml
new file mode 100644
index 000000000000..b1e3d739beb2
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb0-clk.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-apb0-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 APB0 Bus Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun4i-a10-apb0-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    apb0@1c20054 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun4i-a10-apb0-clk";
+        reg = <0x01c20054 0x4>;
+        clocks = <&ahb>;
+        clock-output-names = "apb0";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb1-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb1-clk.yaml
new file mode 100644
index 000000000000..51b7a6d4ea54
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb1-clk.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-apb1-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 APB1 Bus Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun4i-a10-apb1-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c20058 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun4i-a10-apb1-clk";
+        reg = <0x01c20058 0x4>;
+        clocks = <&osc24M>, <&pll6 1>, <&osc32k>;
+        clock-output-names = "apb1";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-axi-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-axi-clk.yaml
new file mode 100644
index 000000000000..d801158e15de
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-axi-clk.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-axi-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 AXI Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-axi-clk
+      - allwinner,sun8i-a23-axi-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    axi@1c20054 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun4i-a10-axi-clk";
+        reg = <0x01c20054 0x4>;
+        clocks = <&cpu>;
+        clock-output-names = "axi";
+    };
+
+  - |
+    axi_clk@1c20050 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun8i-a23-axi-clk";
+        reg = <0x01c20050 0x4>;
+        clocks = <&cpu>;
+        clock-output-names = "axi";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-cpu-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-cpu-clk.yaml
new file mode 100644
index 000000000000..0dfafba1a168
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-cpu-clk.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-cpu-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 CPU Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun4i-a10-cpu-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    cpu@1c20054 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun4i-a10-cpu-clk";
+        reg = <0x01c20054 0x4>;
+        clocks = <&osc32k>, <&osc24M>, <&pll1>, <&dummy>;
+        clock-output-names = "cpu";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-display-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-display-clk.yaml
new file mode 100644
index 000000000000..7484a7ab7dea
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-display-clk.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-display-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Display Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  "#reset-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun4i-a10-display-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - "#reset-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c20104 {
+        #clock-cells = <0>;
+        #reset-cells = <0>;
+        compatible = "allwinner,sun4i-a10-display-clk";
+        reg = <0x01c20104 0x4>;
+        clocks = <&pll3>, <&pll7>, <&pll5 1>;
+        clock-output-names = "de-be";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-gates-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-gates-clk.yaml
new file mode 100644
index 000000000000..ed1b2126a81b
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-gates-clk.yaml
@@ -0,0 +1,152 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-gates-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Bus Gates Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 1
+    description: >
+      This additional argument passed to that clock is the offset of
+      the bit controlling this particular gate in the register.
+
+  compatible:
+    oneOf:
+      - const: allwinner,sun4i-a10-gates-clk
+      - const: allwinner,sun4i-a10-axi-gates-clk
+      - const: allwinner,sun4i-a10-ahb-gates-clk
+      - const: allwinner,sun5i-a10s-ahb-gates-clk
+      - const: allwinner,sun5i-a13-ahb-gates-clk
+      - const: allwinner,sun7i-a20-ahb-gates-clk
+      - const: allwinner,sun6i-a31-ahb1-gates-clk
+      - const: allwinner,sun8i-a23-ahb1-gates-clk
+      - const: allwinner,sun9i-a80-ahb0-gates-clk
+      - const: allwinner,sun9i-a80-ahb1-gates-clk
+      - const: allwinner,sun9i-a80-ahb2-gates-clk
+      - const: allwinner,sun4i-a10-apb0-gates-clk
+      - const: allwinner,sun5i-a10s-apb0-gates-clk
+      - const: allwinner,sun5i-a13-apb0-gates-clk
+      - const: allwinner,sun7i-a20-apb0-gates-clk
+      - const: allwinner,sun9i-a80-apb0-gates-clk
+      - const: allwinner,sun8i-a83t-apb0-gates-clk
+      - const: allwinner,sun4i-a10-apb1-gates-clk
+      - const: allwinner,sun5i-a13-apb1-gates-clk
+      - const: allwinner,sun5i-a10s-apb1-gates-clk
+      - const: allwinner,sun6i-a31-apb1-gates-clk
+      - const: allwinner,sun7i-a20-apb1-gates-clk
+      - const: allwinner,sun8i-a23-apb1-gates-clk
+      - const: allwinner,sun9i-a80-apb1-gates-clk
+      - const: allwinner,sun6i-a31-apb2-gates-clk
+      - const: allwinner,sun8i-a23-apb2-gates-clk
+      - const: allwinner,sun8i-a83t-bus-gates-clk
+      - const: allwinner,sun9i-a80-apbs-gates-clk
+      - const: allwinner,sun4i-a10-dram-gates-clk
+
+      - items:
+        - const: allwinner,sun5i-a13-dram-gates-clk
+        - const: allwinner,sun4i-a10-gates-clk
+
+      - items:
+        - const: allwinner,sun8i-h3-apb0-gates-clk
+        - const: allwinner,sun4i-a10-gates-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-indices:
+    minItems: 1
+    maxItems: 64
+
+  clock-output-names:
+    minItems: 1
+    maxItems: 64
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-indices
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c2005c {
+        #clock-cells = <1>;
+        compatible = "allwinner,sun4i-a10-axi-gates-clk";
+        reg = <0x01c2005c 0x4>;
+        clocks = <&axi>;
+        clock-indices = <0>;
+        clock-output-names = "axi_dram";
+    };
+
+  - |
+    clk@1c20060 {
+        #clock-cells = <1>;
+        compatible = "allwinner,sun4i-a10-ahb-gates-clk";
+        reg = <0x01c20060 0x8>;
+        clocks = <&ahb>;
+        clock-indices = <0>, <1>,
+                        <2>, <3>,
+                        <4>, <5>, <6>,
+                        <7>, <8>, <9>,
+                        <10>, <11>, <12>,
+                        <13>, <14>, <16>,
+                        <17>, <18>, <20>,
+                        <21>, <22>, <23>,
+                        <24>, <25>, <26>,
+                        <32>, <33>, <34>,
+                        <35>, <36>, <37>,
+                        <40>, <41>, <43>,
+                        <44>, <45>,
+                        <46>, <47>,
+                        <50>, <52>;
+        clock-output-names = "ahb_usb0", "ahb_ehci0",
+                             "ahb_ohci0", "ahb_ehci1",
+                             "ahb_ohci1", "ahb_ss", "ahb_dma",
+                             "ahb_bist", "ahb_mmc0", "ahb_mmc1",
+                             "ahb_mmc2", "ahb_mmc3", "ahb_ms",
+                             "ahb_nand", "ahb_sdram", "ahb_ace",
+                             "ahb_emac", "ahb_ts", "ahb_spi0",
+                             "ahb_spi1", "ahb_spi2", "ahb_spi3",
+                             "ahb_pata", "ahb_sata", "ahb_gps",
+                             "ahb_ve", "ahb_tvd", "ahb_tve0",
+                             "ahb_tve1", "ahb_lcd0", "ahb_lcd1",
+                             "ahb_csi0", "ahb_csi1", "ahb_hdmi",
+                             "ahb_de_be0", "ahb_de_be1",
+                             "ahb_de_fe0", "ahb_de_fe1",
+                             "ahb_mp", "ahb_mali400";
+    };
+
+
+  - |
+    clk@1c20068 {
+        #clock-cells = <1>;
+        compatible = "allwinner,sun4i-a10-apb0-gates-clk";
+        reg = <0x01c20068 0x4>;
+        clocks = <&apb0>;
+        clock-indices = <0>, <1>,
+                        <2>, <3>,
+                        <5>, <6>,
+                        <7>, <10>;
+        clock-output-names = "apb0_codec", "apb0_spdif",
+                             "apb0_ac97", "apb0_iis",
+                             "apb0_pio", "apb0_ir0",
+                             "apb0_ir1", "apb0_keypad";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mbus-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mbus-clk.yaml
new file mode 100644
index 000000000000..18f131e262b4
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mbus-clk.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-mbus-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 MBUS Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - allwinner,sun5i-a13-mbus-clk
+      - allwinner,sun8i-a23-mbus-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c2015c {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun5i-a13-mbus-clk";
+        reg = <0x01c2015c 0x4>;
+        clocks = <&osc24M>, <&pll6 1>, <&pll5 1>;
+        clock-output-names = "mbus";
+    };
+
+  - |
+    clk@1c2015c {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun8i-a23-mbus-clk";
+        reg = <0x01c2015c 0x4>;
+        clocks = <&osc24M>, <&pll6 1>, <&pll5>;
+        clock-output-names = "mbus";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mmc-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mmc-clk.yaml
new file mode 100644
index 000000000000..5199285a661a
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mmc-clk.yaml
@@ -0,0 +1,87 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-mmc-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Module 1 Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 1
+    description: >
+      There is three different outputs: the main clock, with the ID 0,
+      and the output and sample clocks, with the IDs 1 and 2,
+      respectively.
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-mmc-clk
+      - allwinner,sun9i-a80-mmc-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 3
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 3
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: allwinner,sun4i-a10-mmc-clk
+
+then:
+  properties:
+    clocks:
+      maxItems: 3
+
+else:
+  properties:
+    clocks:
+      maxItems: 2
+
+examples:
+  - |
+    clk@1c20088 {
+        #clock-cells = <1>;
+        compatible = "allwinner,sun4i-a10-mmc-clk";
+        reg = <0x01c20088 0x4>;
+        clocks = <&osc24M>, <&pll6 1>, <&pll5 1>;
+        clock-output-names = "mmc0",
+                             "mmc0_output",
+                             "mmc0_sample";
+    };
+
+  - |
+    clk@6000410 {
+        #clock-cells = <1>;
+        compatible = "allwinner,sun9i-a80-mmc-clk";
+        reg = <0x06000410 0x4>;
+        clocks = <&osc24M>, <&pll4>;
+        clock-output-names = "mmc0", "mmc0_output",
+                             "mmc0_sample";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod0-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod0-clk.yaml
new file mode 100644
index 000000000000..3e2abe3e67c1
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod0-clk.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-mod0-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Module 0 Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - allwinner,sun4i-a10-mod0-clk
+          - allwinner,sun9i-a80-mod0-clk
+
+  # The PRCM on the A31 and A23 will have the reg property missing,
+  # since it's set at the upper level node, and will be validated by
+  # PRCM's schema. Make sure we only validate standalone nodes.
+  required:
+    - compatible
+    - reg
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-mod0-clk
+      - allwinner,sun9i-a80-mod0-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    # On the A80, the PRCM mod0 clocks have 2 parents.
+    minItems: 2
+    maxItems: 3
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c20080 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun4i-a10-mod0-clk";
+        reg = <0x01c20080 0x4>;
+        clocks = <&osc24M>, <&pll6 1>, <&pll5 1>;
+        clock-output-names = "nand";
+    };
+
+  - |
+    clk@8001454 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun4i-a10-mod0-clk";
+        reg = <0x08001454 0x4>;
+        clocks = <&osc32k>, <&osc24M>;
+        clock-output-names = "r_ir";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod1-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod1-clk.yaml
new file mode 100644
index 000000000000..7ddb55c75cff
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod1-clk.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-mod1-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Module 1 Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun4i-a10-mod1-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sun4i-a10-pll2.h>
+
+    clk@1c200c0 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun4i-a10-mod1-clk";
+        reg = <0x01c200c0 0x4>;
+        clocks = <&pll2 SUN4I_A10_PLL2_8X>,
+                 <&pll2 SUN4I_A10_PLL2_4X>,
+                 <&pll2 SUN4I_A10_PLL2_2X>,
+                 <&pll2 SUN4I_A10_PLL2_1X>;
+        clock-output-names = "spdif";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml
new file mode 100644
index 000000000000..69cfa4a3d562
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-osc-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Gatable Oscillator Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun4i-a10-osc-clk
+
+  reg:
+    maxItems: 1
+
+  clock-frequency:
+    description: >
+      Frequency of the main oscillator.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clock-frequency
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    osc24M: clk@01c20050 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun4i-a10-osc-clk";
+        reg = <0x01c20050 0x4>;
+        clock-frequency = <24000000>;
+        clock-output-names = "osc24M";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll1-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll1-clk.yaml
new file mode 100644
index 000000000000..e9c4cf834aa7
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll1-clk.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-pll1-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 CPU PLL Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-pll1-clk
+      - allwinner,sun6i-a31-pll1-clk
+      - allwinner,sun8i-a23-pll1-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c20000 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun4i-a10-pll1";
+        reg = <0x01c20000 0x4>;
+        clocks = <&osc24M>;
+        clock-output-names = "osc24M";
+    };
+
+  - |
+    clk@1c20000 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun6i-a31-pll1-clk";
+        reg = <0x01c20000 0x4>;
+        clocks = <&osc24M>;
+        clock-output-names = "pll1";
+    };
+
+  - |
+    clk@1c20000 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun8i-a23-pll1-clk";
+        reg = <0x01c20000 0x4>;
+        clocks = <&osc24M>;
+        clock-output-names = "pll1";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll3-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll3-clk.yaml
new file mode 100644
index 000000000000..4b80a42fb3da
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll3-clk.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-pll3-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Video PLL Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun4i-a10-pll3-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c20010 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun4i-a10-pll3-clk";
+        reg = <0x01c20010 0x4>;
+        clocks = <&osc3M>;
+        clock-output-names = "pll3";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll5-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll5-clk.yaml
new file mode 100644
index 000000000000..415bd77de53d
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll5-clk.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-pll5-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 DRAM PLL Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 1
+    description: >
+      The first output is the DRAM clock output, the second is meant
+      for peripherals on the SoC.
+
+  compatible:
+    const: allwinner,sun4i-a10-pll5-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 2
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c20020 {
+        #clock-cells = <1>;
+        compatible = "allwinner,sun4i-a10-pll5-clk";
+        reg = <0x01c20020 0x4>;
+        clocks = <&osc24M>;
+        clock-output-names = "pll5_ddr", "pll5_other";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll6-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll6-clk.yaml
new file mode 100644
index 000000000000..ec5652f76027
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll6-clk.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-pll6-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Peripheral PLL Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 1
+    description: >
+      The first output is the SATA clock output, the second is the
+      regular PLL output, the third is a PLL output at twice the rate.
+
+  compatible:
+    const: allwinner,sun4i-a10-pll6-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 3
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c20028 {
+        #clock-cells = <1>;
+        compatible = "allwinner,sun4i-a10-pll6-clk";
+        reg = <0x01c20028 0x4>;
+        clocks = <&osc24M>;
+        clock-output-names = "pll6_sata", "pll6_other", "pll6";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-tcon-ch0-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-tcon-ch0-clk.yaml
new file mode 100644
index 000000000000..0a335c615efd
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-tcon-ch0-clk.yaml
@@ -0,0 +1,77 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-tcon-ch0-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 TCON Channel 0 Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  "#reset-cells":
+    const: 1
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-tcon-ch0-clk
+      - allwinner,sun4i-a10-tcon-ch1-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: allwinner,sun4i-a10-tcon-ch0-clk
+
+then:
+  required:
+    - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c20118 {
+        #clock-cells = <0>;
+        #reset-cells = <1>;
+        compatible = "allwinner,sun4i-a10-tcon-ch0-clk";
+        reg = <0x01c20118 0x4>;
+        clocks = <&pll3>, <&pll7>, <&pll3x2>, <&pll7x2>;
+        clock-output-names = "tcon-ch0-sclk";
+    };
+
+  - |
+    clk@1c2012c {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun4i-a10-tcon-ch1-clk";
+        reg = <0x01c2012c 0x4>;
+        clocks = <&pll3>, <&pll7>, <&pll3x2>, <&pll7x2>;
+        clock-output-names = "tcon-ch1-sclk";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-usb-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-usb-clk.yaml
new file mode 100644
index 000000000000..cd95d25bfe7c
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-usb-clk.yaml
@@ -0,0 +1,166 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-usb-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 USB Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 1
+    description: >
+      The additional ID argument passed to the clock shall refer to
+      the index of the output.
+
+  "#reset-cells":
+    const: 1
+
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-usb-clk
+      - allwinner,sun5i-a13-usb-clk
+      - allwinner,sun6i-a31-usb-clk
+      - allwinner,sun8i-a23-usb-clk
+      - allwinner,sun8i-h3-usb-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    minItems: 2
+    maxItems: 8
+
+required:
+  - "#clock-cells"
+  - "#reset-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun4i-a10-usb-clk
+
+    then:
+      properties:
+        clock-output-names:
+          maxItems: 3
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun5i-a13-usb-clk
+
+    then:
+      properties:
+        clock-output-names:
+          maxItems: 2
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun6i-a31-usb-clk
+
+    then:
+      properties:
+        clock-output-names:
+          maxItems: 6
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun8i-a23-usb-clk
+
+    then:
+      properties:
+        clock-output-names:
+          maxItems: 5
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun8i-h3-usb-clk
+
+    then:
+      properties:
+        clock-output-names:
+          maxItems: 8
+
+examples:
+  - |
+    clk@1c200cc {
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+        compatible = "allwinner,sun4i-a10-usb-clk";
+        reg = <0x01c200cc 0x4>;
+        clocks = <&pll6 1>;
+        clock-output-names = "usb_ohci0", "usb_ohci1", "usb_phy";
+    };
+
+  - |
+    clk@1c200cc {
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+        compatible = "allwinner,sun5i-a13-usb-clk";
+        reg = <0x01c200cc 0x4>;
+        clocks = <&pll6 1>;
+        clock-output-names = "usb_ohci0", "usb_phy";
+    };
+
+  - |
+    clk@1c200cc {
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+        compatible = "allwinner,sun6i-a31-usb-clk";
+        reg = <0x01c200cc 0x4>;
+        clocks = <&osc24M>;
+        clock-output-names = "usb_phy0", "usb_phy1", "usb_phy2",
+                             "usb_ohci0", "usb_ohci1",
+                             "usb_ohci2";
+    };
+
+  - |
+    clk@1c200cc {
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+        compatible = "allwinner,sun8i-a23-usb-clk";
+        reg = <0x01c200cc 0x4>;
+        clocks = <&osc24M>;
+        clock-output-names = "usb_phy0", "usb_phy1", "usb_hsic",
+                             "usb_hsic_12M", "usb_ohci0";
+    };
+
+  - |
+    clk@1c200cc {
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+        compatible = "allwinner,sun8i-h3-usb-clk";
+        reg = <0x01c200cc 0x4>;
+        clocks = <&osc24M>;
+        clock-output-names = "usb_phy0", "usb_phy1",
+                             "usb_phy2", "usb_phy3",
+                             "usb_ohci0", "usb_ohci1",
+                             "usb_ohci2", "usb_ohci3";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ve-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ve-clk.yaml
new file mode 100644
index 000000000000..5dfd0c1c27b4
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ve-clk.yaml
@@ -0,0 +1,55 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun4i-a10-ve-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Video Engine Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  "#reset-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun4i-a10-ve-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - "#reset-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c2013c {
+        #clock-cells = <0>;
+        #reset-cells = <0>;
+        compatible = "allwinner,sun4i-a10-ve-clk";
+        reg = <0x01c2013c 0x4>;
+        clocks = <&pll4>;
+        clock-output-names = "ve";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun5i-a13-ahb-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun5i-a13-ahb-clk.yaml
new file mode 100644
index 000000000000..99add7991c48
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun5i-a13-ahb-clk.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun5i-a13-ahb-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A13 AHB Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun5i-a13-ahb-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    ahb@1c20054 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun5i-a13-ahb-clk";
+        reg = <0x01c20054 0x4>;
+        clocks = <&axi>, <&cpu>, <&pll6 1>;
+        clock-output-names = "ahb";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun6i-a31-pll6-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun6i-a31-pll6-clk.yaml
new file mode 100644
index 000000000000..5f377205af71
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun6i-a31-pll6-clk.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun6i-a31-pll6-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A31 Peripheral PLL Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 1
+    description: >
+      The first output is the regular PLL output, the second is a PLL
+      output at twice the rate.
+
+  compatible:
+    const: allwinner,sun6i-a31-pll6-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 2
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c20028 {
+        #clock-cells = <1>;
+        compatible = "allwinner,sun6i-a31-pll6-clk";
+        reg = <0x01c20028 0x4>;
+        clocks = <&osc24M>;
+        clock-output-names = "pll6", "pll6x2";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-gmac-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-gmac-clk.yaml
new file mode 100644
index 000000000000..59e5dce1b65a
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-gmac-clk.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun7i-a20-gmac-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A20 GMAC TX Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun7i-a20-gmac-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+    description: >
+      The parent clocks shall be fixed rate dummy clocks at 25 MHz and
+      125 MHz, respectively.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c20164 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun7i-a20-gmac-clk";
+        reg = <0x01c20164 0x4>;
+        clocks = <&mii_phy_tx_clk>, <&gmac_int_tx_clk>;
+        clock-output-names = "gmac_tx";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-out-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-out-clk.yaml
new file mode 100644
index 000000000000..c745733bcf04
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-out-clk.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun7i-a20-out-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A20 Output Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun7i-a20-out-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c201f0 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun7i-a20-out-clk";
+        reg = <0x01c201f0 0x4>;
+        clocks = <&osc24M_32k>, <&osc32k>, <&osc24M>;
+        clock-output-names = "clk_out_a";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun8i-h3-bus-gates-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun8i-h3-bus-gates-clk.yaml
new file mode 100644
index 000000000000..3eb2bf65b230
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun8i-h3-bus-gates-clk.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun8i-h3-bus-gates-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Bus Gates Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 1
+    description: >
+      This additional argument passed to that clock is the offset of
+      the bit controlling this particular gate in the register.
+
+  compatible:
+    const: allwinner,sun8i-h3-bus-gates-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    maxItems: 4
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-indices:
+    minItems: 1
+    maxItems: 64
+
+  clock-output-names:
+    minItems: 1
+    maxItems: 64
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-indices
+  - clock-names
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c20060 {
+        #clock-cells = <1>;
+        compatible = "allwinner,sun8i-h3-bus-gates-clk";
+        reg = <0x01c20060 0x14>;
+        clocks = <&ahb1>, <&ahb2>, <&apb1>, <&apb2>;
+        clock-names = "ahb1", "ahb2", "apb1", "apb2";
+        clock-indices = <5>, <6>, <8>,
+                        <9>, <10>, <13>,
+                        <14>, <17>, <18>,
+                        <19>, <20>,
+                        <21>, <23>,
+                        <24>, <25>,
+                        <26>, <27>,
+                        <28>, <29>,
+                        <30>, <31>, <32>,
+                        <35>, <36>, <37>,
+                        <40>, <41>, <43>,
+                        <44>, <52>, <53>,
+                        <54>, <64>,
+                        <65>, <69>, <72>,
+                        <76>, <77>, <78>,
+                        <96>, <97>, <98>,
+                        <112>, <113>,
+                        <114>, <115>,
+                        <116>, <128>, <135>;
+        clock-output-names = "bus_ce", "bus_dma", "bus_mmc0",
+                             "bus_mmc1", "bus_mmc2", "bus_nand",
+                             "bus_sdram", "bus_gmac", "bus_ts",
+                             "bus_hstimer", "bus_spi0",
+                             "bus_spi1", "bus_otg",
+                             "bus_otg_ehci0", "bus_ehci1",
+                             "bus_ehci2", "bus_ehci3",
+                             "bus_otg_ohci0", "bus_ohci1",
+                             "bus_ohci2", "bus_ohci3", "bus_ve",
+                             "bus_lcd0", "bus_lcd1", "bus_deint",
+                             "bus_csi", "bus_tve", "bus_hdmi",
+                             "bus_de", "bus_gpu", "bus_msgbox",
+                             "bus_spinlock", "bus_codec",
+                             "bus_spdif", "bus_pio", "bus_ths",
+                             "bus_i2s0", "bus_i2s1", "bus_i2s2",
+                             "bus_i2c0", "bus_i2c1", "bus_i2c2",
+                             "bus_uart0", "bus_uart1",
+                             "bus_uart2", "bus_uart3",
+                             "bus_scr", "bus_ephy", "bus_dbg";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-ahb-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-ahb-clk.yaml
new file mode 100644
index 000000000000..d178da90aaec
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-ahb-clk.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-ahb-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A80 AHB Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun9i-a80-ahb-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@6000060 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun9i-a80-ahb-clk";
+        reg = <0x06000060 0x4>;
+        clocks = <&gt_clk>, <&pll4>, <&pll12>, <&pll12>;
+        clock-output-names = "ahb0";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-apb0-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-apb0-clk.yaml
new file mode 100644
index 000000000000..0351c79bd221
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-apb0-clk.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-apb0-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A80 APB0 Bus Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - allwinner,sun9i-a80-apb0-clk
+      - allwinner,sun9i-a80-apb1-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@6000070 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun9i-a80-apb0-clk";
+        reg = <0x06000070 0x4>;
+        clocks = <&osc24M>, <&pll4>;
+        clock-output-names = "apb0";
+    };
+
+  - |
+    clk@6000074 {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun9i-a80-apb1-clk";
+        reg = <0x06000074 0x4>;
+        clocks = <&osc24M>, <&pll4>;
+        clock-output-names = "apb1";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-cpus-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-cpus-clk.yaml
new file mode 100644
index 000000000000..24d5b2f1a314
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-cpus-clk.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-cpus-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A80 CPUS Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun9i-a80-cpus-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@8001410 {
+        compatible = "allwinner,sun9i-a80-cpus-clk";
+        reg = <0x08001410 0x4>;
+        #clock-cells = <0>;
+        clocks = <&osc32k>, <&osc24M>, <&pll4>, <&pll3>;
+        clock-output-names = "cpus";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-gt-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-gt-clk.yaml
new file mode 100644
index 000000000000..07f38def7dc3
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-gt-clk.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-gt-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A80 GT Bus Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun9i-a80-gt-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 4
+    description: >
+      The parent order must match the hardware programming order.
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@0600005c {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun9i-a80-gt-clk";
+        reg = <0x0600005c 0x4>;
+        clocks = <&osc24M>, <&pll4>, <&pll12>, <&pll12>;
+        clock-output-names = "gt";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-mmc-config-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-mmc-config-clk.yaml
new file mode 100644
index 000000000000..20dc115fa211
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-mmc-config-clk.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-mmc-config-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A80 MMC Configuration Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+description: >
+  There is one clock/reset output per mmc controller. The number of
+  outputs is determined by the size of the address block, which is
+  related to the overall mmc block.
+
+properties:
+  "#clock-cells":
+    const: 1
+    description: >
+      The additional ID argument passed to the clock shall refer to
+      the index of the output.
+
+  "#reset-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun9i-a80-mmc-config-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 4
+
+required:
+  - "#clock-cells"
+  - "#reset-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@1c13000 {
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+        compatible = "allwinner,sun9i-a80-mmc-config-clk";
+        reg = <0x01c13000 0x10>;
+        clocks = <&ahb0_gates 8>;
+        resets = <&ahb0_resets 8>;
+        clock-output-names = "mmc0_config", "mmc1_config",
+                             "mmc2_config", "mmc3_config";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-pll4-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-pll4-clk.yaml
new file mode 100644
index 000000000000..b76bab6a30e9
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-pll4-clk.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-pll4-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A80 Peripheral PLL Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun9i-a80-pll4-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@600000c {
+        #clock-cells = <0>;
+        compatible = "allwinner,sun9i-a80-pll4-clk";
+        reg = <0x0600000c 0x4>;
+        clocks = <&osc24M>;
+        clock-output-names = "pll4";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-mod-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-mod-clk.yaml
new file mode 100644
index 000000000000..15218d10e78e
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-mod-clk.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-usb-mod-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A80 USB Module Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 1
+    description: >
+      The additional ID argument passed to the clock shall refer to
+      the index of the output.
+
+  "#reset-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun9i-a80-usb-mod-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 6
+
+required:
+  - "#clock-cells"
+  - "#reset-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@a08000 {
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+        compatible = "allwinner,sun9i-a80-usb-mod-clk";
+        reg = <0x00a08000 0x4>;
+        clocks = <&ahb1_gates 1>;
+        clock-output-names = "usb0_ahb", "usb_ohci0",
+                             "usb1_ahb", "usb_ohci1",
+                             "usb2_ahb", "usb_ohci2";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-phy-clk.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-phy-clk.yaml
new file mode 100644
index 000000000000..2569041684e6
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-phy-clk.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-usb-phy-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A80 USB PHY Clock Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+properties:
+  "#clock-cells":
+    const: 1
+    description: >
+      The additional ID argument passed to the clock shall refer to
+      the index of the output.
+
+  "#reset-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun9i-a80-usb-phy-clk
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-output-names:
+    maxItems: 6
+
+required:
+  - "#clock-cells"
+  - "#reset-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clk@a08004 {
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+        compatible = "allwinner,sun9i-a80-usb-phy-clk";
+        reg = <0x00a08004 0x4>;
+        clocks = <&ahb1_gates 1>;
+        clock-output-names = "usb_phy0", "usb_hsic1_480M",
+                             "usb_phy1", "usb_hsic2_480M",
+                             "usb_phy2", "usb_hsic_12M";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/sunxi.txt b/Documentation/devicetree/bindings/clock/sunxi.txt
deleted file mode 100644
index 1a042e20b115..000000000000
--- a/Documentation/devicetree/bindings/clock/sunxi.txt
+++ /dev/null
@@ -1,225 +0,0 @@
-Device Tree Clock bindings for arch-sunxi
-
-This binding uses the common clock binding[1].
-
-[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
-
-Required properties:
-- compatible : shall be one of the following:
-	"allwinner,sun4i-a10-osc-clk" - for a gatable oscillator
-	"allwinner,sun4i-a10-pll1-clk" - for the main PLL clock and PLL4
-	"allwinner,sun6i-a31-pll1-clk" - for the main PLL clock on A31
-	"allwinner,sun8i-a23-pll1-clk" - for the main PLL clock on A23
-	"allwinner,sun4i-a10-pll3-clk" - for the video PLL clock on A10
-	"allwinner,sun9i-a80-pll4-clk" - for the peripheral PLLs on A80
-	"allwinner,sun4i-a10-pll5-clk" - for the PLL5 clock
-	"allwinner,sun4i-a10-pll6-clk" - for the PLL6 clock
-	"allwinner,sun6i-a31-pll6-clk" - for the PLL6 clock on A31
-	"allwinner,sun9i-a80-gt-clk" - for the GT bus clock on A80
-	"allwinner,sun4i-a10-cpu-clk" - for the CPU multiplexer clock
-	"allwinner,sun4i-a10-axi-clk" - for the AXI clock
-	"allwinner,sun8i-a23-axi-clk" - for the AXI clock on A23
-	"allwinner,sun4i-a10-gates-clk" - for generic gates on all compatible SoCs
-	"allwinner,sun4i-a10-axi-gates-clk" - for the AXI gates
-	"allwinner,sun4i-a10-ahb-clk" - for the AHB clock
-	"allwinner,sun5i-a13-ahb-clk" - for the AHB clock on A13
-	"allwinner,sun9i-a80-ahb-clk" - for the AHB bus clocks on A80
-	"allwinner,sun4i-a10-ahb-gates-clk" - for the AHB gates on A10
-	"allwinner,sun5i-a13-ahb-gates-clk" - for the AHB gates on A13
-	"allwinner,sun5i-a10s-ahb-gates-clk" - for the AHB gates on A10s
-	"allwinner,sun7i-a20-ahb-gates-clk" - for the AHB gates on A20
-	"allwinner,sun6i-a31-ar100-clk" - for the AR100 on A31
-	"allwinner,sun9i-a80-cpus-clk" - for the CPUS on A80
-	"allwinner,sun6i-a31-ahb1-clk" - for the AHB1 clock on A31
-	"allwinner,sun8i-h3-ahb2-clk" - for the AHB2 clock on H3
-	"allwinner,sun6i-a31-ahb1-gates-clk" - for the AHB1 gates on A31
-	"allwinner,sun8i-a23-ahb1-gates-clk" - for the AHB1 gates on A23
-	"allwinner,sun9i-a80-ahb0-gates-clk" - for the AHB0 gates on A80
-	"allwinner,sun9i-a80-ahb1-gates-clk" - for the AHB1 gates on A80
-	"allwinner,sun9i-a80-ahb2-gates-clk" - for the AHB2 gates on A80
-	"allwinner,sun4i-a10-apb0-clk" - for the APB0 clock
-	"allwinner,sun6i-a31-apb0-clk" - for the APB0 clock on A31
-	"allwinner,sun8i-a23-apb0-clk" - for the APB0 clock on A23
-	"allwinner,sun9i-a80-apb0-clk" - for the APB0 bus clock on A80
-	"allwinner,sun8i-a83t-apb0-gates-clk" - for the APB0 gates on A83T
-	"allwinner,sun4i-a10-apb0-gates-clk" - for the APB0 gates on A10
-	"allwinner,sun5i-a13-apb0-gates-clk" - for the APB0 gates on A13
-	"allwinner,sun5i-a10s-apb0-gates-clk" - for the APB0 gates on A10s
-	"allwinner,sun6i-a31-apb0-gates-clk" - for the APB0 gates on A31
-	"allwinner,sun7i-a20-apb0-gates-clk" - for the APB0 gates on A20
-	"allwinner,sun8i-a23-apb0-gates-clk" - for the APB0 gates on A23
-	"allwinner,sun8i-h3-apb0-gates-clk" - for the APB0 gates on H3
-	"allwinner,sun9i-a80-apb0-gates-clk" - for the APB0 gates on A80
-	"allwinner,sun4i-a10-apb1-clk" - for the APB1 clock
-	"allwinner,sun9i-a80-apb1-clk" - for the APB1 bus clock on A80
-	"allwinner,sun4i-a10-apb1-gates-clk" - for the APB1 gates on A10
-	"allwinner,sun5i-a13-apb1-gates-clk" - for the APB1 gates on A13
-	"allwinner,sun5i-a10s-apb1-gates-clk" - for the APB1 gates on A10s
-	"allwinner,sun6i-a31-apb1-gates-clk" - for the APB1 gates on A31
-	"allwinner,sun7i-a20-apb1-gates-clk" - for the APB1 gates on A20
-	"allwinner,sun8i-a23-apb1-gates-clk" - for the APB1 gates on A23
-	"allwinner,sun9i-a80-apb1-gates-clk" - for the APB1 gates on A80
-	"allwinner,sun6i-a31-apb2-gates-clk" - for the APB2 gates on A31
-	"allwinner,sun8i-a23-apb2-gates-clk" - for the APB2 gates on A23
-	"allwinner,sun8i-a83t-bus-gates-clk" - for the bus gates on A83T
-	"allwinner,sun8i-h3-bus-gates-clk" - for the bus gates on H3
-	"allwinner,sun9i-a80-apbs-gates-clk" - for the APBS gates on A80
-	"allwinner,sun4i-a10-display-clk" - for the display clocks on the A10
-	"allwinner,sun4i-a10-dram-gates-clk" - for the DRAM gates on A10
-	"allwinner,sun5i-a13-dram-gates-clk" - for the DRAM gates on A13
-	"allwinner,sun5i-a13-mbus-clk" - for the MBUS clock on A13
-	"allwinner,sun4i-a10-mmc-clk" - for the MMC clock
-	"allwinner,sun9i-a80-mmc-clk" - for mmc module clocks on A80
-	"allwinner,sun9i-a80-mmc-config-clk" - for mmc gates + resets on A80
-	"allwinner,sun4i-a10-mod0-clk" - for the module 0 family of clocks
-	"allwinner,sun9i-a80-mod0-clk" - for module 0 (storage) clocks on A80
-	"allwinner,sun8i-a23-mbus-clk" - for the MBUS clock on A23
-	"allwinner,sun7i-a20-out-clk" - for the external output clocks
-	"allwinner,sun7i-a20-gmac-clk" - for the GMAC clock module on A20/A31
-	"allwinner,sun4i-a10-tcon-ch0-clk" - for the TCON channel 0 clock on the A10
-	"allwinner,sun4i-a10-tcon-ch1-clk" - for the TCON channel 1 clock on the A10
-	"allwinner,sun4i-a10-usb-clk" - for usb gates + resets on A10 / A20
-	"allwinner,sun5i-a13-usb-clk" - for usb gates + resets on A13
-	"allwinner,sun6i-a31-usb-clk" - for usb gates + resets on A31
-	"allwinner,sun8i-a23-usb-clk" - for usb gates + resets on A23
-	"allwinner,sun8i-h3-usb-clk" - for usb gates + resets on H3
-	"allwinner,sun9i-a80-usb-mod-clk" - for usb gates + resets on A80
-	"allwinner,sun9i-a80-usb-phy-clk" - for usb phy gates + resets on A80
-	"allwinner,sun4i-a10-ve-clk" - for the Video Engine clock
-	"allwinner,sun6i-a31-display-clk" - for the display clocks
-
-Required properties for all clocks:
-- reg : shall be the control register address for the clock.
-- clocks : shall be the input parent clock(s) phandle for the clock. For
-	multiplexed clocks, the list order must match the hardware
-	programming order.
-- #clock-cells : from common clock binding; shall be set to 0 except for
-	the following compatibles where it shall be set to 1:
-	"allwinner,*-gates-clk", "allwinner,sun4i-pll5-clk",
-	"allwinner,sun4i-pll6-clk", "allwinner,sun6i-a31-pll6-clk",
-	"allwinner,*-usb-clk", "allwinner,*-mmc-clk",
-	"allwinner,*-mmc-config-clk"
-- clock-output-names : shall be the corresponding names of the outputs.
-	If the clock module only has one output, the name shall be the
-	module name.
-
-And "allwinner,*-usb-clk" clocks also require:
-- reset-cells : shall be set to 1
-
-The "allwinner,sun4i-a10-ve-clk" clock also requires:
-- reset-cells : shall be set to 0
-
-The "allwinner,sun9i-a80-mmc-config-clk" clock also requires:
-- #reset-cells : shall be set to 1
-- resets : shall be the reset control phandle for the mmc block.
-
-For "allwinner,sun7i-a20-gmac-clk", the parent clocks shall be fixed rate
-dummy clocks at 25 MHz and 125 MHz, respectively. See example.
-
-Clock consumers should specify the desired clocks they use with a
-"clocks" phandle cell. Consumers that are using a gated clock should
-provide an additional ID in their clock property. This ID is the
-offset of the bit controlling this particular gate in the register.
-For the other clocks with "#clock-cells" = 1, the additional ID shall
-refer to the index of the output.
-
-For "allwinner,sun6i-a31-pll6-clk", there are 2 outputs. The first output
-is the normal PLL6 output, or "pll6". The second output is rate doubled
-PLL6, or "pll6x2".
-
-The "allwinner,*-mmc-clk" clocks have three different outputs: the
-main clock, with the ID 0, and the output and sample clocks, with the
-IDs 1 and 2, respectively.
-
-The "allwinner,sun9i-a80-mmc-config-clk" clock has one clock/reset output
-per mmc controller. The number of outputs is determined by the size of
-the address block, which is related to the overall mmc block.
-
-For example:
-
-osc24M: clk@1c20050 {
-	#clock-cells = <0>;
-	compatible = "allwinner,sun4i-a10-osc-clk";
-	reg = <0x01c20050 0x4>;
-	clocks = <&osc24M_fixed>;
-	clock-output-names = "osc24M";
-};
-
-pll1: clk@1c20000 {
-	#clock-cells = <0>;
-	compatible = "allwinner,sun4i-a10-pll1-clk";
-	reg = <0x01c20000 0x4>;
-	clocks = <&osc24M>;
-	clock-output-names = "pll1";
-};
-
-pll5: clk@1c20020 {
-	#clock-cells = <1>;
-	compatible = "allwinner,sun4i-pll5-clk";
-	reg = <0x01c20020 0x4>;
-	clocks = <&osc24M>;
-	clock-output-names = "pll5_ddr", "pll5_other";
-};
-
-pll6: clk@1c20028 {
-	#clock-cells = <1>;
-	compatible = "allwinner,sun6i-a31-pll6-clk";
-	reg = <0x01c20028 0x4>;
-	clocks = <&osc24M>;
-	clock-output-names = "pll6", "pll6x2";
-};
-
-cpu: cpu@1c20054 {
-	#clock-cells = <0>;
-	compatible = "allwinner,sun4i-a10-cpu-clk";
-	reg = <0x01c20054 0x4>;
-	clocks = <&osc32k>, <&osc24M>, <&pll1>;
-	clock-output-names = "cpu";
-};
-
-mmc0_clk: clk@1c20088 {
-	#clock-cells = <1>;
-	compatible = "allwinner,sun4i-a10-mmc-clk";
-	reg = <0x01c20088 0x4>;
-	clocks = <&osc24M>, <&pll6 1>, <&pll5 1>;
-	clock-output-names = "mmc0", "mmc0_output", "mmc0_sample";
-};
-
-mii_phy_tx_clk: clk@2 {
-	#clock-cells = <0>;
-	compatible = "fixed-clock";
-	clock-frequency = <25000000>;
-	clock-output-names = "mii_phy_tx";
-};
-
-gmac_int_tx_clk: clk@3 {
-	#clock-cells = <0>;
-	compatible = "fixed-clock";
-	clock-frequency = <125000000>;
-	clock-output-names = "gmac_int_tx";
-};
-
-gmac_clk: clk@1c20164 {
-	#clock-cells = <0>;
-	compatible = "allwinner,sun7i-a20-gmac-clk";
-	reg = <0x01c20164 0x4>;
-	/*
-	 * The first clock must be fixed at 25MHz;
-	 * the second clock must be fixed at 125MHz
-	 */
-	clocks = <&mii_phy_tx_clk>, <&gmac_int_tx_clk>;
-	clock-output-names = "gmac";
-};
-
-mmc_config_clk: clk@1c13000 {
-	compatible = "allwinner,sun9i-a80-mmc-config-clk";
-	reg = <0x01c13000 0x10>;
-	clocks = <&ahb0_gates 8>;
-	clock-names = "ahb";
-	resets = <&ahb0_resets 8>;
-	reset-names = "ahb";
-	#clock-cells = <1>;
-	#reset-cells = <1>;
-	clock-output-names = "mmc0_config", "mmc1_config",
-			     "mmc2_config", "mmc3_config";
-};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
