Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1789E9551F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fqqhn/ubx1dkZKxzbBDRDjQb6KnIcNohB0AAF0OdVo=; b=HZVUywOEuwWI8y
	3IDKi8lDEuWGPkw7xqIYwFovVogIv8bhVjjOiOshG9Bjk58Fmok12Z6fjBHQx6bXUg4WmCA7IIdEA
	LCAqLT1xXroV+mBnBC8oUOyadBDXddFJt3nklKthKpkWK6L0r98QbNpY0EZZ3dHFiF9T7BA1zFzpx
	ITLjH++zkulaXyxODtc9oxo0kdpbEXrveuWDOI7OqqBrSz10QGRoyWuLbgxB6maPOyFET+0lsfBvh
	HXcR1+kGBYbJ0MqXgvT0M+lU6msv7Zwtl7eEk0DWYrW9vKcbPhG2zJUYHAQpy/oda6viFo9aoUCZa
	mic2zCXqufaAa7GSXVVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzukf-0003YO-Fc; Tue, 20 Aug 2019 03:24:05 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzujs-000328-Dl
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:23:19 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 278163537;
 Mon, 19 Aug 2019 23:23:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 19 Aug 2019 23:23:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=P1jz8fwnKD8Xl
 fOMJ4PdvhOiV7IECdbznxXKaX9/fWU=; b=mGR1KHmoaEEXPl9SRVmwzqzhfZdml
 8u8rRVz+VjUSWlSZ/pu3yk/0619nby/yd5vBBi9JeOgbOByrkTEPqJI3uv1qPauO
 dUGKoZPLIH1m84HBxrFwacgsBnFTbMDyVPvtWhALzN0cNwmkWkm+Is89LSX7Mi4b
 eUBFWu81ZJrvIvsIwv7afr0/6lLVk7oMtl5xZeVevecTuFQzLCpzwlztLConDqQW
 TbacFZZ++JdrMxURTbzvnuTZdFwx5HpkNWX1dkwF1kUav0YjzIUqEJMdjesUWcoa
 wrRv+S3I75yJT1Z4FWBzp6PORqjoA9J0K+t3XMARjtef3KiaJ8GybzvZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=P1jz8fwnKD8XlfOMJ4PdvhOiV7IECdbznxXKaX9/fWU=; b=rQ8BX9Az
 O8fsmxG+UpVcJIpa5gs6ycOpj8WuD/6ZqAZAaST9Fz+50/jrqeBGaz5UPtSrAmU0
 fFOJYGMZjUtvvVtJucJ6qo2o/T+sKImq+/9KxWAxa3BEsV7lPjVN+oicuqLa+pQO
 5Ytgsj9/qMLL0VB6GA3laKyO2r/QXtyk1CIPdGRaJN2JpFtqMx4qg9Pyy1AO+TAu
 87ilh8PolUc1+NZ9IdpYTzU+zK3xqsYbBti3FN9l0Pa1sDmE9mtKeWy/sWvf9l60
 cgRRUSD0poNGMfX1OGVRrcdKNMb7+PQyGhx7qLIe5wJvpW12wCEURKnzUeqAZBMC
 0bM8xC8oBYluCA==
X-ME-Sender: <xms:oWdbXQ-9u-x9D4QAro_eyn5wyNW4kPTDwAQnuofx3kt1A9_DVuUtTg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegtddgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucffoh
 hmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecukfhppeejtddrudefhedrudegkedr
 udehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnug
 drohhrghenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:oWdbXc_uw2T269062-4O0NmqjL2B3Yd2VdCBVESTNMo3JJHOXgpijw>
 <xmx:oWdbXRCVeVocSSgpmxTnmmCN9HmDPi2Lf7HTT80S1F_keYVeXerBDA>
 <xmx:oWdbXUzhbxvbG5QJdJdZEbKCqGZgrann4Q4yGpK6r9Epdhb_DZkvKQ>
 <xmx:omdbXRnCMDmdeeaBO9pyE27LdkClfTS9irKx_WIkBCsUfLKWoSVR3w>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id D2BCD8005B;
 Mon, 19 Aug 2019 23:23:12 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v4 03/10] dt-bindings: mailbox: Add a sunxi message box binding
Date: Mon, 19 Aug 2019 22:23:04 -0500
Message-Id: <20190820032311.6506-4-samuel@sholland.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190820032311.6506-1-samuel@sholland.org>
References: <20190820032311.6506-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_202316_600567_231E30DB 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 Samuel Holland <samuel@sholland.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This mailbox hardware is present in Allwinner sun8i, sun9i, and sun50i
SoCs. Add a device tree binding for it.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 .../mailbox/allwinner,sunxi-msgbox.yaml       | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/allwinner,sunxi-msgbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/allwinner,sunxi-msgbox.yaml b/Documentation/devicetree/bindings/mailbox/allwinner,sunxi-msgbox.yaml
new file mode 100644
index 000000000000..f34a1909ab2e
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/allwinner,sunxi-msgbox.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/allwinner,sunxi-msgbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner sunxi Message Box
+
+maintainers:
+  - Samuel Holland <samuel@sholland.org>
+
+description: |
+  The hardware message box on sun6i and newer sunxi SoCs is a two-user mailbox
+  controller containing 8 unidirectional FIFOs. An interrupt is raised for
+  received messages, but software must poll to know when a transmitted message
+  has been acknowledged by the remote user. Each FIFO can hold four 32-bit
+  messages; when a FIFO is full, clients must wait before more transmissions.
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
+      - items:
+          - const: allwinner,sun6i-a31-msgbox
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
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
