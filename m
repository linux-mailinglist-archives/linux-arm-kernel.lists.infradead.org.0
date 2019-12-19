Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90854125CDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 09:43:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UZlJEEYrhYoWMViDBFWPaG1Yv+3EMKY7fGsr63Yr7Cc=; b=jOJcFkk5/u4s9O
	JjI27jllhoCHwwbkASVzO/kpNfiomPm5KffhDwIw7IZraeCivK6VsqIh9jj2ySbvkJfV531PpJ965
	dHqJvJ1JiXJowqhdNOFo9sxKqeI59a1yi6W5goJCx5CRLlKCFqpDPJatwOxWLsFam8TU5NnExQtoE
	OhgXz8/oWD69i9HZ9XtOAiLEYnXAWdCgSP4w2SGb/m+1BMUUBx5FZ2KvQwyG+2f/LX381vXuXTbMC
	t5T+HEFlY0zjfo91OU706KcIP4MDDC3f3L3QNLZM205CY8/BQsSNjf2WCUogLC2gVEEJJnwRA5unY
	Sv/7H63kZfyoWl+lA3+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihrPU-0000VE-RB; Thu, 19 Dec 2019 08:43:52 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihrPK-0000UN-RP
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 08:43:45 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 9FE1D22274;
 Thu, 19 Dec 2019 03:43:36 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 19 Dec 2019 03:43:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=FTto9Tv40P+Z8q6l5JjRjiu0is
 j0dkVrGrUHdja8PwE=; b=ep1/B5rXYPYDAoHvbGmrMpvc66qnm2uS/052UsDSDu
 5MAtYt9ZowmF1VuzpLYltDW/ULhtLvHN7ns6fHRtTAytSEikChls/Cz4Kt9YC0m5
 OHEsQGbyap/xY/J4WDzAJDfrDSGo+7VgdBRQHWNztv3nVc8wJKboh8fkDgxh0roW
 55Cq/Qid+8OFttL64vrU8M83xvlV8A4gZG24xzBsyqDTgOJXDNaWOddoHA3utqzw
 34l43a/FnH+wSh154rtFth0S7jsjiBxZm99RMr16Z6SouCWzR+NpcNO/SdEj/yYG
 V1CnENFHsukFdbJBupaHQGvo+v8EnaVquXw8Sa/x5kdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=FTto9Tv40P+Z8q6l5
 JjRjiu0isj0dkVrGrUHdja8PwE=; b=JuY9JT3Qbmu8FqNoW6QcIYTzn5EmjA9pk
 d5eQxvEZUrWrCMjiUs7BPCLhcpMdrT2k+iUAS7ln/ziaC+ZbU2Be4JRZ/cQiLGgb
 dnBbeQ7GNx9dpzMoZ1pZkjxk2Xch6EOglvb6vUpfgGzIhnspbabheFvaiYXgZTwZ
 ZLr5VRLwBePmjOa5h8eugeBxVVsb7SBKTkqbVMQ0e2XHA0c2IltzXWL34PA0mBPD
 1RBRYxPyTuU8PkBM5MyUMBXCEFUtwcG4J8nluDBU7PeMXFMwA8I101r/hpJc5oms
 adxKiRbTZXNM4er0lYY/1EJ2LRnwia/v5eBYHggbjIDH441vRGq8Q==
X-ME-Sender: <xms:Nzj7XQPa_g4zcvzjgiGcZZlEjMpPEM5w97nUdSjQ8spejnEUOAsg7A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddutddguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enogevohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffo
 ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
 himhgvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdr
 ohhrghenucfkphepledtrdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomh
 epmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:Nzj7XeBRt3Af9JrOzmT_L80J1Ib7dxjxxoKcymkrxNjq-OOihLf1Lg>
 <xmx:Nzj7XfRkUrtzLgN9bKCitiBCzJnkAEdd_LGjPKiH5uheT-mtSJhRsA>
 <xmx:Nzj7XaZAGPL2Tv67nksUTQm0SqyJSbs3Yr0c-kX0a51JGEkGShGV7w>
 <xmx:ODj7XfdJHyaJNZkshcnP-jLqDXhe4Q0vh3BG1kwLRDqdsx5UYTGemg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DE5C130609C5;
 Thu, 19 Dec 2019 03:43:34 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: kishon@ti.com
Subject: [PATCH] dt-bindings: usb: Convert Allwinner A80 USB PHY controller to
 a schema
Date: Thu, 19 Dec 2019 09:43:32 +0100
Message-Id: <20191219084332.944123-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_004343_327776_99CCE586 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
