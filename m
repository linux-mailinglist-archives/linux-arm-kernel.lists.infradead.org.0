Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B5317270F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:26:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7MGJ7VHZ503ir6k6PYv5CCpN1bxBp+1c/vpoILnK/dE=; b=ZlKja3pRQnrffrlifL5ZtRzHyQ
	e1soY+GWqR/xyC3Z/pGWVc9X8EJtrqa8s9F3x21+pIf3YcKdXZ9wnrH61nb8co0oY/pjXdQvc3xZ/
	TBGGP6lalqScyZZFXV1+Yc71zIh7+UFFT2searVV/Obt8GFeMfkop4ylL307Y13tmoXq4MA06ogh/
	c5A2vmb8J3Yr3ov8yZDG6d64HEZ/jWrbm2sR1RTmHU/Offw5D2JQq5uu1/e0q1bHozXHPx2bKg/sB
	qBKJsuIcWBWUAnJqsvCJS5f03bTy7wsa4uPOAYx2CXiRNjxK9xC99JibeeeuRORZ7gMmPJ1YeELHh
	lns2vlsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NrK-00032M-Ud; Thu, 27 Feb 2020 18:26:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Nnv-0007AJ-QA
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:22:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7828C30E;
 Thu, 27 Feb 2020 10:22:35 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CAC2A3F73B;
 Thu, 27 Feb 2020 10:22:33 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 08/13] dt-bindings: phy: Convert Calxeda ComboPHY binding
 to json-schema
Date: Thu, 27 Feb 2020 18:22:05 +0000
Message-Id: <20200227182210.89512-9-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227182210.89512-1-andre.przywara@arm.com>
References: <20200227182210.89512-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_102235_964389_A5A7A68C 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jon Loeliger <jdl@jdl.com>, Mark Langsdorf <mlangsdo@redhat.com>,
 Robert Richter <rric@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the Calxeda ComboPHY binding to DT schema format using
json-schema.
There is no driver in the Linux kernel matching the compatible
string, but the nodes are parsed by the SATA driver, which links to them
using its port-phys property.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../bindings/phy/calxeda-combophy.txt         | 17 -------
 .../bindings/phy/calxeda-combophy.yaml        | 51 +++++++++++++++++++
 2 files changed, 51 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/calxeda-combophy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/calxeda-combophy.yaml

diff --git a/Documentation/devicetree/bindings/phy/calxeda-combophy.txt b/Documentation/devicetree/bindings/phy/calxeda-combophy.txt
deleted file mode 100644
index 6622bdb2e8bc..000000000000
--- a/Documentation/devicetree/bindings/phy/calxeda-combophy.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Calxeda Highbank Combination Phys for SATA
-
-Properties:
-- compatible : Should be "calxeda,hb-combophy"
-- #phy-cells: Should be 1.
-- reg : Address and size for Combination Phy registers.
-- phydev: device ID for programming the combophy.
-
-Example:
-
-	combophy5: combo-phy@fff5d000 {
-		compatible = "calxeda,hb-combophy";
-		#phy-cells = <1>;
-		reg = <0xfff5d000 0x1000>;
-		phydev = <31>;
-	};
-
diff --git a/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml b/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml
new file mode 100644
index 000000000000..995d0efe280d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/calxeda-combophy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Calxeda Highbank Combination PHYs binding for SATA
+
+description: |
+  The Calxeda Combination PHYs connect the SoC to the internal fabric
+  and to SATA connectors. The PHYs support multiple protocols (SATA,
+  SGMII, PCIe) and can be assigned to different devices (SATA or XGMAC
+  controller).
+  Programming the PHYs is typically handled by those device drivers,
+  not by a dedicated PHY driver.
+
+maintainers:
+  - Andre Przywara <andre.przywara@arm.com>
+
+properties:
+  compatible:
+    const: calxeda,hb-combophy
+
+  '#phy-cells':
+    const: 1
+
+  reg:
+    maxItems: 1
+
+  phydev:
+    description: device ID for programming the ComboPHY.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - maximum: 31
+
+required:
+  - compatible
+  - reg
+  - phydev
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    combophy5: combo-phy@fff5d000 {
+                   compatible = "calxeda,hb-combophy";
+                   #phy-cells = <1>;
+                   reg = <0xfff5d000 0x1000>;
+                   phydev = <31>;
+               };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
