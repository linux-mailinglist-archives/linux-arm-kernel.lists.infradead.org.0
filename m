Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14118D9299
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huBf3Qlkl/g89s2uqb3MB6uO5dXD4768I7ckNjl9QVw=; b=XGstLqlLBwSRCe
	Z8UOaLbRc6HRy0AU3h+U5y3U0NHJxS7tmpOejRXvZjttay4ejjSK34MtIiFZwblROxilNBuaUzHkJ
	CFSaD4PMPCxmMgKy/XpzjexQM3s1iz5WYuFq7UFAKk2YoExCl9t1/GxYh0VzN+0NVFp/gsAqjLH0E
	OR19YdzJxM/mhNKHJD8R2Ncw3eT8XHS1cr+98vvGWquTKUK1BUPbOBBGZx9pM2BNpZPD555VVv9kM
	/F8ROc0IOnnnQ8IPX1/JaMgpdwXhOszaCTJ3W09hBj/AnirbFKPM1m3hasR5WucyB4i82N8RFXXAH
	Xl4SJzXmS7HvyS4Rk4/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKjRZ-0002pY-4n; Wed, 16 Oct 2019 13:34:25 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKjR4-0002cq-5u
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 13:33:55 +0000
Received: by mail-wm1-x342.google.com with SMTP id 3so2796952wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 06:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xz+yYfMplPu5ZIKk6Ng0nX8uGkHzojnBY7LEEfSaIYQ=;
 b=DmFIZIf+THi7WPBbG/i/CRNriv5YFiA24wHXA6g1GiMFYbbyz8jqKf86Y8uaVNV/su
 3LOOj7TcTnlQeTCEnfQMggAoYM9iRSlMm7E+VYq7i4oAYHPcGtccOVNej7b91SDKOx9u
 C+h0GjnzJ0giM+eFpfAWpZwwtCtguqMfUwOYzphIJfoqGGtzozyAgxUtfhkD0WhohbQw
 pNrDuKoBADVRHFS2jVowoYS2B88ZYQRdUoCe8MpIlJ1W7ndJwjE3YFVWKQ/9/bMKLb+w
 zKOky9PLoi2tofWKtifOjZZ3PbD95KgkQvI6nY9AkjxAuExo3hjB40XI3tg3EIDM8vK9
 dhrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xz+yYfMplPu5ZIKk6Ng0nX8uGkHzojnBY7LEEfSaIYQ=;
 b=H52HYo0W6+LD9JnEB381sqXaZgr/92l4VKjgXLO3RpVMEK5BkOJ8SxHWadauY0GlyR
 AYhyccwtQDWWzpLJTmO2BtzurbO9c4Z2Iia9CydLoxHDacXy6mF05TJeh9D1MWlQtMfX
 kOcqqmyb6QoOLVlt6taJXrX4CpTJ7QjeD9dQC/LvzO1U7QckbIn/WlEOkBARAvuXNT6J
 pzEpzpC7TZSygLKUTeNbXG5j41vY1fbEp3FfRue8WZoXM1UXF1qYiNiS1wXX4nKeQF1j
 N3CemkSUeUz9111mTbU/PGLeOmC9imlEMxox0mWOFOCdmF+Fdk2ANFMwipnPPlTKRsh4
 yeLA==
X-Gm-Message-State: APjAAAUrgN9/nicaUYFhtW8yMuS96VG0yKdJvtmkn1SdQNg3x4PtRqeU
 vK2HEqUbNBE1PulJJ2HRoks=
X-Google-Smtp-Source: APXvYqzHn6a4ciMCJZauwXTbi0pWSpMXVrle+/rUMgpkY6yicaV+dI5kVV6yIABkDSgfVOxPNviYSA==
X-Received: by 2002:a1c:9dc7:: with SMTP id g190mr3497325wme.115.1571232832926; 
 Wed, 16 Oct 2019 06:33:52 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id h17sm3139998wme.6.2019.10.16.06.33.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 06:33:52 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 2/4] dt-bindings: crypto: Add DT bindings documentation for
 sun8i-ss Security System
Date: Wed, 16 Oct 2019 15:33:43 +0200
Message-Id: <20191016133345.9076-3-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016133345.9076-1-clabbe.montjoie@gmail.com>
References: <20191016133345.9076-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_063354_218893_AD9A9BAF 
X-CRM114-Status: GOOD (  11.43  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 .../bindings/crypto/allwinner,sun8i-ss.yaml   | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml

diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
new file mode 100644
index 000000000000..99b7736975bc
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
@@ -0,0 +1,64 @@
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
+  reset-names:
+    const: bus
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
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/sun8i-a83t-ccu.h>
+    #include <dt-bindings/reset/sun8i-a83t-ccu.h>
+
+    crypto: crypto@1c15000 {
+      compatible = "allwinner,sun8i-a83t-crypto";
+      reg = <0x01c15000 0x1000>;
+      interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&ccu CLK_BUS_SS>, <&ccu CLK_SS>;
+      clock-names = "bus", "mod";
+      resets = <&ccu RST_BUS_SS>;
+      reset-names = "bus";
+    };
+
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
