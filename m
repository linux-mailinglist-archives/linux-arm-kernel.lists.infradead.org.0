Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C731CA1EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 06:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gpU3SsX+4G0KyGGtkyS3hWj7GLltK0Uweca0SW9GWR4=; b=tp3qF5Z9pICMZr/jD7OTrTYY6K
	+OORnZ6W4+CfUt/dJahHf+xdQciQeCoU4rORrml1Nrbyj2VQ2n9uHrPxyavRABXDt+L/obVwQr1+0
	jgbzZ6crDwFdOgCpqy9ZhBis9AJhxr/Fy+UJRxFU6dTvD46Y9L2QiOeRvKlJP/gVom7AUHG66Q+lR
	vb9qtP6OmcdHxBXfKNY6Xo8UDD/SiPJ1vwgUXrQ3U9+ktE38oO3/cJOdpqoES/+HWreMNF3WIcZzr
	uYilI+zVXG/bjRfrM2XEHOFBtyIn1js2dK7KrZnMgNH6kHSsFSh7kEO5zr41CXsfBRgf1A+Z4t7Ta
	WvfvphxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWuP4-0006ty-US; Fri, 08 May 2020 04:14:26 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWuOG-0006LU-54
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 04:13:38 +0000
Received: by mail-pl1-x644.google.com with SMTP id f15so166437plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 21:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Db6qOihor5Bj8DkFXZYYMAre3zfCOsyEXmYIyTZWgqc=;
 b=HZa4Ftrmwnb5Ap1XUema1giGFlB40rvdwsHrEWexpeZ6u5tBF43Pq4MFzxAYUu84aI
 JunK7vj/+KG0NUE2q78MI7A8GNKQoC+8zU6hWn6d1wy/rzVCxyRUPShkVXyJi/z4rZ8X
 i25uLgD5ruVcCH5djhBBhZKzsS361Rev4ajBHWYRd4FOcqm3ApHA7RHKdjnCKfSxMdL/
 OYq7KHB0yYJoOYEjmMuKH2w3YwgJDQNmQMo5R1V5fS/spm2DHonKxkvkoJEquM3oeLcX
 SCQtrBzKRLKh6kVEGNoNtw3jUeLMTnSQoqR3iHXqONoXhHB0amdTdYRt6MPXFkfyz2Fy
 C1xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Db6qOihor5Bj8DkFXZYYMAre3zfCOsyEXmYIyTZWgqc=;
 b=QOAsNli6LQPXx73QOUr/JVoNyJdQ1qEb3sFMepHN9FnkWK4n3IwGJ7n1T7HRD4pvxO
 CwXiXkIA82PXPl1Op1IX/ydR+xHFFxLK0a94MpWmn2AVKt0yQ7vClB+nAYyyBxOpxyK5
 FKNN+ccyhaqkUAEgQ2hSoPHB7kjtjyaupu9y7poSyD34iK5sPy9/FRuqbri6ic3C2WWz
 sHHcfnND0UybcUHLn9HDetgTnaHpzdCm1ZWcJa5ecxnBmnwPTMUqPy9ixAYoscChgXNd
 aH1XW/9scTWnhl9RrZ/6zsqt4dC0dCUslgfNAG+p2SNnxmdJrDtg3voPBtSQqIun/7H7
 KIzQ==
X-Gm-Message-State: AGi0PuYFKob9yMruJ+Yps0JtY+UICvKSUzBUfRwr7ie7YiHWpmyEP6Ay
 I5hB1zyJDhX/aYM/yxYtwqo=
X-Google-Smtp-Source: APiQypJLGCxoTkz92z+vdPnEwubOafhAAPIJICKtjIgVVEZQPHbclNonxkvq6mn3XY2pZohgYlX7KQ==
X-Received: by 2002:a17:90a:208f:: with SMTP id
 f15mr3825087pjg.60.1588911213774; 
 Thu, 07 May 2020 21:13:33 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.190.146])
 by smtp.gmail.com with ESMTPSA id h12sm314868pfq.176.2020.05.07.21.13.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 21:13:33 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
 daniel@ffwll.ch, mturquette@baylibre.com, sboyd@kernel.org
Subject: [PATCH v2 3/5] dt-bindings: display: panel: Add ilitek ili9341 panel
 bindings
Date: Fri,  8 May 2020 12:13:12 +0800
Message-Id: <1588911194-12433-4-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588911194-12433-1-git-send-email-dillon.minfei@gmail.com>
References: <1588911194-12433-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_211336_201348_A9968487 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 dillon min <dillon.minfei@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Add documentation for "ilitek,ili9341" panel.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---

Hi Rob Herring,

This patch [PATCH V2 3/5] about ilitek,ili9341.yaml was verifyed with make dt_binding_check

thanks.

best regards,

dillon,

.../bindings/display/panel/ilitek,ili9341.yaml     | 68 ++++++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
new file mode 100644
index 0000000..94c2b15
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/ilitek,ili9341.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ilitek-9341 Display Panel
+
+maintainers:
+  - Dillon Min <dillon.minfei@gmail.com>
+
+description: |
+  Ilitek ILI9341 TFT panel driver with SPI control bus
+  This is a driver for 320x240 TFT panels, accepting a rgb input
+  streams that get adapted and scaled to the panel.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - const: stm32f429,ltdc-panel
+      - {} # ilitek,ili9341, but not listed here to avoid false select
+
+  reg: true
+
+  dc-gpios:
+    maxItems: 1
+    description: panel spi dc gpio
+
+  spi-3wire: true
+
+  spi-max-frequency:
+    const: 10000000
+
+  port: true
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - dc-gpios
+  - spi-3wire
+  - spi-max-frequency
+  - port
+
+examples:
+  - |+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel: display@0 {
+                 compatible = "stm32f429,ltdc-panel", "ilitek,ili9341";
+                 reg = <0>;
+                 spi-3wire;
+                 spi-max-frequency = <10000000>;
+                 dc-gpios = <&gpiod 13 0>;
+                 port {
+                         panel_in: endpoint {
+                           remote-endpoint = <&display_out>;
+                      };
+                 };
+             };
+        };
+...
+
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
