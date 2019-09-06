Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C779ABFAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 20:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aoLE4JvPjztmIEeDBUysHpI42b0aHsVXsJD8nQHdgi4=; b=qf4y17BegIFrR/
	1FKGf2zmKL/FiTiOLznyZzvXkvEArs7HzjDAceKI3JkCbsaQyAHDoGQQhdIBSHarPtkVOueXgk8q2
	zm8ggCYu+5rac/hBirzE52R7O4Qa9nX05P78OGCXcXNIDzntWDyCxmX5AamvW2XiEZKrQW+2D/04B
	0ffQ7CNu/eEYYoQDf35Mvj+LW33wFj3V34Bcfb6IUI5fkk/NYMuhrxr5vbYztFm7Kpy0x1I9btH9J
	fpFCryk/6ayi53Qgo06xNphYLJ4VZeWlDS0fw54LkkJPnPyMcXaXg2I082qRz2IC2CIfqp5cxYZmN
	zT4TFtumkyDP5/a8S5NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JFr-0005Zs-Uv; Fri, 06 Sep 2019 18:46:44 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JFI-00057Q-UR
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 18:46:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id c10so7540342wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 11:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8335uoZd+LT0PenZntX1wYZZQovMh2HBfgED4ylV1H8=;
 b=BgPusha78ZW/cPNKiDFgfhvWxRZaVKbdmGqlpkN9MmEUQktGlSSLP85gzEKKdcG+xP
 R6H7X1DYibgG0M62pnrgldIQaGA9UJlmG1nHfiBS7ry8k+ilpUVzDFCKM7f5AIqVOuDy
 ZiZCX7vKtwcszA3pOF0unJtONhlGfLebCfAvwIj6+9rIhBgPhqLgg9W9LZFM/4Qg7lSg
 ytKiCyPelDioNz+j2NNhKt5opOQ2wDEY5m1A4sFOYfOgtBt0yRMq4mEmhha4Qai0b2Gh
 xoe+ogn4tPmcf7PZAc6KAg3InfAZuKTD5C2YmGU3Hpp3EMhFuZ4r/fCU8b9iL6RRjXfx
 Jxtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8335uoZd+LT0PenZntX1wYZZQovMh2HBfgED4ylV1H8=;
 b=EDI6xc67nU/CnUQo4JN5R2DOWDcUVcNa12aMMev2YzHmL03pYzYwjQoOy6STAXqkNE
 mQz+f3FrnAK2/j381A+KlEyf4rLVe15Mz16mHRByhqjlep9pXDzoZ3PBexm3pN+Rudnr
 ZajiKOtv6Rfu1o1STG2RSAl1Hiu0yXtSZhJx522dWiIdj2Z6xPfFud9eAX+bGmWzDcfT
 b+qfhSQTzcbyUkEWCXQsvVAMvPXxASvGuxjZKNPfUfAFeOJbX9FO+agxuntWybuNIzBn
 jtjs0Hh3wVkfC1Y6g/N4+xl68eGEkiEyED2SF/FMqUoMreJq3zmMhmwRgOkydmyayQ/o
 ioxQ==
X-Gm-Message-State: APjAAAWGeME5pwMMLbInhLiU+Ep1N6FMU7vALzcWXjdOXKT73TlutGsB
 zgfr9P4kE7XjqbYpE7coMnM=
X-Google-Smtp-Source: APXvYqwlofFwIAS7bR3rWQccQzImXsxRbREbRmVniVdJMI2PcVuPwBl+72P3N6n+EXqq318ogp/CYg==
X-Received: by 2002:a7b:cb9a:: with SMTP id m26mr5027714wmi.57.1567795567864; 
 Fri, 06 Sep 2019 11:46:07 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id j1sm8677577wrg.24.2019.09.06.11.46.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 11:46:07 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, linux@armlinux.org.uk,
 mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 3/9] dt-bindings: crypto: Add DT bindings documentation for
 sun8i-ce Crypto Engine
Date: Fri,  6 Sep 2019 20:45:45 +0200
Message-Id: <20190906184551.17858-4-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_114609_005448_ACBBEEDD 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds documentation for Device-Tree bindings for the
Crypto Engine cryptographic accelerator driver.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 .../bindings/crypto/allwinner,sun8i-ce.yaml   | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml

diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
new file mode 100644
index 000000000000..bd8ccedd6059
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/allwinner,sun8i-ce.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner Crypto Engine driver
+
+maintainers:
+  - Corentin Labbe <clabbe@baylibre.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: allwinner,sun8i-h3-crypto
+      - const: allwinner,sun8i-r40-crypto
+      - const: allwinner,sun50i-a64-crypto
+      - const: allwinner,sun50i-h5-crypto
+      - const: allwinner,sun50i-h6-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: allwinner,sun50i-h6-crypto
+then:
+  clocks:
+    items:
+      - description: Bus clock
+      - description: Module clock
+      - description: MBus clock
+
+  clock-names:
+    items:
+      - const: ahb
+      - const: mod
+      - const: mbus
+else:
+  clocks:
+    items:
+      - description: Bus clock
+      - description: Module clock
+
+  clock-names:
+    items:
+      - const: ahb
+      - const: mod
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: ahb
+
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
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/sun50i-a64-ccu.h>
+    #include <dt-bindings/reset/sun50i-a64-ccu.h>
+
+    crypto: crypto@1c15000 {
+      compatible = "allwinner,sun8i-h3-crypto";
+      reg = <0x01c15000 0x1000>;
+      interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
+      clock-names = "ahb", "mod";
+      resets = <&ccu RST_BUS_CE>;
+      reset-names = "ahb";
+    };
+
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
