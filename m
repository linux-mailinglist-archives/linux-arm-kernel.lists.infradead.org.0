Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59A810C5A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 10:07:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/sKpkYWAEQfLbdoaMdOzXdAJQrMHDtq8SUeVzQO0I+Y=; b=bSKQP1iLnvQQH5
	Tb2M3iTwU1m8kga3u93YH0sJ2eKr6z/iBvQwcFCUUcsWTwPz8GAlsdQIA6ejq5l90UA7rsg0c5vUU
	1T8COzqD3HxeaNrjlwPzIYeDfYRDCP1gogrovj66NF3laxCyRKb3hV5zNT0aGCOl8yGAJoL0/bC66
	dwvYKM51/lnuMR75cyz1KZ005FTV8oRp281zI84oYbQ6MdKLa7M/PjQI92yk87ACtz6GXkjAuiiPb
	/5cMlWrIwDxSq7h1Eh+JG2cav1frGr635R3rf0hYoXBrmkW+1kcJpH6+8sXpe356/3NHxmd3Bs8f3
	MD0CqmFbYSvyyFVDbaQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaFm5-0001uH-8L; Thu, 28 Nov 2019 09:07:45 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaFlw-0001oh-0P
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 09:07:38 +0000
Received: by mail-lf1-x142.google.com with SMTP id y5so6750382lfy.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 01:07:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y5UjhnJuEjyj7DznN8ie96zzIoa0qgehxmQpy2Flwiw=;
 b=jQZ9KLRH/IyP7J7f34S59X4Ixad02kof4PXY8+7sdJJV798Q3/puEG50I+ea6cSHeE
 f1McteR0Ll2DfBB3hWoycKwI+Vq/n2ibWW5VqggbNVt1BDbMKHc+Fk5Dibzl502QKDxu
 NifTSUg/07Fa5RU/CbYzSgdkiZ94td3zCvpGMrpIcZgxIi2OGlJInmqeM9vzm1MYp7Y0
 KYJGhc3th9ybGvd1iNbdCaL5h84XuElMImS7geuzXiUP3TjGmo3bddm15Na91TPbvdHE
 tctuE/d5+QPZCSAvaWJzO2J1X9LLiCZsYXtkbKqZeGE6RlKwc2gXUrE5CLkBdBHOyeew
 yHQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y5UjhnJuEjyj7DznN8ie96zzIoa0qgehxmQpy2Flwiw=;
 b=azY3CzB6QQdy74T8TL5MWAKexgPZWTUBa+3ju7cqvScGlD9qcvZMy+AVYrIPqq/94L
 QIsN/M9Jo/ji27Chm/BhBM0EhTvcR0FHDbIzOsyCELrooqRtxUtYWufQcWduz4eeeKSv
 R6mE0p5NxCmBZAHrojCQRD9FnM3rSdHwZNdo27zCw3T+jD8DfLKXD6+tAQXiYd22SnbM
 MIVZ7sqsjVV5w3aCg5jtWrxNx93l8du8F+B9zTn8A0esR1ioeH3EidoBHsL3bJsu1Hri
 KDnfBVb7u9Noqa0R5ol8kJTamYtgNJ+UflD6uIfqAylkYHqghxd64Raj2aNeLc9iGyHT
 ok6A==
X-Gm-Message-State: APjAAAXv5Hg9+xd1D6MzDTlT13zgDJ+N3Bd9WuOyIvnLDldCzuWHonP0
 5pWtFRXTp8zI7F94DcINjUb71A==
X-Google-Smtp-Source: APXvYqxUh3IoX9UT1+UEu8f/UNi7iEEkYiAYl9UMEyr8qEe1TA/mgZrkiAjCEM5tae8KEnBbxNMVDw==
X-Received: by 2002:ac2:5195:: with SMTP id u21mr561024lfi.141.1574932051377; 
 Thu, 28 Nov 2019 01:07:31 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id g11sm8238595lfb.94.2019.11.28.01.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 01:07:30 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH v6] drm/panel: Add generic DSI display controller YAML bindings
