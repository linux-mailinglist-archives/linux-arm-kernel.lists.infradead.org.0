Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9723421AD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 17:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dmsyzW8EadlXGCPeHza5YidBhWuRmlnGsBcGKHOysX8=; b=m5V42pDbsasuM6
	B/ofyekrQmr3d5O7+TEoP4lT9M7AJnRYwOiEVvWJfmW5Qz/C3qZsJMNewJ+0JWlk31aCGML5LET22
	599c7FmWBgVzelVz7v5+AdQjq/Mo23DzA9hJYCklAhtkRLL5XbkciLeEuU4qKOrkCq7uiC0iTnNy2
	BmEepceZ/CgUmrLjZoFgysM49xHI1DSTn8yksBBHcDnFNAmABV7JuHpfTjXysyiojnO/VQ7EtWu2G
	g1J54JtpF3f0Frleg594ExnU2sShplYtNixDOp+tDzM3Ly2Lgjei2AorKjFdvIXDiwM9CXL4c8JbF
	lW8gHcQ4Fd7hRsie8QHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRezs-00037W-VU; Fri, 17 May 2019 15:42:12 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRezl-000373-3h; Fri, 17 May 2019 15:42:06 +0000
Received: by mail-ot1-f65.google.com with SMTP id r7so7133529otn.6;
 Fri, 17 May 2019 08:42:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M14rlFzwcUBHjfiLjquFIIr+CTAHX9KTzEGha2QcIb4=;
 b=fO4sR+TnDXEkXatyiPvTn8SBwi3P0KiCiC728/1iuP1+olO0coR7Ngy/w6MrjVMi4X
 7blk0as//JA5ozMryUdKsxcXvbRRxivrVsk108SPnEUN6wZKUkd94lkmHA7PqNZw5d0s
 JWoFYn10aLmA56Mn8EO4zjCcBQ0POtWe2xI9X7flxL+CAtL3LO3h+9VnynG+1QPnph+n
 Ibhk/d2O6XguCe9zPQhG5dt9AvRR9nW4tFJLFjq6L40hy5PPdOv01Ygz/cWQsUmczBAj
 kNZQ1QQej+BF8Zur/RnVpNYlXsoBs9OnZsnY8jY7xe8Qxk7EZHuCkXSZZdCNsP5oro/V
 kMfQ==
X-Gm-Message-State: APjAAAWKYM/gjk29/bYKcnsIyonh1kZN0BI5XAIrLbbgNhXO2OYZEDSa
 XoepbC5el05gWJlJF3Qz/Q==
X-Google-Smtp-Source: APXvYqw0Xw5KM/Ug+L3eQ59evU0HzCljrxLHoWvrm2B6Bua1+oOoEbMfCxmoUgUa8UTB+GUNxkAMjw==
X-Received: by 2002:a05:6830:208a:: with SMTP id
 y10mr8971186otq.293.1558107724092; 
 Fri, 17 May 2019 08:42:04 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id x21sm2912108otk.4.2019.05.17.08.42.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 17 May 2019 08:42:03 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3] dt-bindings: arm: Convert MediaTek board/soc bindings to
 json-schema
Date: Fri, 17 May 2019 10:42:02 -0500
Message-Id: <20190517154202.24594-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_084205_155772_EF141B32 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert MediaTek SoC bindings to DT schema format using json-schema.

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
v3:
 - Rebase to Linus' master

 .../devicetree/bindings/arm/mediatek.txt      | 89 ------------------
 .../devicetree/bindings/arm/mediatek.yaml     | 91 +++++++++++++++++++
 2 files changed, 91 insertions(+), 89 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/mediatek.txt
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek.yaml

