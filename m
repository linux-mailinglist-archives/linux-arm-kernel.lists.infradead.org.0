Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2178818CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fh1bgOrU4iS1MgC0pieEKOhMw8XErOUcMUGipJsIhkw=; b=HQfAabKGDlZ5Th
	USYVHcJHf5VMpKubsmitmDhEa68jIccGY8rFOIv4Szs9MmdWDCa3nVAX9gvb9kVNIqFgz84Nk7jIq
	IIyi1BWUR63voMvS5tDpFi6e/4nM7ePrDx9b5LNWhmVtS9lo+2b+I4G4eJlSonVa/Hpz7UltYgNQR
	FBcrYjtuHjnWwQsrqumDQJP3rPWM6Vc3086W7qh4//C1a1H5GbrVX0TBljQaKxQhYgwEiskctVdJ4
	vk0TOfMvFaQjC1m/4FU33y/pIIpwoTRxldfLdKZfX2dHd9WyumOBRmZx/BJMiK6tlZtgdgK0A0XYm
	liV8aKGU1HmWJvD+F3Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hubjT-0004mf-Vo; Mon, 05 Aug 2019 12:04:56 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hubi8-0003A3-J1
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:03:35 +0000
Received: by mail-wr1-x435.google.com with SMTP id x4so30975335wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wq+NOUXuHn9W915kfej1QDLl0G8Catrb+/a+UkGjnNI=;
 b=EhN2WpYa+7ri803ml/bEjkzN1nY8BeU/AY+MMoupJpUIq2u1p69+yVQ7br/t7mH40P
 lp9VfG2N8pWv83c6lN9S33D5h3Mg/GgGrJTxktOOpRJc4Qs00Zm87PR/db7y2yW3eAM6
 uqOo8k7bHGd3mbezV1Dwr1KXDr0iOfekOTUrcq5m6jm0CTIKePQkNlLJNUaHWfovrAew
 +b6HUE0pNdRqO0/lmBNUKx++21+RPI0IeTwUD1yG1RRAViSfofe/w7WYXAKG/1Z/+xUG
 K4otNssxD3TWTfLz/MTLFN14SC5nJN6LkuPwF16Sd6vwDrXPfpogEAxW9ueLCgKxJYzS
 XhEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wq+NOUXuHn9W915kfej1QDLl0G8Catrb+/a+UkGjnNI=;
 b=D0/TY4Fg2dPtqyfy6A887OKz3+NqSPq9p8lZpewj+J1b3ZuBCB5H72XXqyrJ5FcMh6
 3pkJBJEak9GjJnybkH+bg7p09Pc/oZgorJuL/hC+CxDFOATIxIJriYN48NNKbHKnCu0B
 AEzXYnigusbxRWfnNtNHzDJ9OeKWg9Q5GQlViPD9hPDvEtlYFgE95XBPrk4U7qRm/LKz
 PHAEyjHBSg21FEr/2gylKKW0XRTV+kayUaS8a7Y8kalTJFt6izQ4oa42k+HtcZIvnFiC
 3gxChFDxa2Sq2+ekrSrGVgTb7Vu5vsi/aCg+UuF9Boxh4ms4foRdK19d48tVbwZsnH3a
 CbBA==
X-Gm-Message-State: APjAAAW1jCn7iOqNC9E0qq4ls5rVYpcAJIt4qeweFuQa3u7gSCIlQo7R
 B73FJdnTKXohVIVRQxlh7Wogwg==
X-Google-Smtp-Source: APXvYqyz2oDf3zNhCGl1fmtqi/15XruskE/NYuyc7ppJN3wS25RsZliVSJ0Q+N3wlY6fZsbAF7WPyA==
X-Received: by 2002:a5d:4949:: with SMTP id r9mr24455367wrs.289.1565006607077; 
 Mon, 05 Aug 2019 05:03:27 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x6sm88683668wrt.63.2019.08.05.05.03.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 05:03:26 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: robh+dt@kernel.org
Subject: [RFCv2 2/9] dt-bindings: rng: amlogic,meson-rng: convert to yaml
Date: Mon,  5 Aug 2019 14:03:13 +0200
Message-Id: <20190805120320.32282-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190805120320.32282-1-narmstrong@baylibre.com>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_050332_771544_3A2FDC0C 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
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
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have the DT validation in place, let's convert the device tree
bindings for the Amlogic Random Number generator over to a YAML schemas.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../bindings/rng/amlogic,meson-rng.txt        | 21 -----------
 .../bindings/rng/amlogic,meson-rng.yaml       | 37 +++++++++++++++++++
 2 files changed, 37 insertions(+), 21 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
 create mode 100644 Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
deleted file mode 100644
index 4d403645ac9b..000000000000
--- a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-Amlogic Meson Random number generator
-=====================================
-
-Required properties:
-
-- compatible : should be "amlogic,meson-rng"
-- reg : Specifies base physical address and size of the registers.
-
-Optional properties:
-
-- clocks : phandle to the following named clocks
-- clock-names: Name of core clock, must be "core"
-
-Example:
-
-rng {
-	compatible = "amlogic,meson-rng";
-	reg = <0x0 0xc8834000 0x0 0x4>;
-	clocks = <&clkc CLKID_RNG0>;
-	clock-names = "core";
-};
diff --git a/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml
new file mode 100644
index 000000000000..a9ff3cb35c5e
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/amlogic,meson-rng.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2019 BayLibre, SAS
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/rng/amlogic,meson-rng.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson Random number generator
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson-rng
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: core
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    rng@c8834000 {
+          compatible = "amlogic,meson-rng";
+          reg = <0xc8834000 0x4>;
+    };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
