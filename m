Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF7211F5B1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 05:25:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ESgMHCFmas1ic/3xtz1/ZlZA0ta2EFZMYD3eCsQJXco=; b=oVjozrOu/cRGwB
	yYtln8RpyiPJjIYQOeXTaFJHsYbapusD1gFdTGhXrMvNo6p4H6Fflqud3kGjqKAog+G3gV88bJfWx
	Gp+4Ps7VNjEy+TH5HGLrXnECcqnWHCA7D0GvT8sEegWx1wjx9shLVc+8GKzwV4d+3tbc20bwyy6KV
	6OCYZ3EoiAr9xFaPyxkXuun03dhg8ObQqUso12OzxKvb1u2CwLWxgyglyNwHXq8paU8VcK8sy9FpC
	Qo5Ta5vLHHUq/Juxc+r+gGnK+7lf+eMH/r1A4i170w04AGzmKf2r4365KS4rHmmksCZeu+MMWglg4
	+7nWMCuwVvncifgzkTAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igLTU-00010e-0F; Sun, 15 Dec 2019 04:25:44 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igLSs-0007zI-Qf
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 04:25:12 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 140D85A7A;
 Sat, 14 Dec 2019 23:24:59 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 14 Dec 2019 23:24:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=JjsSHv7y+xoC9
 wzCPjhtQRaN9GgsGgC2WECk087F2qk=; b=MpdAbp6oqXAMC/ICQ2LIy9FhX10LT
 stCeOkYbnHUzid3iDKZBU5XJgaBWxguNem1ZGqi3Jpxd9iXlKpwI3RuGRm6do5h8
 MIO6bWiyBMz0H8jm0opl9Lwc/lG0tljYBGvUhexeyNYYn/oe2W3GUoqL3jclS2NW
 tqt9+7PkHyFRcQbWC7L8FistNaC6S6qMOXs6K1wEtFwEvLPCkIeaXzuqUTvaUt4v
 mujkZJquV34U2YQhq3QahRxINcT03aibiYpUfPjrfA56I6rdsb1v51b3cAluKwvD
 p4oKQ1+hDHMO3sv/LzIyFQASsyCumDEXgOP+1BaPEygzia9oJQDm4jOlg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=JjsSHv7y+xoC9wzCPjhtQRaN9GgsGgC2WECk087F2qk=; b=kceOdyq1
 H6uAiE4SFfBvu8sMeVhzzcsPHmLeBJhIhh16hMeE9IUcJelL1cSFzPNmW2gpaI/I
 EZuh16ERwPCQizWSiqNL9caCe9srNNNccLt+ubCH1z28oR7oRgSt6v9NWs1QRK9/
 rl83K/nB7ZRJt5z0G+4oVfQHZWnUb+tNhm/FA9hXLYfdfpwxYFi72AGV4OfKZtXZ
 zu+uqsf9rZkhEeZvTB+SUfBxxmTpMHpknl4gire75K9r2zx/FZTDBP6P7nt/7Tc2
 Q0RecB2o4Wj4Vi7a0/kHuL5z9tcrzi2yE4GCMc7y511q1n1crkfSmCC2eT1wYlCa
 CfrNtUd7cozaOw==
X-ME-Sender: <xms:mrX1XdkBphMUTKsDbZK4p1Uw2V_Fl3F5ie8ld692zVxrSVyxiSr2Hg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtvddgieelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucffoh
 hmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecukfhppeejtddrudefhedrudegkedr
 udehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnug
 drohhrghenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:mrX1XQHJQn3YAI8-oHleirrxRX0Ark_cku1EQ53vDhhL1N8ScNR_dQ>
 <xmx:mrX1XYX6-VYZ_edwWIj6yfkEgHEt4njFVTTzOuYMY9n5F2MxN_w5vQ>
 <xmx:mrX1XaQIe5GhWZSvzXut_7k1s7frshEPgAeCjo2lSsYqgpGAxkx-cQ>
 <xmx:m7X1Xc8ql89hyosemHSgtJ_lN2Ha5yHEAkOpxKBXpOvf9pE9RkFuiA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2777F80062;
 Sat, 14 Dec 2019 23:24:58 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v5 2/8] dt-bindings: mailbox: Add a sun6i message box binding
Date: Sat, 14 Dec 2019 22:24:49 -0600
Message-Id: <20191215042455.51001-3-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191215042455.51001-1-samuel@sholland.org>
References: <20191215042455.51001-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_202507_085922_84482D3B 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This mailbox hardware is present in Allwinner sun6i, sun8i, sun9i, and
sun50i SoCs. Add a device tree binding for it. As it has only been
tested on the A83T, A64, H3/H5, and H6 SoCs, only those compatibles are
included.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 .../mailbox/allwinner,sun6i-a31-msgbox.yaml   | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml b/Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
new file mode 100644
index 000000000000..dd746e07acfd
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/allwinner,sun6i-a31-msgbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner sunxi Message Box
+
+maintainers:
+  - Samuel Holland <samuel@sholland.org>
+
+description: |
+  The hardware message box on sun6i, sun8i, sun9i, and sun50i SoCs is a
+  two-user mailbox controller containing 8 unidirectional FIFOs. An interrupt
+  is raised for received messages, but software must poll to know when a
+  transmitted message has been acknowledged by the remote user. Each FIFO can
+  hold four 32-bit messages; when a FIFO is full, clients must wait before
+  attempting more transmissions.
+
+  Refer to ./mailbox.txt for generic information about mailbox device-tree
+  bindings.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - allwinner,sun8i-a83t-msgbox
+          - allwinner,sun8i-h3-msgbox
+          - allwinner,sun50i-a64-msgbox
+          - allwinner,sun50i-h6-msgbox
+      - const: allwinner,sun6i-a31-msgbox
+
+  reg:
+    items:
+      - description: MMIO register range
+
+  clocks:
+    maxItems: 1
+    description: bus clock
+
+  resets:
+    maxItems: 1
+    description: bus reset
+
+  interrupts:
+    maxItems: 1
+    description: controller interrupt
+
+  '#mbox-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - resets
+  - interrupts
+  - '#mbox-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sun8i-h3-ccu.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/reset/sun8i-h3-ccu.h>
+
+    msgbox: mailbox@1c17000 {
+            compatible = "allwinner,sun8i-h3-msgbox",
+                         "allwinner,sun6i-a31-msgbox";
+            reg = <0x01c17000 0x1000>;
+            clocks = <&ccu CLK_BUS_MSGBOX>;
+            resets = <&ccu RST_BUS_MSGBOX>;
+            interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+            #mbox-cells = <1>;
+    };
+
+...
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
