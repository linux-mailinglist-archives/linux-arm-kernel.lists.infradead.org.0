Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 168FF7DD0B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N1cRIvVXOkdEK/CJuNY5vx5CU6zj/5c8XPeP9AO86do=; b=XHCPskOszwrEW7
	lr3p1MDVbM/VCsQbjucjD7DxrKedb7QZdITlTonsgEsykYRxiEpmGXT/WVjDPLjoBvQP9AJp5kkJt
	K2aMfTu80use27a3HKNS7v7DDvNZiXe9f9vyX+ZKaFR4c1tEZKdqYx8YBjPck5R8Vt2V9ngWjaXtF
	Fd6MJ6UtpHzCinps3329DPrqCfhNgR3wA+c2TeqdEfGhVoFx6oPcT5BCWo83//dCijXBf/XumGJd2
	1sdlVvb44qjIwWkdgbdqoyIhDTnJyCfcZapBwTxWKnTqQEIKnVWwQl7lx1F2wTDjwmXoN3qBx1cGM
	mbVTXSuXWbvnYZvtnCDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBb2-0002Tv-Q5; Thu, 01 Aug 2019 13:58:20 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBZd-00011O-8g
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:56:59 +0000
Received: by mail-wm1-x335.google.com with SMTP id s15so41944049wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 06:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=811mn6h7BNpLFUFRrmR/tEgz9ZLFJSvBZeY34iDH0W4=;
 b=liznztNkf+HaxNv4vDJ5h6mGA3fjnV9yCpU/CovEfrMymt6M89vJGWMoWD6C0sGApz
 912jSQwrhWdZbBR0RY+BCaxE3pNPTH16FR7k9Wk5LeZFpFzdsq6JRup+E68hSoM1eeJ9
 9oErfWpptm9nX4hdnJfzy9jVTU1ntuxSNDdwNHwk1V4M9jBFowyH9RIWDYFjvZXuFI0F
 zwDgK8Li7HQOzhwVnX/6OERcWGIUga8+KczKm1DzwdYYhijv25afQYvy/Jh92o2d9Le1
 vFlyK1/+J2QrNVWsP4Fwo/MnMqjBgBYxyRi93IOxIH7tVPTrwfBAkuwleMD0yLkLdGZb
 VJtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=811mn6h7BNpLFUFRrmR/tEgz9ZLFJSvBZeY34iDH0W4=;
 b=KXgEKtmbFyQWiNxYQCEiTDUII460aN9Q7L17KMQF941wU+Dwv+zUbHbFIkpDABU+w7
 GAcjmBNMRSpRzADKz8V8t41lFTq4Hs9z70m0fec3s65RFx164Jhz82mKonKwN7ae+t8O
 btAkYbPZAhHhNn2ElfwwZGfA+fZWxGV5tSGT4ci6q8LOqvW8UGY5YANDfoHQE/r7/eXI
 pgh3iDrT1Cz9FEFbE9wpSo/xP1DP5TLzto9e1ogCEQrzzHbo0Qn5mjGyYyVP/rvoTqF3
 F7nIhEuGyVEsX2WLVB6GtUHGSGTsqvqCTytrF55kp8GizyKHY8inF1P3s3E19v7Bh9mk
 HIaw==
X-Gm-Message-State: APjAAAUCOEDr1Yf9Iztcg0fMsxWZfXSYz1jkrZpT2W2cVNncz2qAgfm6
 SjGb5usmhrDSmx5kLG8mxIh9Zw==
X-Google-Smtp-Source: APXvYqyfvyFU9SSffsyaUbEsXJgcEKqe2ZJr3jB7G+EChkf++HWqfgukB7b/r9YHXfnQrS5QixFc/A==
X-Received: by 2002:a1c:7310:: with SMTP id
 d16mr113441831wmb.107.1564667811496; 
 Thu, 01 Aug 2019 06:56:51 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id u6sm69659952wml.9.2019.08.01.06.56.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 06:56:51 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFC 5/9] dt-bindings: arm: amlogic: amlogic,
 meson-gx-ao-secure: convert to yaml
Date: Thu,  1 Aug 2019 15:56:40 +0200
Message-Id: <20190801135644.12843-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801135644.12843-1-narmstrong@baylibre.com>
References: <20190801135644.12843-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_065653_303482_43A4E10C 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
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

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../amlogic/amlogic,meson-gx-ao-secure.txt    | 28 -------------
 .../amlogic/amlogic,meson-gx-ao-secure.yaml   | 42 +++++++++++++++++++
 2 files changed, 42 insertions(+), 28 deletions(-)
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
index 000000000000..cf79287498f5
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
@@ -0,0 +1,42 @@
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
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-gx-ao-secure
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
