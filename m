Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42768818CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQsFptwAkwEIYl6hSs39lnPC008XYeQ5o0/quRHcXbI=; b=a+RsHPQKEchhC2
	Hi0FCOI3vgDXKcJuyoLMye2YCV9Fw9zXM1CnYwkxynUL2lRCHZo7gZg0p8AKzm9JWa2kiIbBGwPvf
	VX4kP/+e8da7s4WoQ4Jku5O7XMvoy6FnZnLKS/lt/qa0Eis6TtvG9Xdq3v22LleBbOxAKa8mvM8E5
	eZ7vOiKg++nzJ4MBKKORZds/0/GShpjf8tc216LVdd47Q6VtVAmegzzlT2txNfxtiIIO6ZBznvfVa
	FmDGW0MxzIY9Om0kg43YcuJFOVD/el4CiM1TJXQuWax97iXkOUXjnV3AiJVi8i4sazMk9sfmvFC6y
	O8UK7UupS/Pi6+mXuCiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubjD-00047Y-5l; Mon, 05 Aug 2019 12:04:39 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubi6-0003Ci-Mm
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:03:32 +0000
Received: by mail-wr1-x442.google.com with SMTP id 31so84177006wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AN145UNIjgCQrhhYJVSogcaNNij6aeHMgkbf7MOZjVg=;
 b=VMaSAqIPmDBgeaoKtkuPvpLTMYFnMDM3uFkTOsPWLoZNdksJfThr6EuxlFAHLShjgX
 9mixnqvdwkbrMhC1FWlZZMRYGNtrRDaZ+I2HWY+xvzUp5YHhFFCPADzt6Fq6XWc9Dn4V
 pWiIACOE0Wot/n4qKQE09kuvTPgThLqBidInZOsodf1gKQJtTJXy0BcBC822VsOcwaL0
 EB1d9okkhRFFT+EJD8E0JTouLYipTkv92RqtFruZeCMm6tXoIc9Olu7bmo27Z6M6gP8C
 Ee6P4b99K9DWV78tIrZ7Glfl7Bs45eEc8HuPmNiY/ncbvS3byxhGJCS+eW84mkUzS6xE
 0CMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AN145UNIjgCQrhhYJVSogcaNNij6aeHMgkbf7MOZjVg=;
 b=Vw1bxVaRg1LjiunjvXgwN+7hXv5ZGEVS18DOF+UK8CJu+cDpQKLcybWmtQ6l7Otuqd
 pVDoDclam3GVjAvBjSm47tsAl1aYpHbQBGamXaIkWzjVql8eOs97YkNhBrUsdpDam8QZ
 l4vR1FqwJ7jCHGILh1JEDUl8o3b/jHVEUtq8cZkriEgunA3rdKc8DaSzYxOKe/C10gPc
 VTIosYROtsVrFKKh8B2TNdY8UDzdqjebW/48b5+Gq4kyhYKG4jzbKrdABnnEYM+AXdwl
 KND8XED6X8tcVohg4wUI/WdqCD8TwNiR7InEH4b9KODlceP4IF+rPDfdNNZxY5vE2ZRs
 RPXg==
X-Gm-Message-State: APjAAAXcyDoVO24aEoBZmt3MR4ow4VOpxvAKXCYWzq56gpJvmWO8H+N0
 WT/KzBRoJzyS+rRyStZlF/Ki8mTUeasxDg==
X-Google-Smtp-Source: APXvYqzrAaqkDmpLPzkmJN8EFk6aA2w8b/wYYUsDcEBAy5YdGDdrITKGJVxwr155Rd6AEbyQ5sl1nA==
X-Received: by 2002:adf:f812:: with SMTP id s18mr26777558wrp.32.1565006609294; 
 Mon, 05 Aug 2019 05:03:29 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 05:03:28 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFCv2 5/9] dt-bindings: arm: amlogic: amlogic,
 meson-gx-ao-secure: convert to yaml
Date: Mon,  5 Aug 2019 14:03:16 +0200
Message-Id: <20190805120320.32282-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190805120320.32282-1-narmstrong@baylibre.com>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_050330_815069_CA3D254E 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic Always-On Secure Registers over to a YAML schemas.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../amlogic/amlogic,meson-gx-ao-secure.txt    | 28 ----------
 .../amlogic/amlogic,meson-gx-ao-secure.yaml   | 52 +++++++++++++++++++
 2 files changed, 52 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
 create mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml

diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
deleted file mode 100644
index c67d9f48fb91..000000000000
--- a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Amlogic Meson Firmware registers Interface
-------------------------------------------
-
-The Meson SoCs have a register bank with status and data shared with the
-secure firmware.
-
-Required properties:
- - compatible: For Meson GX SoCs, must be "amlogic,meson-gx-ao-secure", "syscon"
-
-Properties should indentify components of this register interface :
-
-Meson GX SoC Information
-------------------------
-A firmware register encodes the SoC type, package and revision information on
-the Meson GX SoCs.
-If present, the following property should be added :
-
-Optional properties:
-  - amlogic,has-chip-id: If present, the interface gives the current SoC version.
-
-Example
--------
-
-ao-secure@140 {
-	compatible = "amlogic,meson-gx-ao-secure", "syscon";
-	reg = <0x0 0x140 0x0 0x140>;
-	amlogic,has-chip-id;
-};
diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
new file mode 100644
index 000000000000..853d7d2b56f5
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/arm/amlogic/amlogic,meson-gx-ao-secure.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson Firmware registers Interface
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  The Meson SoCs have a register bank with status and data shared with the
+  secure firmware.
+
+# We need a select here so we don't match all nodes with 'syscon'
+select:
+  properties:
+    compatible:
+      contains:
+        const: amlogic,meson-gx-ao-secure
+  required:
+    - compatible
+
+properties:
+  compatible:
+   items:
+      - const: amlogic,meson-gx-ao-secure
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  amlogic,has-chip-id:
+    description: |
+      A firmware register encodes the SoC type, package and revision
+      information on the Meson GX SoCs. If present, the interface gives
+      the current SoC version.
+    type: boolean
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    ao-secure@140 {
+          compatible = "amlogic,meson-gx-ao-secure", "syscon";
+          reg = <0x140 0x140>;
+          amlogic,has-chip-id;
+    };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
