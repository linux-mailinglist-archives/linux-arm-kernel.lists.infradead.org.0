Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB90186C3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 14:37:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jopI4a0lnvKcPoWIQDtsU3+Ud4Almv/gYxD7C8b74AM=; b=tONvF8xLa0JOdp
	lOlDz1mTuocTtleB1tz2mVLFhSSnvPuEVHfe/+tTd0RxGBi7RgesJwyproaLem7CQJC9XdeBHMAZi
	GNHPDPwS11F/9Q5j0RGa9hqzmBn4auXeKB00LRPKKoNjIlbcXQzzU8tkGtvEHi7rHOS+k1TFWgSaM
	UlnBfqD6z8rSAHHbAEPb9+dE9/gMuw6M8wi+4UwFZY8i8yxkjP00OfL3P1GUjX5Z8m3OTawi2jupS
	yVUtKm/2fMPvyfC2x1YWUbTWiJoY1bznqv51lHwfOL60HJobKpisG/QRBWTmCdk3khQTjVBhrf7vG
	syf/hIWeb2vFaaPjGf+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDpvy-0007Bn-EF; Mon, 16 Mar 2020 13:37:34 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDpvq-0007Ax-Dr
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 13:37:28 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 99999
X-Spam-Symbols: FROM_HAS_DN, RCPT_COUNT_TWELVE, FREEMAIL_TO, FROM_EQ_ENVFROM,
 SUSPICIOUS_RECIPS, ARC_NA, RCVD_VIA_SMTP_AUTH, TAGGED_RCPT,
 RCVD_COUNT_TWO, BROKEN_CONTENT_TYPE, TO_MATCH_ENVRCPT_SOME,
 MIME_TRACE, ASN, TO_DN_SOME, FREEMAIL_ENVRCPT,
 RCVD_NO_TLS_LAST, R_MISSING_CHARSET, MID_CONTAINS_FROM
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id 040dde7f
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Mon, 16 Mar 2020 06:37:23 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 4124F4C196;
 Mon, 16 Mar 2020 13:37:10 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ondrej Jirman <megous@megous.com>
Subject: [PATCH v2 2/5] dt-bindings: panel: add binding for Xingbangda XBD599
 panel
Date: Mon, 16 Mar 2020 21:35:00 +0800
Message-Id: <20200316133503.144650-3-icenowy@aosc.io>
In-Reply-To: <20200316133503.144650-1-icenowy@aosc.io>
References: <20200316133503.144650-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1584365841;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding:in-reply-to:references;
 bh=k5dZsJ/q6rrXyDSO2nmOTWqvPhDI4C+8rut25MFD+Sk=;
 b=OUlaYo/FyQ18QC+9N7l4EKPc9OYtnaEJ6rHTTmw5vWDG6bE4z3Dc0JryPNmmzGXHubXOqg
 vnAixztTiQggjBI+b2WQ1uKGq0JCKJczHDkbgeZsFMqH3T47xzNMNhu6qv5Xdi+haGzyNU
 I+cG4IhCqhUW5fahJroACP3Tm5imnHs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_063726_515303_1C969948 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:8001:184d:5400:2ff:fe7b:e8bd listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Xingbangda XBD599 is a 5.99" 720x1440 MIPI-DSI LCD panel.

Add its device tree binding.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
Changes in v2:
- Example fix.
- Format fix.

 .../display/panel/xingbangda,xbd599.yaml      | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.yaml b/Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.yaml
new file mode 100644
index 000000000000..b27bcf11198f
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/xingbangda,xbd599.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/xingbangda,xbd599.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Xingbangda XBD599 5.99in MIPI-DSI LCD panel
+
+maintainers:
+  - Icenowy Zheng <icenowy@aosc.io>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: xingbangda,xbd599
+  reg: true
+  backlight: true
+  reset-gpios: true
+  vcc-supply:
+    description: regulator that supplies the VCC voltage
+  iovcc-supply:
+    description: regulator that supplies the IOVCC voltage
+
+required:
+  - compatible
+  - reg
+  - backlight
+  - vcc-supply
+  - iovcc-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "xingbangda,xbd599";
+            reg = <0>;
+            backlight = <&backlight>;
+            iovcc-supply = <&reg_dldo2>;
+            vcc-supply = <&reg_ldo_io0>;
+        };
+    };
+
+...
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
