Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3F87A13D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 08:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUf3p0izpxwfiN4B6V7rteO0uGgeVxc5JOmcw1HEl6E=; b=Sk9oHYSk2sc6c8
	Edi7tWksd/74sP+bzVAuDXM45iQ1U19fZWuPu/P66yNre99HKSsC7FYvXnCWh8fgP7BuCGtbgsPyv
	5wLKkS65Qta6MUEbrCRFDNO+0xM7uBQqt2/PGaEulBhQTIF+QrIDdsHGnJuisdk913UG4tSwSBK0b
	oRrV40r0Q8QIVGGuvQKUVU8SSlW7Pu+a+1zbVMcqr9kcIoj0yzEFx0l+0aXEe+nW1OYHpWfs2LpU2
	knUkJaiUczwVqLYRc1xi1ZZ2bX7PbxXqdi7ebQthSDzZVJ6TvEMUZ6I7tK19W6aiyj8J8JBDXMGot
	K5wyPFK6NIgFCHVztheQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsLY5-00007F-80; Tue, 30 Jul 2019 06:23:49 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsLXV-0008LB-VH
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 06:23:15 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 550FD15AD;
 Tue, 30 Jul 2019 02:23:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 30 Jul 2019 02:23:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=yLQnwe/3jMVbQ
 sjYdQ49tWPI3mLW2x2xLpZ69CsBrv0=; b=iExGC8siddrgdEtojqLCh7+wsEByz
 yEFQtPQ6TJ8MV9E6NxN2txn0oSJTGF1htY06CYXNCwNbfs6qmT3FOBs2RSagyRFE
 ND/AV1lR5Eqp7PdIwosmva/5/jcY15MeYYu9A1pg49LIgC7wREjHd2l/bA9/8mFy
 mGELweNHcRjXvFGQc0WHnPhMFDb0lMqWUSpF3ZoEw1MhX+thYopjpv7W6L1yGsyk
 wBCjx+EHXhV5ZKS31EMsaCIup/bbbjIlqEKz9Rh/+h0fMQEY4uU8U8NDSNSjgpMb
 WGnawq7I25hHR36yjLMWOw4qaD1zhlr2+X1x/ZZ8Xo9qxywiDbINWmNlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=yLQnwe/3jMVbQsjYdQ49tWPI3mLW2x2xLpZ69CsBrv0=; b=E5nnmjeh
 n4NyUKFmYb8M6fvMOE+O7RMx73ut/aNKIUT5r1iNHnRS//uEf8uyjiv6Hg9V1KfE
 pBJ8/X7GswJh5xKZYRJlNvrmiCYGxoaiZpoIGmcTkTYp9IlFxaUyYX+qCJ7ewTL7
 yiBVh0SfWzGuE8iDu3J3/nYhGFqBBHauhOAk9IQuTEWoB7VcHqmbffEKIRYqz9+j
 k4+EDuCeQoz5tQTYLXRNjxBEwOIL39jjbTMmxaGNmmhPcPEXbzapw008ewfhOija
 vZ/+zHucVCsyGThAFn2HRBoVPp7E6Or24w9dUWFUlzWzTdvn0x2BFfQgQtTpLhOa
 6OC8mXdETAVmjQ==
X-ME-Sender: <xms:UeI_XT2omka96W2QgqjVDeHhao2oGHA3QvpBGfrQbq-TAXrtt3dKVQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledvgddutdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucfkph
 epvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgv
 fiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:UeI_XfAtyZROvcAAaCU1w5P77jKGmYaAWcLhk6oe5qWgazRUNU7MOQ>
 <xmx:UeI_XfhMFwcj6qwvfdGeUR7c-t7FOPvK2vhfcGSXFphXc0H8gwbFtQ>
 <xmx:UeI_XRMk8SB7xacR4_ReI6GeCxdIh7ziBxdKdpq92jv-H0uXdZ9YGA>
 <xmx:UeI_XR-wHq1NYliSsGRjfA9fCHe-SqgWXaIdV_CZFiYsRksKyRi3sw>
Received: from mistburn.bha-au.ibmmobiledemo.com (bh02i525f01.au.ibm.com
 [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 351DD8006F;
 Tue, 30 Jul 2019 02:23:08 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: mmc: Document Aspeed SD controller
Date: Tue, 30 Jul 2019 15:53:15 +0930
Message-Id: <20190730062316.32037-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190730062316.32037-1-andrew@aj.id.au>
References: <20190730062316.32037-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_232314_146750_72D0D053 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the
SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
data bus if only a single slot is enabled.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

---
v3:
* Fix compatible enums
* Add AST2600 compatibles
* Describe #address-cells / #size-cells
---
 .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 100 ++++++++++++++++++
 1 file changed, 100 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml

diff --git a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
new file mode 100644
index 000000000000..dd2a00c59641
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/aspeed,sdhci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ASPEED SD/SDIO/eMMC Controller
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
