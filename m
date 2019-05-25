Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAB52A65B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JmSN6EcG6XidDglfLfK0AAWgOfNBWqxQt1mpHOxcDbk=; b=TtdWKvntiZGwboHsJxivW2wKmW
	IaBHxk9t99PZ95cRObo2CIqXCqK3HTMIQO3xRsnWPh6b1ljvzJz1NYkwbgoINfE6ho4jDGszwjmCk
	/WIM6oHKJ8ofp8QzuaImnYAJtqvVLzxZfhlANbJsWK4uFPl3CVg2H6Zk63ls3RhVyrfwYWUHZxuVX
	f2X2AjsYoYmZ4kV83ehDgWtMDZSBeRDc705SY2JoTWmp+bqSCYrUUI90OyFL9KSNjLSlCvNwfYqVZ
	1K2Zoo/sppGqKIziDIOlIuzNbEHTNfWI9/UCQ1fmhnfcoDL+daoWn9EjHh+i9zj2MFQ+9isJhgmcQ
	3m/DXtVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbBw-0005M0-Oo; Sat, 25 May 2019 18:14:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUbAo-0004Oy-HL
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:13:47 +0000
Received: by mail-pg1-x541.google.com with SMTP id d30so6802209pgm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=G+xQDY4NgbdOhNfnVsTOZ1zXd6nCy3MVGYQPOyxe4yI=;
 b=FS4CgB9gYD6Eg2VljLyZogHNHtVp41eRjKNEh7vZJ8R7KkzouEFVN1rKJe5QJ/mcdI
 hzh3oRKmWkvDyf09nsIVPxZtYXKEG4S6A61SupalYg5P9LWi0y3Zn8OUvinwc0JLfbUq
 A4pKoYel9h8ekqt26ctgWGq9qmAr9pw/x6+oeVwpYYHRYkYq5KNs+uEgM1OyAHkSxk0I
 qjCtaemHqYnUPaQWq3gvp15hk9rHwoESYdCKd8GpExiXfHGJMD6HYD/bhNJQih2pQ2dc
 er/qTfweb/0hg7LSDlzrqX7gFWaF1tkqMjXEp8ejeOxFzQn4kUBg9jjZi/R1SuPE2gHG
 hTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=G+xQDY4NgbdOhNfnVsTOZ1zXd6nCy3MVGYQPOyxe4yI=;
 b=jSZU+8wnnAjAGtUlCukdZybn6+SsRyz3q13RRFmJPeSLlNN60v42hdr756zp1DxYFi
 S5MyG6FKZlJnBZgoxz2jEJmen65eeQwmQF9vTPt1EtHBBy7uS41Fx4grILMoXqmxtLzc
 YfO2AP7flGSBI1uxfIoZlCBZ6o6ch9Yq8vchXq7S6KrTirJGa7NJ7Gza7t26ekziNTQk
 bSH3C57HseDtaT3O89bCBlFVvruO0V+XHyfzIuJ4KrLwmYJ65I5WTPBl7O+JQuD4dxgV
 zvq/2O359hi20wX0o+Es92CJkgvX1Wa+fLNDVpynpWlkOOFqgE7FAJkvdgs9qPkPdhic
 s5ZA==
X-Gm-Message-State: APjAAAVrwRrMgAnR+sTjtGNNlsdBALIqxqV3n6FtJLvHBA9i1lvjP8II
 XBt/LjwUgspK0CLmomwUuxM=
X-Google-Smtp-Source: APXvYqy9G1fyaENg/3CGzNWn7jnGIZjEs0X/vD+ci2R8s+qv434po80SA5TWA1V8/lfEZLr5gXKSXQ==
X-Received: by 2002:aa7:98c6:: with SMTP id e6mr119766182pfm.191.1558808017054; 
 Sat, 25 May 2019 11:13:37 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id 127sm6623553pfc.159.2019.05.25.11.13.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 May 2019 11:13:36 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v3 2/3] dt-bindings: thermal: add binding document for h6
 thermal controller
Date: Sat, 25 May 2019 14:13:28 -0400
Message-Id: <20190525181329.18657-3-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190525181329.18657-1-tiny.windzz@gmail.com>
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_111338_765848_D97AFEDD 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds binding document for allwinner h6 thermal controller.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 .../bindings/thermal/sun8i-thermal.yaml       | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
new file mode 100644
index 000000000000..54cf1277870e
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/sun8i-thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner SUN8I Thermal Controller Device Tree Bindings
+
+maintainers:
+  - Yangtao Li <tiny.windzz@gmail.com>
+
+description: |-
+  This describes the device tree binding for the Allwinner thermal
+  controller which measures the on-SoC temperatures.
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun50i-h6-ths
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: ths bus clock
+
+  clock-names:
+    items:
+      - const: bus
+
+  "#thermal-sensor-cells":
+    enum: [ 0, 1 ]
+
+  nvmem-cells:
+    items:
+      - description: ths calibrate data
+
+  nvmem-cell-names:
+    items:
+      - const: calib
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - reset
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    ths: ths@5070400 {
+         compatible = "allwinner,sun50i-h6-ths";
+         reg = <0x05070400 0x100>;
+         clocks = <&ccu CLK_BUS_THS>;
+         clock-names = "bus";
+         resets = <&ccu RST_BUS_THS>;
+         interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
+         nvmem-cells = <&tsen_calib>;
+         nvmem-cell-names = "calib";
+         #thermal-sensor-cells = <1>;
+    };
+
+...
-- 
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
