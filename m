Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22775F7511
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 14:35:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vltBFR+Qq16EGs+Y6LjZdiqzG6irlMZ4uH8GVjJpr3E=; b=raJdlRqeTaZ1NB
	lAo8xLXVk4EdaTz6E7dN2HSNphLuumOYYWCslMOV9zRrWtRhOedh08wNyNrNMkUfPLr3Me/kK+tMe
	UVocvJtUP0GS/j8H11IAciz1rycIBzonN3jgDf4zeg7/5npY+AZSdrTEi7JwnXs8KiZEw3+9AL2y0
	wIc0cu5Peoc0oMErysbk8oqm8V/uZbrinQkOsqxjwvkcDFNwA9vmDTfQrbtLxExrFAFVnEnDs/TlF
	01g1eeo08tvIINvPSdtjIzwiNTxJ1zpIp7S05luIfONGe8keOdx5BlJVzA96l/mT8baMHr68otLUI
	rC2GMcu20mc7/UWmtx/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU9ql-00025P-DO; Mon, 11 Nov 2019 13:35:23 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU9qb-0001Ho-QM
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 13:35:15 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id C2CA35870;
 Mon, 11 Nov 2019 08:35:04 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 11 Nov 2019 08:35:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=Zlhvqxx2p0HUpT7xA2m1adLF4x
 vde1djMpIP8JqoGAM=; b=SgFVWIHo+46nyBGlApbRAW4bbl8/kepA7lWSt305Lb
 OZ6W7V/B73YwOKjJwa5xHxy65kicMqp6OD8jwbZcy1sFycgwvjAiECdxQpHtJD31
 iHGUwo3nzdmbh4IokMZ2tf2M07Yy6CEB/Sij5OujRPzcLLX2OkEcdlElL3latj8h
 GjINyshPsm2Yesm7a53qGYeSoTG/2evww86X8Ms90MpS7G5Z4bCdaWDJfQjbCFz6
 CrGpSa0KTC0hYXV1cO86Np0NJ2/JnNIg13ABm5FIbBnqYIECEsJbhoAHmbN28Y4y
 wGZtWdFgcY8VbRQ2BXt2wVfmfYRFtANksd3NcvENbwmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Zlhvqxx2p0HUpT7xA
 2m1adLF4xvde1djMpIP8JqoGAM=; b=dpbdM4EK45ekX8nrN0NCVGzrThtsxgVse
 4EHPFxexYzpoOiw0y3jeuoz/aonL5CTpx8PnigzudJ0ritdfSK1hbjFxDOthuo8c
 0+jnVSW8I6bA51gf3k72aOvjoqwvi8oQPNZGfs++WZ4LbRaPaVCsurW2Nk5Mra/m
 KLRu/aJeeYFcdaTFchDwmP2tx0TAjXkSPw9mSW1+TVQH1fJG2pq6TNoyjTndzZBh
 9dnFTkhj/K7SX/i0e6/U5jbzJK6PvADmJ/oOFVxF2SE/r/ILytn4imeMmcTbPDtZ
 Rzad4waQ9WzhjZeQTukgUu4wCoheAdYPdbYO2nUT3Bn5tQnl8yxBQ==
X-ME-Sender: <xms:h2PJXc5nd38CG7DY6KU1-CFWD6Hengay8VIqUwGmnHrEgHRqVI5y5Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedruddvjedgheehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgg
 gfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigih
 hmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinhepuggvvhhitggvthhrvggvrdho
 rhhgnecukfhppeeltddrkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hmrgigihhmvgestggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:h2PJXQiG93aHI9v7Jh2uuECz5Y5p71HVI8zR0KNjrYULpfPj1Rk_zQ>
 <xmx:h2PJXa_vSOOqcrNejU57Jszf3oai5N_otB7IXF8Xw0xQQGrCGQ2npg>
 <xmx:h2PJXSc7P7Q8L2JfPpQ5L-LwG0DR6L1H6IPNgNE7LnyaGCJBsV1zuA>
 <xmx:iGPJXSjg2t18WyqfvS4eaHV6oU0IRkkNg6nUZX4ddQZT1U_FY2f0Wg>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1F69C80061;
 Mon, 11 Nov 2019 08:35:03 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, lee.jones@linaro.org
Subject: [PATCH v2] dt-bindings: Add syscon YAML description
Date: Mon, 11 Nov 2019 14:35:00 +0100
Message-Id: <20191111133500.135306-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_053513_994397_2C340142 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <mripard@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The syscon binding is a pretty loose one, with everyone having a bunch of
vendor specific compatibles.

In order to start the effort to describe them using YAML, let's create a
binding that tolerates additional, not listed, compatibles.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>

---

Changes from v1:
  - Move syscon binding from misc to mfd
  - Add a select statement
