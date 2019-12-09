Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCEA11696D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:35:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAxq3SW4u+NTfTieRbvRlW6cG8a59PsUApo0eajly7M=; b=rzbSFvB0iDMHlS
	R7i9SyZK1C5gAfsecsudhTyve5PEvAcCBOicA0IOSAj6YiSUKRZbyWkGnrH5OFjFO9NUDiYwTcEMe
	MXmrcHHfU/enQ++w6t4V22uCR8a73990PgaGnK5qvUYtcW5j9UkzMCkRU5fjyQFT3tf/V9h7W4yp2
	U0SpaQJgPEv1LVwz3U/thqKLda5iSiUlNACU+nPs+4g7nQX9qKmiIgMOa1zZogpGCoAUF0HpjrKz8
	COBYsfsObB7xzRg2cHzHNONIha28Jtj2DlZcSl1OATNCENN4K2E/Rpgpkq2BnTWfE8jHwYfR7jIU7
	pItJTp2trNd/bd0eZD+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFSD-0001Jn-25; Mon, 09 Dec 2019 09:35:45 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFRP-0007ye-UY
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:34:58 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 2E7ED22863;
 Mon,  9 Dec 2019 04:34:55 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 09 Dec 2019 04:34:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=yTH6IxfLwKQnj
 Wesdxju2O/Lpoy9o7wfPHciAdpkLcI=; b=fT7HjQSLolmWwchRpkPTiIHtqyZ1o
 ZxkKGzE1FumtTHDTEs5GBgcSE4GzPUwfOP+u2R+Tx761yc56YcaFaFu76t4y0ZR1
 n1DA0MrAchXOa+2lyZ2hDqyT43AxTVu6QMoat8X3xE3kuuMQ8Uv9GB71o7dEkE9X
 +/soNnNJbwkqaA1R3njaURHtQafUUh0sKZRBEWgnSxsRhQyRL6lQx8i+DnqcAGdI
 SRuJdNNNHlaV4mh/nkpoVX1X/VtSjtHd8ODa3WIEAlpkpKlpc9VM7+bGelACnOcW
 /OO5BxhXeRP99tu7VBd/fgBU5cIR0uRgvVDGlY+2M6USoNs2WjGqRxO3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=yTH6IxfLwKQnjWesdxju2O/Lpoy9o7wfPHciAdpkLcI=; b=i/kS+G/+
 saXr/dJg42j/23ulqyrcfqeWIAy5NBlSKEfTH9iWaC/a51ECcb3vDWJ+bJg2dTzR
 fnr4rEF2X1nGgURnkXE6bZFldYmS7Tv+Gcib+5uRPmaInNhX4jWpD6ag588B2BFv
 rYKNmFQ7SyyGRM0JfdeZ75FqDYC1IzMKTlGqsVAlBgZ2y29Ltt5ZunOipcYzDClT
 oHImkyyLsKG7+CbHigofqicc5JfXNlPQBl3jkhcSVTBzt3Q3n0qKN+dltZQ8SZAL
 6VzP0ixuijve0IBRZt1bIaQgJKpjSo9bjshkdslxp4Qljk+WhAhrcc491ofUeZ8T
 6Xh9PvoFv0ysdw==
X-ME-Sender: <xms:PxXuXSDvmmiD_GYa3kJNBCPU0_6U7pnisDAI_Zn2vYSSVagBKgm_Vw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeltddgtdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucfr
 rghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlh
 hushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:PxXuXfkm-G3rup2WVn-2d0eL4swPRwc3-FPl-nuttsKmrv1m-ByqFA>
 <xmx:PxXuXU0U1WT2e1nFUpQJYuQ0vlF70w_03kppVmMlf7ksr_VXl8ritg>
 <xmx:PxXuXecpJ53sryU-1lZbwPxdy1e-67rE5tqh1GmITrmc-JRfzQUENg>
 <xmx:PxXuXcjVPY_S7geJh9aJgJdEK6JHdmH0eh3tN7SzxBfOZCTmF0Jupg>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C3C1F30600D4;
 Mon,  9 Dec 2019 04:34:54 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 4/4] dt-bindings: sram: Convert Allwinner A10 system
 controller to a schema
Date: Mon,  9 Dec 2019 10:34:41 +0100
Message-Id: <20191209093441.50694-4-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209093441.50694-1-maxime@cerno.tech>
References: <20191209093441.50694-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_013456_144648_D367C14E 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, krzk@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The older Allwinner SoCs have a system controller that is supported in
Linux, with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../allwinner,sun4i-a10-system-control.yaml   | 140 ++++++++++++++++++
 .../devicetree/bindings/sram/sunxi-sram.txt   | 113 --------------
 2 files changed, 140 insertions(+), 113 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
 delete mode 100644 Documentation/devicetree/bindings/sram/sunxi-sram.txt

