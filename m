Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 971D3CB6EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:02:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ls4z5jYg9z2h5G09ICxe89y2Ebmad5HkcaMoUc5zfns=; b=JttYUtb6gDKxDN7EQS9tc3KxkG
	DaXPZLA6wP4DvR847iDRjWr/ugH278jzeerps/OR0NpeR+/pzIIGyRwtQcwHAYnsBmjwkQgtVxD4S
	qhEvP9i1yldUKNHrcS0IhwvR0T40UiWP6Cpvs8ju1LkxGIzrRf3nzjMogCPa6hpvo51nmrfnmFfYf
	B6UfVL7CJcBJyq+1/GJxHCjiRVnA4BPtnfXRTjllKuad1Ou10XHourqcjNacgiMoSuKbFNKXMdc63
	DzaAV1+fLpKcwsWZ0fnmp8eumHKgZk75FvpXOoCss14T53wWgOuLTbO0Jf4d+LBLT+nz3q+G5asmv
	Mm3NkndA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJTM-00017R-Ig; Fri, 04 Oct 2019 09:02:00 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJSg-0000f8-Kn
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:01:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id y21so5018310wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 02:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Qa7DsO3ACeYY6r1oXxNziZNrJiVR8gru+lXValqW5yo=;
 b=iqiZDv6x4j5j7J4/i345eIHtj37AQf+5xW7hlIXOH4S/3064hPddqNd3O0p0FSN39v
 E1IZ/wcxnjvKYl7egSdMnEFegm+tshD7vZf7BF5bG+9WJ8M/HsreAdGCcbwUo6mWQaWD
 j19+wOFVmiEs0E2TDwQ9QjTgiILjeJD4wm/eqRKj4FxR6i4Sd+Rwz+WT516McZn+5Aak
 NpobKJQQLQXgF2w8nPfrsCPUSsbWsAfPthBU4T9rPLART/mjxAeMQnvmaddg7dzzW8Yo
 KhYbY0cHJN/86MEVbIn6VBySuFt8UGK7uo2BYdfd4KFufko+dcMMmUrXCX52Eq+Z/u9U
 f3Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Qa7DsO3ACeYY6r1oXxNziZNrJiVR8gru+lXValqW5yo=;
 b=pWMc8PLN8lUXVbli7hLfkbLl+tWK2rJ8qcksAQZVc7WGPuc/61lEckvvwwVkgaWgzY
 dNgkcdtf1KsNNbn0raqUprxOHJoTci+74D6VYkVIrxOlPynXpP9ljKYKFOzVqCqyVWyT
 2shR0EQOwjRsPpEYdrTqwifsPKA2XbhD/a2zHNEO7C68OEn4amCvE3z8rPHqJ/7r4ILB
 7kBTQt5VROSf6o2/iNdD/ZiOa2QCcOdeDR2azLCOovFkSxQC3QP7MEl40ZB4luYs2vdp
 mVpPo4RD/a50FHOsSd490M7bHIL9TmhJXNxdS/6nFqipzwheHudK4OipiJHcO1RYJuNS
 E8Qg==
X-Gm-Message-State: APjAAAXTyt2li4e5bmoDjrcM8j1UmTwCXLAHN/yLrshGmNJ95ciHBpI5
 FuAsn7kkzC806Q73MmQHJV2XJA==
X-Google-Smtp-Source: APXvYqz6Wrjp0Gh/DAqC/UBRAVNNd14/cnfE4WZ/qx3dCtQWucaJsnEwIFqwRzAEV2sRVie5vL2wCw==
X-Received: by 2002:a1c:a6ca:: with SMTP id p193mr9887223wme.103.1570179677139; 
 Fri, 04 Oct 2019 02:01:17 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v8sm7765170wra.79.2019.10.04.02.01.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 02:01:16 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v7 1/7] dt-bindings: thermal: Add DT bindings documentation
 for Amlogic Thermal
Date: Fri,  4 Oct 2019 11:01:08 +0200
Message-Id: <20191004090114.30694-2-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191004090114.30694-1-glaroque@baylibre.com>
References: <20191004090114.30694-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_020118_696876_589CBF6F 
X-CRM114-Status: GOOD (  11.34  )
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adding the devicetree binding documentation for the Amlogic temperature
sensor found in the Amlogic Meson G12A and G12B SoCs.

Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>
Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 .../bindings/thermal/amlogic,thermal.yaml     | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml

diff --git a/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
new file mode 100644
index 000000000000..f761681e4c0d
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/amlogic,thermal.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/amlogic,thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Thermal
+
+maintainers:
+  - Guillaume La Roque <glaroque@baylibre.com>
+
+description: Binding for Amlogic Thermal
+
+properties:
+  compatible:
+      items:
+        - enum:
+            - amlogic,g12a-cpu-thermal
+            - amlogic,g12a-ddr-thermal
+        - const: amlogic,g12a-thermal
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
+  amlogic,ao-secure:
+    description: phandle to the ao-secure syscon
+    $ref: '/schemas/types.yaml#/definitions/phandle'
+
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - amlogic,ao-secure
+
+examples:
+  - |
+        cpu_temp: temperature-sensor@ff634800 {
+                compatible = "amlogic,g12a-cpu-thermal",
+                             "amlogic,g12a-thermal";
+                reg = <0xff634800 0x50>;
+                interrupts = <0x0 0x24 0x0>;
+                clocks = <&clk 164>;
+                #thermal-sensor-cells = <0>;
+                amlogic,ao-secure = <&sec_AO>;
+        };
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
