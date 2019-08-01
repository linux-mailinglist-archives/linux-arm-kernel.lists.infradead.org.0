Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B1D7DD0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNJuUO4k8Bn4U1410HCS1pigWktF4bt9PjCoFwMiA2s=; b=bFQBEoJqw0zcs6
	iy1AkNV7xpR5Ed80+7yFXq0+OvOHYCP9UfkBIG3Beb5EK685JyefkfAXJI4+d15WRV8wSddvQLBa2
	a6PWVVtCb28xBQ9C08GG3Cf8LVu5Mf+ixXrjitz5dieaYfZfUjTYgLlIG35kobZYUch/wC5yUrfiK
	Bm8qyj41fid1puyOq6hX6DieOo/j5n1SnOFFuof+LsXc/ti9a12qYy9NSr6LHH7GCCfuZLsyLKUPB
	h2e3fIXW13FmZrH8MyhRzDfAuhq1+OsoovkgQn59TqFxTjKV4swdEWQ+jaSl2Qd1XBdE1trQrfZHO
	QLkDmXA9hMgYZEKlf3mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBbI-0002pA-9b; Thu, 01 Aug 2019 13:58:36 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBZe-00012b-By
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:56:59 +0000
Received: by mail-wm1-x32b.google.com with SMTP id x15so64786243wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 06:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IzLVWfUckV6sv4P8WEDAzk1hQ32B7pi/wYsEqMlj44g=;
 b=Xvgc/ocv4Pc3xQCYUrTRgd1+VNE1dfmhH0iQNfMu6puCmTb6dASrUfHhqudDQ/l6vZ
 PUAEHP6UerwDyADMmjnS5gqHhEFfV35Hcls3hEpTVuLbhZK2E08MzCSdaCGYZ/emn+jv
 5uinTwHTr62F9KdNODy31IgU0aUtyls6tyluZWVjFwW4685WvwpYghMjjwIR0Xq8kqkQ
 aA6RM9Vtz2/Nt/3IDnEoUuBEb9OULYTDXZ3AzKnBMFN7wORSJY0Zv7ixjLSh/oUSc8vH
 Oug2qc/WKuqzu+abb3yh1H8BJNzwlqJQi/NtS0CDRnuyGY7lfAisjhfpwN79Ku9Det70
 b+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IzLVWfUckV6sv4P8WEDAzk1hQ32B7pi/wYsEqMlj44g=;
 b=SW6ErwmBXwrnOw69KqtHby6TcsfWkUUMQUi9nUBSsN01t4mm7xy07OZjHhx3t6lWEh
 DKM5Vk8N7DmJEmt54oYxfhVcOmLo5CjE8bwjggvu+epoOH5tByVZT+em+D/K5V4ufTDN
 KMv+FYsVYLgvpbGfgfVTc405kU8xpPQSWEEhgrU3rcxei7ZdHUDRNhxq0DyRLNVyEV6m
 5QGZtamfffH668jIV/p37+RMWlhdSNJ6jZs/dFI8IqgzmjsWrQ9jGvkv7/URJgLxkQbU
 /J/a5FqkTfurFvvIbi1NLvvXGPJLDphs5KcItDTkUTbBGXCsyygWS5faRNx9iIv5Mjwj
 06Wg==
X-Gm-Message-State: APjAAAWrG6AuDANpWdZg2Uzqg3HmHOoEifE6B8hwkwkDWICYtcdVsud8
 IICPzRpSfbXCwL0SI3/UPBqNkg==
X-Google-Smtp-Source: APXvYqwpYdU7FKKmCrsk0lBieaLk0ALgoNb8lcKOLGBc4eBXZCl0je/gVXaFOUnT7ZqjnwT5ZaUBCg==
X-Received: by 2002:a1c:b706:: with SMTP id h6mr113270956wmf.119.1564667812883; 
 Thu, 01 Aug 2019 06:56:52 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id u6sm69659952wml.9.2019.08.01.06.56.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 06:56:52 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFC 7/9] dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml
Date: Thu,  1 Aug 2019 15:56:42 +0200
Message-Id: <20190801135644.12843-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801135644.12843-1-narmstrong@baylibre.com>
References: <20190801135644.12843-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_065654_423832_A8BB26D1 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
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
 kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/phy/meson-g12a-usb3-pcie-phy.txt | 22 -------
 .../phy/meson-g12a-usb3-pcie-phy.yaml         | 61 +++++++++++++++++++
 2 files changed, 61 insertions(+), 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt b/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt
deleted file mode 100644
index 7cfc17e2df31..000000000000
--- a/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-* Amlogic G12A USB3 + PCIE Combo PHY binding
-
-Required properties:
-- compatible:	Should be "amlogic,meson-g12a-usb3-pcie-phy"
-- #phys-cells:	must be 1. The cell number is used to select the phy mode
-  as defined in <dt-bindings/phy/phy.h> between PHY_TYPE_USB3 and PHY_TYPE_PCIE
-- reg:		The base address and length of the registers
-- clocks:	a phandle to the 100MHz reference clock of this PHY
-- clock-names:	must be "ref_clk"
-- resets:	phandle to the reset lines for the PHY control
-- reset-names:	must be "phy"
-
-Example:
-	usb3_pcie_phy: phy@46000 {
-		compatible = "amlogic,g12a-usb3-pcie-phy";
-		reg = <0x0 0x46000 0x0 0x2000>;
-		clocks = <&clkc CLKID_PCIE_PLL>;
-		clock-names = "ref_clk";
-		resets = <&reset RESET_PCIE_PHY>;
-		reset-names = "phy";
-		#phy-cells = <1>;
-	};
diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.yaml
new file mode 100644
index 000000000000..fe4df6bd51b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/meson-g12a-usb3-pcie-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic G12A USB3 + PCIE Combo PHY
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,g12a-usb3-pcie-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description:
+      A phandle to the clock of this PHY
+
+  clock-names:
+    items:
+      - const: ref_clk
+
+  resets:
+    maxItems: 1
+    description:
+      A phandle to the reset line of this PHY
+
+  reset-names:
+    items:
+      - const: phy
+
+  "#phy-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#phy-cells"
+
+examples:
+  - |
+    phy@46000 {
+          compatible = "amlogic,meson-g12a-usb3-pcie-phy";
+          reg = <0x46000 0x2000>;
+          clocks = <&ref_clk>;
+          clock-names = "ref_clk";
+          resets = <&phy_reset>;
+          reset-names = "phy";
+          #phy-cells = <1>;
+    };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
