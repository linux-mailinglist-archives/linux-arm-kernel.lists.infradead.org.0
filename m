Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 908821AE58C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 21:09:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46RWTt3qqUBD3lxdrRZdW1Jp6CzYZEB7X3CG55ykq6w=; b=IOZtDij9oa+lRz
	KjHX2xC0WA28aEDo/VSlmrF0zcY5rD0yO4+UiEA2vJOux/j0rlR1OGwmJ/2ap7WNLX7hd8leDOTYw
	9SuirTdGOqKweY0fibJCcB8fwswYvc7qiWhsRzpU2YHnWCnF2CXRQqRen6za9p5o9/yjQT14phrqS
	vcX9Mrw/8SCz2NdFZ5kpksR9szXH7Dt1NjsVhF9+NA4Ibp6RWiDOQ/otxlT0NdK9actPdfSvjGIqI
	6Qsh1omJNaScfLjBFEEsv3Ij6hPrTjqqsXWEuMVEx7/fWgs1ThoU9eW6pNLa7xyqvRPdt+/l9wrHg
	SUL51e4JIe4vdfJn28Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPWN1-0002hr-9m; Fri, 17 Apr 2020 19:09:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPWM0-00024z-MS; Fri, 17 Apr 2020 19:08:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id t14so4234784wrw.12;
 Fri, 17 Apr 2020 12:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0n5h0em/Nkh2RKJZHyjjtZ5ecG51J1roeZUvKOcCbPU=;
 b=CdJFoo8xQOIRbA85683Lw5+DGKDpA0LVrzc8RACY32VlWa3C3srqTXMosWANNzpQQq
 gDLJcrkqKOW4zv0yf2zsVsLVXc+9/9APUcBqfHjj3Z1MDY5e+TSk++U1EF756tvmSFuZ
 BLaQpuW8x+mkCwi4vyx1l3tYz4f+uNzRijv6bVC+LRwmjVnrw3b06cpRejtnrfxeY0df
 8g4hAL57lWst3RbypPXYuscsifQUXTEDDe8m4wR+K09bsJ7dhi8p4aH9zWterHZluKDg
 ijHtatg6kPH0GXZlK80S7m1dakMzurDGgcZeogjk1FZ94VCy0PknYTWzNfUXHQsUE7QJ
 Qy3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0n5h0em/Nkh2RKJZHyjjtZ5ecG51J1roeZUvKOcCbPU=;
 b=QyT9wDnJJXxH7T6QyU6LdB1C5IjhYfPZcXyDgMSxPO5iyvlpD4Fvz3L0EppZYE6VB4
 iqHaQ6GPnP8bv/vvEP0bvVGdo9H+ZeaXKqccVlIm2pM4ue22q9wi6xLIksYbd9GaHblR
 P1XGF3tOn6JECoOfDZi01WT2B6np60nR9KFSDSnU3JSbtXWyK3Q3eQhbQJSKiKOkw0+r
 V7I27DgKVQRDXqNG6KH8bCwTsYrXdVJyzfsuEi/T8bMnUGAWYqrotEMk7MQRcXfvES78
 qRYXjuoDQQyfgan/9hdUHejHrT05e5FLc+YrV5+KX5CDlhZ+wkP7VMl+diC1dSgoLMLW
 QmbQ==
X-Gm-Message-State: AGi0PubG1/92LBIHBq//FoT0iG6tQWba33y3IBbnUDHQsFRn5ied1R3c
 gWqJdsjh4WTHyYmoi3xOPlM=
X-Google-Smtp-Source: APiQypIFsvMSQP73dHqTXb7Xph+RtyVZSYMy9XHKo8uXqdgr54fAj+ozLVMozg+o08rkh4y0ch6EZg==
X-Received: by 2002:adf:e5c8:: with SMTP id a8mr6000656wrn.56.1587150523506;
 Fri, 17 Apr 2020 12:08:43 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id q17sm8722220wmj.45.2020.04.17.12.08.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 12:08:43 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, khilman@baylibre.com, narmstrong@baylibre.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 2/4] dt-bindings: power: meson-ee-pwrc: add support for the
 Meson GX SoCs
Date: Fri, 17 Apr 2020 21:08:23 +0200
Message-Id: <20200417190825.1363345-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200417190825.1363345-1-martin.blumenstingl@googlemail.com>
References: <20200417190825.1363345-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_120844_731041_B03C089F 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../bindings/power/amlogic,meson-ee-pwrc.yaml | 27 +++++++++++++++++++
 include/dt-bindings/power/meson-gxbb-power.h  | 13 +++++++++
 2 files changed, 40 insertions(+)
 create mode 100644 include/dt-bindings/power/meson-gxbb-power.h

diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml
index a0e4cf143b9c..15a29ed19327 100644
--- a/Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml
+++ b/Documentation/devicetree/bindings/power/amlogic,meson-ee-pwrc.yaml
@@ -26,6 +26,7 @@ properties:
       - amlogic,meson8-pwrc
       - amlogic,meson8b-pwrc
       - amlogic,meson8m2-pwrc
+      - amlogic,meson-gxbb-pwrc
       - amlogic,meson-g12a-pwrc
       - amlogic,meson-sm1-pwrc
 
@@ -42,6 +43,7 @@ properties:
 
   resets:
     minItems: 11
+    maxItems: 12
 
   "#power-domain-cells":
     const: 1
@@ -77,6 +79,31 @@ allOf:
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
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
