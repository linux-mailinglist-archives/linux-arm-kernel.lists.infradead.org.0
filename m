Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14404EC548
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:05:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WltOPfI7zk4QY7IhInhrimo66N9GNb+GrHy8jEM2CV8=; b=OwNAcktiBXWGJl
	8UWwyv+foUb4wp6kODZXAgKzcgDYzHeC1ZniPJDVVCZ6IPM+wes6iKDIADQnNYU5wFvujiY2mW/23
	Ge4UDuUi0Aa+kQxkEzucY1kXvNqwQ9iLPxbhVROcxDW+hpHvF0xSTLJsa5AVN6mnznBRemMFSj63m
	OPI1bX22n/V4Y/Er5MMaHz7JIzI0z9jmBkm56/z5SY1fophcbHidPKTQFfpPcFnDwCxhL6zYNOz6F
	mrgQLtGUD8mAw07fXKPKRjyV7kTUc62a19jWdxOgkK4f5o0Zd/j3D6h9vGjY84qF+1UNk5hLQeIhE
	rT5FGoMB7irTqUmgwyfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQYUK-00045L-S1; Fri, 01 Nov 2019 15:05:20 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQYUE-00044i-89
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:05:16 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 07BEA6A85;
 Fri,  1 Nov 2019 11:05:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 01 Nov 2019 11:05:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=YDxjSNOMKcpTouvXVfD+yOz3Ma
 AE9Piluf+18PUN7Fg=; b=gi3lySwP/nMqMuJ9sxDDFp1fYzrQYaqL5TH0BI/hkO
 XYBNkC3+VB8yNzua5usfVTz1hoEz/zpidPtWiGVsR+J7ltBnnDzwjGTxoBf68gNp
 fTy50pQ2oN5zeRCzJcqTlQpQrDQIhQ758TskQMRb3iB86EI3Diy4JSlt4vidSyL8
 xiF680w/NEamIw2xoy7/8kO2Tm7BOhhOu1Jx+lA/Ew5umpFEFYjzjzQ+Z1IQpNHI
 TIE3aMcrcMx6wD5OWTvgn1/X3zlXzC26axjF6VG5bjAIyqJwcuEtDqZf1xyY/ZB8
 naKELbtFBWQUO8KTVzXXc44QXtj5GbU0DhlFigsT4FLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=YDxjSNOMKcpTouvXV
 fD+yOz3MaAE9Piluf+18PUN7Fg=; b=vSEijQZmhtlv9Ijiqys3BtDurrWipYFpd
 p9lByMnBqW+quQUNeG6jMIBMYKSy/8hiUJYLyjHP47tOpwvWyua+svr7lrHY+C07
 mf1YHwq3yCRze6LtPKHH80By5fGj1B33kQFD28jLpsZoQSPvqidEEQ0xT8MaOv5s
 uuqz01+bctjX0h5D1TAnAl/jHBque6gBQ2LCfATJdJKwJK2779TwC4mUEAPF10m0
 WhNnr0fpLMSvjMlCRx/vpBB2JkSFjPeqf/H4CqQs6KXte6ClOWCzui+Tk3ezxfl0
 7WKmJoDseXn6TOuwVv2kCKm8xN9lZ5w+zoQLwoAxCXAYLK7O9LaCA==
X-ME-Sender: <xms:pUm8XbUZRDYF5EFmNMhPMrpRKhS5zd9RocnQGDqULORClBQDuRs-jA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedruddtjedgjeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgg
 gfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigih
 hmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinhepuggvvhhitggvthhrvggvrdho
 rhhgnecukfhppeeltddrkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hmrgigihhmvgestggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:pUm8XbCHxaQS7o7SQpOikZhl4r_MQ_CMeIzqaHxipzc53LNUIbBbHg>
 <xmx:pUm8XUzuwIpLE0J33La4OK6Bga86jPSiUDlIkJNI6KkqLkQqOMzYww>
 <xmx:pUm8XQBCGOk7_07zrVNWIQyspRAFGVjRAKBsgKCQTfclcQBMhmY6PQ>
 <xmx:p0m8XWCf5n64vM_c5giyeqYgT6HpMM1MyJeD0gsX8bHO3aQ07pyQUA>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3569080061;
 Fri,  1 Nov 2019 11:05:09 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: gregkh@linuxfoundation.org, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v2] dt-bindings: usb: Convert Allwinner A10 mUSB controller to
 a schema
