Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DEC13D2D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 04:38:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZiRQ01ulTaG9Kiks1kegnwHSby8xs+X6693NTSj+xI=; b=NQr7+eznPVFgdZ
	WBRa1Q9JCp6VAz5Rf+X27ao95J/OjRkwtBBTgGWFoFJN4V+TqAKsht7V7q8ZXCXEkYDSkWsk7UqSX
	bf876gPXSKT9XzmnXUDYtylzYJi9GBko/7Q9vedwJfSxByO5mrMjAHozTwQbeAqa1AnVNrqGRmumI
	tlO0E8i4gfVLrLp+4pBlRDRJlSVFbaCM+30PCqHfPcLOncyjS8H2KmxZ8Y+aPLKOt27lQUxj2aqHR
	i3obTaY23BkNXXnrhiseWTO9jKhfpHnhJxLVbm/CquTMh86Qct2o0RcIx8gqIJwwV2dA9AJnIUVkm
	jvcqMqDRWrVsSE+9DcCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irvz1-00035q-BY; Thu, 16 Jan 2020 03:38:11 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irvyL-0002ew-7x
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 03:37:30 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 99999
X-Spam-Symbols: ARC_NA, RCVD_VIA_SMTP_AUTH, TO_MATCH_ENVRCPT_SOME,
 RCVD_NO_TLS_LAST, FROM_EQ_ENVFROM, RCVD_COUNT_TWO, FROM_HAS_DN,
 MIME_TRACE, R_MISSING_CHARSET, MID_CONTAINS_FROM, ASN,
 SUSPICIOUS_RECIPS, TO_DN_SOME, FREEMAIL_ENVRCPT, TAGGED_RCPT,
 BROKEN_CONTENT_TYPE, RCPT_COUNT_TWELVE
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id f2839845
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Wed, 15 Jan 2020 19:37:24 -0800 (PST)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 5BEF147720;
 Thu, 16 Jan 2020 03:37:17 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v2 2/5] dt-bindings: panel: add Feixin K101 IM2BA02 MIPI-DSI
 panel
Date: Thu, 16 Jan 2020 11:36:33 +0800
Message-Id: <20200116033636.512461-3-icenowy@aosc.io>
In-Reply-To: <20200116033636.512461-1-icenowy@aosc.io>
References: <20200116033636.512461-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1579145843;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding:in-reply-to:references;
 bh=lHS6Swr03XduvTqv2QteW+VB+Hxp6wJDnUuUYIsTnfk=;
 b=G5hY/H3UtY5cx1AC1m/L0XknFiHJy2q3+6cWrpWEYHvTDUjTctI1xd5Va6bK3IhIxksf/f
 trCzZDgBRfws2+9M+iRIqRYDf3EEwqOhCQz0+UH2TzHx0lSSJiFXqIu73KAsTKyblwuliE
 2KTURuu8T24SrZg1OS7SXnZQ3I0hXVo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_193729_332672_1878A720 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:8001:184d:5400:2ff:fe7b:e8bd listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Changes in v2:
- Set backlight property to optional. (Technically this panel requires
  backlight, but theortically it can be not adjustable.)
- Tweaked the example to pass schema check.

 .../display/panel/feixin,k101-im2ba02.yaml    | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml b/Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml
new file mode 100644
index 000000000000..be1ecce9c3c6
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml
@@ -0,0 +1,55 @@
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
+  - avdd-supply
+  - dvdd-supply
+  - cvdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    
+    dsi {
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
