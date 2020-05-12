Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7541CFFAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 22:42:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53oZ7Ka1WSfDtKvHRFuBHNejSr9iHnTBxvX1RcY0scg=; b=peLvwBgim2yRK2
	2EIVU8JqFccJdrOmboYB/DCjPjXGZ8IgxCgXbLa0eFRQtJ1FwWKCQQdqftgC5F/yPsDOoyta5JSz7
	vRKGSMr1nLJZQ090xeRMXbdrc86Fx9SgBrLSCvRGa0BVw45dVbRuXq0IKbKUYh5BYPkPUG9Ik3GfR
	qE3/NYKn3zjK9lkfEjR3kFmC4Kny4nhnyWixcMZkJ7rlOwUMBZ9DBg1hQm0BTYh7XRu2EXCTyd12N
	Ew1UfIpOm4P/mENb/gffekr/0mIOLWQoT1wBWjmbI0uf/O5MGupaZodAmlSKPcB3j5t1BKAqhOA5d
	fVzphilckwWzslpwDvuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYbjc-0003Rh-VE; Tue, 12 May 2020 20:42:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYbj7-0003Ae-VE; Tue, 12 May 2020 20:42:12 +0000
Received: by mail-wr1-x444.google.com with SMTP id 50so17034245wrc.11;
 Tue, 12 May 2020 13:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/MZ64ZWZPbBAmbiWuLigvdZwA3g/awfq0AQNrERjSW4=;
 b=PTmxPWiwDZDGYCjKZ8QYcYteajpWaoU+FHqh/Fd/j3e9FugQqZvJxkat1mTzhWlUj0
 p4uyInI8YT1FaBaYoEYGy5Am22fVXXHnwLx8CbzMTrI/FWjTdnNdETF3FWZF89SAw4G9
 zhwiMuUMcneIuaZIBnJPsRrJBtBffgsVUzX8DJZuhXQWptPErwfDJfMzI4V8c1WezEiU
 qsf99zj1r2EsldSuO36gnrU6Lb62C4LkeMWpj7tUHFCqR8efmGBbJK5Sg6r/7r1DUrjA
 k+9gojzChGBsAQwlYdd8D5FYe2KrsGQcF9Kplcqq5v8XSs+nR9Wz/nfnp5Nw4WOWjGHm
 92Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/MZ64ZWZPbBAmbiWuLigvdZwA3g/awfq0AQNrERjSW4=;
 b=nz+Zd6/jhJpz6d+jjR2zv2HqQzw6rG9EFveQKazVZbBAa/VK47t76FczKeU6pI6bGg
 wrPjb9hkiojkvjX/JXw8FTzJGuhcl4u3DCLosTNPebkFO7tWxV0zzltGtuVDSC/kzH4o
 Ogcl0132/PY44otUsBUAU3hL6k3k6OzjIlDJqfd9MT6JfbERITgKyfc1pORo9SFbr7ap
 cqoWSYAXEyWJwwZuDOJjAMEqDCvIbQGfASv3LO8Uu9sy2y9Q8d1eAM9pC6cGvjl7QoV+
 m8aVSy9+Kn5cQU22bmz0PGf8XkXAWc9yOuPLfiCqODzBDL1wHIUwj0WLFCntmYb9m8QS
 upIA==
X-Gm-Message-State: AGi0PuZcjHIAT3874qyORdibU9FW6R3cvVy+6EJF9kVAi9UcoyaiXWKU
 15oTCDwlhgOvfmwFfefjBdVk4zO7
X-Google-Smtp-Source: APiQypKSqwokjgO1sG2iKMzr92VhmMH+KtjvFcAiHoJtsyLNUFs5UEumQH1xlmtwzSpwIe8Ap1/X2w==
X-Received: by 2002:a5d:448e:: with SMTP id j14mr14850805wrq.261.1589316128310; 
 Tue, 12 May 2020 13:42:08 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a24sm32813210wmb.24.2020.05.12.13.42.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 13:42:07 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 ulf.hansson@linaro.org, robh+dt@kernel.org
Subject: [PATCH v7 1/2] dt-bindings: mmc: Document the Amlogic Meson SDHC MMC
 host controller
Date: Tue, 12 May 2020 22:41:46 +0200
Message-Id: <20200512204147.504087-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512204147.504087-1-martin.blumenstingl@googlemail.com>
References: <20200512204147.504087-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_134210_001799_8D9A37B9 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org, jianxin.pan@amlogic.com, linux.amoon@gmail.com,
 linux-kernel@vger.kernel.org, yinxin_1989@aliyun.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, jbrunet@baylibre.com,
 linux-arm-kernel@lists.infradead.org, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This documents the devicetree bindings for the SDHC MMC host controller
found in Meson6, Meson8, Meson8b and Meson8m2 SoCs. It can use a
bus-width of 1/4/8-bit and it supports eMMC spec 4.4x/4.5x including
HS200 mode (up to 100MHz clock). It embeds an internal clock controller
which outputs four clocks (mod_clk, sd_clk, tx_clk and rx_clk) and is
fed by four external input clocks (clkin[0-3]). "pclk" is the module
register clock, it has to be enabled to access the registers.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../bindings/mmc/amlogic,meson-mx-sdhc.yaml   | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml

diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml b/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
new file mode 100644
index 000000000000..7a386a5b8fcb
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/amlogic,meson-mx-sdhc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Meson SDHC controller Device Tree Bindings
+
+allOf:
+  - $ref: "mmc-controller.yaml"
+
+maintainers:
+  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
+
+description: |
+  The SDHC MMC host controller on Amlogic SoCs provides an eMMC and MMC
+  card interface with 1/4/8-bit bus width.
+  It supports eMMC spec 4.4x/4.5x including HS200 (up to 100MHz clock).
+
+properties:
+  compatible:
+    items:
+      - enum:
+        - amlogic,meson8-sdhc
+        - amlogic,meson8b-sdhc
+        - amlogic,meson8m2-sdhc
+      - const: amlogic,meson-mx-sdhc
+
+  reg:
+    minItems: 1
+
+  interrupts:
+    minItems: 1
+
+  clocks:
+    minItems: 5
+
+  clock-names:
+    items:
+      - const: clkin0
+      - const: clkin1
+      - const: clkin2
+      - const: clkin3
+      - const: pclk
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    sdhc: mmc@8e00 {
+      compatible = "amlogic,meson8-sdhc", "amlogic,meson-mx-sdhc";
+      reg = <0x8e00 0x42>;
+      interrupts = <GIC_SPI 78 IRQ_TYPE_EDGE_RISING>;
+      clocks = <&xtal>,
+               <&fclk_div4>,
+               <&fclk_div3>,
+               <&fclk_div5>,
+               <&sdhc_pclk>;
+      clock-names = "clkin0", "clkin1", "clkin2", "clkin3", "pclk";
+    };
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
