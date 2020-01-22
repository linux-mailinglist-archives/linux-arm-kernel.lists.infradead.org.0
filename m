Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4D9145487
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 13:45:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohlOIEu/3To3RZYmCYGf/TjpgHH4V0y+BpwTw0/IbOc=; b=PyTlzScGL1Xea+
	2TdwldT4+XBOEv+zVcJ64FUrNb/S+GKUsRUlQvhSVj5NbGeyyOGargM6qj2L4lluxGv/L/LN+rI+5
	agmHRfl4Qx3wBhIublDMWfRHdcL6fr315BKwZ9Jc6SrCkRW+2UHYphsC60DAQOeMzUdLDZyYLflsM
	o/d/LZOGUEHLOVOQlSaxgBzvOHPYASWrREi7kJRe7rREkLQ6lqGUy+gH8XTGJ6NFy3qQEbClEWkHE
	wW08QC+1SeeEOF+rhzGotOnI4N4XPc9UaVtzF8BP3wP999GxOdCcSNX0IQgKMQxvS9zZ3dxpfElLl
	Y9qJeO0j3Kn8WpW52KDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuFNS-0007z0-Pw; Wed, 22 Jan 2020 12:44:58 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuFMv-0007ov-Md
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 12:44:27 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 514B121AD2;
 Wed, 22 Jan 2020 07:44:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 22 Jan 2020 07:44:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=PpkqFMc9bHGZU
 C2M9j/B71daXgXhgIIRGqNjkpJlLo8=; b=Q84S4QWXlfd0S2itTk7DJjpOsSUTa
 5T0QZuOnUHTcvN4KghuuZTujOQ15P3DprTUxApc3Bqdp11d4OUd/2hZk9CHGpUN0
 +pquAjq0sxs6Mdbhj+x/Amir3WJBDEOyG8d2+2XPhFrr+T9LOCT/VoBJUXzpa/fJ
 g+69Fcspafab8hhRM05ypXbKHRty9YLAIJ96JJ/31l6yz/ek76+bd9yUwqGkyIys
 wQ/kxvxaD5UI+4rD00QHigW3VuEIRI1ZrvyRZHpetDYLbf5UOm6GPo/J9YqB9wI7
 Whn3fJKDUFqGyBqpwN2EC4iUrq9UaRlhtSdo5sY9KXaVYuIFXlPjHc77Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=PpkqFMc9bHGZUC2M9j/B71daXgXhgIIRGqNjkpJlLo8=; b=ZYIWuF2q
 mD/c4OJ140VhJhhskbcdaHH3GyKzc6a1CSAyLhjCGAMy+bufabFv+LGCuG4+Ks/d
 IM39mqNkucl6j91cDFSdDbSEOHm+0NC/Ln/x16gKsF3obBgTodym3E05yQ4Vu626
 J/v8Z2Of/3MdWOUJyr349CXQcREzuXsdM0wl3oixUUFTCv56lyg8i4ywUFyw9TOV
 3IfFuuefINxqzRTTO8bwfuh/2XC2tj1b1rSsuMlaa73eY8eYz2YBUX7567VO1jGM
 9lSLkYjzu7AR5izDQwEf4Nugrl5NQVZmq+99nQveuGXRGh6k1JRi4FGDj2NC4+Td
 kq40u8SW5bCTOA==
X-ME-Sender: <xms:o0MoXmEwsdasyonWjv_ljWt-QC24y0RsIrx3QXMmXsF5gDd235JHNg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrvddtgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
 ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
 himhgvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdr
 ohhrghenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:o0MoXhXdPcfuDQJ0KaBZbhcmHqmBhMG4YyShRrnsec43WHDrItbSFA>
 <xmx:o0MoXmyOkpcsY50btgYI5vmm7xv51WHldExsCUnc2Dzt3wJk1Lu_Yw>
 <xmx:o0MoXuSpowk1Om7XnT1ll9d_UeRsC4PolUuY8pGqWLX6UuAuzPRalw>
 <xmx:o0MoXnUFDhrQ6unMBrM9oiH-7BII6EcQi-bP-GDfe3EHSJQWj3-jVg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DC1EA3060C16;
 Wed, 22 Jan 2020 07:44:18 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 1/3] dt-bindings: iommu: Add Allwinner H6 IOMMU bindings
Date: Wed, 22 Jan 2020 13:44:07 +0100
Message-Id: <3022a8d9d60f35db072b39313ec46708a567a9c5.1579696927.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
References: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_044425_940877_762BB4DD 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner H6 has introduced an IOMMU. Let's add a device tree binding
for it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml | 61 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml

diff --git a/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
new file mode 100644
index 000000000000..5e125cf2a88b
--- /dev/null
+++ b/Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iommu/allwinner,sun50i-h6-iommu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner H6 IOMMU Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#iommu-cells":
+    const: 1
+    description:
+      The content of the cell is the master ID.
+
+  compatible:
+    const: allwinner,sun50i-h6-iommu
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+required:
+  - "#iommu-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+      #include <dt-bindings/interrupt-controller/arm-gic.h>
+      #include <dt-bindings/interrupt-controller/irq.h>
+
+      #include <dt-bindings/clock/sun50i-h6-ccu.h>
+      #include <dt-bindings/reset/sun50i-h6-ccu.h>
+
+      iommu: iommu@30f0000 {
+          compatible = "allwinner,sun50i-h6-iommu";
+          reg = <0x030f0000 0x10000>;
+          interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+          clocks = <&ccu CLK_BUS_IOMMU>;
+          resets = <&ccu RST_BUS_IOMMU>;
+          #iommu-cells = <1>;
+      };
+
+...
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
