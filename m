Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF25E2417
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLvBHc3gVeGIY0YXQKOcYU3Q7cYtK0TDv3xr+UQR+zk=; b=m/Exr33sMaYkci
	2JZMBO6O1QIl+W+1/3LPLfxyr08Rq4LBKZsLoqP4QcVDCHcMG1j9WN7GHkgdXGP6ZtpYUzGkscjv4
	GJC0eKV+IhljKur1Dvn71E/oSbezKYA/LQvTmtyCcxkvkoQ8/7qaTITzJxKuckFF3U37108gUlAbG
	2uMok4qTifGuN9I3q9dyCBO8JSRS4IWvOnSnMN4mYuohSvfUYNY5PHWczgPkBDC0ClRdGn1UoHCdV
	GuGYvXPHQcgdSjwl8LD1sIytsOniHRSkNfihWwB/UZcyvYRXNWSX5GIuSLELfWXPNh7Qp+bZe32Rj
	329t5kAjBh9PhLnRO7og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMy9-0006MG-Tl; Wed, 23 Oct 2019 20:10:57 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMxc-000693-41
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:10:25 +0000
Received: by mail-wm1-x341.google.com with SMTP id q13so297718wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YeVIHo25aNxqgkPFtqlcHgTXA3cBcyk3epMZWtBEgr4=;
 b=CSlRQWrU1abnaj7duzwPLvaB3wvFZktGMyzXA4ZNgSqVbF1EE8voO5A1ZxKAxEIQ7E
 31NY8Yrr5V2EDd23obZF/8PsD+hbx+jv5AJUEsJl5jL8XN8qyKKh5TKTgo+0lEhprka5
 t6YeZBB6zUythbHjHTwW5Nhtr1uXBqa/RY75Qyiui6eEJ02b56N6Aaurpkl1FWB1lbfk
 r6PwNKZ7RQwglYL/kn98ieJf2rKPFn1gNjpQ9304vyqZKNwuAlWQD9rETQ3TTafOt/Dl
 PsBjoLvVjU1QrnLcmvI6I82ATgiGgQYsU4XWnT1JaPMJNfbwXnvPS+w26l5e0Od6XnyT
 GVMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YeVIHo25aNxqgkPFtqlcHgTXA3cBcyk3epMZWtBEgr4=;
 b=t5xWR74Qvt19ArQM8vjEHWLMLzvEfjBb7g6fU5Mta/RCt0p3+OaOhY0WMSLbL4lFlR
 jV4GipDV2M1ATZZ8FxHVFF3W3PQZx8LwWiLU8haCCRa8bq5dhUzjI0ULslham6aa+Qx/
 /TPSOwFAG/fnJli/vPozF4h80l5UliyNkt5TUqvCerit8pPgLaw2JZ9KmOwQ/kXwnjOh
 FbnfpHYAkTr2krUkXvXa1QDUQFRl2F2s50/Tp4+gAUsTMN6ClVM1tK2FihxP1iuJEedY
 TyWrxvCLmJX6UJ0O1yhs/mSh9v6c7XLUTvzYLFmQ0E6doZ4F4jp/4zJ6xTwm3Z8xy/Ik
 TOFg==
X-Gm-Message-State: APjAAAX8RIsrk/Q4+PxjbTr8ozMji7Cv6MupCG/ldH0AZuHRIWEXijnY
 h3xLUb4OPbsoObUeSTtTcqI=
X-Google-Smtp-Source: APXvYqy3VTLbFkblzNKQITLeEDXFOdssTr3+YocP/wu2kW9aOOPYQhEfer3K5vXbAsxW7BrlSM4Caw==
X-Received: by 2002:a1c:d8:: with SMTP id 207mr1464356wma.65.1571861422914;
 Wed, 23 Oct 2019 13:10:22 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id h17sm277261wmb.33.2019.10.23.13.10.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:10:22 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH v2 2/4] dt-bindings: crypto: Add DT bindings documentation for
 sun8i-ss Security System
Date: Wed, 23 Oct 2019 22:10:14 +0200
Message-Id: <20191023201016.26195-3-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191023201016.26195-1-clabbe.montjoie@gmail.com>
References: <20191023201016.26195-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_131024_184199_982C8CD3 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patch adds documentation for Device-Tree bindings of the
Security System cryptographic offloader driver.

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
