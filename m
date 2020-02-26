Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE9B17076F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:15:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9IwY6Qe2qp6mMaEluCiufxPPOcITh3yqozY8uq00wMA=; b=pOc7IAI1Nb7KK+m6dtRByhtEAM
	1xUiK2Lgn3VzBLlTTlQkjJIcnIa78MFjznC/BNydAH1wzbXfEvtS3oRjes7H9njpJAuWxaXwLsa4v
	eGcqHiPngiHqhDSZxbwfdGiT+AYF1rcIbvDhUTKpocImt9WuukVo/L6QD5TvhiZW9aQrP41fbKVri
	OBDcDicY3Pn6veMLEeeFecujiOcxDC0UGvUP7uomzEaZpjpKVClh+jNbqRoXSBQTPztHUDJzL94Am
	sZoCioY+g/38abSnrMFyRy0yC9gujCWUHFte9upv7+PK2MTHjqUEPfqqbWxfqi68im1TmV7xwauEc
	SzTII29A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71DF-00008S-KQ; Wed, 26 Feb 2020 18:15:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j717m-0002FF-L2
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:09:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 832534B2;
 Wed, 26 Feb 2020 10:09:34 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E615B3F881;
 Wed, 26 Feb 2020 10:09:32 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 12/13] dt-bindings: arm: Add Calxeda system registers
 json-schema binding
Date: Wed, 26 Feb 2020 18:09:00 +0000
Message-Id: <20200226180901.89940-13-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226180901.89940-1-andre.przywara@arm.com>
References: <20200226180901.89940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100934_762508_35BFF6B9 
X-CRM114-Status: GOOD (  11.50  )
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
 Eric Auger <eric.auger@redhat.com>, soc@kernel.org,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Calxeda system registers are a collection of MMIO register
controlling several more general aspects of the SoC.
Beside for some power management tasks this node is also somewhat
abused as the container for the clock nodes.

Add a binding in DT schema format using json-schema.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../bindings/arm/calxeda/hb-sregs.yaml        | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml

diff --git a/Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml b/Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml
new file mode 100644
index 000000000000..541c47955a3d
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/calxeda/hb-sregs.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/calxeda/hb-sregs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Calxeda Highbank system registers
+
+description: |
+  The Calxeda Highbank system has a block of MMIO registers controlling
+  several generic system aspects. Those can be used to control some power
+  management, they also contain some gate and PLL clocks.
+
+maintainers:
+  - Andre Przywara <andre.przywara@arm.com>
+
+properties:
+  compatible:
+    const: calxeda,hb-sregs
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    type: object
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    sregs@fff3c000 {
+        compatible = "calxeda,hb-sregs";
+        reg = <0xfff3c000 0x1000>;
+
+        clocks {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            osc: oscillator {
+                #clock-cells = <0>;
+                compatible = "fixed-clock";
+                clock-frequency = <33333000>;
+            };
+        };
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
