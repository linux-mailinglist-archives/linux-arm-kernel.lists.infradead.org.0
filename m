Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22B7DA4F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 07:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sjQBc0t36W7Ggy0aV0Wcj//XAIHTmc5of3fntuFD+yk=; b=PidbHZz2vX7pqrV2Jqrdbd8b6q
	fPbbuKUfUC7Vdottio0yRYGJqci6BWkX8c/1dHwHU4flOcWsM7zROAQAi4VGzA/iKIjGhEBvFU9SG
	T48NUHO+5SZwfgOIh8G/R1EaUXZMWMipUIegRIFN1Vt0VlLZrIbWu5IV94VGy00+HumGYs1QInnRH
	XAeoXcEz4k1YaT/iWhFHc5TY3khDM31rL/gnv77S5l4rQy7vHyIBH24XPGglgZjRk9XQSOpGW5dAj
	v9WUrLimvA6NZKD4/0SPjAPx1SD/oCdbuHb3bHbPu25SGvNtsSzQ4zBI52BVvhhOi05w8GlxZ6cwa
	MFQEiEAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKy0Z-0002zh-EC; Thu, 17 Oct 2019 05:07:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKxzp-0002Xj-4C
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 05:06:48 +0000
Received: by mail-wm1-x341.google.com with SMTP id f22so1006837wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 22:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BRTzBJT9wxY9zvUPoqtSUKkjTVA4C3pipCSGcwAFYZI=;
 b=SzsvBZ9CUknwuf0SrY/UVQaaoWaC3X+K9qksX1wDIslB/aeKcIhwdN4u0TcOP8qBnI
 k3C8L2EmMO4mhrQtKYSTlXbAxPQyfRwB7kjRsjosJPvTTReyFyBxZQ4wHgXisxSTrny+
 6yLX8u9tSLEUgw/JjgNHrf1ohD1231Xlx0YkPv3H9GCdOkDF67wZsn9Qye+XNh6dZHJb
 s0awQeI8vXn04ruUyUegspbhOZrtQ9uE6GZV5eABpAcSjLjQ24oM6VQkyAXuBwE3205b
 SdgMYJEGFmyqYczWhhjo7I+enFpBnjxCB7UeUwWpxFIznXil0p0TOqbrHKSduFaqcXTX
 AYiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BRTzBJT9wxY9zvUPoqtSUKkjTVA4C3pipCSGcwAFYZI=;
 b=Eve2lemxpNazZ7N3J77a7EOOnEFUyltyPfy6fohv3LtlUUzKSp8tHSz2J7S1wlDunw
 8PLwr8qAKiZEgtmB9tTzX5jgIkpPgmtZen92xnbFzS7EBIdwBG51LRmhmIx+5LjG5C1P
 sqfc22jd5qRCerBhcT7+RrGsv0cpNBHkafmHtrz98PpTFVBMjW20h7SHUBmEQCtsln8l
 kVcsPK6adimmOpdbnbp1u/ZJr5caUSoZaybBdSQj/VY6EHVzPETjBq9BkIxcj57H+Xqm
 NkT7dr9w51iE6MjukEe4FB1hWvvqEeac7LLnZzNgLXU/TQOyPZTx5I0H8iw0H5sPsklt
 HtBQ==
X-Gm-Message-State: APjAAAWJNAnUKz6N/3wHITUbQTmbPywDSk4Pcb0DMSJ9de0gYJx0ienn
 UBf8G9wS/W0VYu95IdCks1Ta+A==
X-Google-Smtp-Source: APXvYqx3W0fpmROG2eEQxff4VIENymtQ5SsisOWb5YimJDjwRgmDQr0BvAZ7nF2dqssq4ZCHhe3oBw==
X-Received: by 2002:a1c:a651:: with SMTP id p78mr1061869wme.53.1571288803395; 
 Wed, 16 Oct 2019 22:06:43 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id b5sm1010762wmj.18.2019.10.16.22.06.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 16 Oct 2019 22:06:42 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org
Subject: [PATCH v3 1/4] dt-bindings: crypto: Add DT bindings documentation for
 amlogic-crypto
Date: Thu, 17 Oct 2019 05:06:23 +0000
Message-Id: <1571288786-34601-2-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571288786-34601-1-git-send-email-clabbe@baylibre.com>
References: <1571288786-34601-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_220645_217056_ADF62585 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Corentin Labbe <clabbe@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds documentation for Device-Tree bindings for the
Amlogic GXL cryptographic offloader driver.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../bindings/crypto/amlogic,gxl-crypto.yaml   | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml

diff --git a/Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml b/Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml
new file mode 100644
index 000000000000..5becc60a0e28
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/amlogic,gxl-crypto.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic GXL Cryptographic Offloader
+
+maintainers:
+  - Corentin Labbe <clabbe@baylibre.com>
+
+properties:
+  compatible:
+    items:
+    - const: amlogic,gxl-crypto
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: "Interrupt for flow 0"
+      - description: "Interrupt for flow 1"
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
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/gxbb-clkc.h>
+
+    crypto: crypto-engine@c883e000 {
+        compatible = "amlogic,gxl-crypto";
+        reg = <0x0 0xc883e000 0x0 0x36>;
+        interrupts = <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>, <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+        clocks = <&clkc CLKID_BLKMV>;
+        clock-names = "blkmv";
+    };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
