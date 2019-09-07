Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EA2AC5D9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 11:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLBxnOjL/hZ57Ihj6AFzlH67w7k4BHBUcMaHY8oIU70=; b=X8OKCW0DmG3bDX
	hfcbAkVm9tgr+9p3BmmMJZeBr7YVsIerRTGljmTuzfg7YGxH1qtw8qSsWAb6D6QgsfGlzSOclpnKs
	9TDXvcOcCcBtv37oPG3tybw8MMya1CBl6q/svYLEKkI8NhJs8DJpmyoYk1+4q5Er4c1qZyK25/DLT
	Gyi+t9DWege9cokcenFt/kgRxeV1SS/i1+tn9aTQYX948SJpl6uSnLrCq7tnFOCzfVB3ggbQdo/Ct
	Ua9+7DxQ/lEprHk4+Bf83TEBeFazI0QAQ+/eYvqRFQ5IJNuZFkxQQZPu403BPygLF1PNDHv6NCJy2
	nCTNeLl8OeyDGx57WZPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Wws-0004jk-RF; Sat, 07 Sep 2019 09:24:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Wtu-0002uM-V4
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 09:21:01 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6398921871;
 Sat,  7 Sep 2019 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567848058;
 bh=j4MBXQfXeRt5HrbT58rdgLpG2/WPrTHwL01G7iEVZkE=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=Jz7Qu85CAFJdiBHByTpy+lBWvxsnlo1LMgKKvHuyCUBrhQHECBYjlZWMk+g4uN3Nx
 H48684rC9qyTcI0aBWqpKTV5FpE3nAS4uVZtYDsyfhHrcaTN/P9+yi1RTCn++LSV9C
 1dXQmQStP9z8XSKtyLm9BwshrVjfOyX3H1dZrHsA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Sebastian Reichel <sre@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rtc@vger.kernel.org
Subject: [PATCH v2 08/11] dt-bindings: arm: samsung: Convert Exynos System
 Registers bindings to json-schema
Date: Sat,  7 Sep 2019 11:20:04 +0200
Message-Id: <20190907092007.9946-8-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190907092007.9946-1-krzk@kernel.org>
References: <20190907092007.9946-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_022100_493985_8207FD54 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Samsung Exynos System Registers (SYSREG) bindings to DT schema
format using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Example somehow fails:
Documentation/devicetree/bindings/arm/samsung/pmu.example.dt.yaml:
system-controller@10040000: compatible:0: 'samsung,exynos5250-pmu' is
not one of ['samsung,exynos4-sysreg', 'samsung,exynos5-sysreg']

It seems that PMU schema is applied to sysreq nodes (and vice-versa).
---
 .../bindings/arm/samsung/sysreg.txt           | 19 -----------
 .../bindings/arm/samsung/sysreg.yaml          | 33 +++++++++++++++++++
 2 files changed, 33 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/samsung/sysreg.txt
 create mode 100644 Documentation/devicetree/bindings/arm/samsung/sysreg.yaml

diff --git a/Documentation/devicetree/bindings/arm/samsung/sysreg.txt b/Documentation/devicetree/bindings/arm/samsung/sysreg.txt
deleted file mode 100644
index 4fced6e9d5e4..000000000000
--- a/Documentation/devicetree/bindings/arm/samsung/sysreg.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-SAMSUNG S5P/Exynos SoC series System Registers (SYSREG)
-
-Properties:
- - compatible : should contain two values. First value must be one from following list:
-		- "samsung,exynos4-sysreg" - for Exynos4 based SoCs,
-		- "samsung,exynos5-sysreg" - for Exynos5 based SoCs.
-		second value must be always "syscon".
- - reg : offset and length of the register set.
-
-Example:
-	syscon@10010000 {
-		compatible = "samsung,exynos4-sysreg", "syscon";
-		reg = <0x10010000 0x400>;
-	};
-
-	syscon@10050000 {
-		compatible = "samsung,exynos5-sysreg", "syscon";
-		reg = <0x10050000 0x5000>;
-	};
diff --git a/Documentation/devicetree/bindings/arm/samsung/sysreg.yaml b/Documentation/devicetree/bindings/arm/samsung/sysreg.yaml
new file mode 100644
index 000000000000..a3d44646e441
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/samsung/sysreg.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/samsung/sysreg.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S5P/Exynos SoC series System Registers (SYSREG)
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - samsung,exynos4-sysreg
+          - samsung,exynos5-sysreg
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+examples:
+  - |
+    syscon@10010000 {
+      compatible = "samsung,exynos4-sysreg", "syscon";
+      reg = <0x10010000 0x400>;
+    };
+
+    syscon@10050000 {
+      compatible = "samsung,exynos5-sysreg", "syscon";
+      reg = <0x10050000 0x5000>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
