Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6E119402C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:46:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlI7PUhTaSJApz145PVIj5Fq8RbTPhtkx2+46f+hFGM=; b=jH2mQBAitbfW3i
	L1N3q5au52cGiuBKpSM4q7XenjKwtVhLDIC5s3fg8tEiFKPYbwJ/Q5uHaFxYVb8xUkOwdX8WZ49MA
	ZXjtdkArggvgJrMKDsnmZAWdmXRCDB7aKE1no18CeBfksc6uNbwst/Ps8obFSyk+26kRn2N4TDoMA
	PBm47nenEIz5CAT5FQUyRj/PjP3TZB0C0TjEMHLGJMEDFbtBxq4I5fg90Ff/0pERwA16srqsNtrwH
	5FJTvF/jC9b8pZr/x3RtYrK5bnqqr0+w1G8xdqKdd54/OKBu2B7ZqKRaUc6bPajbrvRozCOsogSIf
	l+sa8sYElDfeyd24IzSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSpt-0006M1-D9; Thu, 26 Mar 2020 13:46:17 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSor-0005Zq-1u
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 13:45:16 +0000
Received: by mail-wr1-x443.google.com with SMTP id j17so7787227wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 06:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aUt5da61uLANGwJFYYiA7zZjRTcSYMRB6icGf3vbU0k=;
 b=mFk1SjUOpWFCWV3w8NUixREHmK4vDmUPsSbxrhNEvoMQoUozHNBVhh/84MOqcYKSh4
 7nnQSLIvwIGGnrge7xHSEy+jXUSNnfwpa6LhrX9eAMWzJjJiiFyCERkVmpWT/0X+IHJp
 hBP+BoSqsf+Q37GSlozIUGbJ+fEah8GfsiwgnpMN6JJ+K+5njBrV+P684va9X1vP3Jac
 OFWwYXyUQr/zClqzm2tBNy7zpw31A8oiD6cQiuvCPFaasRz4jET2QoPmVugn6+FCyGJp
 eVvBiQ7KakQsVkpFf5EDlE8/uLsoU/Jas0eIgTClWTl70sS13Y3YmZxoa1yS4wXFNUaw
 I3bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aUt5da61uLANGwJFYYiA7zZjRTcSYMRB6icGf3vbU0k=;
 b=beCxTuaAKCZS+fQ/RUBBXn3GORzAlPCeo+4ceR/ELVkeWJVI3sXlo8hjn36syzIbL1
 2A15YqfK3sgQOL3BztUyc5JxAZUlw7/94YhHGR9Skvkk04syuCyZbws+gA5W2aOUVbgZ
 L8JWxfXYewh3FNWMzsTrKdv+nnxwbk0tbMuuh1DLP2tbtQFGRgR2KScMNVtsuQ2ps74m
 9GvRpz6RP3CCrHvQRtIwtI3cYE7bxM5DbVsD/PSLIhtbHx9Mhc27KSVl6QiN+oBcQ8zd
 1Q66y+BQoz1rof2/LrogQFCYn8rnl+XvaKt5TdvOJNuvaDU5Uwn88GcSNvCnyLXezl2E
 qSJw==
X-Gm-Message-State: ANhLgQ3NGtYkTM68zrf5A99ICq/P9fPNkp64cqc0w+0M7w38xWV2LnI4
 vgbL+FLhfpQY/FYiEAbjPEB0Fw==
X-Google-Smtp-Source: ADFU+vt66+XPqsyLeO+POW2yrcqbRJYseC7D+4t4IRvUw/9oFw1qz5OYThNV1WSSuwK+mezl4JqO8Q==
X-Received: by 2002:a5d:4d07:: with SMTP id z7mr9105092wrt.89.1585230311563;
 Thu, 26 Mar 2020 06:45:11 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id h29sm4079617wrc.64.2020.03.26.06.45.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 06:45:11 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org
