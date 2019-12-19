Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5807E125D48
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:07:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DjjyNHGlHOx+H0aYb3UXYLeuzcr1l+arUKgugfNFN9A=; b=E86D3iQo9yctQ9
	SauIQt3G+PXFMBENcFXZ/iMwhzZXpDuZFVNei98jyjyfRkFi1iu5uGR1he033lUK/Wg7GaBauTeWx
	s3K8YFu6VAZdcO5Rg9gtzb8NqCMMqbYYJV39bDu9axYWuIGxhaNT4UtzSFQ8V29FZ6qPfpfDkxTE5
	Qc7fiD7jabfwApEKWHlmU9adm9X9JFVUjIXEYY6h082HphKh8/Wn/v6GxccPSGQnsREVw0q9AN3sK
	cXwWn+bWoL0hombPU4swOTOckXPuQdwRG40Dh6gfMN0S2PPRMjTqdPk6euwFtJ8tuqh7CJB7SMC2G
	0V4sOWwaoNcPQd+hMdCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihrmZ-0001Sp-My; Thu, 19 Dec 2019 09:07:43 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihrmB-0001I0-Og
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 09:07:22 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2C40928FF;
 Thu, 19 Dec 2019 04:07:19 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 19 Dec 2019 04:07:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=XXdtMM7vLgAct
 /8ZdLZvRsgE1myTwo/2GhT2QNhyDlY=; b=M4v4rZdhWbr9cX1QUXXwJtgzhfuqF
 iOw0EdJcP3SUy1dLy0PbMKvhHoqP3FVCYy4S2TcfeqjNXVdMtDvEBmBhNA4CdbLj
 TQxe2GKHT11KSJvVT4KUOspCkJ5i9GWM7V84WsFYD8iIoxFTaAWU9iEWd0ei5q33
 4HJ+WamrcjHqTME/rYXL/02az3sAihWzM/sSJEkrcg09PVfLQ8bvWB5eEMi40XKo
 6zYTddqyl0FBNsibBW4lC5Wa7gJ4X8ENnLrgPdkWS+DUdyFJcm0xuT6LJ9iYaPl6
 Q0Q3Wsiy6JoovuE6g/ozG4nilUXKibhjWFf6zL1Djh21DEBCRRe4Vq1vA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=XXdtMM7vLgAct/8ZdLZvRsgE1myTwo/2GhT2QNhyDlY=; b=UT7qZQ9A
 on3BmBsuuTrx+dfNsmwH2v49p4btyDjmNNfLxPm3febbgL4uNIxUB8A4OKoqD8Ik
 kt6i0IEYc5IT9xPF5ySCArXMtqcGFR4SxKGwjMtOBHrj5OLLJUph84rnpiMhGM+J
 RtCMeLVa9H3T+5ehtZVK6n84h4ZKqsEAtOkbHDLJBiI9o19nUIXgjF05dM+1UYWC
 wY5Dvk6osYlyhg/aF1TmODdEaBo8LKqe4dyc/8awkmnX696+wdHlHdu4rO/rpxIm
 FFC+C1bocbaWg9CBhqdw2tm7JXUSctl6anwr0An6zEs01EpJmUZVXoPERCBnPeEy
 /gawBs3VpdlBaQ==
X-ME-Sender: <xms:xz37XbfEjvVwiX2QIrsKkAVXUDW4kKVhrE3yUrUZwp_yr1zJT4aZtA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdduudcutefuodetggdotefrodftvfcurf
 hrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenogevoh
 grshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghfggfg
 sedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimh
 gvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhr
 ghenucfkphepledtrdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomhepmh
 grgihimhgvsegtvghrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:xz37XTPy1qD09GxIkPJd_s3qySsbYvtFR17f4VaBX3bCZSTrfoJsDw>
 <xmx:xz37XdVIV9vEUTwkrCjnK8bXPTsnvQY1psz-XMD2KqdeKffEvL2Qew>
 <xmx:xz37XU3NzmsWuS7kFAia5W6kasP4sCi0POqlGXw-qBBB0U0GmZDD3A>
 <xmx:xz37XZ4Kt-zjvxfz5AgzJSSjtt02HrdIrtNvCFWbdQoqGd7Vzx3ahg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id AAACF8005A;
 Thu, 19 Dec 2019 04:07:18 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: p.zabel@pengutronix.de, Mike Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@codeaurora.org>, lee.jones@linaro.org,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 3/3] dt-bindings: resets: Convert Allwinner legacy resets to
 schemas
