Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E00E53EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FiwOXcZKALn/2xLbOvpa/USVfYp3XoRtgr+bylsUck=; b=U8wFSy2VG0i51z
	QHTLJhVYiq/hyuu8d+p01k0JdrAGvWYOse276TO6MA4juU/w8okEpftORCtKG6FpJC8uOgRmKhyck
	kzHAOwBOrbuQ0hvNUnDxLA18V0lNANlDuTzAyGSjH5vhqD9Xxv6ONoA0Djeu4bytGaM85BXKystvZ
	S/IeBgGk+4oBAy0XGlRLgd7nd+1WxYK+38o0HIcHGhFLFt0zuYpePXHoFMzmhfwIxAmq+9gDhN5n1
	DczI/opAF9CSQ2fDE7WKziYfL36sbccxbHkCXaKKSJ3AEzOcpQzuiK3Ub0DJaeCah3uYqbZngs2ED
	N/O0YkId9X2OriLieXTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO4h1-0005P8-Ly; Fri, 25 Oct 2019 18:52:11 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO4gS-00059q-Pu
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:51:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id n15so3461946wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 11:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CYt7OOCWxMiffTsFLQ4ttpRYBiNr53KKi8gZYEc7rRE=;
 b=aySJ8aeXoWxWPhcU+I0HG5la8rxAm6aFD9Au5YAv6kFfB35LDbcNRkENPsRoTLf8lj
 UdDAzp3DZw2hQ3GYVLFzuQcRqnRcfCtcQ4zUBX1yDscrxz+eB2F6p461h4EvRK+ZbP3x
 oZjxzciRUN/Bqv6/T2aIglqLR4kQOlG/FfQN9gbmfDclKQjDjR0P1HnXAWA7y2hf65wT
 DTD6mt+idA+3GCzKURVM9wkpGFzmjDWGCrF1jGxI9Y1Fj38XWil5WkRNrS2GITyJ8qPi
 nWeFVl9YrC/aPwkm9MVvYJiAD6EEDvPOTdxj1LbYhQimpKd0+uOiloh40LFCrjJqd32x
 Co2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CYt7OOCWxMiffTsFLQ4ttpRYBiNr53KKi8gZYEc7rRE=;
 b=MLz7sk02EyRd0C49Uc+edZB1iG1tcjZFs82sM9y8LZZPFMpPoKZ9CvA3sWJ1q1a3p8
 Q0ekJA66IBJremIKEVN6GXwgDG3Az/dNz7JIbe3KgCiVsI4FC5SkU50gcu7SjyoBBKQb
 4TAqDqu+IXY9peg9uQ01npbQa0chkHgT2oD55Sfo/WOtvt6AIRMi9AdH9Ph80oDJ8yNF
 mnERyAXsaGDTemVVcdgOOv6jpjH1prAnEdgj5q4ggpShqcfz+fFU+CcYXOavR1Aqm0fx
 bIUpBQ/JrNSU7T4NDsQEaWlb/5PjRg3lvPo/7B2p2Th6tWJXsWozex88VVjn5Hn3QVUl
 bxDg==
X-Gm-Message-State: APjAAAXWmHJcnyzdfD6nzCbgmR+4HhTvqQo9CjJSwievNHw3p0OxyYOr
 Gf45D2qEbanCHz6esRNH9qI=
X-Google-Smtp-Source: APXvYqwWtYuEhTgXYl330NPayOGwERtmQF3ndif7Arhs4jcmeMBjzj1n9XZD0WNXuCTYrD9LzESc5g==
X-Received: by 2002:adf:ec90:: with SMTP id z16mr4158431wrn.110.1572029495347; 
 Fri, 25 Oct 2019 11:51:35 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id l22sm4821683wrb.45.2019.10.25.11.51.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 11:51:34 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, p.zabel@pengutronix.de, robh+dt@kernel.org,
 wens@csie.org
Subject: [PATCH v3 2/4] dt-bindings: crypto: Add DT bindings documentation for
 sun8i-ss Security System
Date: Fri, 25 Oct 2019 20:51:26 +0200
Message-Id: <20191025185128.24068-3-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
References: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_115136_864336_B79462F9 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This patch adds documentation for Device-Tree bindings of the
Security System cryptographic offloader driver.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 .../bindings/crypto/allwinner,sun8i-ss.yaml   | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml

diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
new file mode 100644
index 000000000000..8e9894c9f1bf
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/allwinner,sun8i-ss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner Security System v2 driver
+
+maintainers:
+  - Corentin Labbe <corentin.labbe@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun8i-a83t-crypto
+      - allwinner,sun9i-a80-crypto
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
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/sun8i-a83t-ccu.h>
+    #include <dt-bindings/reset/sun8i-a83t-ccu.h>
+
+    crypto: crypto@1c15000 {
+      compatible = "allwinner,sun8i-a83t-crypto";
+      reg = <0x01c15000 0x1000>;
+      interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+      resets = <&ccu RST_BUS_SS>;
+      clocks = <&ccu CLK_BUS_SS>, <&ccu CLK_SS>;
+      clock-names = "bus", "mod";
+    };
+
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