---
 .../devicetree/bindings/mfd/syscon.txt        | 32 -------
 .../devicetree/bindings/mfd/syscon.yaml       | 84 +++++++++++++++++++
 .../bindings/misc/allwinner,syscon.txt        | 20 -----
 3 files changed, 84 insertions(+), 52 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/syscon.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/syscon.yaml
 delete mode 100644 Documentation/devicetree/bindings/misc/allwinner,syscon.txt

diff --git a/Documentation/devicetree/bindings/mfd/syscon.txt b/Documentation/devicetree/bindings/mfd/syscon.txt
deleted file mode 100644
index 25d9e9c2fd53..000000000000
--- a/Documentation/devicetree/bindings/mfd/syscon.txt
+++ /dev/null
@@ -1,32 +0,0 @@
-* System Controller Registers R/W driver
-
-System controller node represents a register region containing a set
-of miscellaneous registers. The registers are not cohesive enough to
-represent as any specific type of device. The typical use-case is for
-some other node's driver, or platform-specific code, to acquire a
-reference to the syscon node (e.g. by phandle, node path, or search
-using a specific compatible value), interrogate the node (or associated
-OS driver) to determine the location of the registers, and access the
-registers directly.
-
-Required properties:
-- compatible: Should contain "syscon".
-- reg: the register region can be accessed from syscon
-
-Optional property:
-- reg-io-width: the size (in bytes) of the IO accesses that should be
-  performed on the device.
-- hwlocks: reference to a phandle of a hardware spinlock provider node.
-
-Examples:
-gpr: iomuxc-gpr@20e0000 {
-	compatible = "fsl,imx6q-iomuxc-gpr", "syscon";
-	reg = <0x020e0000 0x38>;
-	hwlocks = <&hwlock1 1>;
-};
-
-hwlock1: hwspinlock@40500000 {
-	...
-	reg = <0x40500000 0x1000>;
-	#hwlock-cells = <1>;
-};
diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
new file mode 100644
index 000000000000..39375e4313d2
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: System Controller Registers R/W Device Tree Bindings
+
+description: |
+  System controller node represents a register region containing a set
+  of miscellaneous registers. The registers are not cohesive enough to
+  represent as any specific type of device. The typical use-case is
+  for some other node's driver, or platform-specific code, to acquire
+  a reference to the syscon node (e.g. by phandle, node path, or
+  search using a specific compatible value), interrogate the node (or
+  associated OS driver) to determine the location of the registers,
+  and access the registers directly.
+
+maintainers:
+  - Lee Jones <lee.jones@linaro.org>
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - syscon
+
+  required:
+    - compatible
+
+properties:
+  compatible:
+    anyOf:
+      - items:
+        - enum:
+          - allwinner,sun8i-a83t-system-controller
+          - allwinner,sun8i-h3-system-controller
+          - allwinner,sun8i-v3s-system-controller
+          - allwinner,sun50i-a64-system-controller
+
+        - const: syscon
+
+      - contains:
+          const: syscon
+        additionalItems: true
+
+  reg:
+    maxItems: 1
+
+  reg-io-width:
+    description: |
+      The size (in bytes) of the IO accesses that should be performed
+      on the device.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - enum: [ 1, 2, 4, 8 ]
+
+  hwlocks:
+    maxItems: 1
+    description:
+      Reference to a phandle of a hardware spinlock provider node.
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    syscon: syscon@1c00000 {
+        compatible = "allwinner,sun8i-h3-system-controller", "syscon";
+        reg = <0x01c00000 0x1000>;
+    };
+
+  - |
+    gpr: iomuxc-gpr@20e0000 {
+        compatible = "fsl,imx6q-iomuxc-gpr", "syscon";
+        reg = <0x020e0000 0x38>;
+        hwlocks = <&hwlock1 1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/misc/allwinner,syscon.txt b/Documentation/devicetree/bindings/misc/allwinner,syscon.txt
deleted file mode 100644
index 31494a24fe69..000000000000
--- a/Documentation/devicetree/bindings/misc/allwinner,syscon.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-* Allwinner sun8i system controller
-
-This file describes the bindings for the system controller present in
-Allwinner SoC H3, A83T and A64.
-The principal function of this syscon is to control EMAC PHY choice and
-config.
-
-Required properties for the system controller:
-- reg: address and length of the register for the device.
-- compatible: should be "syscon" and one of the following string:
-		"allwinner,sun8i-h3-system-controller"
-		"allwinner,sun8i-v3s-system-controller"
-		"allwinner,sun50i-a64-system-controller"
-		"allwinner,sun8i-a83t-system-controller"
-
-Example:
-syscon: syscon@1c00000 {
-	compatible = "allwinner,sun8i-h3-system-controller", "syscon";
-	reg = <0x01c00000 0x1000>;
-};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