Subject: [PATCH v2 01/14] dt-bindings: usb: amlogic,
 meson-g12a-usb-ctrl: add the Amlogic GXL and GXM Families USB Glue
 Bindings
Date: Thu, 26 Mar 2020 14:44:53 +0100
Message-Id: <20200326134507.4808-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200326134507.4808-1-narmstrong@baylibre.com>
References: <20200326134507.4808-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_064513_094184_56AE8B73 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amlogic GXL and GXM is slightly different from the Amlogic G12A Glue.

The GXL SoCs only embeds 2 USB2 PHYs and no USB3 PHYs, and the GXM SoCs
embeds 3 USB2 PHYs.

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../usb/amlogic,meson-g12a-usb-ctrl.yaml      | 73 ++++++++++++++++++-
 1 file changed, 69 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml b/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
index b0e5e0fe9386..b0af50a7c124 100644
--- a/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
+++ b/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
@@ -25,9 +25,13 @@ description: |
   The Amlogic A1 embeds a DWC3 USB IP Core configured for USB2 in
   host-only mode.
 
+  The Amlogic GXL & GXM SoCs doesn't embed an USB3 PHY.
+
 properties:
   compatible:
     enum:
+      - amlogic,meson-gxl-usb-ctrl
+      - amlogic,meson-gxm-usb-ctrl
       - amlogic,meson-g12a-usb-ctrl
       - amlogic,meson-a1-usb-ctrl
 
@@ -41,6 +45,11 @@ properties:
 
   clocks:
     minItems: 1
+    maxItems: 3
+
+  clock-names:
+    minItems: 1
+    maxItems: 3
 
   resets:
     minItems: 1
@@ -52,10 +61,8 @@ properties:
     maxItems: 1
 
   phy-names:
-    items:
-      - const: usb2-phy0 # USB2 PHY0 if USBHOST_A port is used
-      - const: usb2-phy1 # USB2 PHY1 if USBOTG_B port is used
-      - const: usb3-phy0 # USB3 PHY if USB3_0 is used
+    minItems: 1
+    maxItems: 3
 
   phys:
     minItems: 1
@@ -89,6 +96,61 @@ required:
   - dr_mode
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - amlogic,meson-g12a-usb-ctrl
+
+    then:
+      properties:
+        phy-names:
+          items:
+            - const: usb2-phy0 # USB2 PHY0 if USBHOST_A port is used
+            - const: usb2-phy1 # USB2 PHY1 if USBOTG_B port is used
+            - const: usb3-phy0 # USB3 PHY if USB3_0 is used
+  - if:
+      properties:
+        compatible:
+          enum:
+            - amlogic,meson-gxl-usb-ctrl
+
+    then:
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          items:
+            - const: usb_ctrl
+            - const: ddr
+        phy-names:
+          items:
+            - const: usb2-phy0 # USB2 PHY0 if USBHOST_A port is used
+            - const: usb2-phy1 # USB2 PHY1 if USBOTG_B port is used
+      required:
+        - clock-names
+  - if:
+      properties:
+        compatible:
+          enum:
+            - amlogic,meson-gxm-usb-ctrl
+
+    then:
+      properties:
+        clocks:
+          minItems: 2
+        clock-names:
+          items:
+            - const: usb_ctrl
+            - const: ddr
+        phy-names:
+          items:
+            - const: usb2-phy0 # USB2 PHY0 if USBHOST_A port is used
+            - const: usb2-phy1 # USB2 PHY1 if USBOTG_B port is used
+            - const: usb2-phy2 # USB2 PHY2 if USBOTG_C port is used
+
+      required:
+        - clock-names
   - if:
       properties:
         compatible:
@@ -97,6 +159,9 @@ allOf:
 
     then:
       properties:
+        phy-names:
+          items:
+            - const: usb2-phy1 # USB2 PHY1 if USBOTG_B port is used
         clocks:
           minItems: 3
         clock-names:
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
