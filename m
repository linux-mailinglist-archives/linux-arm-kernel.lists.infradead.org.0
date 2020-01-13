Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 299BE138AA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 06:20:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZNVd51lro/ro3uJC4oNLt6t4dV1tiA2gPzwAKEb9qI=; b=T8C6Anx9a+4mvP
	EjaGizkKMmSClgtXJ5ldGf11/JRjkWolx06qrUsLs1VEb0whWP/s3JjwMsgqsPSdsegLlPzWTmuO4
	ph//0/LI9n93ZRGsQGxc2dPHeqWA80GaPQbaB3q2LFB75WfBcZXxW2pJfQW4DGvYBLv+0NpdnI38B
	6RQb86UWYEiQWkaOmZdBgq8joCME2ztso4etwM2s7COR3yD9WE6YgNmxD1h8ivCJp3aMrrn376bvi
	VUKnusdC5rY1TJOeW8IZ2UTzQbRRDPbWZsMHjYyVlBBd+zWVK1NP8h8kA+mQ7LVeuPdWqspA5OumH
	fbizpJmD8R0E4J8UtAQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqs9F-0004IN-7k; Mon, 13 Jan 2020 05:20:21 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqs7u-0003Wv-AR
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 05:19:01 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5962A61D0;
 Mon, 13 Jan 2020 00:18:57 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 13 Jan 2020 00:18:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=EmmLtCjrK7RsX
 RRqPJrB9bPRF/NolERlt2uFv3dLhTc=; b=TX1kx6z3NpofCraAdgp9otpxgSE5p
 vKMli4ZP6LFzdCfz/wuNh5f3kK7OSnU7/n6eHsEwNN4zVDku2kbfimmTk6kCGJeK
 NOPdQyvWx4gc3FOacM8VBuTWV2IoB6qL5cZHQt+7C/j1EZFPUMGcIlSosbInMDu0
 VkNVxn5RAghoQbuZSa/YtTpVZThIVLS6mexZiuhgcdzbAjevQbV4RM7mYtxVcz/W
 KyEpMH2XDNEmsj9Fe5+roV2oBMjIwHUFUQHAEiMKiHA9dBdRZfxTetr6ljft39nH
 my/JmcQ9C6yAg2r9s5A9FTADe/v6JJmTQIlFTIw3X4L5ljVMCcczbKXWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=EmmLtCjrK7RsXRRqPJrB9bPRF/NolERlt2uFv3dLhTc=; b=cUZbY8fd
 yrvLF71QKUy/fHI6c9irvJyq3GPDGdKFV9mnM7thfkY2753qAIqFfNVr+9eM+G9U
 B++rODEtF6E5XhpMcrVkab0/ik+ENvYpnt9/FwNnzx7TCbMe4uNn4sTmEwLG6xak
 7YmupRYr/XONe/1PTIPIZAmrUMbNW4Fk7YvXYW6FaE4CRqlkMGFvaSLu/kYkVz54
 8rtiE+F3paOXMOSksJzBX20MXlJpDaRZXhkd/t2hRLyDXmp/Nlp4pJpfLB702bv+
 B77WU2IeYP46BtkatUmprDZu799bXStluiXgbsXGkDvDv1Ui88qp88fPe5ScrTaD
 cW4gFjLt8Cpp/g==
X-ME-Sender: <xms:vf0bXktms61j_Pnj0J_f7WUeqObswn1CKYGII5tFqeCZoCyVGfE4iA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiledgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucffoh
 hmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecukfhppeejtddrudefhedrudegkedr
 udehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnug
 drohhrghenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:vf0bXsX5QOgUAs85nzMPcubWRq9kYP3sOffYRsuhBhbfpuEVSCfJ5w>
 <xmx:vf0bXnkX3L7Tyd-Rxb9mhlBL7BcOtuLHLKpBd-wNZmr3SigyaG_k2Q>
 <xmx:vf0bXlbCQgBDv4roZVvAulJKFeq5VPYSK0pU_dSzo4XiOS4gKlabNQ>
 <xmx:wf0bXjVABqRYl4XUHO3vwy_oyon7YhLg3SxS5fuEHPsFnpcMXGrlEw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0239330602DB;
 Mon, 13 Jan 2020 00:18:52 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v6 1/6] dt-bindings: mailbox: Add a sun6i message box binding
Date: Sun, 12 Jan 2020 23:18:47 -0600
Message-Id: <20200113051852.15996-2-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200113051852.15996-1-samuel@sholland.org>
References: <20200113051852.15996-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_211858_516421_2BCE85FC 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This mailbox hardware is present in Allwinner sun6i, sun8i, sun9i, and
sun50i SoCs. Add a device tree binding for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 .../mailbox/allwinner,sun6i-a31-msgbox.yaml   | 80 +++++++++++++++++++
 1 file changed, 80 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml b/Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
new file mode 100644
index 000000000000..75d5d97305e1
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
@@ -0,0 +1,80 @@
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
+    oneOf:
+      - items:
+          - enum:
+              - allwinner,sun8i-a83t-msgbox
+              - allwinner,sun8i-h3-msgbox
+              - allwinner,sun9i-a80-msgbox
+              - allwinner,sun50i-a64-msgbox
+              - allwinner,sun50i-h6-msgbox
+          - const: allwinner,sun6i-a31-msgbox
+      - const: allwinner,sun6i-a31-msgbox
+
+  reg:
+    maxItems: 1
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
+
+  '#mbox-cells':
+    const: 1
+    description: first cell is the channel number (0-7)
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
