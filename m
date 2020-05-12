Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11BD1D0237
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 00:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnPR7luagsQfVENtAmuwt4Yx3sccDZYsUFizcOJfWJw=; b=WMizcPdVuLsxDy
	GlKr1LSRktWmPxDAI719bbBoHg+01G20DLdnIqgzCv/NRz/RPdX8EZ0O3aDIKi/EsiJ87tNT5fKg+
	rrtqp0uzDtKF7QOSfw6ktzNCe1FzeQMyA5lr4f+j86pWGLP2JXU3/QMhdLtTjuzDo/SGMAi7b0J6t
	lNR0c4OzpqXBltxxmQ5Y1WVVB0UCtpKgxw8fuuhlXIuZ8rKiNWoPhQnUGuvpXL+i0apExPwyB/KB8
	Njl/2OBGVskul+ososPSCOWOtpC8MO9aXBcDNxqH+SJf/gB3nZizKnYAsJaRm4JzkA82QSuVPrMIG
	N/b0eiy9iMcDmgVFvtBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYdL1-0003t3-GP; Tue, 12 May 2020 22:25:23 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYdKG-0003aI-4k; Tue, 12 May 2020 22:24:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so24131919wmk.5;
 Tue, 12 May 2020 15:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=82waVPteXNHi6dIMJjBHDsDaBtBSu7S6EIvE49VbcSw=;
 b=DmFTUbcvToPTVYCRVDW43Z7IyVVLKKuT1TGww9/gk5Wh5IroV3203wAuadVGzJaPr7
 JCtrqtORsykQi4ipexGAEWp6cNhLT8vVWOxuYDBec2u6ArFBZkl+QHR5CZPYtXffwjwt
 300YUx7oOEG/xNLsqihJxLtlu/IybZhOZ+oWGhN28/+Adj0D2sAHPzwmWW7jZ0YJ74bD
 n55xLzUU0xqvNj+0+JlQPJ96nKYRytPFCYxKP/AEOqgnav3R7n4MoCJd4WdJu6rwBv77
 ffQdUzMu41HGnMtNsaVvdll/6AcmdaY5AyEGEA63mZL5q7N/ScaGAedzRhK0TqDPTrrx
 7t0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=82waVPteXNHi6dIMJjBHDsDaBtBSu7S6EIvE49VbcSw=;
 b=f6NwR37obyYtm4yx5xz9LRIMBK7jT9Ew0UJPPzOIWzjLIUvUI0RtcDMnnz3PQJ9lA4
 dK8wyO+DxSuYV535FSPbm5Z/zP8SZeo5lko2XJEUo1pS0OxN8WhD+gYn90RYZemFu2up
 FZMhPno7U3ykqmAZeD3v8p4oiMJLe9xKtGq90dSt+uLUcE8JjEHZ6yVTrgO/kus5shv7
 8AaSqQ+jVcz4RN9cxTIqpPzy1VHXUday6TLucuLugmJHotAkNqY3B9ay6idob+xGVcta
 nCTkRrTJQS+9+oKF5q01FESYCwXNqxk2h2OzQqeslHShHVYGk+vSbGHrLnmM1b1l6a7C
 LPQQ==
X-Gm-Message-State: AGi0PuZYcRgMuf9j23T4R+OtVdEQpvEcNaXCQnNyNEkiwa6fOEgMmFdP
 nkWJYkost0yY1iamVb6xKtg=
X-Google-Smtp-Source: APiQypKIkp1CdypfQ0uEU9JOwaNCNbhKwWqoio9mMWBOIpnVePAlV/V6DFbSxBPtHQyPfeOIwuVXdg==
X-Received: by 2002:a7b:cd04:: with SMTP id f4mr37887601wmj.3.1589322274910;
 Tue, 12 May 2020 15:24:34 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b2sm21758758wrm.30.2020.05.12.15.24.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 15:24:34 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: kishon@ti.com, robh+dt@kernel.org, vkoul@kernel.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH v2 1/6] dt-bindings: phy: meson8b-usb2: Convert to json-schema
Date: Wed, 13 May 2020 00:24:19 +0200
Message-Id: <20200512222424.549351-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512222424.549351-1-martin.blumenstingl@googlemail.com>
References: <20200512222424.549351-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_152436_184804_8A985046 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Thomas Graichen <thomas.graichen@gmail.com>, hexdump0815@googlemail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device
tree bindings for the Amlogic Meson8, Meson8b, Meson8m2 and GXBB USB2
PHY over to a YAML schema.

While here, also add the fallback compatible string
"amlogic,meson-gxbb-usb2-phy" which is already used in
arch/arm/boot/dts/meson{,8,8b}.dtsi.

Tested-by: Thomas Graichen <thomas.graichen@gmail.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../phy/amlogic,meson8b-usb2-phy.yaml         | 63 +++++++++++++++++++
 .../bindings/phy/meson8b-usb2-phy.txt         | 28 ---------
 2 files changed, 63 insertions(+), 28 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/meson8b-usb2-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
new file mode 100644
index 000000000000..0bd4ce39525a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson8b-usb2-phy.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/amlogic,meson8b-usb2-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson8, Meson8b, Meson8m2 and GXBB USB2 PHY
+
+maintainers:
+  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - enum:
+              - amlogic,meson8-usb2-phy
+              - amlogic,meson8b-usb2-phy
+          - const: amlogic,meson-mx-usb2-phy
+      - const: amlogic,meson-gxbb-usb2-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 2
+
+  clock-names:
+    items:
+      - const: usb_general
+      - const: usb
+
+  resets:
+    minItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  phy-supply:
+    description:
+      Phandle to a regulator that provides power to the PHY. This
+      regulator will be managed during the PHY power on/off sequence.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    usb-phy@c0000000 {
+      compatible = "amlogic,meson-gxbb-usb2-phy";
+      reg = <0xc0000000 0x20>;
+      resets = <&reset_usb_phy>;
+      clocks = <&clk_usb_general>, <&reset_usb>;
+      clock-names = "usb_general", "usb";
+      phy-supply = <&usb_vbus>;
+      #phy-cells = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/meson8b-usb2-phy.txt b/Documentation/devicetree/bindings/phy/meson8b-usb2-phy.txt
deleted file mode 100644
index d81d73aea608..000000000000
--- a/Documentation/devicetree/bindings/phy/meson8b-usb2-phy.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-* Amlogic Meson8, Meson8b and GXBB USB2 PHY
-
-Required properties:
-- compatible:	Depending on the platform this should be one of:
-	"amlogic,meson8-usb2-phy"
-	"amlogic,meson8b-usb2-phy"
-	"amlogic,meson-gxbb-usb2-phy"
-- reg:		The base address and length of the registers
-- #phys-cells:	should be 0 (see phy-bindings.txt in this directory)
-- clocks:	phandle and clock identifier for the phy clocks
-- clock-names:	"usb_general" and "usb"
-
-Optional properties:
-- resets:	reference to the reset controller
-- phy-supply:	see phy-bindings.txt in this directory
-
-
-Example:
-
-usb0_phy: usb-phy@c0000000 {
-	compatible = "amlogic,meson-gxbb-usb2-phy";
-	#phy-cells = <0>;
-	reg = <0x0 0xc0000000 0x0 0x20>;
-	resets = <&reset RESET_USB_OTG>;
-	clocks = <&clkc CLKID_USB>, <&clkc CLKID_USB0>;
-	clock-names = "usb_general", "usb";
-	phy-supply = <&usb_vbus>;
-};
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
