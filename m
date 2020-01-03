Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C10212F9C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 16:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KxONUPEhhqvI2WKsCw/4J51ltXzJsfEI+F78c+WvCSg=; b=HnQG5SkbcCge9N
	hu7sg8lfGGoND2tvEK7ZMfFT2ukPv2SjZtjiIxYoW/qWE0SXj/5qe+L7jBB4BB2q5UT3o7n+sAzlq
	C3mP31MbrLx05qrPqCmfeSgoJcabS6N5F21kbm+BDbIa5cC0kGB3mlD84c0bJ+ZxNkFS3mZaeoXPU
	/vIUAonudxUUST00N64tt5QdjCpaNEthAezGJuVLyHgysqAzQxLE1RHgRhB7+0J5uG57xyl3WlxJw
	9K7ZJD8NcrD7Ewx2NcQFiGgFmdcDbTbjnKZRDgZjhdXrrhYv/Nc+t2JIQ1XzF2IuagNNbtNdaET02
	D2VobeQO0tXf9+UQZ3NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inOtM-0005IH-3c; Fri, 03 Jan 2020 15:29:36 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inOsI-0004cz-Nv
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 15:28:33 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 1E75C21FB5;
 Fri,  3 Jan 2020 10:28:29 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 03 Jan 2020 10:28:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=ZdOpRO+LFLr1ED9ncCMA1pmEsg
 QU8wyRpjlK/goBWxE=; b=XnOL6JjuEQ+mGpoHm09DF+aOkIrEiy2U0QIRQeIjEv
 fiRNMtouFKsU8p2ifiJ+5dGyUfTmB+fsKnLcxLznIoSTfj4HlQFr0TEI/8NLWor+
 9XPO64DUwec4JW1OnmYx93n75Y/pi6GF1hDSL2crEWyxR9eFWjFS/7qW6IlcWwn2
 JUFOIgQjgg0/QgYtIcJri6JSmfZLFSfE7jalYI5ZVq1dZ6eD6ZUowPbkcFjpMFlF
 zlx8eSuysuV67RTzBpczyCP+TT8iRhyvGBkHNDONpS0x213BCId1DkEv3NaqhFy7
 Puz517ngkpB9TJCLYaIS8+8H0uOQWnbtLpEuRRbh4GaA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=ZdOpRO+LFLr1ED9nc
 CMA1pmEsgQU8wyRpjlK/goBWxE=; b=U7nyHMGe64YXrkpdfvrcW6q/uRkRnfWwL
 tmsGVGQ6JveUFHutG+mZ3zS215x1Srm9Y0s9iXzikGINZ8rm3zklfNkPwhIHd3Uc
 xK00g+Gw9Kru5kf7LfqM5GJ1x0p0pfdiA390VUi1SPR453FrmmX2UpKPCYr9sguR
 Nb9JgabggPKR7h4ETosbaHDncyNecFzo5hbiW32GBD9Gv6WwgV0HvFLxpPW5HJAO
 SaK9NQkVF2zpB3lTE4L9HEkLKX+rNT0AjHW4erB2jxoZk0kymROSwziLRMLJoF31
 FMIUHpjXztGDrPyUgwVY607+Jzz33otpGsmEl5fB1OsVuwYXptYbw==
X-ME-Sender: <xms:nF0PXv23MRf3r84yJBQX33yVUg1mdpgNv0VYbIYGcFTgFTsu5yNrqA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdegfedgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgg
 gfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigih
 hmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinhepuggvvhhitggvthhrvggvrdho
 rhhgnecukfhppeeltddrkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hmrgigihhmvgestggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgepud
X-ME-Proxy: <xmx:nF0PXlzUebxEgfYhrS1zPSfqaeZfRDfilZs6FjXUZHjkZUAKT-sNXg>
 <xmx:nF0PXlupGIcGEK_C3Cricq-cjv77oFfMxD8_dhxkC0Sx3syXNzCMyA>
 <xmx:nF0PXmMgXpLzxDaPJ2nwOoZ9KtL_pN0g1n01AUj7E19vHNLrx8mnUQ>
 <xmx:nV0PXn0P2up3vbsayKBWnfIx6ZvW6Lh6ipBJZVGMcqOxijL0z5KzmQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 85D158005A;
 Fri,  3 Jan 2020 10:28:28 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: kishon@ti.com
Subject: [PATCH v2] dt-bindings: usb: Convert Allwinner A80 USB PHY controller
 to a schema
Date: Fri,  3 Jan 2020 16:28:24 +0100
Message-Id: <20200103152824.47383-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_072831_009418_7E992814 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner A80 SoCs have a USB PHY controller that is used by Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Reviewed-by: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes from v1:
  - Added r-b tag from chen-yu
