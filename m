Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF34163DCB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:37:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NVaGyreo5OK5J0VXn853+AMydPp6dlw4Xe6BuBI7/NY=; b=Agc+Y7fMn5qF7U
	gXZ3udf5XhryiJuX91LTcqb6yEKco4qP4PyP1YF2/ykr9/v+MqvjHB1hN/rWEp4BqDm6ZDQFM9CiZ
	KNU8w+CGu31V5ZgO0/tw4lPxk6z/SOvlPLygs28qT2n6+ZyOp7f9IU/hqXnm9T4z5Nk8N+Oyv6Cjk
	KVnMXdF9XQRzVlej6O+4WGxDPVezg5cLbm8aTt+VJeo1TqDu3vDkarbD99EgDkQrgNQVGlDHdnlcu
	Q03Fo7Zh6VVDXNCopSaZ7OpjC6GxEPb+7fUyM3X2jsoKsCWpktcyqMh+1I6SPEgwgk4ovp0qu2yvr
	RdDIA2yHGw1tcIWEjtig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Jue-0002Dl-71; Wed, 19 Feb 2020 07:36:52 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Jry-0007Qe-KL
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:34:09 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id AEC8BDFFF2;
 Wed, 19 Feb 2020 07:34:20 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id vLXummS_giJV; Wed, 19 Feb 2020 07:34:14 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 9E79BE0075;
 Wed, 19 Feb 2020 07:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 4kW7bA8pu7_1; Wed, 19 Feb 2020 07:34:14 +0000 (UTC)
Received: from furthur.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id BE0DBE005C;
 Wed, 19 Feb 2020 07:34:13 +0000 (UTC)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 03/10] dt-bindings: clock: Convert marvell,
 mmp2-clock to json-schema
Date: Wed, 19 Feb 2020 08:33:46 +0100
Message-Id: <20200219073353.184336-4-lkundrak@v3.sk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219073353.184336-1-lkundrak@v3.sk>
References: <20200219073353.184336-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233406_993759_613AD956 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the fixed-factor-clock binding to DT schema format using
json-schema.

While at that, fix a couple of small errors: make the file base name
match the compatible string, add an example and document the reg-names
property.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 .../bindings/clock/marvell,mmp2-clock.yaml    | 62 +++++++++++++++++++
 .../bindings/clock/marvell,mmp2.txt           | 21 -------
 2 files changed, 62 insertions(+), 21 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/marvell,mmp2-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/marvell,mmp2.txt

diff --git a/Documentation/devicetree/bindings/clock/marvell,mmp2-clock.yaml b/Documentation/devicetree/bindings/clock/marvell,mmp2-clock.yaml
new file mode 100644
index 0000000000000..c5fc2ad0236dd
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/marvell,mmp2-clock.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/marvell,mmp2-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell MMP2 Clock Controller
+
+maintainers:
+  - Lubomir Rintel <lkundrak@v3.sk>
+
+description: |
+  The MMP2 clock subsystem generates and supplies clock to various
+  controllers within the MMP2 SoC.
+
+  Each clock is assigned an identifier and client nodes use this identifier
+  to specify the clock which they consume.
+
+  All these identifiers could be found in <dt-bindings/clock/marvell,mmp2.h>.
+
+properties:
+  compatible:
+    const: marvell,mmp2-clock # controller compatible with MMP2 SoC
+
+  reg:
+    items:
+      - description: MPMU register region
+      - description: APMU register region
+      - description: APBC register region
+
+  reg-names:
+    items:
+      - const: mpmu
+      - const: apmu
+      - const: apbc
+
+  '#clock-cells':
+    const: 1
+
+  '#reset-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - '#clock-cells'
+  - '#reset-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    clock-controller@d4050000 {
+      compatible = "marvell,mmp2-clock";
+      reg = <0xd4050000 0x1000>,
+            <0xd4282800 0x400>,
+            <0xd4015000 0x1000>;
+      reg-names = "mpmu", "apmu", "apbc";
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+    };
diff --git a/Documentation/devicetree/bindings/clock/marvell,mmp2.txt b/Documentation/devicetree/bindings/clock/marvell,mmp2.txt
deleted file mode 100644
index 23b52dc02266a..0000000000000
--- a/Documentation/devicetree/bindings/clock/marvell,mmp2.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-* Marvell MMP2 Clock Controller
-
-The MMP2 clock subsystem generates and supplies clock to various
-controllers within the MMP2 SoC.
-
-Required Properties:
-
-- compatible: should be one of the following.
-  - "marvell,mmp2-clock" - controller compatible with MMP2 SoC.
-
-- reg: physical base address of the clock subsystem and length of memory mapped
-  region. There are 3 places in SOC has clock control logic:
-  "mpmu", "apmu", "apbc". So three reg spaces need to be defined.
-
-- #clock-cells: should be 1.
-- #reset-cells: should be 1.
-
-Each clock is assigned an identifier and client nodes use this identifier
-to specify the clock which they consume.
-
-All these identifiers could be found in <dt-bindings/clock/marvell,mmp2.h>.
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
