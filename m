Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8FB818D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9T2FylDTmE0eQ1dEXXf5O9H88bQdG9skFiVp5SMC9k=; b=bnu8grj4OExKVo
	SWyDebVke1pNYiDJQJHbZ6+OZUqXdEF5R/RzeaVED4RRGVLMHw7tQFqetNL1r4+iRZqTQn2JHExuF
	lSk5iu0IF+9RDsLZJe7mJyJUvbrNAm/UGsbh0MNZ9CWmlhmBy16rt+UFZE1EXCJHjmpS1Ij+hNNsF
	GgLpHl9wGQFc2V0wga6hUYo4vsgN5GUOqh/nv9lwKMBUTCrH2I4EdVnRtVUJnn5cpeDGaRYAQMa/U
	eqtXu2IRMzd2KMrqxbfr9aZG7dKg96+eInbJTpmmQ9w1b7ECVp6siJ3qwnTFINdPxphAj2LE2+//D
	ziTtGM9qK3h1qMUeTnlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubjm-00053K-JA; Mon, 05 Aug 2019 12:05:14 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubi8-0003DL-7q
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:03:34 +0000
Received: by mail-wr1-x433.google.com with SMTP id 31so84177048wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tQeBoHTDyW/juIg5YxaAObUedP0IRigO3DWlsydmdvE=;
 b=LfM+hXYhOgzGI0rp3jXoy6H4d6Rlak6EpBo/Jp2TAeUrUiYiwFcsOa/rVXzyLSrI9Y
 pShPKGVD0C+7vsKEkn92ZsDajrSDprasHVqnprZToxr7SyIoZihVa1xTuI/5MZEzmtwn
 +WcptEyXF9HWsX3shOekomcmdBHTdWO9AZMCdMRkgfhp6CyVFG0I0PX0GZ7fm/VhIwlR
 wd84kFiCAxHosi4AX5U0VkAogzuAjJ/vjsf72rZMqdZK1aMYk2QKp4KrHqhWYaBbEDpm
 HKbWBUYuP35O2POJgXwGVdskeyC8r4oZe6BlOfcBaTQ6Tv4TeIxXabqyayMkJwim6+Nz
 JJzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tQeBoHTDyW/juIg5YxaAObUedP0IRigO3DWlsydmdvE=;
 b=CR3MTHw2f/ZmkSbCQgaKrR3yYs7o8QcalLviU/4nRYCsESFesPXgXjW28q/hFE6WtM
 quJ7gNt5bh7c4OaktgN9n7lpnNwZ71eVlXyms/+Tv/P3UqSbg2x0T8RCr5n2WpVoX3Zy
 KHCTk3wn43LGBJG2O38YzEOjiwLwPyDYCJJ7OOoXmxFjyN7diuFFkkl9/KL/qaW01zMV
 lwXLjB+7uxfMSavy+UhQ9MnibWCIF6v0jYtCcu4NId2Xcr+o2R77pWyPak13BwM4ASoR
 B/FZje7eIip7yUc0+QfcR+0DE6o4HEU57zlDZQoo0iV1ZtBm+WPFK/TM6f5OhXNj0NRe
 Jucw==
X-Gm-Message-State: APjAAAWYJrBwxwRibQtqpL7JX8/99SvDUfM6C8KKKptFE3OOTp1d/3TR
 ZQkL64aK7WdbV0uAaO4lA23cWg==
X-Google-Smtp-Source: APXvYqyqTAAoOMr4QzjFfPNakH329yCMl3UqezhM8/xSxCkB6aWqg6l07iQQGEMIsWUA2HyyB79KYQ==
X-Received: by 2002:a5d:5302:: with SMTP id e2mr9958753wrv.347.1565006609991; 
 Mon, 05 Aug 2019 05:03:29 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 05:03:29 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFCv2 6/9] dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml
Date: Mon,  5 Aug 2019 14:03:17 +0200
Message-Id: <20190805120320.32282-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190805120320.32282-1-narmstrong@baylibre.com>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_050332_456844_BF71C3D5 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
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
bindings for the Amlogic G12A USB2 PHY over to a YAML schemas.

While the original phy bindings specifies phy-supply as required,
the examples and implementations makes it optional, thus phy-supply
is not in the required list of attributes.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../phy/amlogic,meson-g12a-usb2-phy.yaml      | 63 +++++++++++++++++++
 .../bindings/phy/meson-g12a-usb2-phy.txt      | 22 -------
 2 files changed, 63 insertions(+), 22 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
new file mode 100644
index 000000000000..51254b4e65dd
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/amlogic,meson-g12a-usb2-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic G12A USB2 PHY
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-g12a-usb2-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: xtal
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: phy
+
+  "#phy-cells":
+    const: 0
+
+  phy-supply:
+     maxItems: 1
+     description:
+       Phandle to a regulator that provides power to the PHY. This
+       regulator will be managed during the PHY power on/off sequence.
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
+    phy@36000 {
+          compatible = "amlogic,meson-g12a-usb2-phy";
+          reg = <0x36000 0x2000>;
+          clocks = <&xtal>;
+          clock-names = "xtal";
+          resets = <&phy_reset>;
+          reset-names = "phy";
+          #phy-cells = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt b/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
deleted file mode 100644
index a6ebc3dea159..000000000000
--- a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-* Amlogic G12A USB2 PHY binding
-
-Required properties:
-- compatible:	Should be "amlogic,meson-g12a-usb2-phy"
-- reg:		The base address and length of the registers
-- #phys-cells:	must be 0 (see phy-bindings.txt in this directory)
-- clocks:	a phandle to the clock of this PHY
-- clock-names:	must be "xtal"
-- resets:	a phandle to the reset line of this PHY
-- reset-names:	must be "phy"
-- phy-supply:	see phy-bindings.txt in this directory
-
-Example:
-	usb2_phy0: phy@36000 {
-		compatible = "amlogic,g12a-usb2-phy";
-		reg = <0x0 0x36000 0x0 0x2000>;
-		clocks = <&xtal>;
-		clock-names = "xtal";
-		resets = <&reset RESET_USB_PHY21>;
-		reset-names = "phy";
-		#phy-cells = <0>;
-	};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
