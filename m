Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AC0D55E8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 13 Oct 2019 13:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rKTdmZj1R3qZ8z+tLATRUreGKMbnN7wp3/uTUoxfhkU=; b=blmBPn0SHWlt5WpTCt4r6j/rYO
	66jRdlq3uYJKqWCPbJ1Aep/LugcCoBcz1sgKVJ4G9B94wNnpUTkyaZ5N4qOg0HbSQEWkD/nHc/dV+
	TxftYIjmQbq1pm+mxFigv3gSWm9nIn6/kqPKI3mCM3GbwozFKIVuNjLGAXx/QwL30Vs6Sq02NrVwF
	k2F15NmYE7qnApbiYMnGKS3YR9kvbltvs/rg2GyF8pxWWItiDtDcP7X3VwG+DLYD3zHYYjWWzoHGC
	5eARrlML2TaYuFjATxEvEoe1Xd2+k7ZcFBVAViCWYA34NPF5QgQeMy1oBihz56tfTkbGquru6/ZXr
	lw/9KkEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJcFX-00073m-6c; Sun, 13 Oct 2019 11:41:23 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJcF4-0006qM-JA
 for linux-arm-kernel@lists.infradead.org; Sun, 13 Oct 2019 11:40:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id e10so4432751pgd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 04:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=P585Wb4GdNSdANLbtZBTejDHy0hzt6pLG6Y0SHAZ9bU=;
 b=Sq/HNP5QsB5o9F9tBTKX7L0Z4FVLC9h6ADI4RXKZarXPk/p/8UNkZ86I+L11wvyGVV
 WW8lS+FpIJyO77xwLrV2x1AfGD6yZENx63WR/afl2Tyt4GVgcX6zmS/G67iyJNlikhf4
 s+R/CfgSkBDkP+rEZhiDL3NLFfwyKzzfmUMd6ekeh0dVZER5Ro6A9nJ/dVS9craL7b1M
 WDfkcbovDfQ+6LC95Cl4ViIvZxDEAHrsGpeZsmnj4t4etr4FLdjkcFuzOnaFw/LzkjzP
 U8wiHmqErCnk7duw39vPp9nejXK5KcCFcbZQIVf01CsY/HkWyagT7sBFbM0wjaosBS4y
 jJbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=P585Wb4GdNSdANLbtZBTejDHy0hzt6pLG6Y0SHAZ9bU=;
 b=kpy/jiVOFa4j1lNYXCBuN+zP9HHlhMpJ98xfod27L7WVDAPFGitmGxVLsy3Gq6aw1y
 x50ELRGBjNjVFMZce/9c1h0qYrimgaf+qNQDtZmRsCJUaAiSoWK+AHxEADpNJAnJq76i
 BBh6PXZlkbk5zEX65k5YYyBMfy7Aumm/VoKyWI9RtEq2fFUwubGCwUbRmnM+PqPtvZZe
 6nFljA5bT5Kv7cUBzOOWaHcbS30YAW80Z4morAza2H5tvrnG0FBn6aeNWlsXFQHlkNNS
 HQb9jieq3IpKMEMFR5u3FkaJcRi79Upglq/5O8NLZkVOzI1CznNHcJ/MfdVGDRfS6GYf
 IAqg==
X-Gm-Message-State: APjAAAUyv92SHGYyKE/gRUv2yyu7ptULqxC07e7+dh+IfSXB+FCFEbFs
 ao/xVNOp7KnW84WL796aFFBa
X-Google-Smtp-Source: APXvYqyMXRTeohc8dPr4H7XQBAdVm22v+b+6KvEJVppA+/URrgFtQ3sqxCvRnoWI0vBfzbygNAih/w==
X-Received: by 2002:a65:6408:: with SMTP id a8mr27308726pgv.357.1570966853733; 
 Sun, 13 Oct 2019 04:40:53 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:8e:4f53:b957:652b:7622:f311])
 by smtp.gmail.com with ESMTPSA id
 g12sm23165736pfb.97.2019.10.13.04.40.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 04:40:53 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: linus.walleij@linaro.org,
	bgolaszewski@baylibre.com
Subject: [PATCH 1/4] dt-bindings: gpio: Add devicetree binding for RDA Micro
 GPIO controller
Date: Sun, 13 Oct 2019 17:10:34 +0530
Message-Id: <20191013114037.9845-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191013114037.9845-1-manivannan.sadhasivam@linaro.org>
References: <20191013114037.9845-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_044054_629529_AC3E0E0F 
X-CRM114-Status: GOOD (  10.72  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-unisoc@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, orsonzhai@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add YAML devicetree binding for RDA Micro GPIO controller.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/gpio/gpio-rda.yaml    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/gpio-rda.yaml

diff --git a/Documentation/devicetree/bindings/gpio/gpio-rda.yaml b/Documentation/devicetree/bindings/gpio/gpio-rda.yaml
new file mode 100644
index 000000000000..6ece555f074f
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/gpio-rda.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/gpio-rda.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RDA Micro GPIO controller
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+properties:
+  compatible:
+    const: rda,8810pl-gpio
+
+  reg:
+    maxItems: 1
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  ngpios:
+    description:
+      Number of available gpios in a bank.
+    minimum: 1
+    maximum: 32
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    const: 2
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - gpio-controller
+  - "#gpio-cells"
+  - ngpios
+  - interrupt-controller
+  - "#interrupt-cells"
+  - interrupts
+
+additionalProperties: false
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
