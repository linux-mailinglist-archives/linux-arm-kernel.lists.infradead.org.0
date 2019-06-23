Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7C54FCF6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 18:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oRcgj3XPTxVHB38gWdqtBj/z3dsHsyl0r6wWHVAl+ds=; b=mEmYkChaNS8Z9Z5kWapn2ONr/V
	pcK21jL7wkxDZeSmInLG8N7WICgTmx7Vlcx3gQoMuU7mK2qFYIVu19rG6rE30QyEho/E6n7P0W9+F
	kmVmab+HFDcQvUMwJV9nolZv7kC826inZY2I7l3JMNDHVPn8RuDEDren4lb6ML7LiHlw1nG0gL8/m
	7eT2+3eAgChBmMJfoFh3y1nMn1axVrXEAFDq4tRBasZP4IGajgmeZhlDKoOC0oQ1c2adYJizSkfyB
	PPOGNsGHoLkv0gXe2QIXwUmNDFoHb7fJCCtjr9XIyOP430gyG6xsK/PX61/i+U+Jr7gXT38aEjOck
	d6FaoXQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf5aN-00035B-Fz; Sun, 23 Jun 2019 16:43:23 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf5ZH-0002V1-P3
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 16:42:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id d126so6118400pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 09:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GJ1/rKutIQEKHvyH14ecs6l1ZdLbW/7MgqbbW+zZyME=;
 b=aPkTDQYg6YxMR3LTtRqUOO2PX5D4buJBQKeJG5SSksdp94O1WOG6qh7fzioBgPa3I9
 hC6vdUBCy3i4vqfbfzBTA/md92U4B/cEKPIelHy0Q3bl9TkucGocmA290racdD5hqA+D
 /l1E+fld70hWvvHqRU9W0Hl0SiUJelPC8gB4jRE1AXcm9za3kNhEYLxEjdVMP2lVRP/u
 q68qtw9uV3ZNjoh+qa2qr3NpaKh/sVlNciRaVcdWxwiQLWsDJGeP9N42hO1pWYH9u6hW
 wM1OpitX/5R8JL7GRo8ez064bZhvDxyKXToUaaYc1pEbJS8fEUhWqhXsCOJnA7JigVzr
 RVlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GJ1/rKutIQEKHvyH14ecs6l1ZdLbW/7MgqbbW+zZyME=;
 b=MqhXAqJB5wjGQIOP2hTG+2ZiTxage1yBNzJMJJcCUE3BD/bRujVWFXYUUla3fRWCZQ
 hILtvyfL/WZ32MpUTBZ+ZqlQp66EUPHw2db4dFxS1ozLYDqTF4iF0t9I+ILAgOIcZtJ+
 YPWMt5z/C1U6OnGH//RFpOBHWsjUa7Wl6VtWldWN3fKBNjbEC7beOgYbgGkR3SZGGgaf
 +iYFjfp1k+AFs3Z2I+TX3rwXg/DWKqaVAN7Yts63VZS4X/fIiidIH92SPPj3/IxDu4yI
 8DeHT54+FpnJI/hM3ZhpjaODnAtk1pz4WEFSWmmqQTPZBXEIyTEXLc4y75nYSPU/io5l
 Xm5Q==
X-Gm-Message-State: APjAAAUjJ1comXdB56TsTICneLpMEDYlP5VOKTuU9hW9He7xac7nhpDs
 Wr4LN0c3xLgiuDkeMdKGdGc=
X-Google-Smtp-Source: APXvYqzr3IL15+QRlPgzFQhfOuJbPNix+LH7PczxPb49B9YhZvIzUrQxfMsNEB8dxxedXBBzTMPQWw==
X-Received: by 2002:a63:4553:: with SMTP id u19mr28484919pgk.420.1561308134980; 
 Sun, 23 Jun 2019 09:42:14 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id k16sm9059855pfa.87.2019.06.23.09.42.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 09:42:14 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v4 02/11] dt-bindings: thermal: add binding document for h6
 thermal controller
Date: Sun, 23 Jun 2019 12:41:57 -0400
Message-Id: <20190623164206.7467-3-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190623164206.7467-1-tiny.windzz@gmail.com>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_094215_851643_DA262E61 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index 000000000000..2c5acc61ed03
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
+    minItems: 1
+    maxItems: 1
+
+  clock-names:
+    const: bus
+
+  '#thermal-sensor-cells':
+    const: 1
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
+  - reset
+  - clocks
+  - clock-names
+  - interrupts
+  - '#thermal-sensor-cells'
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
