Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C431371DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:54:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGTkbugkya0qdGtfCB9ZeRgpF3NKMbBQz6CO3/G9HXU=; b=RNj+Adgq0IlgkU
	j0aGANt2Im/8y62er5eFKCJIsxKr0CaKAwPMkEH7orU4PubrWctoAIC8NsIR9Y4X6QAOpEU8fTd1j
	Ymiua9eSoxKOtu7USHC9IyFlRBzFpaQzkwHJwURUdvCGUSSSLwD3p+TDC9i6ukdu4E7Ej5mo5qf+B
	Pxw4mHDrGSuIPfjfXDRhTMug6xXE9VYhiTTXvsVsvUiiE/tUK7zw6oFnN5LlyKz8es7nzbu9FmvYD
	klvB8uZlY92ks6WdZop9pe1k5K3QTUp1gm4nJJiRjZpi+bObGhwK+vLUReiRXXhx6R10rykAn4ahg
	PjkowP6fOVUwFqf9qGfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwcV-00009y-0X; Fri, 10 Jan 2020 15:54:43 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwbo-0008AC-HK
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:54:02 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 15
X-Spam-Symbols: ARC_NA, MIME_TRACE, SUSPICIOUS_RECIPS, RCVD_VIA_SMTP_AUTH,
 R_MISSING_CHARSET, BROKEN_CONTENT_TYPE, MID_CONTAINS_FROM,
 FROM_EQ_ENVFROM, FROM_HAS_DN, TO_DN_SOME, TAGGED_RCPT,
 TO_MATCH_ENVRCPT_SOME, RCPT_COUNT_TWELVE, RCVD_NO_TLS_LAST,
 ASN, FREEMAIL_ENVRCPT, RCVD_COUNT_TWO
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id 06909b6f
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Fri, 10 Jan 2020 07:53:55 -0800 (PST)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id AD79446EFC;
 Fri, 10 Jan 2020 15:53:46 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 2/5] dt-bindings: panel: add Feixin K101 IM2BA02 MIPI-DSI panel
Date: Fri, 10 Jan 2020 23:52:22 +0800
Message-Id: <20200110155225.1051749-3-icenowy@aosc.io>
In-Reply-To: <20200110155225.1051749-1-icenowy@aosc.io>
References: <20200110155225.1051749-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1578671633;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding:in-reply-to:references;
 bh=z5doQufRXnQT5L4o4+thcACLlpA/uKfmmktXJZpePJk=;
 b=jxqLBstjTsy4JyM4ofvrsBDqc9fIHbbUL4VKzx57QgeQIzto6Oc202p6dTD6GDeDdCOR2v
 LELUX2m/wri/B4Rq3WorrVoophvrQNWUBf3qxDBarGlojSp8z1W+Gk/IUGlc7NHZ1v5zS4
 xmqsYWDb/dlSm+8taLY0SNmEHtXSN0c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_075400_612888_52811AE5 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Feixin K101 IM2BA02 is a 10.1" 800x1280 4-lane MIPI-DSI panel.

Add device tree binding for it.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 .../display/panel/feixin,k101-im2ba02.yaml    | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml b/Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml
new file mode 100644
index 000000000000..7176d14893ff
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/feixin,k101-im2ba02.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Feixin K101 IM2BA02 10.1" MIPI-DSI LCD panel
+
+maintainers:
+  - Icenowy Zheng <icenowy@aosc.io>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: feixin,k101-im2ba02
+  reg: true
+  backlight: true
+  reset-gpios: true
+  avdd-supply:
+     description: regulator that supplies the AVDD voltage
+  dvdd-supply:
+     description: regulator that supplies the DVDD voltage
+  cvdd-supply:
+     description: regulator that supplies the CVDD voltage
+
+required:
+  - compatible
+  - reg
+  - backlight
+  - avdd-supply
+  - dvdd-supply
+  - cvdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    &dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "feixin,k101-im2ba02";
+            reg = <0>;
+            avdd-supply = <&reg_dc1sw>;
+            dvdd-supply = <&reg_dc1sw>;
+            cvdd-supply = <&reg_ldo_io1>;
+            reset-gpios = <&pio 3 24 GPIO_ACTIVE_HIGH>;
+            backlight = <&backlight>;
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
