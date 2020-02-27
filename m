Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA3B171468
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 10:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rw2GZrpVTdkHnitUQ0ok/Ec8DlVuwhTmRm/tPU22zaU=; b=qLcGKRl3ubW0xs
	68VKUdJ4Hq+S1Mzs0b0CBkOO4fFFph0AfAyRt5oEqkEy+nbEVy6vTmkHANSmC/gnNRhwH48qK4zMp
	OvSpr6pzlxD93/SQrhuJ2jBpDC1v30dbi0styuyqn8lJWvmGlh+Xc9rCqUFcDwJPU1Bi44e2h7S/M
	eKZpJYNrd+ZlLBpuFfAdc45Kf8vmYRthru6n3E6spKzHvm2zL5qyntGV01bsv+a9bVGmFSj50rURQ
	nsLfKb4HyX5qQSN0ksNOnwSV4FagmMqFzN8Moq6uJOIroso73nvdjFSNVilsSoXy02y27tVgstI/c
	NlTbX1u4mtbVzfXQy+lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Fqn-0006cP-TY; Thu, 27 Feb 2020 09:53:01 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Fqe-0006bc-Qy
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 09:52:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dfDOS8M/h/5R66JW8YhaCe/EtnNvHeTQ5r1lVZWQiwQ=; b=yBlaHRGsDFtSmTVYu8yFJsIllT
 ahvp4g81kEkx5qvwHCvfjV02/sm9DljMGyrxhgFlLekTrMuAN9L9dFcP/bBG5zKifRqGui6P8pHrV
 AFdDbtAMLzBwcuCObiUrGUNSfmu81fweAubNtdwMjzksu/apuz+Vs2/GfksgeK4Pbts6O4eLdJB24
 zE/m2073WPfSq9YhG5DNLzWhemLdATIxY4iVwjFw+gQevEQrF0Dq8PCrfoVO8YYDxhaT93ATK/yBa
 kaxyD/Z7awREl6rpSWvolkSCYAjBypugbInwnZjTezq6UjqmoyCny0olwEwpC0qu+0QUeBHiwObFB
 4DY4dzRQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:45374 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7FqP-0004k4-H8; Thu, 27 Feb 2020 09:52:37 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j7FqO-0003sv-Ho; Thu, 27 Feb 2020 09:52:36 +0000
In-Reply-To: <20200227095159.GJ25745@shell.armlinux.org.uk>
References: <20200227095159.GJ25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH net-next 1/3] dt-bindings: net: add dt bindings for marvell10g
 driver
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j7FqO-0003sv-Ho@rmk-PC.armlinux.org.uk>
Date: Thu, 27 Feb 2020 09:52:36 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_015252_950731_33319C33 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, netdev@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a DT bindings document for the Marvell 10G driver, which will
augment the generic ethernet PHY binding by having LED mode
configuration.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 .../devicetree/bindings/net/marvell,10g.yaml  | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/marvell,10g.yaml

diff --git a/Documentation/devicetree/bindings/net/marvell,10g.yaml b/Documentation/devicetree/bindings/net/marvell,10g.yaml
new file mode 100644
index 000000000000..da597fc5314d
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/marvell,10g.yaml
@@ -0,0 +1,31 @@
+# SPDX-License-Identifier: GPL-2.0+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/marvell,10g.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Alaska X family Ethernet PHYs
+
+maintainers:
+  - Russell King <rmk+kernel@armlinux.org.uk>
+
+allOf:
+  - $ref: ethernet-phy.yaml#
+
+properties:
+  marvell,led-mode:
+    description: |
+      An array of one to four 16-bit integers to write to the PHY LED
+      configuration registers.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint16-array
+      - minItems: 1
+        maxItems: 4
+
+examples:
+  - |
+    ethernet-phy@0 {
+        reg = <0>;
+        compatible = "ethernet-phy-ieee802.3-c45";
+        marvell,led-mode = /bits/ 16 <0x0129 0x095d 0x0855>;
+    };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
