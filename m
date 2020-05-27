Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1481E3A87
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EFVihLmaYYjmqSh7ccHYxegYfQHVcUgqtqx4qPU9PDE=; b=BsBQVnejkE7yWn9DI4k3jluJo1
	iC6OCn9EcAtdUMWgY/WGUI1YgljbVxYg2+EGycwGaFqeCHHeZLvCzV0KHX9rCoxaBC1pALCWQ/4Fj
	zrsFQjQi635Q+NUpjH0d6s99RmTm2CbSu//ICbK8HxIKgc/MIyR9lbogQgIJQZXFFUNJdw9jQ3wSG
	vBpNp/eIPYNT1M45X1IehrJ9lsVoJMzS9jvmVLOXzIozC1uIiY0CqHRuiPDdPxLRDojQpjEzZTBta
	tKzCuy1VnhEeE1Bb+vxHwmaMWnRGsOAck8lPKVTKXb1iZOjI6Vsl8AyikJkM3sbHLhibsUdv2hNnQ
	avHP+4Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdqV5-0003we-Fo; Wed, 27 May 2020 07:29:19 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdqTr-00035D-5L
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 07:28:05 +0000
Received: by mail-pl1-x641.google.com with SMTP id k22so9820328pls.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 00:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nVArjOONMUkkYFoFrci5k0663uSmHnt2FzTEZnX/GkE=;
 b=fNuI+idsbzoB3q+zS+ICH8mO5EylmfUuUOqZmykgFsWg7vs6FF87px9saoDbnpMB1N
 9Pt6MoaMW+ot6Kjuwk95RYR4F8rLKpcDYuvEvPOPftpgTVRx/KD0Gz1y2dCPMWKOrZcE
 aX+Nij+DtOvqgqXWrssP49bQvzkFQuV0TsLmqFgDyG3xOZayLc+E2xe88K/lunp1mlOm
 uhJiCNPxCW/g2h4L9YdqTpAqKNA6BUHtm3B2QUJe/FsjT4g7IE63UzNB5x5j2z09Iabr
 +peSmHWwb+BBTn/5IUJ1/Yb71gjsvAYsMeRC8gC/zKp6zOM0uqvUXaAbPgJf/N+51uig
 OoRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nVArjOONMUkkYFoFrci5k0663uSmHnt2FzTEZnX/GkE=;
 b=ExS2kgiOL9dqb85dfCwaZocpoQkHEwtO4I5tcT57N5aLD5W3b7IoRROtEEtVb3/voW
 GfBlWVsUL7bQ35jvrqzaEw/oqe1UFgLM+HO26uLbKQLZdKrfISjYDtv7aeWdDoefkdH/
 mT9ZJVTymVuJrujpRCikTF7QLmAluQcA9ra0DGKEShTpeW8vGAeot7LlI9ogrFs2N2Ul
 4Jt4do6aS65+lpoqgD0tlux0nYpXe6ufGExcldvx+YWinm0ZasdzkoGKsPDL4GtBJ6d5
 b6gG16u8RDHmm0eIYLguiQuOs387hcn+yUp5jjV1gkjm92YKaZliBSlAETrNcYXFJiNU
 TwFw==
X-Gm-Message-State: AOAM533MMDNMRsAmJ5PMrkPYVBYydKfquYtUCokdme+ZlXnXewmlNUGD
 lVuHwXxrNIS4TwyNy8JXttUNjPM6AP4l5w==
X-Google-Smtp-Source: ABdhPJzrL/U3t1oZby1+25XxH8pSctzfppOL3s8v/Pl5c9EFRQsy1WnMGrduSxxRz3uMkZe46M4AsQ==
X-Received: by 2002:a17:902:7b96:: with SMTP id
 w22mr4863111pll.232.1590564481460; 
 Wed, 27 May 2020 00:28:01 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.44])
 by smtp.gmail.com with ESMTPSA id q201sm1371842pfq.40.2020.05.27.00.27.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 May 2020 00:28:01 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, p.zabel@pengutronix.de, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, thierry.reding@gmail.com, sam@ravnborg.org,
 airlied@linux.ie, daniel@ffwll.ch, mturquette@baylibre.com,
 sboyd@kernel.org, andy.shevchenko@gmail.com, noralf@tronnes.org,
 linus.walleij@linaro.org, broonie@kernel.org
Subject: [PATCH v6 4/9] dt-bindings: display: panel: Add ilitek ili9341 panel
 bindings
Date: Wed, 27 May 2020 15:27:28 +0800
Message-Id: <1590564453-24499-5-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_002803_340681_3B810996 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Add documentation for "ilitek,ili9341" panel.

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 .../bindings/display/panel/ilitek,ili9341.yaml     | 69 ++++++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
new file mode 100644
index 000000000000..2172f889af3c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
@@ -0,0 +1,69 @@
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
+  streams with 16 bits or 18 bits.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          # ili9341 240*320 Color on stm32f429-disco board
+        - st,sf-tc240t-9370-t
+      - const: ilitek,ili9341
+
+  reg: true
+
+  dc-gpios:
+    maxItems: 1
+    description: Display data/command selection (D/CX)
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
+  - port
+
+examples:
+  - |+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel: display@0 {
+                 compatible = "st,sf-tc240t-9370-t",
+                              "ilitek,ili9341";
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
