Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6067BEC4DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 15:39:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ia+cNNwW5+Tzl8UQW9YO9dl0k0Rty6z0sqjRYKFIvGA=; b=IRRiKwJjGGRYoB
	pF3m4X2rZZTx5MBcSAlW7j+X/b415huuYvzcVuKwGPwsYWxzkqqrlabn09z0xdMo7G71hcq/Qj4lo
	WbnA6NTg8Uz2Xr+pNiv2wiTgY5DU6Ku96ZJoYeKhjtUZTNuIWXjLSU/YCsDJ+r4G6phJTVV9+JrjI
	vzHpQVEaphgXZ75mBPxVB2z/FXshkALRS6YCdCfygDc5G7L9U6w4nDtI7x+N1DW/GYiJwsYSMsgkx
	mNEVcI5HiVR45xUzlLpOPyvaPLJi1nsMLwnSkUQO7WxG5Onp9Ax5uWc7hNR5w47DJS2A9qhO1ot5Q
	H8EtGHJduPuP7A1fryLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQY50-0000tJ-4D; Fri, 01 Nov 2019 14:39:10 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQY4r-0000sZ-7C
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 14:39:03 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id B2E936EA0;
 Fri,  1 Nov 2019 10:38:59 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 01 Nov 2019 10:38:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=nLHXblFEn0w6PsQb9pnCNOhicB
 izM/LlhwcXBavexy8=; b=Fu3RKirpNX+TMEFQ4wM+k78wGEVG2KTpxcVvyjbzrv
 QiM8b4aoF5rWbcV1IywxYU4yTauSJkdEBt/qCbOsRVSnDzyMwNS4b3RJOHBd56dF
 javmP/AUiE9UnCQjcPezZYKXrjHCld1Sc1qxPVVZ+wrdQFcXUYBaE+wqSqN9T/fn
 /9o43+Gp4vjKL95pv0zDvw7Vg1X2HZGE1chkZK+HQuacSlzmSH+23Luhj87kZw9Q
 JCfg1M6Awh/m2SNMdrWMY/G3nkOK3AwcUjtVBfuwmSNMVrUhIA0edBAeHNHLAPZ2
 PwQFlPckHeSmg/FdpTuNZLO2y+ZzRjLWLCnlTqoZv3rg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=nLHXblFEn0w6PsQb9
 pnCNOhicBizM/LlhwcXBavexy8=; b=hrMDNZWx2uW0GKDASAoLLxmF/xn7ZXxOA
 JUXR5fV9Tyml6j1jvnpvDaYMorjfTBskqNHDlPRkeS1bxi2ZJvbALBJXRXA2Bq37
 +U2FPrGfEdH+9g3Ghhiu9kHt1voL8Asa9OK5+hgqtAa8CtaTn9A+R4Y/ac4z5m4q
 K1GbOEeM+jaZZLSIRj+up3DSJ2H5Y32VtE5XXeGpNRZZj3/pfHPb66fuw5uBHVwd
 ICaGFz2Eesgbs5I0CUSyxOyUqBO2+8ejcp8rl+8/3CL0FkE4PmWkqJ3yH9+uibRX
 13motlBmU7z3o0QE1BFuQVvlbE+bFgNE2gnLsUsf90hvJA6hA7hCg==
X-ME-Sender: <xms:gEO8XcEuPYC_qqgPRVa5QJjK5DongDXr5B--xY54P7pN6IqIET8L0Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedruddtjedgieeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgg
 gfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigih
 hmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinhepuggvvhhitggvthhrvggvrdho
 rhhgnecukfhppeeltddrkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hmrgigihhmvgestggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:gEO8XZlDH6tp4jiukMU-B0Sf9iKHIfZ-Mzaw_QhKZOAvbPUmJ1KgKQ>
 <xmx:gEO8XRIrwrOuE3pszUOo6uUdq9MgXX_VP_bR5mbkIXxtDd-mKC0mhA>
 <xmx:gEO8XSaM9Vt0098nk9afi5LEcniGh9ZW0Glo-awYmGMC3J3ldN1oUg>
 <xmx:g0O8XWfiD29jWhiVAKoBdl8IzeErt30Kk4TTrNv_S9-SC59joW9_lQ>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1E4678005B;
 Fri,  1 Nov 2019 10:38:55 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH] dt-bindings: Add syscon YAML description
Date: Fri,  1 Nov 2019 15:10:34 +0100
Message-Id: <20191101141034.259906-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_073901_487810_A83D1F85 
X-CRM114-Status: GOOD (  12.95  )
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
Cc: devicetree@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
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
 .../devicetree/bindings/mfd/syscon.txt        | 32 --------
 .../bindings/misc/allwinner,syscon.txt        | 20 -----
 .../devicetree/bindings/misc/syscon.yaml      | 74 +++++++++++++++++++
 3 files changed, 74 insertions(+), 52 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/syscon.txt
 delete mode 100644 Documentation/devicetree/bindings/misc/allwinner,syscon.txt
 create mode 100644 Documentation/devicetree/bindings/misc/syscon.yaml

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
diff --git a/Documentation/devicetree/bindings/misc/syscon.yaml b/Documentation/devicetree/bindings/misc/syscon.yaml
new file mode 100644
index 000000000000..f2d81bed612f
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/syscon.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/syscon.yaml#
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
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
