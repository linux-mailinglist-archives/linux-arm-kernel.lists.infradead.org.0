Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC57585D70
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvyya7Jfq86HBSzzzX1BLiZLn1ui2VcWbtlqrwsM5ic=; b=W+Nl7uEUs4uFw+
	+srul8vkkon2M3oQIDqJluOH2ASprgCxxRwVzA67uxeNNSQUzjly4lDPmNHgm8IJI3vWDNkrVoAMI
	OGlIG0S1lK/JlC2/ZpzIklYya0x0JTFBaT0DxABkVojbq1nJKDffbyhuROl6t3Xyip2MuDGbnC8P6
	HSGRr7gBXfi5cj5GQecOulOQCR8MrzwHS3xI5VxT6Iehxk0k1hO7zi/DgSq72kej8ydMg8HV27kXW
	mPVrOmy9Yinnb2phUnM64B15n5kHESd6E1beKkyYEqbnBoFxvdVAaVkMIy0YgdWuEC7rUcwmDcizS
	EAy+kiQPUM8dTyVNWcJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveBm-0002eP-T0; Thu, 08 Aug 2019 08:54:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hve9E-0000cV-2j
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:51:56 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so333375wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 01:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JUfUgUzGyK7uHYBpdiI+XN0C4d1T2zkQ6vdtZcX/Nk8=;
 b=U5wwzrNnkzDuHqbRGAMHt2GGsAdkmRl9rJPS/60/Fi0TvDwXmaGV9sjdoowQIrQ7pV
 C01PFvoJ2rFbUrzYg/7C9FtcxAv58GmPlXxESD48g1XuA1tygVDlu6CC2FHG51zdD64X
 +3dTDiQa9n8QPDT/T4ZJoJbWCGLxivwVURDkXRafmFeDgiz62Lj3gicQ+Jmdr5QwCD4/
 2SmxlYDN0L03Wi4p68mn/56vxWOb21VnOm+RIhlXm9D4JXaxcdXc1Ryyi2RWeGaTtauD
 HJemssmPeN4qIYEzWTsyZK0hNghu9D/nbzkJXO/SdyVJuciD0sJRSRzHh+aTHoYY4Roh
 6KaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JUfUgUzGyK7uHYBpdiI+XN0C4d1T2zkQ6vdtZcX/Nk8=;
 b=O6s9yAsr85HlqKvwBqa36GuKXEz5Mbxqy9DwOI6bG1cxFo8vqtxqYT58ihbIgxOzwl
 x6PVen4SsVU1GsvXk42pZKdV5vYg6fEj4Gf0mXxRw0hWNkmOeiO1/kPdr8Ox2bMplh16
 FPopEr+IaeXg2RX+blZ6qPH1AbG8tsNRa4GPtpEXZmLNRNGZUm0CuTEt4DiYr1i5g4oq
 Clt52fkUUnsYJHMsLmuSVEk/+b4duO6E7wKsH1u6jEtQ/pONbdxb4BVS63HafbprpDxA
 9/ovmMlsNem4KptWHwev1DDSLeQq0mGFDjxq5kDjyhbB5+p03/a2nnI00REu8VWqFWXh
 Fysw==
X-Gm-Message-State: APjAAAWBFyXPSv9eHt/POOzmOtgjhQ7QRTa+TFDS9GxhN+H8Imivd0fi
 IP1hqWxcGDZ4QBBuWEFyPhFRYw==
X-Google-Smtp-Source: APXvYqwozN7APOOSEPmDl6boZf8FkrZaLkCXmfTosSR3HtzEweOJCEHQDIBhajtLXFp/UiTVAXibLw==
X-Received: by 2002:a5d:4f91:: with SMTP id d17mr1915676wru.74.1565254306613; 
 Thu, 08 Aug 2019 01:51:46 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id i66sm3360031wmi.11.2019.08.08.01.51.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 01:51:46 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [PATCH 6/9] dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml
Date: Thu,  8 Aug 2019 10:51:36 +0200
Message-Id: <20190808085139.21438-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808085139.21438-1-narmstrong@baylibre.com>
References: <20190808085139.21438-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_015148_164968_D87F9EC2 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, kishon@ti.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic G12A USB2 PHY over to a YAML schemas.

While the original phy bindings specifies phy-supply as required,
the examples and implementations makes it optional, thus phy-supply
is not in the required list of attributes.

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
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
