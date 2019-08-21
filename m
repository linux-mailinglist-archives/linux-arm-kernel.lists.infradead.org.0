Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A19C96FEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7hzhJ2geRS60ldEeZvfdGboAgkVUVljM1Rl1NpmYFBE=; b=FIKUJyLv/VAyunt3aeiKFBfhRy
	qfDE3/mUaajBQsUJzl67f28uaQU6wFrUspNxBaL98buieZl29M5HMubN60vAIFcjmjRyUHIWYPGKB
	03ZiimjgBLRegwAHhS4qjii6l7TEeOtgbUBBtyCrHi64uboAos+FYcOzg6O7NTlTH0NIe7kvYdmyR
	8Kcdf2Nm+tc7xLeGx2hJwmZEhg97jHTq7uPLb9QsxJD4y6+S9YsOiDH9TibMw9qQTDX0kE+tlU6kU
	I4Z12dPKmkjp4xQYSrLeh4OC6jSR+C5TzQOJtoM1OfQzJHBm8rYc2RT/b9vH1JjvD6iqkrLVGvzth
	Tqy349jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GoS-0004px-Tj; Wed, 21 Aug 2019 02:57:28 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Gnz-0004Uk-9U
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:57:02 +0000
Received: by mail-pf1-x444.google.com with SMTP id q139so392006pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=66HDQRzZHdTqJMzuH6Ul2StzM+H88/d/kw2iTDPPxiw=;
 b=aKTJdh30JIXBTw+ZFVGZlJzdRWNv7l1fM+StfGdVO0DHSKcWe5jWVLZy14aSfn8yot
 BlvL+Nto8bJzZRnp0hAwvuvU34fBwFZpJ+lfOIrhvtI4e6ZVmqIfnmpKeZMkE7LQ7/3t
 QjKSvBL/57DtT0MoW+mLZrFirYCFU8qIYXUw7NbkW++y+02jffPKAsjjHZiMliaa5jxD
 cBm+pxrWAGdHUlOdZ9F+T+ANfvYDGKsM0rzXyzDMmNwZO8aFk2LQCuvjSdwwqeUn3mmZ
 OZUIgWYnEKoMBhCwyPREevg7N//jCL0PYpbPeIhvLVBRud4h5RN+umbMX2rgdGNPXbb4
 1hvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=66HDQRzZHdTqJMzuH6Ul2StzM+H88/d/kw2iTDPPxiw=;
 b=KEZACQq/hDKiMy8m9i7x/b8kZnimQpBW0sLjDpbOasEbPel5p9gU61C+U62TlbqW4Y
 GxGxFTTGbHXTZhfrBZ96GRqThnxvzKrJNDwFkTRFxtt+ivhewGOcJu+rbbrYDOzwQoxT
 oCA0mYWzdWk1ey7Kl1LdNEgkcSTtncHhNRdakux3q3srwa0g34QDp7Ky+uerH0ZlxTDd
 n4WSLlBtfvKRxhwWNIwR1W1P4wJYOStuiQvEkHeciyItgoRpzkC2rPpdPJgrtfEGK4RB
 olRVMRghWNEiseudk//821OqpWDjouKqzN3zKYKnXO+XRP/CBj9zSB31PufXwSGbPLmt
 TpZA==
X-Gm-Message-State: APjAAAWTeHy7B3OGtkdMJRIx1bjWXPhPLAGLEpyPkq9R7Nm2Y+H2V10K
 nDiGfwweL6AGXA3dI2vAZdrZ
X-Google-Smtp-Source: APXvYqwer5wKLVbBsWvw1dMjBaoBkf/H8r3O/zuyjNWugui5wsd7UiAhiOHW2jYRLbOQgRtZEC+AyQ==
X-Received: by 2002:a65:68d9:: with SMTP id k25mr27532480pgt.337.1566356218309; 
 Tue, 20 Aug 2019 19:56:58 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
 by smtp.gmail.com with ESMTPSA id
 d16sm13251682pfd.81.2019.08.20.19.56.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 19:56:57 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: [PATCH v3 2/7] dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO
 controller binding
Date: Wed, 21 Aug 2019 08:26:24 +0530
Message-Id: <20190821025629.15470-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190821025629.15470-1-manivannan.sadhasivam@linaro.org>
References: <20190821025629.15470-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_195659_431344_8D49B40A 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree YAML binding for Actions Semi Owl SoC's SD/MMC/SDIO
controller.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/mmc/owl-mmc.yaml      | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.yaml

diff --git a/Documentation/devicetree/bindings/mmc/owl-mmc.yaml b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
new file mode 100644
index 000000000000..f7eff4c43017
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/owl-mmc.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/owl-mmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Actions Semi Owl SoCs SD/MMC/SDIO controller
+
+allOf:
+  - $ref: "mmc-controller.yaml"
+
+maintainers:
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+properties:
+  "#address-cells": true
+  "#size-cells": true
+
+  compatible:
+    const: actions,owl-mmc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+
+  resets:
+    maxItems: 1
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    const: mmc
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - resets
+  - dmas
+  - dma-names
+
+examples:
+  - |
+    mmc0: mmc@e0330000 {
+        compatible = "actions,owl-mmc";
+        reg = <0x0 0xe0330000 0x0 0x4000>;
+        interrupts = <0 42 4>;
+        clocks = <&cmu 56>;
+        resets = <&cmu 23>;
+        dmas = <&dma 2>;
+        dma-names = "mmc";
+        bus-width = <4>;
+    };
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