diff --git a/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
new file mode 100644
index 000000000000..3a368fbdff58
--- /dev/null
+++ b/Documentation/devicetree/bindings/sram/allwinner,sun4i-a10-system-control.yaml
@@ -0,0 +1,140 @@
+# SPDX-License-Identifier: GPL-2.0+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sram/allwinner,sun4i-a10-system-control.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 System Control Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+description:
+  The SRAM controller found on most Allwinner devices is represented
+  by a regular node for the SRAM controller itself, with sub-nodes
+  representing the SRAM handled by the SRAM controller.
+
+properties:
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  compatible:
+    oneOf:
+      - const: allwinner,sun4i-a10-sram-controller
+        deprecated: true
+      - const: allwinner,sun4i-a10-system-control
+      - const: allwinner,sun5i-a13-system-control
+      - items:
+        - const: allwinner,sun7i-a20-system-control
+        - const: allwinner,sun4i-a10-system-control
+      - const: allwinner,sun8i-a23-system-control
+      - const: allwinner,sun8i-h3-system-control
+      - const: allwinner,sun50i-a64-sram-controller
+        deprecated: true
+      - const: allwinner,sun50i-a64-system-control
+      - const: allwinner,sun50i-h5-system-control
+      - items:
+        - const: allwinner,sun50i-h6-system-control
+        - const: allwinner,sun50i-a64-system-control
+      - items:
+        - const: allwinner,suniv-f1c100s-system-control
+        - const: allwinner,sun4i-a10-system-control
+
+  reg:
+    maxItems: 1
+
+  ranges: true
+
+patternProperties:
+  "^sram@[a-z0-9]+":
+    type: object
+
+    properties:
+      compatible:
+        const: mmio-sram
+
+    patternProperties:
+      "^sram-section?@[a-f0-9]+$":
+        type: object
+
+        compatible:
+          oneOf:
+            - const: allwinner,sun4i-a10-sram-a3-a4
+            - const: allwinner,sun4i-a10-sram-c1
+            - const: allwinner,sun4i-a10-sram-d
+            - const: allwinner,sun50i-a64-sram-c
+            - items:
+              - const: allwinner,sun5i-a13-sram-a3-a4
+              - const: allwinner,sun4i-a10-sram-a3-a4
+            - items:
+              - const: allwinner,sun7i-a20-sram-a3-a4
+              - const: allwinner,sun4i-a10-sram-a3-a4
+            - items:
+              - const: allwinner,sun5i-a13-sram-c1
+              - const: allwinner,sun4i-a10-sram-c1
+            - items:
+              - const: allwinner,sun7i-a20-sram-c1
+              - const: allwinner,sun4i-a10-sram-c1
+            - items:
+              - const: allwinner,sun8i-a23-sram-c1
+              - const: allwinner,sun4i-a10-sram-c1
+            - items:
+              - const: allwinner,sun8i-h3-sram-c1
+              - const: allwinner,sun4i-a10-sram-c1
+            - items:
+              - const: allwinner,sun50i-a64-sram-c1
+              - const: allwinner,sun4i-a10-sram-c1
+            - items:
+              - const: allwinner,sun50i-h5-sram-c1
+              - const: allwinner,sun4i-a10-sram-c1
+            - items:
+              - const: allwinner,sun50i-h6-sram-c1
+              - const: allwinner,sun4i-a10-sram-c1
+            - items:
+              - const: allwinner,sun5i-a13-sram-d
+              - const: allwinner,sun4i-a10-sram-d
+            - items:
+              - const: allwinner,sun7i-a20-sram-d
+              - const: allwinner,sun4i-a10-sram-d
+            - items:
+              - const: allwinner,suniv-f1c100s-sram-d
+              - const: allwinner,sun4i-a10-sram-d
+            - items:
+              - const: allwinner,sun50i-h6-sram-c
+              - const: allwinner,sun50i-a64-sram-c
+
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    system-control@1c00000 {
+      compatible = "allwinner,sun4i-a10-system-control";
+      reg = <0x01c00000 0x30>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges;
+
+      sram_a: sram@00000000 {
+        compatible = "mmio-sram";
+        reg = <0x00000000 0xc000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0x00000000 0xc000>;
+
+        emac_sram: sram-section@8000 {
+          compatible = "allwinner,sun4i-a10-sram-a3-a4";
+          reg = <0x8000 0x4000>;
+        };
+      };
+    };
diff --git a/Documentation/devicetree/bindings/sram/sunxi-sram.txt b/Documentation/devicetree/bindings/sram/sunxi-sram.txt
deleted file mode 100644
index 380246a805f2..000000000000
--- a/Documentation/devicetree/bindings/sram/sunxi-sram.txt
+++ /dev/null
@@ -1,113 +0,0 @@
-Allwinnner SoC SRAM controllers
------------------------------------------------------
-
-The SRAM controller found on most Allwinner devices is represented by
-a regular node for the SRAM controller itself, with sub-nodes
-reprensenting the SRAM handled by the SRAM controller.
-
-Controller Node
----------------
-
-Required properties:
-- compatible : should be:
-    - "allwinner,sun4i-a10-sram-controller" (deprecated)
-    - "allwinner,sun4i-a10-system-control"
-    - "allwinner,sun5i-a13-system-control"
-    - "allwinner,sun7i-a20-system-control", "allwinner,sun4i-a10-system-control"
-    - "allwinner,sun8i-a23-system-control"
-    - "allwinner,sun8i-h3-system-control"
-    - "allwinner,sun50i-a64-sram-controller" (deprecated)
-    - "allwinner,sun50i-a64-system-control"
-    - "allwinner,sun50i-h5-system-control"
-    - "allwinner,sun50i-h6-system-control", "allwinner,sun50i-a64-system-control"
-    - "allwinner,suniv-f1c100s-system-control", "allwinner,sun4i-a10-system-control"
-- reg : sram controller register offset + length
-
-SRAM nodes
-----------
-
-Each SRAM is described using the mmio-sram bindings documented in
-Documentation/devicetree/bindings/sram/sram.txt
-
-Each SRAM will have SRAM sections that are going to be handled by the
-SRAM controller as subnodes. These sections are represented following
-once again the representation described in the mmio-sram binding.
-
-The valid sections compatible for A10 are:
-    - allwinner,sun4i-a10-sram-a3-a4
-    - allwinner,sun4i-a10-sram-c1
-    - allwinner,sun4i-a10-sram-d
-
-The valid sections compatible for A13 are:
-    - allwinner,sun5i-a13-sram-a3-a4, allwinner,sun4i-a10-sram-a3-a4
-    - allwinner,sun5i-a13-sram-c1, allwinner,sun4i-a10-sram-c1
-    - allwinner,sun5i-a13-sram-d, allwinner,sun4i-a10-sram-d
-
-The valid sections compatible for A20 are:
-    - allwinner,sun7i-a20-sram-a3-a4, allwinner,sun4i-a10-sram-a3-a4
-    - allwinner,sun7i-a20-sram-c1, allwinner,sun4i-a10-sram-c1
-    - allwinner,sun7i-a20-sram-d, allwinner,sun4i-a10-sram-d
-
-The valid sections compatible for A23/A33 are:
-    - allwinner,sun8i-a23-sram-c1, allwinner,sun4i-a10-sram-c1
-
-The valid sections compatible for H3 are:
-    - allwinner,sun8i-h3-sram-c1, allwinner,sun4i-a10-sram-c1
-
-The valid sections compatible for A64 are:
-    - allwinner,sun50i-a64-sram-c
-    - allwinner,sun50i-a64-sram-c1, allwinner,sun4i-a10-sram-c1
-
-The valid sections compatible for H5 are:
-    - allwinner,sun50i-h5-sram-c1, allwinner,sun4i-a10-sram-c1
-
-The valid sections compatible for H6 are:
-    - allwinner,sun50i-h6-sram-c, allwinner,sun50i-a64-sram-c
-    - allwinner,sun50i-h6-sram-c1, allwinner,sun4i-a10-sram-c1
-
-The valid sections compatible for F1C100s are:
-    - allwinner,suniv-f1c100s-sram-d, allwinner,sun4i-a10-sram-d
-
-Devices using SRAM sections
----------------------------
-
-Some devices need to request to the SRAM controller to map an SRAM for
-their exclusive use.
-
-The relationship between such a device and an SRAM section is
-expressed through the allwinner,sram property, that will take a
-phandle and an argument.
-
-This valid values for this argument are:
-  - 0: CPU
-  - 1: Device
-
-Example
--------
-system-control@1c00000 {
-	compatible = "allwinner,sun4i-a10-system-control";
-	reg = <0x01c00000 0x30>;
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ranges;
-
-	sram_a: sram@00000000 {
-		compatible = "mmio-sram";
-		reg = <0x00000000 0xc000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0 0x00000000 0xc000>;
-
-		emac_sram: sram-section@8000 {
-			compatible = "allwinner,sun4i-a10-sram-a3-a4";
-			reg = <0x8000 0x4000>;
-		};
-	};
-};
-
-emac: ethernet@1c0b000 {
-	compatible = "allwinner,sun4i-a10-emac";
-	...
-
-	allwinner,sram = <&emac_sram 1>;
-};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
