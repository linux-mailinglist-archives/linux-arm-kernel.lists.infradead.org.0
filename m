Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D381695C0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 05:09:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nGQAbzf4ghDp+oo8GMdErfmIfCN9iTMFif0/22EVYZM=; b=q1xmWwq8o+g44R
	KnrfAkx0+H02qpEpRBjTrUqWJXtvlVzyg8iOC1LNtqaAA0S9igxOVhmfiuhThcbjKzdcQBC24RXQn
	IE/53uB6EkcYdo6zRVMspLv6J4wsbUqExCkL5PxbIyFxkqJYiASvIb3InhV8YisR7bQHT9Mzm7vfO
	uhb1vvaNWfLPA+rxEOMhiqTz5qgsnJVZAHB8BrQ4Hb+8kapu7Uc25g0UQwQh1k45tEDzMYwxWet02
	gXyrm1eb8aGAYH0FuorbczPcnMNVoviXb4BIRVOd8gN+LB+3s8IoAoGRn2aiL+bNUuHuKkGfllGjZ
	C02nSgWm6mMfBjQh2ZaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ia4-00013O-OK; Sun, 23 Feb 2020 04:09:24 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5iZc-0000sT-Iw
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 04:08:58 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id B087015D8;
 Sat, 22 Feb 2020 23:08:55 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 22 Feb 2020 23:08:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=8Gmm1jV3gADOP
 RofRHQkO+7+tEPK7Er+RIxVB5tuf4g=; b=F5CpqO+OECK8RIsZPvjvJHJZcCdWS
 FcQXDp4hqcsChQOfb5DKnWxjy+FzUOdvdxEt2ELhbWTH4FNlAne7QwWzWlAioKw6
 GgecB2fUNa3CAErCvGWWOVgnihGDPrHt8MfjNJ2xLpqUAIWa5OFx6eDl8eFZPlIO
 BzYYesuBKdx+qxclCHgsGQclyR5L8lPxumYaMvJKVT+7IDe3uzpzb35R9sQl7tfi
 +DfgK5UC1mfeYRboYcDCya7/AkJcreEM1TVlP07k4edXZyA1ZNKroh9DeoD6ZHCu
 wQGA5HeSgCt4tu0u/KJ/kk53bTY16JSRcDkwYy65SG5mGgVesA4NgjSPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=8Gmm1jV3gADOPRofRHQkO+7+tEPK7Er+RIxVB5tuf4g=; b=eRehqDob
 Ka0zAQvFp0KrZF1WQuLaODYip5HHUr2Yjtn5oqKMhW+LqRcGGi0+/ltrReWajcTZ
 MdOJLGpS/qRRUiyt/BeGEXjTVK9yLz442UoslRck9a79SyhUjfq7FG5ha5mkAk7E
 xihg7SPnfTvhPntSGgkXhmaOfqP28+h5KkY8BdAH7onz4mXVFhgTRg3AAjW+69nC
 u47aFBmhx5/NSoAPNrAKFe2v1zPVg+NeVlMLs9Serpf69yPiCS4JxVuSv779bSBq
 9B5K1N9gnyGf2ZS53k+u/v1Jl93iFTM/oCZ5r9YtLJqdGcZvWt0PrDDDrHb/iQ7P
 1jW/8PGRFtKCWg==
X-ME-Sender: <xms:1_pRXqMvCPM20Jwq7RrTwwzHBYUb28AwVATQanqpjzSlENuMx3dWqQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkeejgdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecuffhomh
 grihhnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepjedtrddufeehrddugeekrddu
 hedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsh
 grmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:1_pRXi_YdY7DpIkltQC-037Aq3-PUYMbNkvpnZaiITcd0sPcTF0CUw>
 <xmx:1_pRXn7U-b3PTM2-Xv4lbx_Y-QC1rXUJFtrROw2WAJuMRRgCzYDxZA>
 <xmx:1_pRXo6rKGFI2c7pFzDi59rzteGoTTXKV8K-0rJGE1Kmr3U8rEE6uQ>
 <xmx:1_pRXrcnlDbojTLFqzaLuQ-bKXIgYmegSg0xZrtVZR8-ej7Ii8wwPg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9CE1B3280062;
 Sat, 22 Feb 2020 23:08:54 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v7 1/6] dt-bindings: mailbox: Add a binding for the sun6i
 msgbox
Date: Sat, 22 Feb 2020 22:08:48 -0600
Message-Id: <20200223040853.2658-2-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200223040853.2658-1-samuel@sholland.org>
References: <20200223040853.2658-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_200856_773013_D914EC4B 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This mailbox hardware is present in Allwinner sun6i, sun8i, sun9i, and
sun50i SoCs. Add a device tree binding for it.

Acked-by: Maxime Ripard <mripard@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
