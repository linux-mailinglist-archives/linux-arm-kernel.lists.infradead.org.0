Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B0766504
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 05:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZuLm3qEOoPkWGqAInhrbx15DejwF/7t7rQdJeaD+p0=; b=uB+fXzs5B4gHOW
	muxPTKX9GupmS/e+CCfEI9QSj0dUQt2Xf+CP6JX+6cgqfdVxE+iX58MHNCTOq9Y68utY/pNAX82Ep
	X+Ke7mPJP2M302T2LhGaipLx9BFBY4rx2CsLvBMxIlHISno9f9GITqCez9J8HjDPPMKarbFvSeyPw
	MmLymXNbv+PY+MvQUutDjJo/uJzNUgUBUWR9eWCata870W8AMgk2J4vHgHdG/YD9qNMDZoeNhwg1I
	LMy0FXPJv19wCQLurmmPVN8i6nbAcf6V8WGEaVaUtaO833ji1q71N35RdB6ap76aXGr6O96hp62ow
	RopOfbVaJH9cdr0IIhBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlmIs-0000v3-FR; Fri, 12 Jul 2019 03:32:58 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlmIM-0000ha-5a
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 03:32:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C10AC1B61;
 Thu, 11 Jul 2019 23:32:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jul 2019 23:32:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=8OTTrn15u+3N9
 pDWV3Ka61zLndSduUjJwrYMM8MILms=; b=Q90CrvOUoebID2ta1bqq8kxPeT2hw
 6PnXZ07fFtMufFlH0lypw7I3ASf2lleRSUO3xt3T70x41NHGsUmJ1VV3NvVAHZqD
 JRltB0BssjVGZzYBMcW5y9iOsa5lHdgiZafE+HbjNSesbt0Xul3vZBUaw1KIzmi/
 WITjOZYrr9ecmtw0fIpI5VUIyeWBO8LXAtM5O+omlHXMacpf3QaL9ok1VVfiT18h
 LcFF5ogdYMD06XRSt0RDe4HjJDzyyVnOIeQ5BEm3FKEB2AX3pBB0ilWWbu7X+1zW
 OLz9JZoWTQVw8aSwlrr4oVs4q369QI9ToYOXAE/Sure+Y9H+wFPDYGb/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=8OTTrn15u+3N9pDWV3Ka61zLndSduUjJwrYMM8MILms=; b=o+oDEYuM
 nBf8QPrJpDwucokTXM+LYxLYvzioci4sZ+UKx0JesDJnsB4VpU8BjZE5jITJfprQ
 AVqYUOcBodZIqX5VIAoQxuhdygEDhw64Uv7pTmwUM8tn6xFZEy49jg1X+UT3q4t0
 Wd3wwkFnG0ZAx4TCyCnhAUE0PTN9PFnisYlJ4hSOU6bB8KedCwrFpoyU2XhwvBwC
 JCDPPWvvLiWYEknOcMx5DoYuBrYkaNBD3JMxge9fe0CFIWEsZnOm86U1xoWeeGOI
 mvzBYXV+g1AWq70DQ2ZGtjPndEZktE10mBey/GTmETvJcTduWUtvvr2ASuiJm39V
 vdGKzDduW1EDIg==
X-ME-Sender: <xms:R_8nXcfX6S_LHtcgnTWXo-jPdwanjE1-4Bo9pPFP2D-BSjSWkRSvJQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeelgdejfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecukfhppe
 dvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgif
 segrjhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:R_8nXSefBp0KqkQhYIlxFNWJEjdEzT93OqB-5dH_46X0IG1J2w_RJw>
 <xmx:R_8nXYi6bRp5LY-yEeG6Rz-E6POK6n6ldxl9UEk7mG1BMiMh4wHYNA>
 <xmx:R_8nXWSlrcobXtpvUxqGmgfkUPGH-XiSq0hnKR5ttu8YOgF48nWGQA>
 <xmx:R_8nXSPsTsCUllLbebsiWNu3ggDr2HT-M_8eEjbYv_ARCsXS-OFhzg>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id AC94B80060;
 Thu, 11 Jul 2019 23:32:19 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-mmc@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: mmc: Document Aspeed SD controller
Date: Fri, 12 Jul 2019 13:02:13 +0930
Message-Id: <20190712033214.24713-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190712033214.24713-1-andrew@aj.id.au>
References: <20190712033214.24713-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_203226_386363_15994721 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
In v2:

* Rename to aspeed,sdhci.yaml
* Rename sd-controller compatible
* Add `maxItems: 1` for reg properties
* Move sdhci subnode description to patternProperties
* Drop sdhci compatible requirement
* #address-cells and #size-cells are required
* Prevent additional properties
* Implement explicit ranges in example
* Remove slot property

 .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 90 +++++++++++++++++++
 1 file changed, 90 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml

diff --git a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
new file mode 100644
index 000000000000..67a691c3348c
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
@@ -0,0 +1,90 @@
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
+    enum: [ aspeed,ast2400-sd-controller, aspeed,ast2500-sd-controller ]
+  reg:
+    maxItems: 1
+    description: Common configuration registers
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
+        enum: [ aspeed,ast2400-sdhci, aspeed,ast2500-sdhci ]
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
