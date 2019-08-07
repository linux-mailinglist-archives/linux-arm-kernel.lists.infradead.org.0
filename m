Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF5483E7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 02:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9yrpQTQ3rFmb7gsQK3B57Dxj6wTdgpxXXAejmiy1eg=; b=Dukf5WTVJriFFh
	fxGW6kIA3pdMUjgbQ7PFuFVsnAZdHu/30DDsDKX81E2F8LKLFeutm4moRK576fPe434JWuaSsgokl
	qOFtduzIJD/3v8GI+shawdYLFJEBaqJJMWqOTduAQTNgE8EuJRZXUhXMnJ29u1tyTx/VzLxWOfi1O
	A24ZdUhnsMnp3kVl04tSPDtBTfP6d4F8yZR+/DN4+DrUnHTd2P8nue1/OnmbzdupICKuK8Y6f2kpn
	Qh59+ImsZ1bSGl5XpdEDnLCY2lZSoI1GI/pA2jdhAZXJvSzrYaGtNyPsydkjXP+wjVkeXRZlZj1yx
	C7J6XiKb+s9Wz/kFVqMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9yJ-0000ve-Od; Wed, 07 Aug 2019 00:38:31 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9xr-0000hh-0w
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 00:38:04 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6764927D4;
 Tue,  6 Aug 2019 20:38:02 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 06 Aug 2019 20:38:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=rqpiLLusQurvK
 WQs9c8c91zRlnYataWeo+My6eoeOzA=; b=gO0q/4nZt1GsBCEkq5ReozR8M7+0c
 1zt/Z2Z4aPpn2jij+lNkIfFewCU+831zc1VwJVQEN/fGM5VzYTXV8nED/tgFB9FL
 1sx/F8pt8I+FH/+AhQW+jEgyUpBjR39vDLLkxPTWWQ7/Rwt3hI3ZsvR84LuFKgKl
 8TZzWXy9Q1MrjJDqYf6EDWSEs7MzqOOf4j2o7YlgysugUeA2EhoaIsZ8gvxjbFC+
 vMIG/RJWh9mhnNriFpH3mATQmWerlc1c1YvPaC/MLZQdzpnFlHFab9JiI5I6aylc
 0AcyegN+jDnlpWirEsUkF7UvwV18u1hrcunvuQZxuTp8ThehtuoXq18/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=rqpiLLusQurvKWQs9c8c91zRlnYataWeo+My6eoeOzA=; b=vq9r47Rt
 VjPznrxmuvGPnSX1kaqMzmdVWRBBSRaNOfv4a3kyqfusk8DmilaLPHkbpl4FdC1k
 NZj/4WN/byJPDaScGDIxLdUys/8MCKYi4njH1dfXVNnv2BZ0nDbLzDgjSZiEo4cg
 AIivX/6raykk0gmuYvukVp92VdKs1mTqVs83liU1esW+xgPSwq9TGip/ajcyeRF2
 /2ddOqKzBJXyqqbyv2+7HN1IC6tL8p5zA9zu8Dq3R+bh/ifSrjyjn/tw0WeDwcmk
 VK083PZYzkXIWf+0bGrt9e+lhBcT491mYr7FJbudlazcZQ1eyVo+ldNeFyEb7X/j
 9rn258/oG9xKig==
X-ME-Sender: <xms:ah1KXVMwXFCVRUPHgXgJYrl5YH5rX0A4BVD_OBAbtAoOx_aapEcEKg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudduuddgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucfkph
 epvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgv
 fiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:ah1KXboY9S5hZhzkmDPYzGhKMbcezkpiLd43PTQgX8nW-8dk9CczCg>
 <xmx:ah1KXc7wgREoNILuaoklxsb4UTj9mjI6H4L9HTwR56zCBXt9lh1Lhg>
 <xmx:ah1KXTHjFAUbc4jGxxjxd4IpW2AmQBrsc6HxZfMJRB3ftV3EXh1qaw>
 <xmx:ah1KXfq15eI16rlXyFWhpWxfePeFKUL-RSmvoS4TpA6VHsWq9wQlyA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 50003380088;
 Tue,  6 Aug 2019 20:37:58 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v5 1/2] dt-bindings: mmc: Document Aspeed SD controller
