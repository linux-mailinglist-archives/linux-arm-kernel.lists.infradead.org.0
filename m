Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F277170766
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:14:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hdenn0ipeoVbbOx7pNDMknsTu9hSo+IGeTRBsmqOphU=; b=MiS3SQ4ZpDzjLnFCAuFv5X7ZgD
	WNl43N6sqaRmfnJDs7V0SsjtsHL9ipQi9h29HyYlkxkCODp9cw5eUr25QIu11iv/GTxYKv9nj1di3
	rnWiePsaVs2qgtCNpkdiykdhuaG09yMe+E2FWOkBufL3WOOLOZNo6rTpq6AwxlG4E/fbXplAdCjHy
	MIFxdzvekyiOuxHPVR2fKr/K2rE54OErXlD4HUuKQGzba6V23lX/ivGMt0iG5vpIjleROFxbF6j3K
	yLgX6fvGyUxveX8hMAyJ92vBnIKT9QMfzjUUov4yb0tXPtgUihw2ka8fhKV7tj9Jpa6a8/yN5jByg
	n3C10aRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71CR-0007rf-4x; Wed, 26 Feb 2020 18:14:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j717h-00029h-7p
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:09:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F164331B;
 Wed, 26 Feb 2020 10:09:28 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6C8493F881;
 Wed, 26 Feb 2020 10:09:27 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 09/13] dt-bindings: arm: Convert Calxeda L2 cache controller
 to json-schema
Date: Wed, 26 Feb 2020 18:08:57 +0000
Message-Id: <20200226180901.89940-10-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226180901.89940-1-andre.przywara@arm.com>
References: <20200226180901.89940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100929_370415_3E05F71A 
X-CRM114-Status: GOOD (  11.07  )
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

Convert the L2-ECC controller binding to DT schema format using
json-schema.
This is indented to be just used for error reporting.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../devicetree/bindings/arm/calxeda/l2ecc.txt | 15 --------
 .../bindings/arm/calxeda/l2ecc.yaml           | 36 +++++++++++++++++++
 2 files changed, 36 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/calxeda/l2ecc.txt
 create mode 100644 Documentation/devicetree/bindings/arm/calxeda/l2ecc.yaml

diff --git a/Documentation/devicetree/bindings/arm/calxeda/l2ecc.txt b/Documentation/devicetree/bindings/arm/calxeda/l2ecc.txt
deleted file mode 100644
index 94e642a33db0..000000000000
--- a/Documentation/devicetree/bindings/arm/calxeda/l2ecc.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-Calxeda Highbank L2 cache ECC
-
-Properties:
-- compatible : Should be "calxeda,hb-sregs-l2-ecc"
-- reg : Address and size for ECC error interrupt clear registers.
-- interrupts : Should be single bit error interrupt, then double bit error
-	interrupt.
-
-Example:
-
-	sregs@fff3c200 {
-		compatible = "calxeda,hb-sregs-l2-ecc";
-		reg = <0xfff3c200 0x100>;
-		interrupts = <0 71 4  0 72 4>;
-	};
diff --git a/Documentation/devicetree/bindings/arm/calxeda/l2ecc.yaml b/Documentation/devicetree/bindings/arm/calxeda/l2ecc.yaml
new file mode 100644
index 000000000000..25c022766f0c
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/calxeda/l2ecc.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/calxeda/l2ecc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Calxeda Highbank L2 cache ECC
+
+description: |
+  Binding for the Calxeda Highbank L2 cache controller ECC device.
+  This does not cover the actual L2 cache controller control registers,
+  but just the error reporting functionality.
+
+maintainers:
+  - Andre Przywara <andre.przywara@arm.com>
+
+properties:
+  compatible:
+    const: "calxeda,hb-sregs-l2-ecc"
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    description: |
+      Should be single bit error interrupt, then double bit error interrupt.
+    minItems: 2
+    maxItems: 2
+
+examples:
+  - |
+    sregs@fff3c200 {
+        compatible = "calxeda,hb-sregs-l2-ecc";
+        reg = <0xfff3c200 0x100>;
+        interrupts = <0 71 4>, <0 72 4>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
