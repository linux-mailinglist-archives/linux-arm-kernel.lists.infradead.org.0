Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2141911697A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:36:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0cn+EBYoVrEXOSNyd0bRpQZvsGB66CnZpzIIE1Ejmo=; b=V5cUVx/PsmKNOi
	e3pBt8srpegTGwgaNOWyPgIMEHgEDJ+XAZU9jvZdUjkCnivLmTRdP0BFaTEjc2e9+PnwNXrxzyePo
	c01XYxOk4Zi2yOjyv8zqjPXSbESAF/ySnuqu9tRExqj26KRhyjsjZjbo6NSEQ9+O+UYXrCWgFat8E
	1Es/LcptCM7n8uLObU3UufKhFlr6qDXfEr2I7uqIpekuM29M5PTIaylT0dcfKHdTbTNBZqn2BJTA5
	6nKZVcnXYjJnvDu9NKwo8cluVN0Jt7TEXlMUKxDKINw8Jno73atMMZ/GCMM28TaZCJJU+vngCmDVD
	v7i/NA6l0l13pxWZ/pwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFT8-00027T-Kp; Mon, 09 Dec 2019 09:36:42 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFSX-0001jy-9E
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:36:07 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id AF1DD5F7C;
 Mon,  9 Dec 2019 04:36:04 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 09 Dec 2019 04:36:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=Jh8NtE/kdWCNk
 PnIe2/VhCIXHHqhZ+e1urdP1oG1D9Q=; b=ebc4BVy1DXViVZHWJsyxPe/RL9v46
 1phStb/x4Bym5ZQGIWageJyMhlUH6RKujl+CshDCLRrApaK6rsGALMq7J9cVIIZR
 2VeT9GYLivgw03DS11Chmg8YtYAzyiuIhV8Whg3aYBM7+u/6MqVyMV26YNJGx1Dq
 LF/3iYX26M9tN+/YsvTRCeSgKkWNn676Ge+9oMY1r0Rqm7XSkjH7yBRQk5tfzmGu
 /1KxfXshwfAb7Z49skFjikP0Pu4WVjrqQkEH+zMUjfB9vEB44z4YDDcPfcQc7LtJ
 7V39aU0MEG5ayjYDYjjTfr+ZJNhHtAdrXIMrFO+pIDNO4tlaD+AT93x6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=Jh8NtE/kdWCNkPnIe2/VhCIXHHqhZ+e1urdP1oG1D9Q=; b=JM++kkpq
 i0pluyxPg4ghPDTd9xzf0ZKZV6QIMVPPiwx5i/8cZo6h1+y3qpYftPXYv3FawBr+
 +DgsODOMjZxJr+DFvs7mUpKLMlinJPEDXkl2JRV1/wNXDsU1zTwCxnt3xZL2BEV4
 hT+Zd21E3ilRAwDNEdIw78kli6P/m9n6+NJqvS7ZzfVakw6/LbwDBceJetpiANT5
 f+C2xwNmk4xKlYl14si8J4itmQ48w0UyPA3jrCoTfo2tSnlnZGWoz6lPkM94so3N
 cDJVOilMJUMPjCLjcfChQgjpI0MlaS77OLd7r7wI8xZEf1XGDuoTxZdxP44YOBW+
 zPcQzws05QmduA==
X-ME-Sender: <xms:hBXuXS6orOA7UtxGhrxrB4ao4APGLCabkGqBhonLAcIStwjKtF4buA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeltddgtdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
 fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
 igihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinhepuggvvhhitggvthhrvggv
 rdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehmrgigihhmvgestggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgepud
X-ME-Proxy: <xmx:hBXuXbMdLthlR_lCuzWOMnl4OCbh3msqGVmBxf33_hZm9XPBrbNz1w>
 <xmx:hBXuXYYxnknGJskpDz1qNq5R8XSWB5V7pxanzGBZRwOX5f1LeXibMQ>
 <xmx:hBXuXac_BnT8pesfQLpiGxtdvlNfijPJrxtWF-t3Xa-fyCWOySBeAA>
 <xmx:hBXuXYPz5r0N_5IWbbAe4nhEMIluxfnbXw1YbZg_36m9daYoczROCg>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4685380059;
 Mon,  9 Dec 2019 04:36:04 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 3/3] dt-bindings: clocks: Convert Allwinner A80 DE clocks to a
 schema
Date: Mon,  9 Dec 2019 10:35:58 +0100
Message-Id: <20191209093558.50940-3-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209093558.50940-1-maxime@cerno.tech>
References: <20191209093558.50940-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_013605_457301_834B1D62 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Mike Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner A80 SoC has a display clocks controller that is supported in
Linux, with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../clock/allwinner,sun9i-a80-de-clks.yaml    | 67 +++++++++++++++++++
 .../devicetree/bindings/clock/sun9i-de.txt    | 28 --------
 2 files changed, 67 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-de-clks.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/sun9i-de.txt

diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-de-clks.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-de-clks.yaml
new file mode 100644
index 000000000000..a82c7c7e942b
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-de-clks.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-de-clks.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A80 Display Engine Clock Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun9i-a80-de-clks
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bus Clock
+      - description: RAM Bus Clock
+      - description: Module Clock
+
+  clock-names:
+    items:
+      - const: mod
+      - const: dram
+      - const: bus
+
+  resets:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - "#reset-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sun9i-a80-ccu.h>
+    #include <dt-bindings/reset/sun9i-a80-ccu.h>
+
+    de_clocks: clock@3000000 {
+        compatible = "allwinner,sun9i-a80-de-clks";
+        reg = <0x03000000 0x30>;
+        clocks = <&ccu CLK_DE>, <&ccu CLK_SDRAM>, <&ccu CLK_BUS_DE>;
+        clock-names = "mod", "dram", "bus";
+        resets = <&ccu RST_BUS_DE>;
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/sun9i-de.txt b/Documentation/devicetree/bindings/clock/sun9i-de.txt
deleted file mode 100644
index fb18f327b97a..000000000000
--- a/Documentation/devicetree/bindings/clock/sun9i-de.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Allwinner A80 Display Engine Clock Control Binding
---------------------------------------------------
-
-Required properties :
-- compatible: must contain one of the following compatibles:
-		- "allwinner,sun9i-a80-de-clks"
-
-- reg: Must contain the registers base address and length
-- clocks: phandle to the clocks feeding the display engine subsystem.
-	  Three are needed:
-  - "mod": the display engine module clock
-  - "dram": the DRAM bus clock for the system
-  - "bus": the bus clock for the whole display engine subsystem
-- clock-names: Must contain the clock names described just above
-- resets: phandle to the reset control for the display engine subsystem.
-- #clock-cells : must contain 1
-- #reset-cells : must contain 1
-
-Example:
-de_clocks: clock@3000000 {
-	compatible = "allwinner,sun9i-a80-de-clks";
-	reg = <0x03000000 0x30>;
-	clocks = <&ccu CLK_DE>, <&ccu CLK_SDRAM>, <&ccu CLK_BUS_DE>;
-	clock-names = "mod", "dram", "bus";
-	resets = <&ccu RST_BUS_DE>;
-	#clock-cells = <1>;
-	#reset-cells = <1>;
-};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
