Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 908347B91B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 07:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ncSnIBuICTvSxZAXgM7uTrqTuNBqPBU0BhbWyTdKn4k=; b=Zhvn9vcilwH6rT
	b1kQDzIwCU34TsO+h4KTEX2NqTv7EEdrQR70+fsFFPMG56LJPreLOfHVFSTSwpP/T4pfW/k10tkMY
	iNKiSSd6LDKwlGdifkqV3fH9Rccan4VU1YFesCNzJrecwMUkM1NBCr1onS+EcGvye8KbZesNDNYWt
	r5xELefyBF4Sp8EvXK8GgKDAVzL0LCScnS6SCiLtZ8sgGHTmMFDtlgU4nFHJDxUitzfkCgMRmcXII
	zNOdmdaNVsFabRHGvaa8OlhdwGGQzQOQ1FKxBVev5dBDg2UY8hYqRzYXMkh5agijhtidkAiwLYn4s
	ML0uJmXMlikQneiUGAGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hshLT-0002xC-Vz; Wed, 31 Jul 2019 05:40:16 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hshLE-0002b1-Kw
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 05:40:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id B66BC2D52;
 Wed, 31 Jul 2019 01:39:56 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 31 Jul 2019 01:39:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=gzCwHI80UKMbA
 e03aKRbEI+0U6moZg+RRW+kG2jIiTc=; b=TIiZbS4zZNCx0TJkxaouR2jrPaQg0
 aSaWMyz8IOhi8gEMOjKM7jtNvn/SCqFNxCVIl21hNPtl/vcN9aNADcdUpdi96b6K
 cClhaUiOoqI4aIO+5VKV7nsudyfHBeE0rq0kymesRbbvjvUUoxffdfJzZ+8vmsrE
 zQbbKRcPNLaf8odDqdRs3u4VcOf/yVZlDq+wSc/wi+MoJnKKumBAyJZEmki/CO/f
 i3Ne40g7mblcmiKRdOkt7p1zRBNjIXDqT2ONhVRKxL6WzRwoHdafA1uXbC9tolvI
 IKSZS3f/K0sD4PALzGA4sg1wuUqxHU3UpefvuJUG7P3TFS/GTiW9lcEIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=gzCwHI80UKMbAe03aKRbEI+0U6moZg+RRW+kG2jIiTc=; b=SzvYdEQr
 DdO9hzcugcpWDGtKehyAZKfsfc6wmKnVhyiG07U+EO22Oz9upZJwTivWhnpE6pO3
 fGvmHMFMU7Ybbc3vtjTxbD2Ayl3ZHeSFhbtzHOBdZJsi9x616z045P9oMHsUU4Vh
 80ryEKMvgxo9h/e6amrd0IgWgZ74GyoB+XAfDFkMWcXFZnNWTF9HzSySxX/OB+F3
 0fHXuQTJislvqOQHXeDbvir2ve1GwZAghw1j2vfwhQ2IVpkfyEulNyccdO3UT4qU
 2U8X+44MrXOg6KTaDqBJsFAqhePUcLMSc6S5k0qGlWGEHt6+byI/HniUuVFysmUM
 SBsjlAV0DQqs3Q==
X-ME-Sender: <xms:rClBXZuvRNfpG6M1luPTw8vLz11Zm9kcj8o1E27WzLawTupVpn3mlg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrleeggdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhgnecukfhppe
 dvtddvrdekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgif
 segrjhdrihgurdgruhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:rClBXQZQwtIvoaDmdF8gUzY4Ti5BcQ21j-z1dG6zLIFDtF_Z0pVjZA>
 <xmx:rClBXUX07zP0L5TMNASHIyENDCpZtliRMy5miC0Pf81boQNj8sBjvA>
 <xmx:rClBXc7q1FUua0ZvSS1gKnkC18NVPOAyKfa0n467ics4IzFa9l5TcQ>
 <xmx:rClBXe0BSoOSNc-SAi16YnYhmIXh6jpd2xaLsewMUtheIArCuXtasQ>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 915FE80060;
 Wed, 31 Jul 2019 01:39:52 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v2 1/4] dt-bindings: net: Add aspeed,
 ast2600-mdio binding
Date: Wed, 31 Jul 2019 15:09:56 +0930
Message-Id: <20190731053959.16293-2-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190731053959.16293-1-andrew@aj.id.au>
References: <20190731053959.16293-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_224000_831053_11543E8D 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
v2:
* aspeed: Utilise mdio.yaml
* aspeed: Drop status from example
---
 .../bindings/net/aspeed,ast2600-mdio.yaml     | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml

diff --git a/Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml b/Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml
new file mode 100644
index 000000000000..71808e78a495
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/aspeed,ast2600-mdio.yaml
@@ -0,0 +1,45 @@
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
+allOf:
+  - $ref: "mdio.yaml#"
+
+properties:
+  compatible:
+    const: aspeed,ast2600-mdio
+  reg:
+    maxItems: 1
+    description: The register range of the MDIO controller instance
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
