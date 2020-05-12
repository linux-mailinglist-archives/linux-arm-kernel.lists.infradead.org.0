Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1A31CF5BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 15:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGp+vGXX5shiqLuvnRLXI5dzr6bxEvUYfwkcaAAqjpE=; b=miAQ1Vyx0xzc8w
	FvU71rnrDgVw3kKsDhicc0zp9wG9I+gCey4uvvgrG8jMRTgYOMLdwba0vvu8+/DVNrxv3PBghypfA
	sCism3G9FuVazQwXCBT1DDGyhIGpGQhiSbnkNVOUg4jhNpWQBywB2XQMrZztLWoIyd98W/gbETb23
	LWEUOHcw3Akw9n2+MR0QimKrSRZpZR1C7vWkROUtU2JaSENnZnodsnCMJGM3nQggpqDCKM5sXC9IE
	cRdtCU+38tOcfiGFPyyDg8LOlX6BBwdh2Car3ZgjBv3J+cHYCzRW+piEIFTzfluIHe8V5gk51t3Ip
	pOe485AKgTJAls/71n1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUvv-0001pV-NZ; Tue, 12 May 2020 13:26:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUvM-0001U2-Md
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 13:26:23 +0000
Received: by mail-wr1-x442.google.com with SMTP id j5so15394099wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 06:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lm/JhSU6WIUD9liaClHiq2/rbC+K/Ls1HtNWMD1Nn2A=;
 b=H7zv+pIKMn1DFXWX7wYhzX5b9gbDPxAk9SE9ltGb5WnBojjIrTWGwZ7FVO7YXf1AoR
 COZHSxtOlkVLwcmTh97ohzAq4n9C7J6uHa4n4D27rkj+w/kfYeWrBD3lktPkCBd7OyNK
 O8P/pCK5xonSvWm29SHHyKomqkG8A+B7SHPE0Hdxxub08pQdFMBOAnAQGaUN+jnC5W1I
 DAw62gdKYZhW3y6Pzrg+noXMZ4eeW1RZlY/S2D9py4Eofn7OiX980AilKycW3g3jxVMX
 STxvCkdIKo7Txkpgq0z0bR0Ka58vlC02RDjsUwtAdg3aW0j9ktnqbckm4J6OXV57CjW8
 0RSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lm/JhSU6WIUD9liaClHiq2/rbC+K/Ls1HtNWMD1Nn2A=;
 b=BWunCy2sIh2PQNr1Dk+YoWC7bJ79v51dCCwLm3CKPRdpfUJQ8hAhW3KldfzGj5YxIR
 t+N5UeBEHzZKZcNFj2djDIwGD1MSQEZJt0tYOI8LA5srqR55qQL6qOHu8PZdHRSEQd8X
 md1n95q0lszHqpp+twMttdGcSKnSzGrJ+sf+p7aQIkfgwiSGNwXLjGQTpMIzCrS+hi7L
 dFBoXV57QwnRdkaZJcOxjZHart9+95VUDt8DrZTmVMgVoKLwlgzfro3YoLnCmWGugaH1
 D/6SBuZXp0ctBaSLCy7wiazTNbnv4Cui3M4wT1JUm82XLVF1qT0LufN4G7Fyhw2Uoq5e
 tWJQ==
X-Gm-Message-State: AGi0PuZoTOZHqmBVf9ivCL21Ck7hJdZ3VJFkH5jCWi/WtrYpJ5NIsSUl
 SkNL+YeRFv2pVOj8b/fkL8JOKA==
X-Google-Smtp-Source: APiQypIMA843k3ZGcFq05wJywOzCbRuZBo362vVj3No/BJt89ev1hi92yc4IMHltKbZdcHKKO8Tw5g==
X-Received: by 2002:a5d:4d0f:: with SMTP id z15mr24948754wrt.411.1589289979092; 
 Tue, 12 May 2020 06:26:19 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:4460:3fd3:382:4a71])
 by smtp.gmail.com with ESMTPSA id
 g15sm14441844wro.71.2020.05.12.06.26.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 06:26:18 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: lee.jones@linaro.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, srinivas.kandagatla@linaro.org,
 devicetree@vger.kernel.org
Subject: [PATCH v2 1/6] dt-bindings: mfd: add Khadas Microcontroller bindings
Date: Tue, 12 May 2020 15:26:08 +0200
Message-Id: <20200512132613.31507-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200512132613.31507-1-narmstrong@baylibre.com>
References: <20200512132613.31507-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_062620_734016_178FB944 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, linux-pm@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This Microcontroller is present on the Khadas VIM1, VIM2, VIM3 and Edge
boards.

It has multiple boot control features like password check, power-on
options, power-off control and system FAN control on recent boards.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/mfd/khadas,mcu.yaml   | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/khadas,mcu.yaml

diff --git a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
new file mode 100644
index 000000000000..a3b976f101e8
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/khadas,mcu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Khadas on-board Microcontroller Device Tree Bindings
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  Khadas embeds a microcontroller on their VIM and Edge boards adding some
+  system feature as PWM Fan control (for VIM2 rev14 or VIM3), User memory
+  storage, IR/Key resume control, system power LED control and more.
+
+properties:
+  compatible:
+    enum:
+      - khadas,mcu # MCU revision is discoverable
+
+  "#cooling-cells": # Only needed for boards having FAN control feature
+    const: 2
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      khadas_mcu: system-controller@18 {
+        compatible = "khadas,mcu";
+        reg = <0x18>;
+        #cooling-cells = <2>;
+      };
+    };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
