Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCA181066
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 04:52:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyUOrLqyiMnP7GYpSVCNcwJmMa75S9UcbEfE8tmQ+VA=; b=rqJJ5yeKv2fr2D
	omAGPrEUmg6S8lPSnwJ+7QjyUkji3vi9AtRGD5EbOTJplguupw+s133Vc6GoNTjpPA1rzX7z+17mq
	ieYj9G3BIt4he2cOpK3v+sZx7+YM2JSo6rhlVeZRy1Vw/1hgFbL+/XmZKhLElnOPVZqXCybcRvuH1
	0lWTuoNDTew95X0YAXujESJnKUqna8HdAqaBVZqgIzZ70AJJYKmevjyV/+fTuGHmmMfdQn1/tQgsS
	DbquspucypOXzXdeSdeLV6Fvygsyk2VM0PRzp0V5M5VEfMT/cEQ1jn0OOF89UlAyrE9JJjUdYtuOR
	wj6HiHk1r75lX4HmdhDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huT6f-0001nc-UD; Mon, 05 Aug 2019 02:52:17 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huT6F-0001am-5a
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 02:51:52 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id BFF2AADF;
 Sun,  4 Aug 2019 22:51:49 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 04 Aug 2019 22:51:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=8UrLTRB4jgrSy
 WTy2sIOZ5rPOkCXFnPpTytcus6239s=; b=PoBAn8Q7o54zMa79mpkFg9VhZRAfx
 OU0J7fPec/sQAbrRkGA6aQcO3UIJ9hs86cWyOCffqEuJqRw1Oc2r607fVRg6FtAj
 gSgxCa5wOVvd/p/qaVzw9fopsUD3XMKusnRCKFnrZDqfBIIW2bkoPIGS4n+rPSUP
 N2ekFMuAmNfGfwsa7R2y4c+3pT0tJ3lhN6hxelh6QyTfLWUZ5h0RMPw4aKdKc+lM
 H0UG6E4EVDJg4ijHBnd2ZJZICQLkhODCbsWT9PTx1q46/0gqPuXCaUzmnGImlRxG
 vnNNOWeEmtPccewiZIoLWVa8RqQJwBAB5xrCz4ikM8ZhVyUF+DCHiIgCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=8UrLTRB4jgrSyWTy2sIOZ5rPOkCXFnPpTytcus6239s=; b=CHHYAtdP
 xIrEBHAoypoe/NPWkJSvcoHvykoBVPNJZ23zDKNUMaOAXkQGzApKgaT8r17d63Q4
 iZ9jRfzhQSLZ/+NSz6mB2EYHQAOSBnbEz+O8QVR7YOXmjCTmx79hUNmPqZQlA8HY
 SZ8YAbojwBwnprN9SaKKhDywc1jc5fxc4YLfjBJ02KUObAtStSFhQwejBMhG+ARA
 cUGBA4H9dBYvWmnVRPB5f19pahOcejHGl/sj9LBP3GmOM5nmMB7gZBpSOfUyLkv9
 6rlGym2TN0HgptzIAHeYQMCbQQ8kieML/cTzeZmjHAc2hMUMZFJI2WG9Qtasa0fa
 St6uVnyYf0v9LQ==
X-ME-Sender: <xms:xZlHXeaJMwYocCjr_pmJGrFhSFCPu7_Y8CXxJJzsQiXDbeYNx5aaRA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddruddtiedgiedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheptehnughrvgifucflvghffhgvrhihuceorghnughrvgifsegr
 jhdrihgurdgruheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdrohhrghenucfkph
 epuddukedrvddutddrudegfedruddvheenucfrrghrrghmpehmrghilhhfrhhomheprghn
 ughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:xZlHXfxEUdncWA0r5MVtFjTza68sAUMsm46DSLEvzFQWffUtwIU9Ag>
 <xmx:xZlHXU-AUCffC9PMY-DRwmW97g_130XmvOESXPuBKMfPF7EBLqU7LA>
 <xmx:xZlHXTwyvZsLC5f98nTDrC9wdu0ZpH_LezCfVbjoMgtxFCINgWNIVQ>
 <xmx:xZlHXQWFzBLSnpY0G1nNPwSEnXi0SznqEU1bSqXBBtSYJG-LEpLHmQ>
Received: from localhost.localdomain
 (ppp118-210-143-125.adl-adc-lon-bras33.tpg.internode.on.net
 [118.210.143.125])
 by mail.messagingengine.com (Postfix) with ESMTPA id 77DBE380086;
 Sun,  4 Aug 2019 22:51:45 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: mmc: Document Aspeed SD controller
Date: Mon,  5 Aug 2019 12:21:54 +0930
Message-Id: <20190805025155.9020-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190805025155.9020-1-andrew@aj.id.au>
References: <20190805025155.9020-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_195151_360829_FEDC9745 
X-CRM114-Status: GOOD (  10.70  )
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
v3:
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
index 000000000000..ca8684f47962
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
@@ -0,0 +1,105 @@
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
