Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B72C2EDE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 10:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+KX+IjqXXpxZxlm66YsDHXqF609Ruf6rNesStJHfyo=; b=A1Surw744MEdsL
	z5AqrS42/1wpcfv71s19/Jo7aUv9PmfBrLMkZpNPNor0LHAC6tGK7NmFbNKMny7vsftcHhjkj7ytC
	6qE+qoXt5n1sA/ZAaYTguWVWJ4ZuWCfrXhjIN8vzeQiiTi9iEjjQv8njfOvzxI6RMmtpDeNXMpfkH
	AX6YehsGmAugMmYOW/JPI0rLrca5cHmVtBIVaYPF3qaI+6lgWItFQM804atQkqnOyGW4DbRGwqbmB
	7gU0iJne+YfiIlW8iqyGIqJ3IU0nNAJ+DeaO+jVuq5+RAin0sXWedAF+Zxcq/tEtwNlU6N34755xu
	evwMNVOgvMVC7oSfoWbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFDZ0-0000FW-61; Tue, 01 Oct 2019 08:31:18 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFDYt-0000F2-Di
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 08:31:12 +0000
Received: from [199.195.250.187] (port=57966 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iFDYo-00015B-S8; Tue, 01 Oct 2019 09:31:07 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id C4D1A82B04;
 Tue,  1 Oct 2019 08:30:57 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH 1/3] dt-bindings: add binding for RTL8211E Ethernet PHY
Date: Tue,  1 Oct 2019 16:29:10 +0800
Message-Id: <20191001082912.12905-2-icenowy@aosc.io>
In-Reply-To: <20191001082912.12905-1-icenowy@aosc.io>
References: <20191001082912.12905-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 65
X-Spam-Status: No, score=6.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_013111_458831_391F3924 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Icenowy Zheng <icenowy@aosc.xyz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.xyz>

Some RTL8211E Ethernet PHY have an issue that needs a workaround, and a
way to indicate the need of the workaround should be added.

Add the binding for a DT property that indicates this workaround.

Signed-off-by: Icenowy Zheng <icenowy@aosc.xyz>
---
 .../bindings/net/realtek,rtl8211e.yaml        | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/realtek,rtl8211e.yaml

diff --git a/Documentation/devicetree/bindings/net/realtek,rtl8211e.yaml b/Documentation/devicetree/bindings/net/realtek,rtl8211e.yaml
new file mode 100644
index 000000000000..264e93cafbec
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/realtek,rtl8211e.yaml
@@ -0,0 +1,23 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/realtek,rtl8211e.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Realtek RTL8211E Ethernet PHY
+
+properties:
+  realtek,config-magic-for-pine64:
+    description:
+      Enabling specific hacks for some broken RTL8211E chips known to be
+      used by Pine64+ boards.
+
+examples:
+  - |
+    &mdio {
+        ext_phy: ethernet-phy@0 {
+            compatible = "ethernet-phy-ieee802.3-c22";
+            reg = <0>;
+            realtek,config-magic-for-pine64;
+        };
+    };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
