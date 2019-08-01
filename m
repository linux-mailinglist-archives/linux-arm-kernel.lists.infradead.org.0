Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAC27DCFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hebrCBK3R3g/JPCUEXDMH0CJF9qh2YT+Oh4EB/xTaK8=; b=XN2BtAAAJhZxT3
	+tN1Zse825E4S9uXT045/PLFCt9vfP6+xvmusBlyjAye6yU5Jiy3bwl6Zf2zJCvKaq1dUHMYYNCez
	GrCx+mUhnNvclUls+QUiQwOln46jJercPYENx/iwpq8iGM0AouZR9BeCbtxMwAan4FcuxgYjU5acN
	JLqnjxR71kDlDX9luOmnjQfxv9u2xtK49bGTeim9R0QKB0DmYE+ATs6tZcUTui/y6beG0JOymWgdt
	FPTnvB4kSWgZiUUdILmqgYArVLJoj4j12o4ZuKswmqz2f2b4rBI9CdYPiAmeINvWEaiCrFnjOxlDd
	yDDqWz4dK2VHTpwnY/5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBa1-0001Hg-Ox; Thu, 01 Aug 2019 13:57:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBZb-0000ze-1y
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:56:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id l2so63261704wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 06:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z7STkVMB2yHisZ/usmwoT4spFS0I17AFPosoUf8jAdk=;
 b=U15Iw1p89hmo5WXozzc/nhfNJVjS1XzA0Mm3OOLSK62P3Y6V+jLEe5O3vHlbOjlryd
 JA7hs0OJrR6dGqvcMZeR8QPmiN1xElgTeYs5IjbKb2h7CpMqyF+QRGpi7pvb8h7qHQPt
 dGqoTNVAAWkSwIO0ERnDXdZo+5rhObEfiRwVsckLWQOiO4ZrmVvJaElD8u/ojM+OZGd6
 FsDpsE5MORMbqCB8IFVl/RnGxCTFu3s28aK/a4T8Jr8YgEGv5GeO5UJZH1TzSWofsVgr
 BkUotmgGMoVqC9pbiZUXBe4o1HIVfLHbtWQa45s2CTMj14OHy+GbDE4bwO7gsDK9pD7q
 gtrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z7STkVMB2yHisZ/usmwoT4spFS0I17AFPosoUf8jAdk=;
 b=SMgxf8gkNAZy3kTr3dakPf0be0qaTIMOPENMKruDYCsQWAbVRPoSbQbkJ8E1yxx+cz
 cE3q5avQPugUkDVvXmHDkuOQsI1c3mlXUkqTDUoGT7XAxDKf6zT9/1qSRdV5ekFjXruB
 44N04hjXxvoB1sRDe/AfRVspOJuN1smODZ9S+EO6WWUaPudEkFSeD4LuclMrU0U0KZgx
 kC+VvCvtEmKOQMd+ARxIVgaySkinb1A87t77SHy5XJBBrqPxV8BJ+qNchAUEMhWBhoxT
 N8OeBp9bdnmSZrL0DS2j8D3esLnW0TM0Yy/8zKKLrt5GMvUAgQffnQG1Is3T1QM/h9Nt
 h4OQ==
X-Gm-Message-State: APjAAAUy7ux0fAMYtcA/ti0QA9suQTvO+NHsTIELrBlGsm+ng35mCjWL
 QcvwvN9FS6bZAM0SBe2Am2qNrubveRs=
X-Google-Smtp-Source: APXvYqw44gd7s3l3amDGcR8npMDPP6OHyZ0Okn4ToukORt9MValWm04W6roItzITY9/GWLZtLsug6g==
X-Received: by 2002:a1c:7ec7:: with SMTP id
 z190mr114407950wmc.17.1564667809578; 
 Thu, 01 Aug 2019 06:56:49 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id u6sm69659952wml.9.2019.08.01.06.56.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 06:56:49 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFC 2/9] dt-bindings: rng: amlogic,meson-rng: convert to yaml
Date: Thu,  1 Aug 2019 15:56:37 +0200
Message-Id: <20190801135644.12843-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190801135644.12843-1-narmstrong@baylibre.com>
References: <20190801135644.12843-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_065651_094598_D6AFA50E 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/rng/amlogic,meson-rng.txt        | 21 -----------
 .../bindings/rng/amlogic,meson-rng.yaml       | 37 +++++++++++++++++++
 2 files changed, 37 insertions(+), 21 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
 create mode 100644 Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
deleted file mode 100644
index 4d403645ac9b..000000000000
--- a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-Amlogic Meson Random number generator
-=====================================
-
-Required properties:
-
-- compatible : should be "amlogic,meson-rng"
-- reg : Specifies base physical address and size of the registers.
-
-Optional properties:
-
-- clocks : phandle to the following named clocks
-- clock-names: Name of core clock, must be "core"
-
-Example:
-
-rng {
-	compatible = "amlogic,meson-rng";
-	reg = <0x0 0xc8834000 0x0 0x4>;
-	clocks = <&clkc CLKID_RNG0>;
-	clock-names = "core";
-};
diff --git a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml
new file mode 100644
index 000000000000..a9ff3cb35c5e
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/rng/amlogic,meson-rng.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson Random number generator
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-rng
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: core
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    rng@c8834000 {
+          compatible = "amlogic,meson-rng";
+          reg = <0xc8834000 0x4>;
+    };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
