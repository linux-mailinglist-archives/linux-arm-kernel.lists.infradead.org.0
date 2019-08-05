Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC297818D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SRz8Lz5olusEdfWiNFY8HxtLD7zYf+JVnGa6zvUK+w=; b=UM2cv5h47YLjN/
	m1U5Wsz1P/JdxAlD2zqkUn+toXRMsPz/gplIvqPHyx6MCftHgBjsvVgVEK9h6TI1UMSOOQ2F9pljO
	T59I2jb+K4BgeVSxZYxW+K6B79vNq7PEZt73OKTAXWjpE+uAw95mvPCAlYbp/ZHU6CCF3i8+rOEJJ
	j2vejLUbrWSO9ptqQcCI1rzIoOfWqhPCMWChvfjnAOQgdTNESmryi8MS1opBhTv1OmGbuKbLmJFVv
	acP8yOm16rCZNW+HDNzvUWgxd5C2iHaQzlHrbRuAlG29Hm9/hcZ4Zx9QWpq3t/ZoULQ28ty8nTTnm
	ZIWKOiyihFNJN/fiKmIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubk6-0006Xo-Hl; Mon, 05 Aug 2019 12:05:34 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubiA-0003C4-JG
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:03:37 +0000
Received: by mail-wm1-x32c.google.com with SMTP id x15so74488492wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A42sRNi391H9AC1f83ejYhNdzXImnvegGbOQ/91nUeI=;
 b=mpIcqGRs5tZYknqyOlue0Bj2+ZR9iOg2KTU1GjoH0xi3Z3S+x1sTLlgiJsTpAggRT4
 ypXXrT49yL8jiHXhl+pBCjnp3FYV01DqVc42+HXQXsgRr6+M3NvN3LyQwjBIGFcPgvlM
 R2bLAEdG1FV2+QHZEicKSO7hIRNfLLOUPyRv2a9Jux4Sm0x5ZT2XWzVhnV/O+iag0bSj
 0N50dLguDLPYqDuZ2pc5MWz8mCBFKWS+3XjhS2g+/vtNZxkKuesHAygtDjjGySylnIpF
 2lEgs9J+IeneYxDmYDaSlQOVhmtUhb76FO7j5RE5mxfbBOoUGrXDfyKpO+eBCEULPhF+
 bDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A42sRNi391H9AC1f83ejYhNdzXImnvegGbOQ/91nUeI=;
 b=GOLg2j+Y11qUsyYSG3w2ldY85MwB35E/gXoe3I69vvSl9QXFVv2fkWrF8tEtgp35+e
 0YYNivzltf+3fxmdLxH/dGQCnkLX7Mi3l0PNtg6Ffj5OsdhkWzzF0nAXA9FoVWVA25BH
 X4OZG4j8krLHknquDmSeND5J2qfgxHKH0WpijxaS02reY4Ud2JEFdiBaQBhlfS4R3J4v
 +mkYGejm/4COVZwLe+CdoIYEuo8SS7aC57QF1mmnX9mjgcRoB9L9nA4A3IXx/RYMqyx5
 5liX8F6uE89zYuY4OwHsp+xMlSWLY2WkC4BMZOLLxbDaZLLN0vLVemTMc2Oc/n6lVCWF
 6UNA==
X-Gm-Message-State: APjAAAUDztFYCW1EBtS8lSWsdW3gwAokS3KLt6ftIFTbzPr2RZakxFnP
 BoMh6ztAWn3h6WMXFgQKSzfIJQ==
X-Google-Smtp-Source: APXvYqzoJSImM+t1LHzEk/lKLUTioVhfT+lrbsg8bRZq+zfHLXMahpKcCUtsWVLWtfLTYh9nT5bGdA==
X-Received: by 2002:a1c:44d7:: with SMTP id
 r206mr19120210wma.164.1565006608513; 
 Mon, 05 Aug 2019 05:03:28 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 05:03:28 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFCv2 4/9] dt-bindings: reset: amlogic,meson-reset: convert to yaml
Date: Mon,  5 Aug 2019 14:03:15 +0200
Message-Id: <20190805120320.32282-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190805120320.32282-1-narmstrong@baylibre.com>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_050334_892368_07C00C95 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
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
 p.zabel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic Reset controller over to a YAML schemas.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/reset/amlogic,meson-reset.txt    | 19 ----------
 .../bindings/reset/amlogic,meson-reset.yaml   | 37 +++++++++++++++++++
 2 files changed, 37 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
 create mode 100644 Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml

diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
deleted file mode 100644
index 28ef6c295c76..000000000000
--- a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-Amlogic Meson SoC Reset Controller
-=======================================
-
-Please also refer to reset.txt in this directory for common reset
-controller binding usage.
-
-Required properties:
-- compatible: Should be "amlogic,meson8b-reset", "amlogic,meson-gxbb-reset" or
-	"amlogic,meson-axg-reset".
-- reg: should contain the register address base
-- #reset-cells: 1, see below
-
-example:
-
-reset: reset-controller {
-	compatible = "amlogic,meson-gxbb-reset";
-	reg = <0x0 0x04404 0x0 0x20>;
-	#reset-cells = <1>;
-};
diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
new file mode 100644
index 000000000000..00917d868d58
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/reset/amlogic,meson-reset.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson SoC Reset Controller
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson8b-reset # Reset Controller on Meson8b and compatible SoCs
+      - amlogic,meson-gxbb-reset # Reset Controller on GXBB and compatible SoCs
+      - amlogic,meson-axg-reset # Reset Controller on AXG and compatible SoCs
+
+  reg:
+    maxItems: 1
+
+  "#reset-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - "#reset-cells"
+
+examples:
+  - |
+    reset-controller@c884404 {
+          compatible = "amlogic,meson-gxbb-reset";
+          reg = <0xc884404 0x20>;
+          #reset-cells = <1>;
+    };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
