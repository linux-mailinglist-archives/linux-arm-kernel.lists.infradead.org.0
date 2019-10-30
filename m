Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 204F1EA2A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 18:33:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gJjXmAzrRRcJl6y0bnHoIyn/5pEQGUIlQdag6j78hQY=; b=fr/Aye0GgixN5SQejqRA0/Rfoq
	gb1ukbgx9vre0ABT7084At3yCXNfm6DBU4CTCSE6CHgJXozpS9VvVCUdXjmqKpT4u61nf5zIUqJVf
	+3w5V2gpYARHUJBREWquZehKiBwPqu4fc/kPE0GzStf+eQuLxvqsvvL0XZPM4LrbASQHI67XOZOzU
	r2nsEhuaDj8RSn+Y5QnMDlaRY/+0sBFJQO57HFZWMfluvKo0p4KGIlVZBWlYSZfUqkSXOZQQFojK3
	QxurlxXMGWfrXN72mHXeHhs8f3aJPo21QejRxOYPjYk49Nvo8Qm+AqASgGxsXyo2vjw5OsMDScmyf
	m8KY2/cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPrqA-0003Ir-2P; Wed, 30 Oct 2019 17:33:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPrpe-00037K-GK
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 17:32:32 +0000
Received: from localhost.localdomain (unknown [194.230.155.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC06D208C0;
 Wed, 30 Oct 2019 17:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572456750;
 bh=7YttjPf25uaH/HJ9LjN93gAC67M6cLBWLgKLTrTSIEI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jdyAXwcuImbI5Dnlq9yhye6rNZ1vtiYHuRiN2L8gbUdOGL5amFQAfRXBN/oNUIDXQ
 Rr0GeyLu7xuKScUnY6gDOVragLGpAe8+i4iaUEgigkqGy5LKaadTlTVr65c6J3b4FR
 waArH0hxloCLG3ahcBQ+cvtPM2pe2sJdvzWb5/4M=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org
Subject: [PATCH v3 2/2] dt-bindings: power: Convert Samsung Exynos Power
 Domain bindings to json-schema
Date: Wed, 30 Oct 2019 18:32:16 +0100
Message-Id: <20191030173216.5993-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030173216.5993-1-krzk@kernel.org>
References: <20191030173216.5993-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_103230_588352_6C8AB237 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Samsung Exynos Soc Power Domain bindings to DT schema format using
json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v2:
1. Use new name of file in samsung,sysmmu.yaml and MAINTAINERS.

Changes since v1:
1. Indent example with four spaces (more readable),
2. Remove unneeded types,
3. Add missing address in example and fix the name.
---
 .../bindings/iommu/samsung,sysmmu.yaml        |  2 +-
 .../devicetree/bindings/power/pd-samsung.txt  | 45 -------------
 .../devicetree/bindings/power/pd-samsung.yaml | 66 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 4 files changed, 68 insertions(+), 47 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/pd-samsung.txt
 create mode 100644 Documentation/devicetree/bindings/power/pd-samsung.yaml

diff --git a/Documentation/devicetree/bindings/iommu/samsung,sysmmu.yaml b/Documentation/devicetree/bindings/iommu/samsung,sysmmu.yaml
index ecde98da5b72..7cdd3aaa2ba4 100644
--- a/Documentation/devicetree/bindings/iommu/samsung,sysmmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/samsung,sysmmu.yaml
@@ -69,7 +69,7 @@ properties:
     description: |
       Required if the System MMU is needed to gate its power.
       Please refer to the following document:
-      Documentation/devicetree/bindings/power/pd-samsung.txt
+      Documentation/devicetree/bindings/power/pd-samsung.yaml
     maxItems: 1
 
 required:
diff --git a/Documentation/devicetree/bindings/power/pd-samsung.txt b/Documentation/devicetree/bindings/power/pd-samsung.txt
deleted file mode 100644
index 92ef355e8f64..000000000000
--- a/Documentation/devicetree/bindings/power/pd-samsung.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-* Samsung Exynos Power Domains
-
-Exynos processors include support for multiple power domains which are used
-to gate power to one or more peripherals on the processor.
-
-Required Properties:
-- compatible: should be one of the following.
-    * samsung,exynos4210-pd - for exynos4210 type power domain.
-    * samsung,exynos5433-pd - for exynos5433 type power domain.
-- reg: physical base address of the controller and length of memory mapped
-    region.
-- #power-domain-cells: number of cells in power domain specifier;
-    must be 0.
-
-Optional Properties:
-- label: Human readable string with domain name. Will be visible in userspace
-	to let user to distinguish between multiple domains in SoC.
-- power-domains: phandle pointing to the parent power domain, for more details
-		 see Documentation/devicetree/bindings/power/power_domain.txt
-
-Deprecated Properties:
-- clocks
-- clock-names
-
-Node of a device using power domains must have a power-domains property
-defined with a phandle to respective power domain.
-
-Example:
-
-	lcd0: power-domain-lcd0 {
-		compatible = "samsung,exynos4210-pd";
-		reg = <0x10023C00 0x10>;
-		#power-domain-cells = <0>;
-		label = "LCD0";
-	};
-
-	mfc_pd: power-domain@10044060 {
-		compatible = "samsung,exynos4210-pd";
-		reg = <0x10044060 0x20>;
-		#power-domain-cells = <0>;
-		label = "MFC";
-	};
-
-See Documentation/devicetree/bindings/power/power_domain.txt for description
-of consumer-side bindings.
diff --git a/Documentation/devicetree/bindings/power/pd-samsung.yaml b/Documentation/devicetree/bindings/power/pd-samsung.yaml
new file mode 100644
index 000000000000..09bdd96c1ec1
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/pd-samsung.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/pd-samsung.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC Power Domains
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+description: |+
+  Exynos processors include support for multiple power domains which are used
+  to gate power to one or more peripherals on the processor.
+
+allOf:
+  - $ref: power-domain.yaml#
+
+properties:
+  compatible:
+    enum:
+      - samsung,exynos4210-pd
+      - samsung,exynos5433-pd
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    deprecated: true
+    maxItems: 1
+
+  clock-names:
+    deprecated: true
+    maxItems: 1
+
+  label:
+    description:
+      Human readable string with domain name. Will be visible in userspace
+      to let user to distinguish between multiple domains in SoC.
+
+  "#power-domain-cells":
+    const: 0
+
+  power-domains:
+    maxItems: 1
+
+required:
+  - compatible
+  - "#power-domain-cells"
+  - reg
+
+examples:
+  - |
+    lcd0_pd: power-domain@10023c80 {
+        compatible = "samsung,exynos4210-pd";
+        reg = <0x10023c80 0x20>;
+        #power-domain-cells = <0>;
+        label = "LCD0";
+    };
+
+    mfc_pd: power-domain@10044060 {
+        compatible = "samsung,exynos4210-pd";
+        reg = <0x10044060 0x20>;
+        #power-domain-cells = <0>;
+        label = "MFC";
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 8fde5aa64bda..7126d3e079a4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2258,7 +2258,7 @@ F:	drivers/soc/samsung/
 F:	include/linux/soc/samsung/
 F:	Documentation/arm/samsung/
 F:	Documentation/devicetree/bindings/arm/samsung/
-F:	Documentation/devicetree/bindings/power/pd-samsung.txt
+F:	Documentation/devicetree/bindings/power/pd-samsung.yaml
 N:	exynos
 
 ARM/SAMSUNG MOBILE MACHINE SUPPORT
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