diff --git a/Documentation/devicetree/bindings/arm/mediatek.txt b/Documentation/devicetree/bindings/arm/mediatek.txt
deleted file mode 100644
index 56ac7896d6d8..000000000000
--- a/Documentation/devicetree/bindings/arm/mediatek.txt
+++ /dev/null
@@ -1,89 +0,0 @@
-MediaTek SoC based Platforms Device Tree Bindings
-
-Boards with a MediaTek SoC shall have the following property:
-
-Required root node property:
-
-compatible: Must contain one of
-   "mediatek,mt2701"
-   "mediatek,mt2712"
-   "mediatek,mt6580"
-   "mediatek,mt6589"
-   "mediatek,mt6592"
-   "mediatek,mt6755"
-   "mediatek,mt6765"
-   "mediatek,mt6795"
-   "mediatek,mt6797"
-   "mediatek,mt7622"
-   "mediatek,mt7623"
-   "mediatek,mt7629"
-   "mediatek,mt8127"
-   "mediatek,mt8135"
-   "mediatek,mt8173"
-   "mediatek,mt8183"
-
-
-Supported boards:
-
-- Evaluation board for MT2701:
-    Required root node properties:
-      - compatible = "mediatek,mt2701-evb", "mediatek,mt2701";
-- Evaluation board for MT2712:
-    Required root node properties:
-      - compatible = "mediatek,mt2712-evb", "mediatek,mt2712";
-- Evaluation board for MT6580:
-    Required root node properties:
-      - compatible = "mediatek,mt6580-evbp1", "mediatek,mt6580";
-- bq Aquaris5 smart phone:
-    Required root node properties:
-      - compatible = "mundoreader,bq-aquaris5", "mediatek,mt6589";
-- Evaluation board for MT6592:
-    Required root node properties:
-      - compatible = "mediatek,mt6592-evb", "mediatek,mt6592";
-- Evaluation phone for MT6755(Helio P10):
-    Required root node properties:
-      - compatible = "mediatek,mt6755-evb", "mediatek,mt6755";
-- Evaluation board for MT6765(Helio P22):
-    Required root node properties:
-      - compatible = "mediatek,mt6765-evb", "mediatek,mt6765";
-- Evaluation board for MT6795(Helio X10):
-    Required root node properties:
-      - compatible = "mediatek,mt6795-evb", "mediatek,mt6795";
-- Evaluation board for MT6797(Helio X20):
-    Required root node properties:
-      - compatible = "mediatek,mt6797-evb", "mediatek,mt6797";
-- Mediatek X20 Development Board:
-    Required root node properties:
-      - compatible = "archermind,mt6797-x20-dev", "mediatek,mt6797";
-- Reference board variant 1 for MT7622:
-    Required root node properties:
-      - compatible = "mediatek,mt7622-rfb1", "mediatek,mt7622";
-- Bananapi BPI-R64 for MT7622:
-    Required root node properties:
-      - compatible = "bananapi,bpi-r64", "mediatek,mt7622";
-- Reference board for MT7623a with eMMC:
-    Required root node properties:
-      - compatible = "mediatek,mt7623a-rfb-emmc", "mediatek,mt7623";
-- Reference board for MT7623a with NAND:
-    Required root node properties:
-      - compatible = "mediatek,mt7623a-rfb-nand", "mediatek,mt7623";
-- Reference board for MT7623n with eMMC:
-    Required root node properties:
-      - compatible = "mediatek,mt7623n-rfb-emmc", "mediatek,mt7623";
-- Bananapi BPI-R2 board:
-      - compatible = "bananapi,bpi-r2", "mediatek,mt7623";
-- Reference board for MT7629:
-    Required root node properties:
-      - compatible = "mediatek,mt7629-rfb", "mediatek,mt7629";
-- MTK mt8127 tablet moose EVB:
-    Required root node properties:
-      - compatible = "mediatek,mt8127-moose", "mediatek,mt8127";
-- MTK mt8135 tablet EVB:
-    Required root node properties:
-      - compatible = "mediatek,mt8135-evbp1", "mediatek,mt8135";
-- MTK mt8173 tablet EVB:
-    Required root node properties:
-      - compatible = "mediatek,mt8173-evb", "mediatek,mt8173";
-- Evaluation board for MT8183:
-    Required root node properties:
-      - compatible = "mediatek,mt8183-evb", "mediatek,mt8183";
diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
new file mode 100644
index 000000000000..a4ad2eb926f9
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/mediatek.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek SoC based Platforms Device Tree Bindings
+
+maintainers:
+  - Sean Wang <sean.wang@mediatek.com>
+  - Matthias Brugger <matthias.bgg@gmail.com>
+description: |
+  Boards with a MediaTek SoC shall have the following properties.
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - mediatek,mt2701-evb
+          - const: mediatek,mt2701
+
+      - items:
+          - enum:
+              - mediatek,mt2712-evb
+          - const: mediatek,mt2712
+      - items:
+          - enum:
+              - mediatek,mt6580-evbp1
+          - const: mediatek,mt6580
+      - items:
+          - enum:
+              - mundoreader,bq-aquaris5
+          - const: mediatek,mt6589
+      - items:
+          - enum:
+              - mediatek,mt6592-evb
+          - const: mediatek,mt6592
+      - items:
+          - enum:
+              - mediatek,mt6755-evb
+          - const: mediatek,mt6755
+      - items:
+          - enum:
+              - mediatek,mt6765-evb
+          - const: mediatek,mt6765
+      - items:
+          - enum:
+              - mediatek,mt6795-evb
+          - const: mediatek,mt6795
+      - items:
+          - enum:
+              - archermind,mt6797-x20-dev
+              - mediatek,mt6797-evb
+          - const: mediatek,mt6797
+      - items:
+          - enum:
+              - bananapi,bpi-r64
+              - mediatek,mt7622-rfb1
+          - const: mediatek,mt7622
+      - items:
+          - enum:
+              - mediatek,mt7623a-rfb-emmc
+              - mediatek,mt7623a-rfb-nand
+              - mediatek,mt7623n-rfb-emmc
+              - bananapi,bpi-r2
+          - const: mediatek,mt7623
+
+      - items:
+          - enum:
+              - mediatek,mt7629-rfb
+          - const: mediatek,mt7629
+      - items:
+          - enum:
+              - mediatek,mt8127-moose
+          - const: mediatek,mt8127
+      - items:
+          - enum:
+              - mediatek,mt8135-evbp1
+          - const: mediatek,mt8135
+      - items:
+          - enum:
+              - mediatek,mt8173-evb
+          - const: mediatek,mt8173
+      - items:
+          - enum:
+              - mediatek,mt8183-evb
+          - const: mediatek,mt8183
+...
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
