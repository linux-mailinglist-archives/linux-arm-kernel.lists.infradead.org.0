Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0E84AD3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 23:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YQklIniMWt/rt413Yz9x/9bw7d/Nu1i4TiDt9/IYGLw=; b=Y1wsNssmFhAYKN
	rWkPiuURoiAdQXWiU+/eyLXzpWGOKASbiJfYrUD0vvKg4Ldr9h1Nuuleh7k6ntbMyNjFRii7SPyXO
	hckWw15MCXMRq5Z5mtRe7dmZEmxrPJhwCBShgMN+sX9xZf7P0RUijrnwGe7K+xhjTUzx7JTuBHZqD
	WW9VWGOBZZEv8BTRY7CczwGfIBSJCxkgccLqkKOuqnusxe34xOvqy106wYRCaPd2fyTiK0TPUbouk
	MTGE2bY3Wfo7o1aH7m7nzqearoPcu+gA1zjUzpHNSIQp7IiKrHuytKhxvbrgKvmuCHvwOlaPIx2Oo
	FP0pG9Ryf/jJXLkLzTFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLZH-0000Dm-S6; Tue, 18 Jun 2019 21:23:03 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLYo-0008ST-EO
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 21:22:35 +0000
Received: by mail-io1-f68.google.com with SMTP id e3so33135404ioc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 14:22:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ylpE5cZF1j/JtHiZnOXlik3e0OekFUoUd9veGQmnd64=;
 b=FaSyMPHCx+pCR6HoV/gf5wiHDdvm86/QhxPM7GWo0h2yZYvN/00ldlO5L+7/fm6wsD
 0HhOSi2WDITwJ+GAqKiefwr9/5zGjn7eCrJ+7z+vFmikdfx+Ny9WGfeKnXVDTCc3/L7e
 qJnsdZzinZN9BMtoXxckswbiDhXvFS4VafzzugUunYlnSt8YQu4KtghnhTiMP4lPOH6a
 nw+tYvFdruRWNb2Yj/LtG1DO+EMkPiEkFUxilA8unRry81MvOJj3tt9EEPswCCrT3+uB
 A4TCr3UepL856b6k9rIIWFoC8SNxWFY5skMJYCAJiFJnpMYI1W6bqrHYy4oDtyrqdwRz
 5xcQ==
X-Gm-Message-State: APjAAAW7BTIuF/yp6a/VIAlrxwQk9+SMPydhhLRKN18zw7TVyJX14Gzn
 dK/Nvubp5lUPe0J/AaJ6Rg==
X-Google-Smtp-Source: APXvYqxLl63TWwT/LAwXc3mgiArhk90fL84CJlArIFgnNZBV82SoN/sYbaX6RROIeWDP3g2b0JZIeg==
X-Received: by 2002:a5e:9304:: with SMTP id k4mr41197240iom.206.1560892951688; 
 Tue, 18 Jun 2019 14:22:31 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
 by smtp.googlemail.com with ESMTPSA id p9sm13233480ioj.49.2019.06.18.14.22.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 14:22:31 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: Convert Axxia board/soc bindings to
 json-schema
Date: Tue, 18 Jun 2019 15:22:25 -0600
Message-Id: <20190618212229.32302-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_142234_478542_6C61495C 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Anders Berg <anders.berg@lsi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Axxia SoC bindings to DT schema format using json-schema.

Cc: Anders Berg <anders.berg@lsi.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/axxia.txt         | 12 ------------
 .../devicetree/bindings/arm/axxia.yaml        | 19 +++++++++++++++++++
 2 files changed, 19 insertions(+), 12 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/axxia.txt
 create mode 100644 Documentation/devicetree/bindings/arm/axxia.yaml

diff --git a/Documentation/devicetree/bindings/arm/axxia.txt b/Documentation/devicetree/bindings/arm/axxia.txt
deleted file mode 100644
index 7b4ef9c07696..000000000000
--- a/Documentation/devicetree/bindings/arm/axxia.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-Axxia AXM55xx device tree bindings
-
-Boards using the AXM55xx SoC need to have the following properties:
-
-Required root node property:
-
-  - compatible = "lsi,axm5516"
-
-Boards:
-
-  LSI AXM5516 Validation board (Amarillo)
-	compatible = "lsi,axm5516-amarillo", "lsi,axm5516"
diff --git a/Documentation/devicetree/bindings/arm/axxia.yaml b/Documentation/devicetree/bindings/arm/axxia.yaml
new file mode 100644
index 000000000000..98780a569f22
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/axxia.yaml
@@ -0,0 +1,19 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/axxia.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Axxia AXM55xx device tree bindings
+
+maintainers:
+  - Anders Berg <anders.berg@lsi.com>
+
+properties:
+  compatible:
+    description: LSI AXM5516 Validation board (Amarillo)
+    items:
+      - const: lsi,axm5516-amarillo
+      - const: lsi,axm5516
+
+...
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
