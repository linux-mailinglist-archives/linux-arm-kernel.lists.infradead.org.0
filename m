Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF4985D5F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZpypetLc2WAOC8O9Jg+EGLBgTJ5xni1jYIarvwlGcA=; b=O9N7mJA9hINKwd
	aWamSAFxEs6Q63ABtCpqVuf7t3nvid22C4QtwsV/jyllajh9T+T710nE8hkLImwtpJoS2pEbvGtIP
	wZhj0VxdvvCuNDWIouzw8NUkCOvD3DeoCjGPNymSPy5YOgrHDYUMldr629VoRRwLSniHKd4p5jeOn
	CGtUkobm4/zn755532wXLep3Xio6Y5qETbzLJTDL/nj+6DH9MMvQl7uMtnP7fcsLrFj7jTlINSO7X
	Hg/RBzguSmLWTSEFh2iq2HEo+AVo+0CJYNsH7iytWZLPdfKGwPv+DGFnAq61fr55vbKYGB/42IRm4
	khcTclLncxF06o8SKAFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveA3-0001BV-RK; Thu, 08 Aug 2019 08:52:40 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hve9B-0000Zt-Cn
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:51:50 +0000
Received: by mail-wm1-x342.google.com with SMTP id v19so1567127wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 01:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aXu1nRy+aYfVaPMzwlTQ/4xQ6m4HH0lPk2OELcN4n/s=;
 b=y4G4LoaSpFBdBRVb/la1Vnwn6s+lQ50FXLlIU8QWaO4fMWqWShK50P4LvPLnCzgZGi
 wqp0YLJbzQEEb9IFfKWR/Cu5xI0XOZ7IXsuV/GDTqHAO6HPCzUms7+lNVceXPCIAEJXz
 60/tvmd+D5VkbnvUCwPv2YoY6Vfm7gCm+nMJMwTuU/De3bIlwk6pElZnKaUgsEZIo5iQ
 +tSNcETig87NGSOcW8y/lGblIU7Xs/vNlviwbm7of2JNzSAowmm4NPqgblRVbe7OfuKp
 mJkxH6BmgOS15rf8B4d7R4ClOGRkCwh1gAEBvvUvhOB/eVuftpiHAewC0h22b8RFIe2f
 3U5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aXu1nRy+aYfVaPMzwlTQ/4xQ6m4HH0lPk2OELcN4n/s=;
 b=E0+p8fp5wnBpZQJg2S0loLM1HejbNWtU41wEK+kEWUzEgtNX5CDr+UjtbG6rqM6AD5
 dkiHD8GcthoNQij+HbDLCNgHgC3VE0csv7Gn9cRqhbP3QEJCj+ulgpTyPJyUvJ6Gfwmv
 ynzSs8jHnvgtkzIWNRA3y4F2rEAQTupebgdg8LKZHcM4DOl6gYE8KOpGWp0V4/0fuNEx
 fw0+vp2kOT9Ydot2HeeUBYfyTBvh3QVw69LXP5NxkJ2dVvErJMPQ7IODQYHMVB3AFrUm
 cvkckr5mAkC0wblL3cxS5ZDlmccww6YPd1qFh9VYWzUxzkRpuP2V31uFcNGf2r8cNbWH
 5gEw==
X-Gm-Message-State: APjAAAUwTAdb/dpVp489VG8VjTuPcn3UEXO33rBPD3P6joe6bseC6l7d
 kaKenfcWFdf1mLBqZplqnuewmQ==
X-Google-Smtp-Source: APXvYqxTq0DTZdne0Hpdf61fadd2IYVjlm+wBmSqmsptWpUhR0qaNtA+06vzVTvzrupVkiJRZJ6tQA==
X-Received: by 2002:a1c:f918:: with SMTP id x24mr2918700wmh.132.1565254303546; 
 Thu, 08 Aug 2019 01:51:43 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id i66sm3360031wmi.11.2019.08.08.01.51.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 01:51:43 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [PATCH 2/9] dt-bindings: rng: amlogic,meson-rng: convert to yaml
Date: Thu,  8 Aug 2019 10:51:32 +0200
Message-Id: <20190808085139.21438-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808085139.21438-1-narmstrong@baylibre.com>
References: <20190808085139.21438-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_015145_469820_6E569870 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-crypto@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic Random Number generator over to a YAML schemas.

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
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
