Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE22CBD46
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:32:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+yi/vi4AOO1NglCCNKF5mEFAEOAQH+677IY1cYyq+A=; b=ZQKmxGikuNayzn
	tB//6Yj9ITkWOnFfwj+zYIdycVvTG+t29lXJEZGjNDUPsOlJqYu53kZyXmjgRE0qGV2hHnKB5uAkM
	dHElkzqZrtnI6DAZivyQ9tfYtdlAlhM7Da8Uh0xhkSEr7FnvquOA/Y+oeQ5mEnk00RgaFucPBzoHp
	HjsvlmLceffGR/7qj0OTTvUrfWBawYsMhWt4pprl8oUJfMDLcCvFOR7BS5fe/SfGn6TeDobhrkh2D
	9e3dBYoGN3OJDS9a5QM5Z4ESvJs8D/ZrvWmSH812T3bRQveqnHKE4TsrZ2Uhpf6hngVQJGfBTyS0v
	bjequD35BReUKbGyKzgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOdG-00025X-1U; Fri, 04 Oct 2019 14:32:34 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOYv-000528-2Z
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:28:07 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 438F4C0022;
 Fri,  4 Oct 2019 14:28:02 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 16/21] dt-bindings: marvell: Convert the SoC compatibles
 description to YAML
Date: Fri,  4 Oct 2019 16:27:33 +0200
Message-Id: <20191004142738.7370-17-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072805_459437_26604369 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the file detailing Marvell EBU compatibles to json-schema.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../bindings/arm/marvell/armada-7k-8k.txt     | 24 -----------
 .../bindings/arm/marvell/armada-7k-8k.yaml    | 40 +++++++++++++++++++
 2 files changed, 40 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
 create mode 100644 Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml

diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
deleted file mode 100644
index df98a9c82a8c..000000000000
--- a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-Marvell Armada 7K/8K Platforms Device Tree Bindings
----------------------------------------------------
-
-Boards using a SoC of the Marvell Armada 7K or 8K families must carry
-the following root node property:
-
- - compatible, with one of the following values:
-
-   - "marvell,armada7020", "marvell,armada-ap806-dual", "marvell,armada-ap806"
-      when the SoC being used is the Armada 7020
-
-   - "marvell,armada7040", "marvell,armada-ap806-quad", "marvell,armada-ap806"
-      when the SoC being used is the Armada 7040
-
-   - "marvell,armada8020", "marvell,armada-ap806-dual", "marvell,armada-ap806"
-      when the SoC being used is the Armada 8020
-
-   - "marvell,armada8040", "marvell,armada-ap806-quad", "marvell,armada-ap806"
-      when the SoC being used is the Armada 8040
-
-Example:
-
-compatible = "marvell,armada7040-db", "marvell,armada7040",
-             "marvell,armada-ap806-quad", "marvell,armada-ap806";
diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
new file mode 100644
index 000000000000..294595e00028
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/marvell/armada-7k-8k.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0+ OR X11)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/marvell/armada-7k-8k.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Armada 7K/8K Platforms Device Tree Bindings
+
+maintainers:
+  - Gregory CLEMENT <gregory.clement@bootlin.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+
+      - description: Armada 7020 SoC
+        items:
+          - const: marvell,armada7020
+          - const: marvell,armada-ap806-dual
+          - const: marvell,armada-ap806
+
+      - description: Armada 7040 SoC
+        items:
+          - const: marvell,armada7040
+          - const: marvell,armada-ap806-quad
+          - const: marvell,armada-ap806
+
+      - description: Armada 8020 SoC
+        items:
+          - const: marvell,armada8020
+          - const: marvell,armada-ap806-dual
+          - const: marvell,armada-ap806
+
+      - description: Armada 8040 SoC
+        items:
+          - const: marvell,armada8040
+          - const: marvell,armada-ap806-quad
+          - const: marvell,armada-ap806
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
