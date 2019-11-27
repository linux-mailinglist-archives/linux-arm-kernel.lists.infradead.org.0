Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 087C710AA2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 06:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S47TEqXErpXU4f3AwclTQAjCFa00RGSp65CmczXYGyg=; b=dVyk1xj9QyF1YA
	ChgkvyHcvIbqyT00AtQhFj/EW51/ft+39dBW9OZLvMArVyavQ/MR6vzV5epzTBAkwyPlcPjAEbFwz
	izZVVaRXkL8X8M0sLsT6MKrxx2A7CeC7jlT5Nne2JoT15/pGg5Fgo6pHe+fE1XhPPbTsxNaiGTWdI
	BzRiTdvjkFr/YkeHkhgeBt3mmW4jdqMyErLyFtC2qwCg2YzqFbsET+0BXYJzhg9IbFHx1QX/SYsXY
	X7786cRpGSLaPdou319hOw4tDzXN8CxCFpO7HI9KbkFtn6ATOOLABQoVm9nsaZikDw492DtX7kslE
	hcWwtT1396FyL0uQsNtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZpuM-0001s7-Mc; Wed, 27 Nov 2019 05:30:34 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZpts-0000xL-Ja
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 05:30:06 +0000
Received: by mail-pg1-x544.google.com with SMTP id b1so10191393pgq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 21:30:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m+wA1RX04BSPnVjNbxGCBXt8jtUUgOJo5n6EFES/ZC0=;
 b=NAQ6Ywzj9ZjMbYy+Q3DneIn5TOVZ2ug1lpiHFijsVz2JtEvPUBvBkgj8JHiEkdBqyD
 Yo1ds6nVDXNM0cJaEO0kynwlTYTLnDEpcjYckZrlyVH0BIIVQvVKOk9lDDTLM9ygfUiy
 yrqwbgM/5YTex60dV7QIF11UcZndyIwbCpN1qtNBk3y/4b3vsnEZtfKnSlclLcxhcwC4
 7nEwpotg17ZNtV0bX5M4ics/xwBQrih/YNycmZ17Djzt70nBHA2KiO0Cq5goqv+7zWaq
 56Xz1OLjqebh7RxTS0qZzIKBqMDsbpZvvJDVLcdlyl5EtPjYFa4VWrgZ/E67wpN7xy7C
 Davg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m+wA1RX04BSPnVjNbxGCBXt8jtUUgOJo5n6EFES/ZC0=;
 b=qCUZbyC9VHRlUpZsUfgYOsZ8rWsfWnLoTqy04/zWP9crykJxbt8hg/h/BARMYkDwgh
 NDPNlx1YU1lBOi5sIj+XPyjo+vMaBZMQoicbZ6neLKdxZnRbYs6P0h274rBkedD4M3Vj
 l4BIWabVlOt9nDLa3UNWyN8R71Gk4K02f0rH5ISULD4QBGxt1KuL2yLkA9sIhL3Qg25Z
 xwX1+D4aCOTN3YzIl/luz1fV1LHPGpv2HRIavMFOvn/AD3OAnfEpd1wSMbhXsBmo1/cA
 o5GO9SySeTtRCblQ0yn7nDwB1umMoGsOtlItADJLGQd2pQZ2+btwCCdnDMl0Yo9PivJb
 YY1w==
X-Gm-Message-State: APjAAAWBg03ajCEJz4cFzOWdMuozf8bl8y8ngL/S/4/IvLt87x+t5HSb
 PuC9mUz5LR1B0Xx7FuxeqJA=
X-Google-Smtp-Source: APXvYqw4sNgUo0b8NWUQsBZEeo0fVFA8rx27nKaYJzlqYHZYbIXE3nnctVmDaAM+vNmh+i0i+VgsvQ==
X-Received: by 2002:a63:354e:: with SMTP id c75mr2768495pga.325.1574832604122; 
 Tue, 26 Nov 2019 21:30:04 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id p38sm4360825pjp.27.2019.11.26.21.30.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 21:30:03 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Yangtao Li <tiny.windzz@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megous@megous.com>,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
Date: Tue, 26 Nov 2019 21:29:30 -0800
Message-Id: <20191127052935.1719897-3-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191127052935.1719897-1-anarsoul@gmail.com>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_213004_652457_032F860A 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yangtao Li <tiny.windzz@gmail.com>

sun8i-thermal driver supports thermal sensor in wide range of Allwinner
SoCs. Add YAML schema for its bindings.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 .../thermal/allwinner,sun8i-a83t-ths.yaml     | 103 ++++++++++++++++++
 1 file changed, 103 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml

diff --git a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
new file mode 100644
index 000000000000..e622f0a4be90
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/allwinner,sun8i-a83t-ths.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner SUN8I Thermal Controller Device Tree Bindings
+
+maintainers:
+  - Yangtao Li <tiny.windzz@gmail.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: allwinner,sun8i-a83t-ths
+      - const: allwinner,sun8i-h3-ths
+      - const: allwinner,sun8i-r40-ths
+      - const: allwinner,sun50i-a64-ths
+      - const: allwinner,sun50i-h5-ths
+      - const: allwinner,sun50i-h6-ths
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    anyOf:
+      - items:
+        - const: bus
+        - const: mod
+      - items:
+        - const: bus
+
+  '#thermal-sensor-cells':
+    enum: [ 0, 1 ]
+    description: |
+      Definition depends on soc version:
+
+      For "allwinner,sun8i-h3-ths",
+      value must be 0.
+      For all other compatibles
+      value must be 1.
+
+  nvmem-cells:
+    maxItems: 1
+    items:
+      - description: Calibration data for thermal sensors
+
+  nvmem-cell-names:
+    items:
+      - const: calibration
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - '#thermal-sensor-cells'
+
+examples:
+  - |
+    ths_a83t: ths@1f04000 {
+         compatible = "allwinner,sun8i-a83t-ths";
+         reg = <0x01f04000 0x100>;
+         interrupts = <0 31 0>;
+         nvmem-cells = <&ths_calibration>;
+         nvmem-cell-names = "calibration";
+         #thermal-sensor-cells = <1>;
+    };
+  - |
+    ths_h3: ths@1c25000 {
+         compatible = "allwinner,sun8i-h3-ths";
+         reg = <0x01c25000 0x400>;
+         clocks = <&ccu 0>, <&ccu 1>;
+         clock-names = "bus", "mod";
+         resets = <&ccu 2>;
+         interrupts = <0 31 0>;
+         nvmem-cells = <&ths_calibration>;
+         nvmem-cell-names = "calibration";
+         #thermal-sensor-cells = <0>;
+    };
+  - |
+    ths_h6: ths@5070400 {
+         compatible = "allwinner,sun50i-h6-ths";
+         reg = <0x05070400 0x100>;
+         clocks = <&ccu 0>;
+         clock-names = "bus";
+         resets = <&ccu 2>;
+         interrupts = <0 15 0>;
+         nvmem-cells = <&ths_calibration>;
+         nvmem-cell-names = "calibration";
+         #thermal-sensor-cells = <1>;
+    };
+
+...
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
