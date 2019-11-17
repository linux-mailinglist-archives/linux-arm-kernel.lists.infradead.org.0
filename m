Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D89BFFA45
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 15:28:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJcXhP6w+tRot27wHfFwcVYjcF7/fcJJNGu6CBR0Fe0=; b=rT5sJ3API1ovv1
	7av99HLYUZy02k49nngi24Jvt8SC4Ke1BCt9r38XQ2rKReCUxB/FrpthKHXkQv69VczsVChsxboFI
	r7KTTvV5maU+V4oj0l1Ucfbk/472f9ubPb5mVqYEAckROUKmOCb3tiIHmtLe2XlmXz+/UsjyP1h+c
	qaGB4e1FhJ4x8WqVpXi/6rLbx4hhOrNcLvYT1rLhvZuKJhsNiLO0cWVJN5gXJOCntJIz0ig71krP8
	LHpdDXQOmPqAtukE0h89O2ueFoKhWATZ3uVPzMj1gbMkDbDHaOExs1onuwchG65C1fW1y60RK1jGb
	pX+f6mADkzlnRLGySz2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWLX1-0004Id-7C; Sun, 17 Nov 2019 14:28:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWLWV-00040a-G5; Sun, 17 Nov 2019 14:27:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id z10so16383155wrs.12;
 Sun, 17 Nov 2019 06:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vHGYzBidRsQQsL3jCB4yF0aDNoupkTyw//nzq4YR9EQ=;
 b=sgCJr1rcICGBo7VwcWQVMH3ZCmoLywXz34QtHHcaYNgbyPluxyDvivoxcI+xtRvFG1
 tk9HTwb8NRNlN4c6Oxl5Nw79vmPJj43MlQtXQwomespiRZk4pwoGCOyqNhb9oCQmOYEZ
 IBksKpVJaIAdcEgGQHCxMF1IDv+kxqMC1dOeKVTJrmyfP+hvRReITPdfjqcMnNBIWzVC
 pcv44mpsuW7NB3o4KhdVmXW6ZdfeIcEmztEHmdh4Ps2C58Y8mcB2Xv6Rm0/iRIadyZgU
 HRmHrLlQW1yhUcxZGd95eCBA/hISbP4ZxWoZS5K3Zn0UII5kiRsN6OrwILac57tD6TFn
 VvnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vHGYzBidRsQQsL3jCB4yF0aDNoupkTyw//nzq4YR9EQ=;
 b=cIo12pbHEDmcTq5FYYHNMnX/GqOAVm+Kioc5rLNXuyM27Su4SRjhAQs6BwqnO5pCqw
 2IuaVYkVDmSs3bo8wl648j3lvW2TtQBDDcg0BxVTjcu+rtEIe6vUCfButlHR8lBKuXAR
 opUk/Dwj8cvJaWR8FoYZsm1JMRfpjm+hemcNYBNueF0JNFDGaMAZ/mMn6KFfJEFSwLue
 XqDdtD1mRNdOMMbsTS8SzwIsiwYYwSy4+lIYNUrIhsO1SSTDB3PzBqLraxqiNAqi1k1p
 0G2+ku1a0FqSNKF3qo7at/7WxvfZ7UcsMwOycbvIUjcMukmN7H4tp+5eGg3Lb7Xgh8sf
 OIWg==
X-Gm-Message-State: APjAAAUKCf/5gK+CW4jC9+3Bq46OLMw34FPUJYWiumg6Gr0YfYsqSrj7
 V40m822dOb/4Mdzo7MaBRu8kam6b
X-Google-Smtp-Source: APXvYqwT18GZmJpvpNeh2iFJtU1+2xOuk86H/DHrSS1Qn4jh1cZ92rwqjud9yjUSqJNcKjkY/fhSSQ==
X-Received: by 2002:adf:ef42:: with SMTP id c2mr7133152wrp.89.1574000849794;
 Sun, 17 Nov 2019 06:27:29 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id y6sm19298404wrw.6.2019.11.17.06.27.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 06:27:29 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-mmc@vger.kernel.org, robh+dt@kernel.org, ulf.hansson@linaro.org
Subject: [PATCH v2 1/2] dt-bindings: mmc: Document the Amlogic Meson SDHC MMC
 host controller
Date: Sun, 17 Nov 2019 15:27:15 +0100
Message-Id: <20191117142716.154764-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191117142716.154764-1-martin.blumenstingl@googlemail.com>
References: <20191117142716.154764-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_062731_532988_84186ACF 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, yinxin_1989@aliyun.com,
 linux-arm-kernel@lists.infradead.org, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This documents the devicetree bindings for the SDHC MMC host controller
found in Meson6, Meson8, Meson8b and Meson8m2 SoCs. It can use a
bus-width of 1/4/8-bit and it supports eMMC spec 4.4x/4.5x including
HS200 mode (up to 100MHz clock).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../bindings/mmc/amlogic,meson-mx-sdhc.yaml   | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml

diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml b/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
new file mode 100644
index 000000000000..862aedba680f
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
@@ -0,0 +1,64 @@
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
+      - const: pclk
+      - const: clkin0
+      - const: clkin1
+      - const: clkin2
+      - const: clkin3
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
+    mmc@8e00 {
+      compatible = "amlogic,meson8-sdhc", "amlogic,meson-mx-sdhc";
+      reg = <0x8e00 0x42>;
+      interrupts = <GIC_SPI 78 IRQ_TYPE_EDGE_RISING>;
+      clocks = <&sdhc_pclk>, <&xtal>, <&fclk_div4>, <&fclk_div3>, <&fclk_div5>;
+      clock-names = "pclk", "clkin0", "clkin1", "clkin2", "clkin3";
+    };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