Date: Wed,  7 Aug 2019 10:06:28 +0930
Message-Id: <20190807003629.2974-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190807003629.2974-1-andrew@aj.id.au>
References: <20190807003629.2974-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_173803_218155_AEA742FD 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 ryanchen.aspeed@gmail.com, adrian.hunter@intel.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ASPEED SD/SDIO/MMC controller exposes two slots implementing the
SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
data bus if only a single slot is enabled.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

---
v4:
* Make use of mmc-controller.yaml
* Document sdhci,auto-cmd12

v2:
* Fix compatible enums
* Add AST2600 compatibles
* Describe #address-cells / #size-cells
---
 .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 105 ++++++++++++++++++
 1 file changed, 105 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml

diff --git a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
new file mode 100644
index 000000000000..570f8c72662b
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/aspeed,sdhci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ASPEED SD/SDIO/MMC Controller
+
+maintainers:
+  - Andrew Jeffery <andrew@aj.id.au>
+  - Ryan Chen <ryanchen.aspeed@gmail.com>
+
+description: |+
+  The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the SDIO
+  Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit data bus if
+  only a single slot is enabled.
+
+  The two slots are supported by a common configuration area. As the SDHCIs for
+  the slots are dependent on the common configuration area, they are described
+  as child nodes.
+
+properties:
+  compatible:
+    enum:
+      - aspeed,ast2400-sd-controller
+      - aspeed,ast2500-sd-controller
+      - aspeed,ast2600-sd-controller
+  reg:
+    maxItems: 1
+    description: Common configuration registers
+  "#address-cells":
+    const: 1
+  "#size-cells":
+    const: 1
+  ranges: true
+  clocks:
+    maxItems: 1
+    description: The SD/SDIO controller clock gate
+
+patternProperties:
+  "^sdhci@[0-9a-f]+$":
+    type: object
+    allOf:
+        - $ref: mmc-controller.yaml
+    properties:
+      compatible:
+        enum:
+          - aspeed,ast2400-sdhci
+          - aspeed,ast2500-sdhci
+          - aspeed,ast2600-sdhci
+      reg:
+        maxItems: 1
+        description: The SDHCI registers
+      clocks:
+        maxItems: 1
+        description: The SD bus clock
+      interrupts:
+        maxItems: 1
+        description: The SD interrupt shared between both slots
+      sdhci,auto-cmd12:
+        type: boolean
+        description: Specifies that controller should use auto CMD12
+    required:
+      - compatible
+      - reg
+      - clocks
+      - interrupts
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+  - clocks
+
+examples:
+  - |
+    #include <dt-bindings/clock/aspeed-clock.h>
+    sdc@1e740000 {
+            compatible = "aspeed,ast2500-sd-controller";
+            reg = <0x1e740000 0x100>;
+            #address-cells = <1>;
+            #size-cells = <1>;
+            ranges = <0 0x1e740000 0x10000>;
+            clocks = <&syscon ASPEED_CLK_GATE_SDCLK>;
+
+            sdhci0: sdhci@100 {
+                    compatible = "aspeed,ast2500-sdhci";
+                    reg = <0x100 0x100>;
+                    interrupts = <26>;
+                    sdhci,auto-cmd12;
+                    clocks = <&syscon ASPEED_CLK_SDIO>;
+            };
+
+            sdhci1: sdhci@200 {
+                    compatible = "aspeed,ast2500-sdhci";
+                    reg = <0x200 0x100>;
+                    interrupts = <26>;
+                    sdhci,auto-cmd12;
+                    clocks = <&syscon ASPEED_CLK_SDIO>;
+            };
+    };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