Date: Thu, 19 Dec 2019 10:07:12 +0100
Message-Id: <20191219090712.947490-3-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191219090712.947490-1-maxime@cerno.tech>
References: <20191219090712.947490-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_010719_937943_239F01D3 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime@cerno.tech>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have a legacy set of bindings (and a framework to
support it in Linux) for their reset controllers.

Now that we have the DT validation in place, let's split into separate file
and convert the device tree bindings for those resets to schemas, and mark
them all as deprecated.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../allwinner,sun6i-a31-clock-reset.yaml      | 68 +++++++++++++++++++
 .../reset/allwinner,sunxi-clock-reset.txt     | 21 ------
 2 files changed, 68 insertions(+), 21 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reset/allwinner,sun6i-a31-clock-reset.yaml
 delete mode 100644 Documentation/devicetree/bindings/reset/allwinner,sunxi-clock-reset.txt

diff --git a/Documentation/devicetree/bindings/reset/allwinner,sun6i-a31-clock-reset.yaml b/Documentation/devicetree/bindings/reset/allwinner,sun6i-a31-clock-reset.yaml
new file mode 100644
index 000000000000..001c0d2a8c1f
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/allwinner,sun6i-a31-clock-reset.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/allwinner,sun6i-a31-clock-reset.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A31 Peripheral Reset Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+deprecated: true
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - allwinner,sun6i-a31-ahb1-reset
+          - allwinner,sun6i-a31-clock-reset
+
+  # The PRCM on the A31 and A23 will have the reg property missing,
+  # since it's set at the upper level node, and will be validated by
+  # PRCM's schema. Make sure we only validate standalone nodes.
+  required:
+    - compatible
+    - reg
+
+properties:
+  "#reset-cells":
+    const: 1
+    description: >
+      This additional argument passed to that reset controller is the
+      offset of the bit controlling this particular reset line in the
+      register.
+
+  compatible:
+    enum:
+      - allwinner,sun6i-a31-ahb1-reset
+      - allwinner,sun6i-a31-clock-reset
+
+  reg:
+    maxItems: 1
+
+required:
+  - "#reset-cells"
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    ahb1_rst: reset@1c202c0 {
+        #reset-cells = <1>;
+        compatible = "allwinner,sun6i-a31-ahb1-reset";
+        reg = <0x01c202c0 0xc>;
+    };
+
+  - |
+    apbs_rst: reset@80014b0 {
+        #reset-cells = <1>;
+        compatible = "allwinner,sun6i-a31-clock-reset";
+        reg = <0x080014b0 0x4>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/reset/allwinner,sunxi-clock-reset.txt b/Documentation/devicetree/bindings/reset/allwinner,sunxi-clock-reset.txt
deleted file mode 100644
index 4ca66c96fe97..000000000000
--- a/Documentation/devicetree/bindings/reset/allwinner,sunxi-clock-reset.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-Allwinner sunxi Peripheral Reset Controller
-===========================================
-
-Please also refer to reset.txt in this directory for common reset
-controller binding usage.
-
-Required properties:
-- compatible: Should be one of the following:
-  "allwinner,sun6i-a31-ahb1-reset"
-  "allwinner,sun6i-a31-clock-reset"
-- reg: should be register base and length as documented in the
-  datasheet
-- #reset-cells: 1, see below
-
-example:
-
-ahb1_rst: reset@1c202c0 {
-	#reset-cells = <1>;
-	compatible = "allwinner,sun6i-a31-ahb1-reset";
-	reg = <0x01c202c0 0xc>;
-};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
