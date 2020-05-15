Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AB31D5AF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 22:49:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lEQhcGAhSAhUiv2CU/B4iSr0oHyWroZq7aD6SeUB+M=; b=bsbdVYjWqPvshY
	L9Phmu+S81D+/Yd3n1lgoC+cDAhIw4my9FQ+E6U5KSL8tHHc2CIjmAa9vZB0lEI2Rg1ZTX9WaAKrR
	4ZvwCrJ+/qYdD2YwXP32X4A+8qs/xINVljZlyzmuM9gkKqaKGCOPdPlwogQePcr4PcpDxDEZj7DPa
	c/0Ximuww7Y0x/B7emHNhpvcMfZ/XCbnmfZNYPvgY77q6nRGV+zZRryZ+hPBP+clUwEMYeHxd/LOk
	H1JeG1qUYkV5+Js0s7KXHn7cmk+TINbvJF8TrwF2k6aILyoqPAvoAtVSM45cbIRFY5V0ojJ8svT4e
	yYXVHgeOTnqfEXW0fzcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhGA-0007aJ-9r; Fri, 15 May 2020 20:48:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhFC-0006qF-K4; Fri, 15 May 2020 20:47:52 +0000
Received: by mail-wr1-x443.google.com with SMTP id i15so4946354wrx.10;
 Fri, 15 May 2020 13:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=io9HbGLfwqw/JzcwD/85WE8s/tU0qrBss8rIvaIKOpk=;
 b=fBIES9PTnZMx1z/RxzfSuNWwOpXwZTYRBdHsnOnp6Dzk9FUD1GsinGLEDgoKJD4Rqm
 QvoMoIa0AtFNiGcQkeQehsC3NgaYv1+fsmcTWxtTF9yrpurAh/ikD3ETeFrTy6moiSSk
 wArDgdue61bERQ7g+xh1HGcnzjy32f6RxRG/929/2lyOCh4vYP1tdX1MbG9oOm6j4Umh
 yHldAT/sPFJWTFVI3IE3q5RQuoXm6dU4QE4kFe5kPkQBeGU9Zs68ojoGChZJwzPi0OeM
 bWvyfc8o51ep+vLxZByXLUBfJdKf0fUS8228Wpmzve4E8w3SvWEAIiRMZfLcwqqcwRRc
 wXsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=io9HbGLfwqw/JzcwD/85WE8s/tU0qrBss8rIvaIKOpk=;
 b=Yy9e92bbzUTrOOgBgvDtV37Fl2zxcZB+m9gmBWm0BCSrsSYIvt6I3eIsQi0nJb0Cr7
 SkHKdFMwJrXRp6jfhtBkt/ZbxctsYo/TgW1oUz0UfKtudoTDCddzfeTo2MyjQIoVi7jQ
 4tlGnFCr/aHRlivfktK08Wqc5fwAaLYXTgtj3HzG+hxs9XsuKXDU7+gStiIpcpGXk6ab
 6VTfsolTljWa/YCzqZv7OGpSRTSgwOjT+KlatIPZe/RzHuSX3eUWnU1MwyIVqR4MnJBU
 9GnsFqh7I46/KOL8QQsL+Ry8KWV6/LVz8LzOO2KAWHs+SUoFAMmuXwgnx9GBjCa7EMfx
 i6vQ==
X-Gm-Message-State: AOAM531TAc9w+VMGneaquivCitweigBEZKtWeVcMI9T5+DOP41g9Q/OY
 09CgaD4zJfJ/lJ1mvrGIxYw=
X-Google-Smtp-Source: ABdhPJyk88sXvPkIvscfLdPhA3JY+CRiqrjJzM9Orh7xQHTAJbQ/kklPlLugGY4Y9sG/HJ+RwYCsHQ==
X-Received: by 2002:a05:6000:1104:: with SMTP id
 z4mr6609176wrw.57.1589575665430; 
 Fri, 15 May 2020 13:47:45 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id r11sm5296211wma.35.2020.05.15.13.47.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 13:47:44 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: khilman@baylibre.com,
	linux-amlogic@lists.infradead.org
Subject: [PATCH v4 2/4] dt-bindings: power: meson-ee-pwrc: add support for the
 Meson GX SoCs
Date: Fri, 15 May 2020 22:47:07 +0200
Message-Id: <20200515204709.1505498-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515204709.1505498-1-martin.blumenstingl@googlemail.com>
References: <20200515204709.1505498-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_134746_654999_54D4711E 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The power domains on the GX SoCs are very similar to G12A. The only
known differences so far are:
- The GX SoCs do not have the HHI_VPU_MEM_PD_REG2 register (for the
  VPU power-domain)
- The GX SoCs have an additional reset line called "dvin"

Add a new compatible string and adjust the reset line expectations for
these SoCs.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../bindings/power/amlogic,meson-ee-pwrc.yaml | 28 +++++++++++++++++++
 include/dt-bindings/power/meson-gxbb-power.h  | 13 +++++++++
 2 files changed, 41 insertions(+)
 create mode 100644 include/dt-bindings/power/meson-gxbb-power.h

diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml
index 2a1c933ae434..51a6fac892e3 100644
--- a/Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml
+++ b/Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml
@@ -26,6 +26,7 @@ properties:
       - amlogic,meson8-pwrc
       - amlogic,meson8b-pwrc
       - amlogic,meson8m2-pwrc
+      - amlogic,meson-gxbb-pwrc
       - amlogic,meson-g12a-pwrc
       - amlogic,meson-sm1-pwrc
 
@@ -42,9 +43,11 @@ properties:
 
   resets:
     minItems: 11
+    maxItems: 12
 
   reset-names:
     minItems: 11
+    maxItems: 12
 
   "#power-domain-cells":
     const: 1
@@ -80,6 +83,31 @@ allOf:
         - resets
         - reset-names
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - amlogic,meson-gxbb-pwrc
+    then:
+      properties:
+        reset-names:
+          items:
+            - const: viu
+            - const: venc
+            - const: vcbus
+            - const: bt656
+            - const: dvin
+            - const: rdma
+            - const: venci
+            - const: vencp
+            - const: vdac
+            - const: vdi6
+            - const: vencl
+            - const: vid_lock
+      required:
+        - resets
+        - reset-names
+
   - if:
       properties:
         compatible:
diff --git a/include/dt-bindings/power/meson-gxbb-power.h b/include/dt-bindings/power/meson-gxbb-power.h
new file mode 100644
index 000000000000..1262dac696c0
--- /dev/null
+++ b/include/dt-bindings/power/meson-gxbb-power.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: (GPL-2.0+ or MIT) */
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#ifndef _DT_BINDINGS_MESON_GXBB_POWER_H
+#define _DT_BINDINGS_MESON_GXBB_POWER_H
+
+#define PWRC_GXBB_VPU_ID		0
+#define PWRC_GXBB_ETHERNET_MEM_ID	1
+
+#endif
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
