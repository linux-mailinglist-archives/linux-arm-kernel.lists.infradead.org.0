Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4AE7583F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 21:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iPpTto+EOQ6IxgB7vK5PP57dQf+aHMh0BGnnZ3RUuRA=; b=QVGfVzDIw6ensD1v/B7wMLMWXW
	1voedj3G93R0KPsUuQO2P8CLm73G+lGkMk3cNOaXKJcSSpalLtAjwLxjnZ6gH3VxMVBnFdsjigDSc
	t8SCvUDLf5FhyZD9qUNc6ayTfU1ByQKSBwAYLTwJQ8bphVDDS0cyTgXeg5/lBmHw9bQ+6w+1kZpt4
	ZkPfyBgUXtYZazVg2b6E3NZt+dYZiqFepjm4HEKxFdfOPqIWq1a2FRQCK3Tn7fY1hKYfmEWdfCgmg
	9nlIBn29tloOsgc0XZwZymvgDSxlLyGrGX2hosqqMyjLBWIfWdng9Sddzud2Y+DjSrbsoumLxjTe9
	cPKFyQsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjeZ-0001nn-Hd; Thu, 25 Jul 2019 19:43:51 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjdt-0001RM-1P
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 19:43:12 +0000
Received: by mail-wr1-x443.google.com with SMTP id x4so51933917wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 12:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=71zYLXTlisczUvOPC0g8GNny5+TtCvKfT2pyo6fGJ9c=;
 b=py8c1rPUaxb6LfpTZULVE5wEow4Ig/y0vI4laAKs1jK5qDuf2LJkdKobWT+rg7RI7m
 wFUYFn/E+DZ2sQq6mKRDo1naRmF9pJp1AYYe56I8ZIgodq/kNB9sYjOhuoXLu6L99noU
 hhAWFcc/bYt1E0IT9Pthq2bsOgk6Uo1SiCeVPtH3PhTYqKvkEVPIAF+4UJ+XjXNFb4oz
 stpVoUdeEuLMF/TLEjzWK9aYjKt4Hw6H4SAJbWPBpNybsXEc3NyEwjq2sZGwdVG+5RLk
 ia4Mkj9ZTsUju+cKbPNSiBaWdlmz/E+GZkjEGsPdT+XnLEII7hsOIJSxgi0stAOm3hvD
 XI5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=71zYLXTlisczUvOPC0g8GNny5+TtCvKfT2pyo6fGJ9c=;
 b=NO5mUYFu0D7NnTK849q2OABZRMMcmYrJOPam5zqDvn5gbCm3XW3IFjMzq/Aj0vu0oQ
 gdIUIUeZARUrEmQVFV6mDf+MGvg9EpDJSrZwPcL3WElSogLKp9yGAGHfDQJpLhSFknJE
 aKZpOBtfcN3/wIT5fmeHpuCFvbUIpBbRqSMYJeuI6D9iuvStok4cXpjfrmws3SDLxSnn
 PA1Ve2eZAzsYDNNsbMzX2cbaOiZQZgVr5iZhV/yFn1nxdDqUSU84o0Y+u0pGOaKBDcAj
 ToMcJQBGtIK9tCpkC5MeT/YK/zERw3d2C/t8DiOP0xtP8gaRndso6y9rfQ4pznciFbKR
 Mnfw==
X-Gm-Message-State: APjAAAXnWU3bsWDnB6v/tznEcbsAIYvosUpizYHXDORfb5o4FSqSQuzd
 /HheUiT85HS6ErWIQc8JaIoGEw==
X-Google-Smtp-Source: APXvYqw72jesc7xJzzreRGaFI1bWXggNaMx7Vpt35ZvVydkI9rJHOxhJjt0/7QZNpnnjlbQp3BNJdw==
X-Received: by 2002:adf:f08f:: with SMTP id n15mr13801539wro.213.1564083787509; 
 Thu, 25 Jul 2019 12:43:07 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id
 y16sm103410662wrg.85.2019.07.25.12.43.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 25 Jul 2019 12:43:06 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org
Subject: [PATCH 1/4] dt-bindings: crypto: Add DT bindings documentation for
 amlogic-crypto
Date: Thu, 25 Jul 2019 19:42:53 +0000
Message-Id: <1564083776-20540-2-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
References: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_124309_078418_39671358 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, baylibre-upstreaming@groups.io,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds documentation for Device-Tree bindings for the
Amlogic GXL cryptographic offloader driver.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../bindings/crypto/amlogic-gxl-crypto.yaml   | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/amlogic-gxl-crypto.yaml

diff --git a/Documentation/devicetree/bindings/crypto/amlogic-gxl-crypto.yaml b/Documentation/devicetree/bindings/crypto/amlogic-gxl-crypto.yaml
new file mode 100644
index 000000000000..41265e57c00b
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/amlogic-gxl-crypto.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/amlogic-gxl-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic GXL Cryptographic Offloader
+
+maintainers:
+  - Corentin Labbe <clabbe@baylibre.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: amlogic,gxl-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: blkmv
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
+    crypto: crypto@c883e000 {
+        compatible = "amlogic,gxl-crypto";
+        reg = <0x0 0xc883e000 0x0 0x36>;
+        interrupts = <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>,
+            <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+        clocks = <&clkc CLKID_BLKMV>;
+        clock-names = "blkmv";
+    };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
