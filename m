Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17995C4013
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPpzEMcXRt6TdJsMviwgkXAhX3ZiZ5DxQjE9CVFwx4w=; b=M6S70WTGIG58lH
	5N2I/pD+yTJ+gB+7J4Z+ou01j9prHhL1vkN8jZAaOaDvACrgyxNIzVUwt5b3EBpjZHcvbjFSmXxhW
	5s2DOGJ5jJbJy1LDjkTH3PmgtbBbH6JkUgYk5/xs5mTduYtD10cIIaxYgWAfSbHYrstUSt2c4Uuv4
	rbkS0/Fr+uNR5fCLSOQkXLdCujS5ZB8+9q51xZRcn1YTd7stx/WTutNHONfhUbIKm7O5lYC94/tdj
	eaRtwP/OsM8NR9+e2wHw/iCbRzSdC+oZ2oK8AKRljbjn/h/u2tNs9Qx6XLtuwW+wh5gTN4YD4mTrN
	asqGN5tylCEOZD8Pw33A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFN76-00078S-Sa; Tue, 01 Oct 2019 18:43:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFN5u-00064L-1i
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:41:56 +0000
Received: by mail-wr1-x444.google.com with SMTP id h7so16768184wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8RScTeZ75nbsv+9yuHpXGe/wKnF3vqAqsp9h8uoT4tg=;
 b=NuBENbdQZE/kGoNM/ITTDYe0seZt25Z/StnqSpTqFTqOJLYyBQPRgFuEQKDx+XwY5L
 7GqQXtj/ljrrOYwr/DkyMdZQVOSZqkhHZJVwoDVwxxYEDziI+ybMoriQ0b6UiYd1wH7P
 cZIJWztP75HNY+1CF8hAOErWwmeU7uxrkrqFomHn7Bq9Be2BUHwF6CshloZturj/8lRa
 QL1/ZYuFm7eYqojQCbVKKMGXZ7jzvlM2AUken0svzCpSooNPO2egcuupUQViLt4obCuq
 /fSOWun8DA2un0vB4yxq2gyFlrEeuE6rSjYUDnj/Lyh8DXxXOvOzqBb4R2Ff02jzqEkm
 zLFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8RScTeZ75nbsv+9yuHpXGe/wKnF3vqAqsp9h8uoT4tg=;
 b=td7qfkYHDQlE1jSIU1H3AMJ8K0stHU48OVMrmGe9Eh+VigxTBViFFbD63ExWZkHeMM
 OH/E41w9k13SluJRFA+xuUpedlX3x5Xmln33Uq1JUIZkIFSv9kN/u940VDyz0imuUb/B
 rYdc2w4B9x3kk6dHou0GKX5irplcwHtv2Mc72kV6CPdPh2oKwg+9eyv1EI/vwLzur3Ms
 iH7Y3Fkm6d4d6etMSvNBQcwP8ALtxtzSW4iuT+7zQbPXxjuB43f5iWHZ4K5vcrbbxuXO
 cFiDVsS3Z1Xe9JDpRGdILi3nvwObnOZQLz7L8tyJOGwpkeUlwGumw6elTVzDRUQ6E+zF
 A0ZQ==
X-Gm-Message-State: APjAAAUeFWRNcAabefZlUa5PgFGb8/3AiV0aTJRXZ36XX+Uhu4j8jOqM
 fHgsrizqLQeCSVfKl67tkS8=
X-Google-Smtp-Source: APXvYqx5lPO7Frbw7k5tcVmreN/iCtnJ+oksNmprbbANmrVQpyFpzY5b+DiGfDoIO3YAxy9ctRCcLg==
X-Received: by 2002:a05:6000:186:: with SMTP id
 p6mr17729145wrx.136.1569955312419; 
 Tue, 01 Oct 2019 11:41:52 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n8sm6788987wma.7.2019.10.01.11.41.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 11:41:51 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v2 03/11] dt-bindings: crypto: Add DT bindings documentation
 for sun8i-ce Crypto Engine
Date: Tue,  1 Oct 2019 20:41:33 +0200
Message-Id: <20191001184141.27956-4-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
References: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_114154_104792_0C6DD834 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 .../bindings/crypto/allwinner,sun8i-ce.yaml   | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml

diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
new file mode 100644
index 000000000000..9bd26a2eff33
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/allwinner,sun8i-ce.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner Crypto Engine driver
+
+maintainers:
+  - Corentin Labbe <clabbe.montjoie@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun8i-h3-crypto
+      - allwinner,sun8i-r40-crypto
+      - allwinner,sun50i-a64-crypto
+      - allwinner,sun50i-h5-crypto
+      - allwinner,sun50i-h6-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bus clock
+      - description: Module clock
+      - description: MBus clock
+    minItems: 2
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+      - const: ram
+    minItems: 2
+    maxItems: 3
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: bus
+
+if:
+  properties:
+    compatible:
+      items:
+        const: allwinner,sun50i-h6-crypto
+then:
+  properties:
+      clocks:
+        minItems: 3
+      clock-names:
+        minItems: 3
+else:
+  properties:
+      clocks:
+        maxItems: 2
+      clock-names:
+        maxItems: 2
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+
+additionalProperties: true
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
+      clock-names = "bus", "mod";
+      resets = <&ccu RST_BUS_CE>;
+      reset-names = "bus";
+    };
+
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