Date: Fri,  1 Nov 2019 15:32:16 +0100
Message-Id: <20191101143216.260890-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_080514_444023_5B0180E6 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have an mUSB controller that is supported in Linux, with
a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes from v1:
  - Merged compatible entries together
---
 .../bindings/usb/allwinner,sun4i-a10-musb.txt |  28 -----
 .../usb/allwinner,sun4i-a10-musb.yaml         | 100 ++++++++++++++++++
 2 files changed, 100 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.txt
 create mode 100644 Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml

diff --git a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.txt b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.txt
deleted file mode 100644
index 50abb20fe319..000000000000
--- a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Allwinner sun4i A10 musb DRC/OTG controller
--------------------------------------------
-
-Required properties:
- - compatible      : "allwinner,sun4i-a10-musb", "allwinner,sun6i-a31-musb",
-                     "allwinner,sun8i-a33-musb" or "allwinner,sun8i-h3-musb"
- - reg             : mmio address range of the musb controller
- - clocks          : clock specifier for the musb controller ahb gate clock
- - reset           : reset specifier for the ahb reset (A31 and newer only)
- - interrupts      : interrupt to which the musb controller is connected
- - interrupt-names : must be "mc"
- - phys            : phy specifier for the otg phy
- - phy-names       : must be "usb"
- - dr_mode         : Dual-Role mode must be "host" or "otg"
- - extcon          : extcon specifier for the otg phy
-
-Example:
-
-	usb_otg: usb@1c13000 {
-		compatible = "allwinner,sun4i-a10-musb";
-		reg = <0x01c13000 0x0400>;
-		clocks = <&ahb_gates 0>;
-		interrupts = <38>;
-		interrupt-names = "mc";
-		phys = <&usbphy 0>;
-		phy-names = "usb";
-		extcon = <&usbphy 0>;
-	};
diff --git a/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
new file mode 100644
index 000000000000..0af70fc8de5a
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/allwinner,sun4i-a10-musb.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/allwinner,sun4i-a10-musb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 mUSB OTG Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: allwinner,sun4i-a10-musb
+      - const: allwinner,sun6i-a31-musb
+      - const: allwinner,sun8i-a33-musb
+      - const: allwinner,sun8i-h3-musb
+      - items:
+          - enum:
+              - allwinner,sun8i-a83t-musb
+              - allwinner,sun50i-h6-musb
+          - const: allwinner,sun8i-a33-musb
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    const: mc
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  phys:
+    description: PHY specifier for the OTG PHY
+
+  phy-names:
+    const: usb
+
+  extcon:
+    description: Extcon specifier for the OTG PHY
+
+  dr_mode:
+    enum:
+      - host
+      - otg
+      - peripheral
+
+  allwinner,sram:
+    description: Phandle to the device SRAM
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - clocks
+  - phys
+  - phy-names
+  - dr_mode
+  - extcon
+
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - allwinner,sun6i-a31-musb
+          - allwinner,sun8i-a33-musb
+          - allwinner,sun8i-h3-musb
+
+then:
+  required:
+    - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    usb_otg: usb@1c13000 {
+      compatible = "allwinner,sun4i-a10-musb";
+      reg = <0x01c13000 0x0400>;
+      clocks = <&ahb_gates 0>;
+      interrupts = <38>;
+      interrupt-names = "mc";
+      phys = <&usbphy 0>;
+      phy-names = "usb";
+      extcon = <&usbphy 0>;
+      dr_mode = "peripheral";
+    };
+
+...
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
