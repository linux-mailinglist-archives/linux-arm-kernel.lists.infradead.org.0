Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A242211DED0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 08:45:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2MoRRVfpsN6ADf8WWJDxPFSaDYi481eIFMBMAxavRRg=; b=RmytPpt8zSEv+0
	7IAqe8tGZN9hXAajNzRqRleXaRCTdjEmSNNOg/GpI34RR7TDiOQrn6x6R4lCCr6/MVL1qbIkhY7z0
	4PjzJhpWdV1aRVIyWKm7Vb1Imaaa9gFoNftlI+ICKMNyRO8D9xOLkPRN1K5b/yYDKa/8Tsf1tGjb8
	IVn5jb24dJCk7susG2vzjYJG9QpBAq3ChMhV46yRrr+BdmqAcuwROBdzriFEy77CbONkN4DPqhC41
	Zmp7N5Mx4GpD3RkgY7BhAaoiALnoRGYVMCop5syV28A4oNc2jDuQvabAXgjTxaW6zDpcd2h5FTM+y
	zjx8a22WUOs2mRfJg21w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffe1-0005tq-QZ; Fri, 13 Dec 2019 07:45:49 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffdr-0005tP-KC
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 07:45:41 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id C1763226E8;
 Fri, 13 Dec 2019 02:45:35 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 13 Dec 2019 02:45:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=nhawLaFhQzIeBCxzZbgim1fSPf
 fZS3C8Yjokab7nDIM=; b=pYbrjgqOext6JqHNjjBJiQ0TJTq9wzpI7tCiF19QXu
 a0IuJblDugfpFrtKBVtgr3uwgxHdsqwivNd3xjYEbnIjn5R+eYO8rcYPWx5mSIfI
 vZ788Rw6eMIlW6RZXfnvoOQ+LnuPN1ISuInL3rPVMm8mAPL6jtz4Balb8PQUXdfQ
 LwNXnHnL1gKn+GKBHdFuKGB7k3IlwZ2ImAf78oHEEiKq0+a+7OBi7LgxvKtlOC/N
 9QQH+Kg1KVQmeAvd7nk7DNN1r3NaASaVReHj+WRuXOOIZ+QV2yqpjCrWP65qCGCQ
 puGBhgyjDbY7cjjMckeiA6R/RFa2KVEH1HX0FqnYzTjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=nhawLaFhQzIeBCxzZ
 bgim1fSPffZS3C8Yjokab7nDIM=; b=kFNL8J/M2zd2h9oiPk2y1LXWIm2pF05J1
 nLZlXh8bO1hyUGiomUhLM9JibVwO7KE2rMJLkM5B38EUX/aw74O3/qWxTZXT6BNB
 sd8tXOCJ19CqUMElY+qRRs8yT5ZXmdgxWp3URKzzXE/cSqPf30sy+aGq7F6P8xEY
 lZr59YKLHmf1YYYjeeQ1TZwB8L/bJCE4+Uhj+skEzNtIBcMKK7Aa1QsiZpx0tSXE
 hcf9Tnjz9m0bJCs2mlM1KTBGZARImh51L7ZQspr3rqWPaXPIA2Z66utucfqsFjsY
 qCa8l2+JBEn0JLCV8nlblLXY2voOKVITscQkhWXjiH6vYPyv4V5SA==
X-ME-Sender: <xms:n0HzXbDursfaUkSlHmHC6CYwcSKDPBX-7LbWT7CL6R77qku41yZn4A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudelkedgudduudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enogevohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffo
 ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
 himhgvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdr
 ohhrghenucfkphepledtrdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomh
 epmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:n0HzXTNcim2tGE3lhVtfR8TkEkdyclBilVk4Hy-VmqG5CL2DbNC7xg>
 <xmx:n0HzXaDEwSgLYSu5KPzCknrpf4qZ9BtjTyeoIha7YqOFQiem0hbW7g>
 <xmx:n0HzXdltF86_iR0od2bLSwHMEhU6uYtRDE2PQG8pn1XKM08JH-apZw>
 <xmx:n0HzXcnZp-29fwMxJHEszTI_d8AcrNJu9kwzn_EfryJqWd65AjmsdA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3729280066;
 Fri, 13 Dec 2019 02:45:35 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH] dt-bindings: interconnect: Convert Allwinner MBUS controller
 to a schema
