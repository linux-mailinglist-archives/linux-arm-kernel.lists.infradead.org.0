Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 026352D056
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 22:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fBK6Kuu+sVc08h2VOPyu4x3lccG5HtFWk3A6TCC4auY=; b=uMy9jlbFj/bJXM
	2soFEAxoDYQWmYCCcHqL+cSfGe8+WsGzcQEohj25IJv5/36+NJ/sYGfeZtuBzFdGq77ruRElkCg0E
	DsFuiO6MceBVE93gdC3s+1sFubkc2Wp+KhLkKzFVB4NJcC/d9WFIdUMgi4pC7b8Jt4YTVWKoN9d96
	tpXiqx1LNjnFt2F99tAG5jniHuRTdGKGZtJbBKdtNr3jUuHLLKBinEC/XFrvFaDin4Kr2usGIuoVf
	lcHxHNL1M8IjTSuz17i5gnbIrhcfMV1BC+0fyglIQ6jXMkm5GbzHiKpbUO6PHClOC5El4SOuZCVZU
	ctjxGqUzxVUoEPPI2fSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVikV-00021a-J9; Tue, 28 May 2019 20:31:07 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVikM-0001zv-U6
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 20:31:00 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 1CFF640005;
 Tue, 28 May 2019 20:30:42 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v2 01/11] dt-bindings: rtc: Add YAML schemas for the generic
 RTC bindings
Date: Tue, 28 May 2019 22:30:31 +0200
Message-Id: <434446bc5541d7dfe5823874355c7db8c7e213fa.1559075389.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_133059_292007_6BFF3244 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The real time clocks have a bunch of generic properties that are needed in
a device tree. Add a YAML schemas for those.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/rtc/rtc.txt  | 34 +-------------
 Documentation/devicetree/bindings/rtc/rtc.yaml | 50 +++++++++++++++++++-
 2 files changed, 51 insertions(+), 33 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/rtc/rtc.yaml

diff --git a/Documentation/devicetree/bindings/rtc/rtc.txt b/Documentation/devicetree/bindings/rtc/rtc.txt
index a97fc6a9a75e..4d6f81dccc68 100644
--- a/Documentation/devicetree/bindings/rtc/rtc.txt
+++ b/Documentation/devicetree/bindings/rtc/rtc.txt
@@ -1,36 +1,4 @@
-Generic device tree bindings for Real Time Clock devices
-========================================================
-
-This document describes generic bindings which can be used to describe Real Time
-Clock devices in a device tree.
-
-Required properties
--------------------
-
-- compatible : name of RTC device following generic names recommended practice.
-
-For other required properties e.g. to describe register sets,
-clocks, etc. check the binding documentation of the specific driver.
-
-Optional properties
--------------------
-
-- start-year : if provided, the default hardware range supported by the RTC is
-               shifted so the first usable year is the specified one.
-
-The following properties may not be supported by all drivers. However, if a
-driver wants to support one of the below features, it should adapt the bindings
-below.
-- trickle-resistor-ohms :   Selected resistor for trickle charger. Should be given
-                            if trickle charger should be enabled
-- trickle-diode-disable :   Do not use internal trickle charger diode Should be
-                            given if internal trickle charger diode should be
-                            disabled
-- wakeup-source :           Enables wake up of host system on alarm
-- quartz-load-femtofarads : The capacitive load of the quartz(x-tal),
-                            expressed in femto Farad (fF).
-                            The default value shall be listed (if optional),
-                            and likewise all valid values.
+This file has been moved to rtc.yaml.
 
 Trivial RTCs
 ------------
diff --git a/Documentation/devicetree/bindings/rtc/rtc.yaml b/Documentation/devicetree/bindings/rtc/rtc.yaml
new file mode 100644
index 000000000000..ee237b2ed66a
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/rtc.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/rtc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RTC Generic Binding
+
+maintainers:
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+
+description: |
+  This document describes generic bindings which can be used to
+  describe Real Time Clock devices in a device tree.
+
+properties:
+  $nodename:
+    pattern: "^rtc(@.*|-[0-9a-f])*$"
+
+  quartz-load-femtofarads:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      The capacitive load of the quartz(x-tal), expressed in femto
+      Farad (fF). The default value shall be listed (if optional),
+      and likewise all valid values.
+
+  start-year:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      If provided, the default hardware range supported by the RTC is
+      shifted so the first usable year is the specified one.
+
+  trickle-diode-disable:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Do not use internal trickle charger diode. Should be given if
+      internal trickle charger diode should be disabled.
+
+  trickle-resistor-ohms:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Selected resistor for trickle charger. Should be given
+      if trickle charger should be enabled.
+
+  wakeup-source:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Enables wake up of host system on alarm.
+
+...

base-commit: 531b0a360899269bd99a38ba9852a8ba46852bcd
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
