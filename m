Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A91921B170C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 22:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsN7+MSkU7O2VcbkIEalt5G6IOrcslJrRfLrNNuDF5A=; b=ScAJfIfrOCRD8/
	Xfl+yAcBBGepuFl3OkZ0uaMTkzYcpb3YrYs4NiO12CDkHOs//mKlFwZCcbzCOzKOXO8R6fIXcX6pK
	Y/5Mhg4Fc63itHvEUobhkUo3/UrpE/nXpGqJqkRpCB7iULKld1pNmG4WMseDFV0UQKIr7zpCHx35u
	0FwHDiE5kf0F5WXRz8R3rZXnChPSS+gDemPD2qn+hb2ruPPPbUw5ZE0q3BWLY4c0L8OqpSteUFJDr
	1bvdBl4sYWfcZrqTtLLAPzY+4QSPTcYGKrdi5vrfe+zpcSrrS6hKObCH3BfsTGWJmyvYgik66fnYA
	tpVdigoAxImUilf+xPpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQd12-0001mM-Pt; Mon, 20 Apr 2020 20:27:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQczq-0000jO-CX; Mon, 20 Apr 2020 20:26:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id k1so13862300wrx.4;
 Mon, 20 Apr 2020 13:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=12hs4YLLCufVbSpoUu4zR/3+gNwt68TorMhibZvZWLI=;
 b=cLwjk5gqfhFP7XPc1WTOJKTsNbecnTPqX7BZorzhQAg+pGMcma2NIF7vDGD6OLnhb3
 kYIWZLIh8xTS/cbAjhOkApRLFzkhx5oNHtd2x9YTNUcdqVbS/j7A09nqgn34DBbWg28U
 cWNP8XHg0MfFocJqZUhhsHczYEBPSAbxfXcFNd7rYrKSoMUkGzy7HFQFNQE8yIyUqYmb
 Und6o2PeAQunIOOkDlR3Cf9JjZyIIdntNtjRxE02ibMKNFtVjBFfMkNO9UnKB6/LwI9Q
 qHwI3NjljnCDVqHWfECRKx54pYAhow0B/++S6dLfm1p8t9Jhcgq1sh6Y0TIPnKH8YiFQ
 OToQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=12hs4YLLCufVbSpoUu4zR/3+gNwt68TorMhibZvZWLI=;
 b=rqEAnEH0fseND3CVmkrBptY5y1NFFpoCeUoGtJHpEkZHGN/iJLcC0eBfvjm1ZxZT/j
 quynnQ5dldMAOwe0V2llQNSv5/T/7DZ7hCao4mNIDxXzASr7XUQSpgvHucOo2q/D0O3R
 X4bOrcdl/jIlmR9CaJpiQ7oO937Go/nHHGS3BfKFAQfITxU/+BSHspOAuERtWrjCKgeB
 EpGIeea8L/dToUa+hifjEjDkZioBlcB2bYvchJ0o5Hyl/TXBtAFhtM5KQo0l8B/B8I+h
 jbOK/Gtl+i4da7PR2RcKfsCb1tFY84bulPLnuwISFsz8K+F++ADynvlNj1KrlZSCydgF
 iegA==
X-Gm-Message-State: AGi0PuZFo++vRTHR57zsBYRhaoty5t+5pVfx9Rqkp2SxeraKVK3lNzzb
 YtegVuqsEKHeCIYWvJircF8=
X-Google-Smtp-Source: APiQypKKfwCx2uMlD9ZjYrFIfLIMZf8tt0ML84Nh+6zg9axz/9K0LeqvQFCtGnXvrkjHchIFlICq5g==
X-Received: by 2002:a5d:4748:: with SMTP id o8mr20225311wrs.422.1587414385151; 
 Mon, 20 Apr 2020 13:26:25 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id l19sm657846wmj.14.2020.04.20.13.26.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 13:26:24 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: robh+dt@kernel.org, khilman@baylibre.com, narmstrong@baylibre.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v3 2/4] dt-bindings: power: meson-ee-pwrc: add support for the
 Meson GX SoCs
Date: Mon, 20 Apr 2020 22:26:10 +0200
Message-Id: <20200420202612.369370-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200420202612.369370-1-martin.blumenstingl@googlemail.com>
References: <20200420202612.369370-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_132626_418099_75106571 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
