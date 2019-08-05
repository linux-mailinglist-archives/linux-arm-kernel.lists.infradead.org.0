Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57073818D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UScZ6ghkhC2EpSeSinMAkPnfzq6m5VQt1rWLUuzQLFw=; b=iQgEBwWJspmkn/
	bDUDiBk/cLR0mZSROl9E35sCzMlBMPDa5LYyvvfClNoyd6y9P+nZmlY91irzN9K5R3gj4+uEYKQo3
	3sEdBsDiHyTPD+XLEUVupFPsjWZCN9wI9hk2RsRdvm0I+5Q0JRiLFW2DlKUIYlYSqjrI3wizF2JO5
	TK8IW0u7UGt0pNUVGcBPOR2X4FpADzUsUHmTRICkzgJY+KnqaJ3hAiyZ4ra5HmTr6eHbPQHZYqMD4
	IKs4hwOqhbxvBxsjlNFhR1JxglrivpfLQYX0duomn+beL+22RFxKoKDh+yvxIiD2e1kb5xnTUeegz
	/8orBbK4T5q9cLO0VDOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubkr-0007DV-PM; Mon, 05 Aug 2019 12:06:21 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubiA-0003EM-D7
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:03:37 +0000
Received: by mail-wr1-x42d.google.com with SMTP id r1so84104376wrl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b1XGdy2nJKzucwuRIzJ0TOC6ZhQODYjSeQdAwBFlneI=;
 b=lMM15MLzt6Hai8wnmTDzO/Cfv5iPTpuo1yNv7j7DLI+TssldZYUeRmJezSQ+6uT8Wf
 VplNweHvsify8msqINJ+Fk9sA1Y2mWp/lMmskb1wwhVWXsAA2RBACeC0R3XMPA4kClew
 C1KHlPK9YQ5K23SK5jCja0MhP2vbXlUaZVZotGnO95wuLZPM62pCuwjOyRPI44FnhQIj
 3AZtcO6cp2YlYulIWZ4VoLMCzzfki2JER2DA9h1RRBW4Z6VlSCxogQgKRPktzATt3opK
 Zf4fhOKJGGS85xXEIPE1z2xGWMEcSWdaMw9vHwGFaYEQ5t/sq1wTdI0isAPFyXRgl7pq
 bDXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b1XGdy2nJKzucwuRIzJ0TOC6ZhQODYjSeQdAwBFlneI=;
 b=OvjH78ozHJj3R+gWHpVDbhVzOrY/kKNI0H4F+hByJjLhWlYxhIABQeeEQUgorZ0SH1
 Zd15yTA0yb5VNjE3csJC1eikFfBM2HtBUB3Nrw6EgAai1Z9trydpvDqLEHBiQ3ecRGnj
 2asTrPFtqnpUTdNxNxwVkw5ycFSmuWwcYkWAe/pY3F3TzQgOcdHD7uPmjtt2maiAT8tL
 oxJb9g4ZOTvsRpGukJv170b2dD49eR4GpFkCDRLNP7TY7UI28cZY/llojCb8NGjQMcg9
 ALpRSQ7+QSCDzSPRcGZ3jaQmr9p3+8VnVb7Gjx48eZntmkejo9/TOtmjLaQOdM3pR7wK
 tUDg==
X-Gm-Message-State: APjAAAURoRD5tmfvLPO7H6vLfdYo+6BlgL343BOLL1TQCiEOaHA+svlS
 iY0Iz0noVXynUNbDK9XpCxRN1A==
X-Google-Smtp-Source: APXvYqz55EPEsBCPC/Ok0ShHcjO9diNKpV56u+ZyINITUx4vht63l1eGjPviZ0nVTTmm06A8XwUr7Q==
X-Received: by 2002:adf:f3c1:: with SMTP id g1mr25866889wrp.203.1565006610658; 
 Mon, 05 Aug 2019 05:03:30 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 05:03:30 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFCv2 7/9] dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to
 yaml
Date: Mon,  5 Aug 2019 14:03:18 +0200
Message-Id: <20190805120320.32282-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190805120320.32282-1-narmstrong@baylibre.com>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_050334_546916_AC9E9127 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
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

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic G12A USB3 + PCIE Combo PHY over to a YAML schemas.

While the original phy bindings specifies phy-supply as required,
the examples and implementations makes it optional, thus phy-supply
is not present in the properties and required lists.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../phy/amlogic,meson-g12a-usb3-pcie-phy.yaml | 57 +++++++++++++++++++
 .../bindings/phy/meson-g12a-usb3-pcie-phy.txt | 22 -------
 2 files changed, 57 insertions(+), 22 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml
new file mode 100644
index 000000000000..346f9c35427c
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/amlogic,meson-g12a-usb3-pcie-phy.yaml#"
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
+      - amlogic,meson-g12a-usb3-pcie-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: ref_clk
+
+  resets:
+    maxItems: 1
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
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
