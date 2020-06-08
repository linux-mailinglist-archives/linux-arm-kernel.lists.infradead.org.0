Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D3E1F153E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGp+vGXX5shiqLuvnRLXI5dzr6bxEvUYfwkcaAAqjpE=; b=ZQnSwbBli57yy4
	MEGKhSlWImM2T4eXsJ7fFcEbeiSK84/ppDGFAL8RpU2IU7Wmz/rPvBqO8iv7IEltDxTs3YQp4CszH
	lW3dlga/k7sWy/h544qV+tSGC3iJZAQebTMT4osWp2erq0+hBH4vGW20XObI29QGIRcmZ/kNea9mA
	1uG8vSeED2BVzFpppUtS3EAMXWPYWe8oEmOzdLFJnBGD54tpWhFrC1sjIZH2aUEDA9RtYPy4SIl4/
	0KpEi1ldqMEuqeuAdFP0GhIqPc3FU/fkB8YMh9fxZgUQvaVnA9RDBfrIEzhJgul1Cjq9205AREGWZ
	y6J5iKMQq0du+rgK/iQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDvB-0002eJ-K0; Mon, 08 Jun 2020 09:18:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDub-0002IS-Oc
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 09:17:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id r7so16568386wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 02:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lm/JhSU6WIUD9liaClHiq2/rbC+K/Ls1HtNWMD1Nn2A=;
 b=FcmK3W9ITgW61d17rdHrRaPjerQ/Zh5mw4c44iJ75UtbSzKwd9ySNyhyPDuGMRTLxq
 2H6QaFZW+s365p8SysfF3q8kg99qujIAIP4GhnqyzQnLjlHXspbg5JEahrzJ78nWEnGF
 aRcrfKcxTNzXNxRKNmmJpBF0AB/+tPCe22GtOBCWMYTUXilPvW8Lvxdki1cX49ScKgUK
 BRySgoCAhcZNHORHpL3uFQgs1EBb0AUcAEA6HciCJVGjMtZEHTCkbSjntdhWzJH7kes7
 Dd7a2aUhqxsr62MAVe8R4uHDvOXyCJ9+YQ+PtOW1FMOHbhRtoJzpV3wFSqG9ChnILtxd
 lRMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lm/JhSU6WIUD9liaClHiq2/rbC+K/Ls1HtNWMD1Nn2A=;
 b=pYCK1LN9gGKNwBQtsLjlTfiOnzgzykXRTnBs0ikY1nQbZdmMKDGuNSkERtNrj3xLfn
 JuHGCoCCz8RuGdxWuFX0oKkeqbjmwz3dS4j+IV+1nn9ELcsR69kcwt8LLMnGN3FKwfzW
 BG1XsRWfvO0ZX0kqdJDbHacI7LRECQuIZVz1/6dn6bNFQuc5nauubaOJcpLX05hX2j5i
 E9MJ6IgY7i8qyUqxCqV+FbQO/bCW/4q11OJOoqXHVeg5sPlEuls1BnlmZ1dBkQ4Cg2d+
 DA/BQVCbFGWcMGfsI8yMxynrGQGH5S9KQfi1lP+7EXOb63PWq5RSNzQ9VaUfXB5ZKkyU
 N5pg==
X-Gm-Message-State: AOAM531JL6tIZBgkmc8K0KIYnrzPoDeQyRyjJXBWtoSue3oG7yGVXUiu
 BrFZXMJLmEHac0HAUaCtXe8WLQ==
X-Google-Smtp-Source: ABdhPJy5nApKLg7sAnx1p1z/S0XJC5YRyMc2U//Q+srm6fnQM91nzIe3TXIUUym4iQ5GereEV0LpJg==
X-Received: by 2002:a5d:4cc4:: with SMTP id c4mr21990314wrt.159.1591607864362; 
 Mon, 08 Jun 2020 02:17:44 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:22:5867:d2c6:75f4])
 by smtp.gmail.com with ESMTPSA id
 t7sm22732326wrq.41.2020.06.08.02.17.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 02:17:43 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: lee.jones@linaro.org, rui.zhang@intel.com, amit.kucheria@verdurent.com,
 daniel.lezcano@linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v3 1/5] dt-bindings: mfd: add Khadas Microcontroller bindings
Date: Mon,  8 Jun 2020 11:17:35 +0200
Message-Id: <20200608091739.2368-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200608091739.2368-1-narmstrong@baylibre.com>
References: <20200608091739.2368-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_021745_820803_1DC72295 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, linux-pm@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This Microcontroller is present on the Khadas VIM1, VIM2, VIM3 and Edge
boards.

It has multiple boot control features like password check, power-on
options, power-off control and system FAN control on recent boards.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/mfd/khadas,mcu.yaml   | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/khadas,mcu.yaml

diff --git a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
new file mode 100644
index 000000000000..a3b976f101e8
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/khadas,mcu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Khadas on-board Microcontroller Device Tree Bindings
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+description: |
+  Khadas embeds a microcontroller on their VIM and Edge boards adding some
+  system feature as PWM Fan control (for VIM2 rev14 or VIM3), User memory
+  storage, IR/Key resume control, system power LED control and more.
+
+properties:
+  compatible:
+    enum:
+      - khadas,mcu # MCU revision is discoverable
+
+  "#cooling-cells": # Only needed for boards having FAN control feature
+    const: 2
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      khadas_mcu: system-controller@18 {
+        compatible = "khadas,mcu";
+        reg = <0x18>;
+        #cooling-cells = <2>;
+      };
+    };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
