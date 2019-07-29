Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA18E7843B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 06:40:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8Aq3m5F6UwxCLIU/0egPVWOGVVmHSg/miWXMbzLlTk=; b=Vhvtt03ZL9fXfO
	FHY0osVmQWHhpW/sPGjixYodHKgm9qoRgOOnrK76x6jPuMd7qxiMK1PIC+nSv4oNpvUrFmgv+0wJh
	1nzwnkaK4wh46/j+hGklkofbkS9ewi5LUlxqncHKEZNFzGvTRichfRy3I0nueR7KJI/C8wXsOS4AN
	+oA9SD5HCQtSloyNDWqnpFFUv7I0rdRJ80rD4Lzu/llRoY1mkwcvtjgbDDQpOqXx0x5EV/WGDuBuS
	R8UHpS3BIrrFRT6FeLAzFfqnUh3uoBe6jgC1GyaK84RLdbyr1+yL6mJQwH4wLlTQP6DWCnVLA/OVj
	vxyQjZZfMkwfUlA4OJUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrxSB-0004VT-C1; Mon, 29 Jul 2019 04:40:07 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrxRd-0004M6-0U
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 04:39:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id E3BA31CAE;
 Mon, 29 Jul 2019 00:39:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 29 Jul 2019 00:39:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=G6hgEco4soyYy
 jXTRVgtKMFuWO/Dyh09lmRyo+FCylI=; b=NySZzJ1IIzpYTm2JJ93bX5Y/jGlyH
 GzR7WFf0SH5xEEdWQWgkUll+lQWJgivGR2KRTzuwlg7IBql3bFRbV9lbxM1RSGf0
 18aF9UAwcASKHHa5CIgjmPbmk05Zl1uZlVf1zGzvGo7BnSBYwRaSoaOPK5Qqc6xL
 028HADhPPFWHhn+spYs6boGL5Tw9mPgRuqNWFFkSc7X4IELTPIT85fmQthJGw8iz
 xpqoeJJulorNUsP2lRRDaXChQyRMqVnVGtaifGejXgbvVFJQqdf4OjVry4ENGg6r
 WsQW5amz9bUvIXir+uUX/ovQ4HOWJ5fwQ5BnVBkplAozOzShXFbMfRHUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=G6hgEco4soyYyjXTRVgtKMFuWO/Dyh09lmRyo+FCylI=; b=GMRpQ/in
 RgOA/DW0V7rJoVVnfIFbgsRMnskWSYLDSwf1Zb8/B/gfLGfnbxqa4flTKm8QnR7A
 M1T3iCLPQ/VS43Us2OpCKHoEvj30op26kWYoQ53s3+kd5//ehLc1XtOInXn9quJP
 QsINYH6pkF2CCmLAKM7m44GStn8vbHfWLffL32K4H77nMa+Tly6Vz0pjrqWP0f65
 JDttAawZ2I1M5ELpDQvc/lwck7lr8eeT0Klap2nqj8ByztfMSP4XSKx1XJVQdoHy
 MyhluNnYaQXnuXLlLgDMLV8FSjXle/xxwHXmtfWoMPtVLuKuQyXEmmtgL5KpfQhm
 73u6e0NTo75OPA==
X-ME-Sender: <xms:f3g-XbGAJ66EgNly2M4negyUNqSgPde7mTy_02gh9X1DYDpyZMa12g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrledtgdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecukfhppe
 dvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgif
 segrjhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:f3g-Xdsur2Dms6tlAFVWCcIdqyImbvqllCXsgqT6xFqGV_IbjGzpCw>
 <xmx:f3g-XZm3t30zCqtHSGO5m6jMY9vfBf_AV0vfXJ9wY4OTyYlni7AmVw>
 <xmx:f3g-XeMzeanFH3PvXTrUqerr2n1uuhhpPAoGuKvAsCFo5qTo4wE7ww>
 <xmx:gHg-XVjSEb67ucZAdm4zi7fb7gQ0uPHoGdh4mkooh-cmOEP7JSXFEw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id E282E8005A;
 Mon, 29 Jul 2019 00:39:23 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: netdev@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: net: Add aspeed,ast2600-mdio binding
Date: Mon, 29 Jul 2019 14:09:23 +0930
Message-Id: <20190729043926.32679-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729043926.32679-1-andrew@aj.id.au>
References: <20190729043926.32679-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_213933_266508_EB96F52C 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AST2600 splits out the MDIO bus controller from the MAC into its own
IP block and rearranges the register layout. Add a new binding to
describe the new hardware.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 .../bindings/net/aspeed,ast2600-mdio.yaml     | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml

diff --git a/Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml b/Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml
new file mode 100644
index 000000000000..fa86f6438473
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/aspeed,ast2600-mdio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ASPEED AST2600 MDIO Controller
+
+maintainers:
+  - Andrew Jeffery <andrew@aj.id.au>
+
+description: |+
+  The ASPEED AST2600 MDIO controller is the third iteration of ASPEED's MDIO
+  bus register interface, this time also separating out the controller from the
+  MAC.
+
+properties:
+  compatible:
+    const: aspeed,ast2600-mdio
+  reg:
+    maxItems: 1
+    description: The register range of the MDIO controller instance
+  "#address-cells":
+    const: 1
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^ethernet-phy@[a-f0-9]$":
+    properties:
+      reg:
+        description:
+          The MDIO bus index of the PHY
+      compatible:
+        enum:
+          - ethernet-phy-ieee802.3-c22
+          - ethernet-phy-ieee802.3-c45
+    required:
+      - reg
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+
+examples:
+  - |
+    mdio0: mdio@1e650000 {
+            compatible = "aspeed,ast2600-mdio";
+            reg = <0x1e650000 0x8>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            status = "okay";
+
+            ethphy0: ethernet-phy@0 {
+                    compatible = "ethernet-phy-ieee802.3-c22";
+                    reg = <0>;
+            };
+    };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
