Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7744C1E9E1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 08:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fapyVE7GnVubHJmBi9RxbbdDKucdc0JseYLXYE/9B+k=; b=D06YuX7+Di4BrUhkJLYTMg4mzp
	ABODWAiIuQybTpZ+34qZlNFZ23ZXEH6DULrKK/mhV5NNymheGVI50l3WOwwxcSE4Zkx9CdHFv2VUy
	DWXR0kPDVsiyl8p8ESKz9HdvfpS7+DHjoTMfu6PR8cemCs6ruGRJ52eQMUXCbcWHNmnJjYMMwFAsw
	oALFLqLqMivxg6txI+J5CXNTyTeu18th2CzIQwhuryQyKXrl4Ip+l6BZIOUpGSGSy4ooIZ1kKhe6o
	QpT9sNpVEeReVesXGldY1i8d8fkoOFBOCatBwiPx0mls4vbYBuE3eJN2SL1CxoIgtd/ta4lhOhbG+
	o82bSRCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfdtB-0002iS-73; Mon, 01 Jun 2020 06:25:37 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfdr5-0007Rz-D7; Mon, 01 Jun 2020 06:23:31 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CB2BB20047B;
 Mon,  1 Jun 2020 08:23:25 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 03B38200480;
 Mon,  1 Jun 2020 08:23:20 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 0C01440323;
 Mon,  1 Jun 2020 14:23:12 +0800 (SGT)
From: sandor.yu@nxp.com
To: a.hajda@samsung.com, narmstrong@baylibre.com,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@siol.net, heiko@sntech.de, hjc@rock-chips.com,
 Sandor.yu@nxp.com, dkos@cadence.com, dri-devel@lists.freedesktop.org
Subject: [PATCH 7/7] dt-bindings: display: Document Cadence MHDP HDMI/DP
 bindings
Date: Mon,  1 Jun 2020 14:17:37 +0800
Message-Id: <9fa979f1099f7c02fd746f25002d8a652253d70f.1590982881.git.Sandor.yu@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1590982881.git.Sandor.yu@nxp.com>
References: <cover.1590982881.git.Sandor.yu@nxp.com>
In-Reply-To: <cover.1590982881.git.Sandor.yu@nxp.com>
References: <cover.1590982881.git.Sandor.yu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_232327_756932_B34D4533 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sandor Yu <Sandor.yu@nxp.com>

Document the bindings used for the Cadence MHDP HDMI/DP bridge.

Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
---
 .../bindings/display/bridge/cdns,mhdp.yaml    | 46 +++++++++++++++
 .../devicetree/bindings/display/imx/mhdp.yaml | 59 +++++++++++++++++++
 2 files changed, 105 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml
 create mode 100644 Documentation/devicetree/bindings/display/imx/mhdp.yaml

diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml
new file mode 100644
index 000000000000..aa23feba744a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause))
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence MHDP TX Encoder
+
+maintainers:
+  - Sandor Yu <Sandoryu@nxp.com>
+
+description: |
+  Cadence MHDP Controller supports one or more of the protocols,
+  such as HDMI and DisplayPort.
+  Each protocol requires a different FW binaries.
+
+  This document defines device tree properties for the Cadence MHDP Encoder
+  (CDNS MHDP TX). It doesn't constitue a device tree binding
+  specification by itself but is meant to be referenced by platform-specific
+  device tree bindings.
+
+  When referenced from platform device tree bindings the properties defined in
+  this document are defined as follows. The platform device tree bindings are
+  responsible for defining whether each property is required or optional.
+
+properties:
+  reg:
+    maxItems: 1
+    description: Memory mapped base address and length of the MHDP TX registers.
+
+  interrupts:
+    maxItems: 2
+
+  interrupt-names:
+    - const: plug_in
+      description: Hotplug detect interrupter for cable plugin event.
+    - const: plug_out
+      description: Hotplug detect interrupter for cable plugout event.
+
+  port:
+    type: object
+    description: |
+      The connectivity of the MHDP TX with the rest of the system is
+      expressed in using ports as specified in the device graph bindings defined
+      in Documentation/devicetree/bindings/graph.txt. The numbering of the ports
+      is platform-specific.
diff --git a/Documentation/devicetree/bindings/display/imx/mhdp.yaml b/Documentation/devicetree/bindings/display/imx/mhdp.yaml
new file mode 100644
index 000000000000..17850cfd1cb1
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/imx/mhdp.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/bridge/mhdp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence MHDP Encoder
+
+maintainers:
+  - Sandor Yu <Sandoryu@nxp.com>
+
+description: |
+  The MHDP transmitter is a Cadence HD Display TX controller IP
+  with a companion PHY IP.
+  The MHDP supports one or more of the protocols,
+  such as HDMI(1.4 & 2.0), DisplayPort(1.2).
+  switching between the two modes (HDMI and DisplayPort)
+  requires reloading the appropriate FW
+
+  These DT bindings follow the Cadence MHDP TX bindings defined in
+  Documentation/devicetree/bindings/display/bridge/cdns,mhdp.yaml with the
+  following device-specific properties.
+
+Properties:
+  compatible:
+    enum:
+      - nxp,imx8mq-cdns-hdmi
+      - nxp,imx8mq-cdns-dp
+
+  reg: See cdns,mhdp.yaml.
+
+  interrupts: See cdns,mhdp.yaml.
+
+  interrupt-names: See cdns,mhdp.yaml.
+
+  ports: See cdns,mhdp.yaml.
+
+Required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-names
+  - ports
+
+Example:
+  - |
+    mhdp: mhdp@32c00000 {
+      compatible = "nxp,imx8mq-cdns-hdmi";
+      reg = <0x32c00000 0x100000>;
+      interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
+                   <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+      interrupt-names = "plug_in", "plug_out";
+
+      ports {
+        mhdp_in: endpoint {
+          remote-endpoint = <&dcss_out>;
+        };
+      };
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