Date: Fri, 13 Dec 2019 08:45:33 +0100
Message-Id: <20191213074533.27048-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_234539_807619_09EB80D1 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime@cerno.tech>, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The older Allwinner SoCs have an MBUS controller that is used by Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../arm/sunxi/allwinner,sun4i-a10-mbus.yaml   | 65 +++++++++++++++++++
 .../bindings/arm/sunxi/sunxi-mbus.txt         | 37 -----------
 2 files changed, 65 insertions(+), 37 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt

diff --git a/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml
new file mode 100644
index 000000000000..9370e64992dd
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/sunxi/allwinner,sun4i-a10-mbus.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/sunxi/allwinner,sun4i-a10-mbus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner Memory Bus (MBUS) controller
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+description: |
+  The MBUS controller drives the MBUS that other devices in the SoC
+  will use to perform DMA. It also has a register interface that
+  allows to monitor and control the bandwidth and priorities for
+  masters on that bus.
+
+  Each device having to perform their DMA through the MBUS must have
+  the interconnects and interconnect-names properties set to the MBUS
+  controller and with "dma-mem" as the interconnect name.
+
+properties:
+  "#interconnect-cells":
+    const: 1
+    description:
+      The content of the cell is the MBUS ID.
+
+  compatible:
+    enum:
+      - allwinner,sun5i-a13-mbus
+      - allwinner,sun8i-h3-mbus
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  dma-ranges:
+    description:
+      See section 2.3.9 of the DeviceTree Specification.
+
+required:
+  - "#interconnect-cells"
+  - compatible
+  - reg
+  - clocks
+  - dma-ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sun5i-ccu.h>
+
+    mbus: dram-controller@1c01000 {
+        compatible = "allwinner,sun5i-a13-mbus";
+        reg = <0x01c01000 0x1000>;
+        clocks = <&ccu CLK_MBUS>;
+        dma-ranges = <0x00000000 0x40000000 0x20000000>;
+        #interconnect-cells = <1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt b/Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt
deleted file mode 100644
index 2005bb486705..000000000000
--- a/Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt
+++ /dev/null
@@ -1,37 +0,0 @@
-Allwinner Memory Bus (MBUS) controller
-
-The MBUS controller drives the MBUS that other devices in the SoC will
-use to perform DMA. It also has a register interface that allows to
-monitor and control the bandwidth and priorities for masters on that
-bus.
-
-Required properties:
- - compatible: Must be one of:
-	- allwinner,sun5i-a13-mbus
-	- allwinner,sun8i-h3-mbus
- - reg: Offset and length of the register set for the controller
- - clocks: phandle to the clock driving the controller
- - dma-ranges: See section 2.3.9 of the DeviceTree Specification
- - #interconnect-cells: Must be one, with the argument being the MBUS
-   port ID
-
-Each device having to perform their DMA through the MBUS must have the
-interconnects and interconnect-names properties set to the MBUS
-controller and with "dma-mem" as the interconnect name.
-
-Example:
-
-mbus: dram-controller@1c01000 {
-	compatible = "allwinner,sun5i-a13-mbus";
-	reg = <0x01c01000 0x1000>;
-	clocks = <&ccu CLK_MBUS>;
-	dma-ranges = <0x00000000 0x40000000 0x20000000>;
-	#interconnect-cells = <1>;
-};
-
-fe0: display-frontend@1e00000 {
-	compatible = "allwinner,sun5i-a13-display-frontend";
-	...
-	interconnects = <&mbus 19>;
-	interconnect-names = "dma-mem";
-};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
