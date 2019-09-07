Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A950DAC5D7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 11:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8PNlMkDutjqYdHVPQXRz+EJTNo/GNEDlsOx2cugIoI=; b=OdswIhdP5ws3sb
	LSU1AeEeVgUxUGOaEkWwXGcLtqPVowLvAOxTPfexnzs/lggH1n3j/yfGDtXStZ3T1E5E6E60oOSeM
	Nnk4p95SZgeIPYIxXORof7eOeCaPIHMqijwaLl8r85mw9Nr6BLavhO0kcqIiv1DN9UhYx/zOshA++
	awkZh6VRf5p9MAPsQWYT82ZuUeJjiRKvwJ8IRzTi0wLB7dgA15e0RNDafDMD7+idV9RWdn2cHWyJj
	Ofvdx/yQocE8noHEpX+yuUddiemz43BQXkcgVwbyXWuM9UO9LtU444tzmVXt+H4klJgpbSCKCZGjL
	k6ANeWn1jI2PDgxOOUjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6WwL-0004F2-Mr; Sat, 07 Sep 2019 09:23:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Wtl-0002qy-GX
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 09:20:51 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D0B2B218DE;
 Sat,  7 Sep 2019 09:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567848049;
 bh=LHFmcuk/vzruYg3dab9NBWSTbnEIQjOOGTrmtbnr1vo=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=v5MkQIOSFsfvZcTxGNvc3U7CVH2HsEkHY6gy4q2XicW14ozJphjkVEogIwE2scXbE
 HnE4So0qSq/NzzA04npiXdkAUoSI/t3vIjdAFhZs5gUGU48mU/BcU1fQ3pkWFKtZsB
 b4DHql01Z09IqEOiMaLyBCLy2ETkqrNl+J99LV+s=
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
Subject: [PATCH v2 06/11] dt-bindings: arm: samsung: Convert Exynos Chipid
 bindings to json-schema
Date: Sat,  7 Sep 2019 11:20:02 +0200
Message-Id: <20190907092007.9946-6-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190907092007.9946-1-krzk@kernel.org>
References: <20190907092007.9946-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_022049_701412_D60E953C 
X-CRM114-Status: GOOD (  13.83  )
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

Convert Samsung Exynos Chipid bindings to DT schema format using
json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../bindings/arm/samsung/exynos-chipid.txt    | 12 ---------
 .../bindings/arm/samsung/exynos-chipid.yaml   | 25 +++++++++++++++++++
 2 files changed, 25 insertions(+), 12 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt
 create mode 100644 Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml

diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt
deleted file mode 100644
index 85c5dfd4a720..000000000000
--- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-SAMSUNG Exynos SoCs Chipid driver.
-
-Required properties:
-- compatible : Should at least contain "samsung,exynos4210-chipid".
-
-- reg: offset and length of the register set
-
-Example:
-	chipid@10000000 {
-		compatible = "samsung,exynos4210-chipid";
-		reg = <0x10000000 0x100>;
-	};
diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
new file mode 100644
index 000000000000..9c573ad7dc7d
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
@@ -0,0 +1,25 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/samsung/exynos-chipid.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC series Chipid driver
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+properties:
+  compatible:
+    items:
+      - const: samsung,exynos4210-chipid
+
+  reg:
+    maxItems: 1
+
+examples:
+  - |
+    chipid@10000000 {
+      compatible = "samsung,exynos4210-chipid";
+      reg = <0x10000000 0x100>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