Date: Thu, 28 Nov 2019 10:07:26 +0100
Message-Id: <20191128090726.51107-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_010736_257984_127FBDF0 
X-CRM114-Status: GOOD (  25.12  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
 Stephan Gerhold <stephan@gerhold.net>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a starting point for processing and defining generic
bindings used by DSI display controllers and panels attached to
the virtual DSI ports.

Cc: Stephan Gerhold <stephan@gerhold.net>
Cc: devicetree@vger.kernel.org
Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v5->v6:
- Rename subject to pertain to DSI display controllers in general.
- Change some of the wording in the DSI controller description text,
  making it clear that the binding pertains to the combination of a
  DSI controller with at least one panel attached.
- Add a proper compiling example.
ChangeLog v4->v5:
- Drop the example.
- I still have a vert annoying error message in the Sony
  panel bindings that uses this schema:
  sony,acx424akp.example.dt.yaml: panel@0: $nodename:0: 'panel@0' does not match '^dsi-controller(@.*)?$'
  As this is modeled very closely to
  Documentation/devicetree/bindings/net/mdio.yaml
  and that one doesn't emit this type of warning for its ethernet-phy@0
  etc I am pretty much clueless and just can't see what the problem
  is.
- If I can't figure this out the only viable next step is to drop the
  ambition to create yaml bindings simply because I'm unable to do
  it, and go back to traditional text bindings :(
ChangeLog v3->v4:
- Rename into display/dsi-controller.yaml
- Require a virtual channel number for the DSI panel, as
  DSI have this 2-bit virtual address field.
- Bring in some but not all properties from the existing MIPI
  DSI bindings. This schema can be used with simpler panels but
  not complex panels with multiple virtual channels for the
  moment. Let's handle it when we get there.
- Add an example.
ChangeLog v2->v3:
- Make a more complete DSI panel binding including the controller
  and its address-cells and size-cells and a pattern for the panel
  nodes. The panel is one per DSI master, the reg property is
  compulsory but should always be 0 (as far as I can tell) as
  only one panel can be connected. The bus doesn't really have
  any addresses for the panel, the address/reg notation seems
  to be cargo-culted from the port graphs and is not necessary
  to parse some device trees, it is used to tell whether the
  node is a panel or not rather than any addressing.
- I have no idea how many displays you can daisychain on a single
  DSI master, I just guess 15 will be enough. The MIPI-specs
  are memberwalled. Someone who knows can tell perhaps?
ChangeLog v1->v2:
- New patch after feedback.
---
 .../bindings/display/dsi-controller.yaml      | 91 +++++++++++++++++++
 1 file changed, 91 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/dsi-controller.yaml

diff --git a/Documentation/devicetree/bindings/display/dsi-controller.yaml b/Documentation/devicetree/bindings/display/dsi-controller.yaml
new file mode 100644
index 000000000000..fd986c36c737
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/dsi-controller.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/dsi-controller.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Properties for DSI Display Panels
+
+maintainers:
+  - Linus Walleij <linus.walleij@linaro.org>
+
+description: |
+  This document defines device tree properties common to DSI, Display
+  Serial Interface controllers and attached panels. It doesn't constitute
+  a device tree binding specification by itself but is meant to be referenced
+  by device tree bindings.
+
+  When referenced from panel device tree bindings the properties defined in
+  this document are defined as follows. The panel device tree bindings are
+  responsible for defining whether each property is required or optional.
+
+  Notice: this binding concerns DSI panels connected directly to a master
+  without any intermediate port graph to the panel. Each DSI master
+  can control one to four virtual channels to one panel. Each virtual
+  channel should have a node "panel" for their virtual channel with their
+  reg-property set to the virtual channel number, usually there is just
+  one virtual channel, number 0.
+
+properties:
+  $nodename:
+    pattern: "^dsi-controller(@.*)?$"
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  "^panel@[0-3]$":
+    description: Panels connected to the DSI link
+    type: object
+
+    properties:
+      reg:
+        minimum: 0
+        maximum: 3
+        description:
+          The virtual channel number of a DSI peripheral. Must be in the range
+          from 0 to 3, as DSI uses a 2-bit addressing scheme. Some DSI
+          peripherals respond to more than a single virtual channel. In that
+          case the reg property can take multiple entries, one for each virtual
+          channel that the peripheral responds to.
+
+      clock-master:
+        type: boolean
+        description:
+           Should be enabled if the host is being used in conjunction with
+           another DSI host to drive the same peripheral. Hardware supporting
+           such a configuration generally requires the data on both the busses
+           to be driven by the same clock. Only the DSI host instance
+           controlling this clock should contain this property.
+
+      enforce-video-mode:
+        type: boolean
+        description:
+          The best option is usually to run a panel in command mode, as this
+          gives better control over the panel hardware. However for different
+          reasons like broken hardware, missing features or testing, it may be
+          useful to be able to force a command mode-capable panel into video
+          mode.
+
+    required:
+      - reg
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    dsi-controller@a0351000 {
+        reg = <0xa0351000 0x1000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "sony,acx424akp";
+            reg = <0>;
+            vddi-supply = <&ab8500_ldo_aux1_reg>;
+            reset-gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
+        };
+    };
+
+...
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