---
 .../phy/allwinner,sun9i-a80-usb-phy.yaml      | 135 ++++++++++++++++++
 .../devicetree/bindings/phy/sun9i-usb-phy.txt |  37 -----
 2 files changed, 135 insertions(+), 37 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
new file mode 100644
index 000000000000..ded7d6f0a119
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
@@ -0,0 +1,135 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,sun9i-a80-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A80 USB PHY Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#phy-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun9i-a80-usb-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    anyOf:
+      - description: Main PHY Clock
+
+      - items:
+          - description: Main PHY clock
+          - description: HSIC 12MHz clock
+          - description: HSIC 480MHz clock
+
+  clock-names:
+    oneOf:
+      - const: phy
+
+      - items:
+          - const: phy
+          - const: hsic_12M
+          - const: hsic_480M
+
+  resets:
+    anyOf:
+      - description: Normal USB PHY reset
+
+      - items:
+          - description: Normal USB PHY reset
+          - description: HSIC Reset
+
+  reset-names:
+    oneOf:
+      - const: phy
+
+      - items:
+          - const: phy
+          - const: hsic
+
+  phy_type:
+    const: hsic
+    description:
+      When absent, the PHY type will be assumed to be normal USB.
+
+  phy-supply:
+    description:
+      Regulator that powers VBUS
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+if:
+  properties:
+    phy_type:
+      const: hsic
+
+  required:
+    - phy_type
+
+then:
+  properties:
+    clocks:
+      maxItems: 3
+
+    clock-names:
+      maxItems: 3
+
+    resets:
+      maxItems: 2
+
+    reset-names:
+      maxItems: 2
+
+examples:
+  - |
+    #include <dt-bindings/clock/sun9i-a80-usb.h>
+    #include <dt-bindings/reset/sun9i-a80-usb.h>
+
+    usbphy1: phy@a00800 {
+        compatible = "allwinner,sun9i-a80-usb-phy";
+        reg = <0x00a00800 0x4>;
+        clocks = <&usb_clocks CLK_USB0_PHY>;
+        clock-names = "phy";
+        resets = <&usb_clocks RST_USB0_PHY>;
+        reset-names = "phy";
+        phy-supply = <&reg_usb1_vbus>;
+        #phy-cells = <0>;
+    };
+
+  - |
+    #include <dt-bindings/clock/sun9i-a80-usb.h>
+    #include <dt-bindings/reset/sun9i-a80-usb.h>
+
+    usbphy3: phy@a02800 {
+        compatible = "allwinner,sun9i-a80-usb-phy";
+        reg = <0x00a02800 0x4>;
+        clocks = <&usb_clocks CLK_USB2_PHY>,
+                 <&usb_clocks CLK_USB_HSIC>,
+                 <&usb_clocks CLK_USB2_HSIC>;
+        clock-names = "phy",
+                      "hsic_12M",
+                      "hsic_480M";
+        resets = <&usb_clocks RST_USB2_PHY>,
+                 <&usb_clocks RST_USB2_HSIC>;
+        reset-names = "phy",
+                      "hsic";
+        phy_type = "hsic";
+        phy-supply = <&reg_usb3_vbus>;
+        #phy-cells = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt b/Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt
deleted file mode 100644
index 64f7109aea1f..000000000000
--- a/Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt
+++ /dev/null
@@ -1,37 +0,0 @@
-Allwinner sun9i USB PHY
------------------------
-
-Required properties:
-- compatible : should be one of
-  * allwinner,sun9i-a80-usb-phy
-- reg : a list of offset + length pairs
-- #phy-cells : from the generic phy bindings, must be 0
-- phy_type : "hsic" for HSIC usage;
-	     other values or absence of this property indicates normal USB
-- clocks : phandle + clock specifier for the phy clocks
-- clock-names : depending on the "phy_type" property,
-  * "phy" for normal USB
-  * "hsic_480M", "hsic_12M" for HSIC
-- resets : a list of phandle + reset specifier pairs
-- reset-names : depending on the "phy_type" property,
-  * "phy" for normal USB
-  * "hsic" for HSIC
-
-Optional Properties:
-- phy-supply : from the generic phy bindings, a phandle to a regulator that
-	       provides power to VBUS.
-
-It is recommended to list all clocks and resets available.
-The driver will only use those matching the phy_type.
-
-Example:
-	usbphy1: phy@a01800 {
-		compatible = "allwinner,sun9i-a80-usb-phy";
-		reg = <0x00a01800 0x4>;
-		clocks = <&usb_phy_clk 2>, <&usb_phy_clk 10>,
-		       <&usb_phy_clk 3>;
-		clock-names = "hsic_480M", "hsic_12M", "phy";
-		resets = <&usb_phy_clk 18>, <&usb_phy_clk 19>;
-		reset-names = "hsic", "phy";
-		#phy-cells = <0>;
-	};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
