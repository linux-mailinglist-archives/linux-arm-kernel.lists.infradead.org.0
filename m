Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 129881C52AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+hR5sxMGummv3zcaS0E7B3uv8yCn2qwcG0f5o73Noc=; b=Bj1eUn/q9bun8u
	TprvyQZSYrMOEaJII5LD3vi9BAdSN7cJ9HIDe59qLfMAt0Yl/Qf7sAN8RmwJsrwmPi798DFrWNE/s
	fZV2FxM0iqVvuH68AGwBn1xYdep65vhlKB9oMhr4A9w6WHwWV/aQZCS4DSRmd3BWwItg1vGD+kLPb
	CDmZw1z6jb0/kARhd1P/MVqE7eDzHfiRqp0pc6ZgOWxN6VA4TSxhnlsQjGtHHEJ53b0PlvCRmx90c
	sBgRer21pjEe1KPlE3QtnQGtDobYVEo7bYiVb5OgnOX75zadTb2YJoaKb5zxD9b1acMYxXU3jJEur
	QpAx8r9PHlEDVkPPLr9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuWq-0002xD-8K; Tue, 05 May 2020 10:10:20 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuWF-0002mx-KZ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:09:45 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id ABE76580267;
 Tue,  5 May 2020 06:09:40 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 05 May 2020 06:09:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=6SinJITdD/n69
 eIlJpnmxjWDDOpwI1CwjSpv52GcRJQ=; b=nKkDNLC1rFeu+nvfy/6sJ7jrxmlpS
 DVL+sLHcc1ADdZH18bZ0cGt4fOU+iJgiIJYNE0CF+Na64LI5sYVngrumyTGji8Fv
 KEXyD7Ghoqq0MJ5T6R9lGRvYx1dP1pFkjy9g0hMsKV7HRxIEQWqmUECHvgYREgAF
 g0IG8FYDTjMT9hxcHBSNGfrdEUUrmlYlShDnffjdayqSl2xu/tF9u/n1/qCOl34W
 taMGUKXi9QnLqNUhw/uvYf2TIciXj1s6qEyXc73uWNCcsHC20spQeCfaQZk18RZ6
 Us5JC/xLnXP9TrPDB6eGEOb4i3mTdeEIRWuCPL1lFFQcxmIq9Ufq3x0Lw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=6SinJITdD/n69eIlJpnmxjWDDOpwI1CwjSpv52GcRJQ=; b=DjLTN0hk
 c+eUUPuvYz2DxiMNSGg+Zm+vmq8EkkFqSbLFCkNXQdtnK2ly4W2Agcmg2Qlyv/2W
 p+s7tkwIvLv9AwSlnxaDGe4CbtCiyidmZDWFLP4myce2D0k4Opmbsm96jVAPAUQq
 ne5YdfdD2qKJtANytRyFf+1g+XsIsUBhZSBkFOtpzbybWTq/CyfhZOtVmAW3QXsF
 tnfTFwW89EofkpsSf6OJTPLnhUcQJ8ifoEIptrD+wINFEnSXTYWNJhrwTGvMyM1J
 wUq0MH4Mg4oLN2dtTCpB3FT/gzxUxaThqA6lUyrZrLenfyswgyTvEUQav+u8zS0u
 8iCg50FMVVRyWg==
X-ME-Sender: <xms:ZDuxXvlU1GcBjiFYtpGZYXZDSbHgCkqAVfAblNoGMWJlQGybwsNN9A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrjeeigddvgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
 ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
 himhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvghrnhepveejieejtdevgfff
 gfejuefggfeutdelteekgeetueeftddutddtgfffhffgueffnecuffhomhgrihhnpeguvg
 hvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrh
 hnohdrthgvtghh
X-ME-Proxy: <xmx:ZDuxXhXPsAbE3vh1gyeWDyGBVobC7-BTZLNonK8riiEJjNRmuc8URQ>
 <xmx:ZDuxXr-OJ8UtCTf1VcnmjL0pXP0um1ZrU7dzofDAoa4dhNpmpRcK8Q>
 <xmx:ZDuxXuKcrPvn-Lms0kRaY5Yl8aXldSYTAphHgACA6JlgazyPlekDSA>
 <xmx:ZDuxXqJR5mNMSLO3O3mYPdE0gHbUiLgpryTajbBg36KkvUVvnAz6MQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4BC703065FD6;
 Tue,  5 May 2020 06:09:40 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v3 1/5] dt-bindings: iommu: Add Allwinner H6 IOMMU bindings
Date: Tue,  5 May 2020 12:09:30 +0200
Message-Id: <e955f0d83976dc15e4b4ec903119ee8c1ed510e1.1588673353.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
References: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_030944_131991_E5869839 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner H6 has introduced an IOMMU. Let's add a device tree binding
for it.

Reviewed-by: Rob Herring <robh@kernel.org>
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
