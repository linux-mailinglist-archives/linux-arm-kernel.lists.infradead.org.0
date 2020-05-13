Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAC21D1385
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uv5tUvZ77WEbS9o0Xb50CmraUmO38ouIugkfxvxvGrk=; b=muAR2vv6mLAYdC
	x+zKf9khWyKspLINdoVBlsAxENA7+lfkSv2WsHOOz28XTHDNnfozsOp2EnEtvFfBfSC9VydrtXZO0
	UMy7O06J8JSMYxOwT6H8hRyCK5UsDiN1xqBurugRt78m0P9DXXBBuMYYrMKlKZyJnGwWLoEwTBbHC
	NGK2qh0UPObG5wkOFdB/K7Yk4Wt8fMUkbGJ55oZR99xuEVHsQjl+vpy7sDD6olLzCSv6k82KZsI/W
	w/8IRB/6VKIN7b4lUJGiIxGNRIQEgXDIXzacH/ikQrz/gBz7AHk+1Pb22kiMx4yl1Gh4TAmcJx/bJ
	TOGZJziLrCebA7mU6lWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqxM-0002iA-Se; Wed, 13 May 2020 12:57:52 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqwJ-00022x-Ud
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:56:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589374607; x=1620910607;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=poBPrhT3w6QbThTNX7WMhvl6ITRtWZafa6qFqSWWJSM=;
 b=IU4HbcgRMZG62kCe2iMT51BZ4gViXsELRZ/N6aQNtHzkrzBcpsS+6Ese
 oDyQ4oxZ6pRWvUBKlg/mf46ox2NwMJ5xotqmIvo3sPyH3Vzyks01POxgL
 FMLdRNkIQagDDNzKp/sRB5EhjAIFFyW6B7p1+uLnoiqQNtckiWfspRtEX
 eUGwn2U62ctQTz36yqpGmqujVNA7EfQjPk/4+xuwFDA8c40ZViZ/hXXGC
 CYPfWS8FaGHQAvXaB4VV3J+LFFQfAhWwEA1acqyNGgCAH8mpHs55/75XK
 0ctAYVGKZJsFdRSxXYBDBrBiEaghGtH9PXbs7SxLunqjeI59NXZoSq5oN Q==;
IronPort-SDR: xxJdrEOxoKFUoLTD14Tc43OvYgZ/knJ6/cbfPW9+CoTHjCaaQ1u/jmYup6A6CbZQhwERynlnod
 rFRLF3M/WkpD1TVTYVAN1fmXQV9PmBKBpdq21AnRDX3Htw4lER5Hn6WV0fZ3Q+Z5l/HVaEko8p
 DE3WRmiUUiLPbP3U1bNAyP2RpFCyQlU7/Vwwl2No0MeKdcrk8QFbonZJpZzCpkVPeGL0+z01xE
 s/CVAdnli96L3/nH5bHtKt61tiSbkEh+u8NbFYaWRLA9pYgSkO3cTnj7eVdZV4Lvewn6indXai
 sFM=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="76494614"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 05:56:45 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 05:56:48 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 05:56:42 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 05/14] dt-bindings: arm: sparx5: Add documentation for
 Microchip Sparx5 SoC
Date: Wed, 13 May 2020 14:55:23 +0200
Message-ID: <20200513125532.24585-6-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513125532.24585-1-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055648_094155_38D7AF53 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the main Sparx5 SoC DT documentation file, with information
abut the supported board types.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 .../bindings/arm/microchip,sparx5.yaml        | 87 +++++++++++++++++++
 1 file changed, 87 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/microchip,sparx5.yaml

diff --git a/Documentation/devicetree/bindings/arm/microchip,sparx5.yaml b/Documentation/devicetree/bindings/arm/microchip,sparx5.yaml
new file mode 100644
index 0000000000000..83b36d1217988
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/microchip,sparx5.yaml
@@ -0,0 +1,87 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/microchip,sparx5.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip Sparx5 Boards Device Tree Bindings
+
+maintainers:
+  - Lars Povlsen <lars.povlsen@microchip.com>
+
+description: |+
+   The Microchip Sparx5 SoC is a ARMv8-based used in a family of
+   gigabit TSN-capable gigabit switches.
+
+   The SparX-5 Ethernet switch family provides a rich set of switching
+   features such as advanced TCAM-based VLAN and QoS processing
+   enabling delivery of differentiated services, and security through
+   TCAM-based frame processing using versatile content aware processor
+   (VCAP)
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: The Sparx5 pcb125 board is a modular board,
+          which has both spi-nor and eMMC storage. The modular design
+          allows for connection of different network ports.
+        items:
+          - const: microchip,sparx5-pcb125
+          - const: microchip,sparx5
+
+      - description: The Sparx5 pcb134 is a pizzabox form factor
+          gigabit switch with 20 SFP ports. It features spi-nor and
+          either spi-nand or eMMC storage (mount option).
+        items:
+          - const: microchip,sparx5-pcb134
+          - const: microchip,sparx5
+
+      - description: The Sparx5 pcb135 is a pizzabox form factor
+          gigabit switch with 48+4 Cu ports. It features spi-nor and
+          either spi-nand or eMMC storage (mount option).
+        items:
+          - const: microchip,sparx5-pcb135
+          - const: microchip,sparx5
+
+  axi@600000000:
+    type: object
+    description: the root node in the Sparx5 platforms must contain
+      an axi bus child node. They are always at physical address
+      0x600000000 in all the Sparx5 variants.
+    properties:
+      compatible:
+        items:
+          - const: simple-bus
+      reg:
+        maxItems: 1
+
+    required:
+      - compatible
+      - reg
+
+patternProperties:
+  "^syscon@[0-9a-f]+$":
+    description: All Sparx5 boards must provide a system controller,
+      typically under the axi bus node. It contain reset registers and
+      other system control.
+    type: object
+    properties:
+      compatible:
+        items:
+          - const: microchip,sparx5-cpu-syscon
+          - const: syscon
+      reg:
+        maxItems: 1
+
+    required:
+      - compatible
+      - reg
+
+required:
+  - compatible
+  - axi@600000000
+  - syscon@600000000
+
+...
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
