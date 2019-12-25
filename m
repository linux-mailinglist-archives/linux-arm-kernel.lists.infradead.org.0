Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB5B12A7C2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 12:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FXwmUvMt5aWTCwZKqfqB44Z0eeMJ7S1IHxbJHv9iTCQ=; b=CN5XJ+92TpK3g5
	9SfuZfd4DRbxlsyOl5B7aM0w28oVi5jivi0TJyxj4cquFCj6WNxiC9Lg5WJng92YXKOLawg44RODt
	0UqByRpCIiTj7vuPtXDBkZSLo5CkxQrOX6TyrVsDTvjMqJ/az0L73RQAUwKqr/MWxQXU+A5oMOjcJ
	psyWit9ra5rR0PVsbNAK6cCXS7jas7ahVA5CzKlyRNntMf5xt9RpfM2clS3j1mYm555Sn0ejTosjD
	r4kdfWMbNfnxrOiEzeOcHFv5G99OXev7rATxK3gEVTntvv1MJ31nXIjfSluyj7crGWa6VDMPAtZnf
	l2bpES+pSoaICU0dqn/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik5H7-0002Mv-GO; Wed, 25 Dec 2019 11:56:25 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik5H0-0002M7-Sy
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 11:56:20 +0000
Received: by mail-lf1-x141.google.com with SMTP id y1so16752844lfb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Dec 2019 03:56:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5mol6HJrMqqa1NJdam/PhpUhWyScfd+EBsQoCUp51Ik=;
 b=WTk1X7pxTyAFammbLNK7vRIMYYVvfw2Eotomu0eqpjnsMjM6g4FkkLRl4IxXW8ZpYR
 fK9mC6m6vj+Zg0SSU0vc10/4HHMzIRVynhqg5xy7lo2sTGztVriSHbEOSxi0BQZzZ9ui
 J1zC5SbiH2jVooIrPLRpLazyUpTeJ2zJho5KmqhuOc555fPlEz20jYN6a3fmNubU8dGT
 G4hN36M/p1pF+1ecdDwRrO9Mm4JSYSDs89wvm+i/+k66eV5uFvQBHp1GTyl1BxPIDFeB
 qV600Xn8gcOKap9ze+D82ZENpg25e0KHWQ09Ma6HSLmfJEBtZ3Vj1/GDpmfcD+VqP8KH
 JKNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5mol6HJrMqqa1NJdam/PhpUhWyScfd+EBsQoCUp51Ik=;
 b=hKobV8Z981MuG+7dIp2xbDkaI4Ecx1+5mHK3UHIVxCuWQ+Vndgkg2zzHWiYj996lRl
 ToAX9OznySnzz65xCexFBqnZ03sGOZgG6Twvg9EwL9yb95+ymLZqymcWrl5ox5pRe1nO
 NolTKVOZURewuGt0XVP+hDDTKZvJGGmTn3hG9jI4Xw5RvRV1doL7NrDYZskUygKNcuE2
 UyyFoTHvf92ffYtHNgk2oA1UXnHCSRF9doQGZlPGY+bxVl5Yk81pf0lNtMcaylO2kTJ9
 1pJ3vZmOMrRHIzjZKvdur7rh5buLG2NrkgX3VF4Yvl4fRGcw9abM9L1z7VyTxU/aWMv7
 Ywxw==
X-Gm-Message-State: APjAAAUp/vkL0hbra2DYbf/Vy8h7qb2eceUQCbiA6CRWLrf8auxetjcC
 E1Gu8lwoblCBBdP+MjQOAebwaA==
X-Google-Smtp-Source: APXvYqxsFWA2taLpUG5L1Aq/k8Pfzo9J+USCKy6bqVt61nncQ1kFP0NTXJYLubmK+nxbJwNTqEfwCQ==
X-Received: by 2002:a19:dc14:: with SMTP id t20mr22945983lfg.47.1577274976625; 
 Wed, 25 Dec 2019 03:56:16 -0800 (PST)
Received: from localhost.bredbandsbolaget
 (c-21cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.33])
 by smtp.gmail.com with ESMTPSA id o19sm13544465lji.54.2019.12.25.03.56.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Dec 2019 03:56:15 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <sean@poorly.run>
Subject: [PATCH 1/2] drm/panel: Add DT bindings for Novatek NT35510-based
 panels
Date: Wed, 25 Dec 2019 12:56:09 +0100
Message-Id: <20191225115610.14518-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_035619_071322_A7D8F17C 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds device tree bindings for the Novatek NT35510-based
family of panels. Since several such panels are in existence
we define bindings common for all, and define the compatible
string for one certain panel (Hydis HVA40WV1).

As other panels are discovered and investigated, we can add
more compatibles to the binding.

Cc: Stephan Gerhold <stephan@gerhold.net>
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../display/panel/novatek-nt35510.yaml        | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/novatek-nt35510.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/novatek-nt35510.yaml b/Documentation/devicetree/bindings/display/panel/novatek-nt35510.yaml
new file mode 100644
index 000000000000..a4a6b5adf15b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/novatek-nt35510.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/novatek-nt35510.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Novatek NT35510-based display panels
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: hydis,hva40wv1
+    description: This indicates the panel manufacturer of the panel
+      that is in turn using the NT35510 panel driver. The compatible
+      string determines how the NT35510 panel driver shall be configured
+      to work with the indicated panel.
+  reg: true
+  reset-gpios: true
+  vdd-supply:
+     description: regulator that supplies the vdd voltage
+  vddi-supply:
+     description: regulator that supplies the vddi voltage
+  backlight: true
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi@a0351000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel {
+            compatible = "hydis,hva40wv1";
+            reg = <0>;
+            vdd-supply = <&ab8500_ldo_aux4_reg>;
+            vddi-supply = <&ab8500_ldo_aux6_reg>;
+            reset-gpios = <&gpio4 11 GPIO_ACTIVE_LOW>;
+            backlight = <&gpio_bl>;
+        };
+    };
+
+...
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
