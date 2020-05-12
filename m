Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F59F1CED95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 09:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Iwx1halGIYSrrZttEX+Va7P9jIuXu5ikNPRBwU1/Wj8=; b=UeUuG8CRgeRkts1GKiFWfpCvIN
	1MAth7XsWcM2DdGHZa4TPGSC/9BuSl6nHZf7+5JTugHp9GnlzQxXU1E0DadaNVQZQxFNo60CHV4/s
	QTHbmXDTMRuFHUzOm1htvzkLqplu3hqkFcW2X5C6R/Z4SARMCGhRTKR1zxIL7UMwHdgUVV0wxZSjD
	dIg5V/Cs7P+00E/mP0k8KQgl2bZl0hp1kqGoBe8HI6j+28KGk4rGBMZG2a0EnehRLiQsfYUsjHsAQ
	PRlood/V49XdUJ2DE388jt1IgBEEq7xdvAcIIc6ktdrqpUJcaMm+UzxDNVeDPV3zT0U28Y+sDmwdN
	7asuRpzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYOxo-0007ve-IZ; Tue, 12 May 2020 07:04:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYOxF-0007Ys-Ht
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 07:03:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id d184so5947648pfd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 00:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o//dTfJVTpsa5Zo7nPNQBSOusaLkGD86FZMNihxJfus=;
 b=gHte5rVUD6y77Xe/TFwjDfYe9ap4bclJIR3xqi1I4zZijHaTmhe0Gim+Ke3EaFnJXe
 XJUjPVATgmdLPBcdDcR2qvWe2tRzSWZuFX3VmGuLTvYRJYbWD4+vqJebdZlZ0s+4uF/q
 EOsHEQv66zGagOhM3QAwtb5vCkNRPX9YPjRBJiOCej/P6J6Acyko6XtZNeWvFM1CbH2I
 VSToK4mNIq0e1Y1inpqYK+SmtdgxbaFKQe+EzRBulSqHa2pf3fwoMz5qa+5MZbIeK3uV
 YvPxu4ZQgWH6ZHmBADxC/MtYhY7NVcdmzOg40KLgnYVFrmHg+4htNhrzMAMfu+zc8Uei
 VoyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=o//dTfJVTpsa5Zo7nPNQBSOusaLkGD86FZMNihxJfus=;
 b=K64g3iWa3JDb8QEA6g9tEnges+3fosgG/+Ifz41X3Y0EV0twXMGCUMKRMHHC5Klgbt
 VX3Vu8osLRVkirylMlb/9ckPyqaVtFQa0r3U8r+7dRZ3soPrOYW90GYFML0aUY0vGYuT
 G/p/5ZFyH9CjFc4jsQphAXujCYb7frQbT9bsbdrkvbmh37qLUjVEWnV4JP1t6xhSNo+N
 YjFisc8QfJCbOXpxNSbwxqdqD/Kj3PEtq7slDV+4CgXkKKTqV0UHy0AXILEIVUuIcLvf
 il0799xu/J31lQq+tVqiUwWXfWtL1rP/CMb37cr9NTgrJe2TrdlfhH4xu4yH6XwuEdNB
 rDKg==
X-Gm-Message-State: AOAM530WMBxCiOpOmrDVXq7UxGDYlY/s6PCgM9xprpEZxcz6o5/Qin58
 3f3Mwt0IH3wE+YQ4oxuyajs=
X-Google-Smtp-Source: ABdhPJyvQqwVfnqNh+p34cdkk3VkqZVcQx818ZVzyde7cIL1JuJ8VM2Siydwch4p+f1lnq+Vtm0N7A==
X-Received: by 2002:a63:3c19:: with SMTP id j25mr9279778pga.434.1589267032602; 
 Tue, 12 May 2020 00:03:52 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id 62sm11016369pfu.181.2020.05.12.00.03.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 May 2020 00:03:52 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v3 2/5] dt-bindings: display: panel: Add ilitek ili9341 panel
 bindings
Date: Tue, 12 May 2020 15:03:34 +0800
Message-Id: <1589267017-17294-3-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_000353_601420_97BB91F7 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 dillon.minfei@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Add documentation for "ilitek,ili9341" panel.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---

Changes:

V3:
    change compatible to st,sf-tc240t-9370-t, match #vendor,#lcd_module style

V2:
    verifyied with make dt_binding_check

V1:
    none

.../bindings/display/panel/ilitek,ili9341.yaml     | 68 ++++++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
new file mode 100644
index 0000000..9f694d8
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/ilitek,ili9341.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ilitek-9341 Display Panel
+
+maintainers:
+  - Dillon Min <dillon.minfei@gmail.com>
+
+description: |
+  Ilitek ILI9341 TFT panel driver with SPI control bus
+  This is a driver for 320x240 TFT panels, accepting a rgb input
+  streams with 16 bits or 18 bits.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          # ili9341 240*320 Color on stm32f429-disco board
+        - st,sf-tc240t-9370-t
+      - const: ilitek,ili9341
+
+  reg: true
+
+  dc-gpios:
+    maxItems: 1
+    description: Display data/command selection (D/CX)
+
+  spi-3wire: true
+
+  spi-max-frequency:
+    const: 10000000
+
+  port: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - dc-gpios
+  - port
+
+examples:
+  - |+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel: display@0 {
+                 compatible = "st,sf-tc240t-9370-t", "ilitek,ili9341";
+                 reg = <0>;
+                 spi-3wire;
+                 spi-max-frequency = <10000000>;
+                 dc-gpios = <&gpiod 13 0>;
+                 port {
+                         panel_in: endpoint {
+                           remote-endpoint = <&display_out>;
+                      };
+                 };
+             };
+        };
+...
+
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
