Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6D54AD3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 23:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vQE7V55Y3qmDbBjXK6Kb0SELEbRBYcWSvlEpnswQeyU=; b=msBzYXWGrBF2cP
	IW+mzj59Dxw4Ofu5TcYDE+sFUnlHchit0d3L5q+epK8Tp8M9U/IB8VMNxj4MeTRtjEGEbECz6FGug
	fVCsHWkdirvR5rlZFZtajM+JemcyWK8PKOL9JDjSZu+HONnowDt1Vo69qWakBT0/NkxSNbpLJ0mRN
	UZuzRVyYFn7DZw2Ti4EVR1/eHh1bKHdTvBtUArPqVrgAgIVeMYfoQFU/flq7unAecwM1OtXs0me+6
	nOEwEI4Ef5nchSazsxJFnaX0tOb8Tp3M5glSwCpYwwS/B+g9dmuwq5UqWm7tdlij4ktn59VbLHnl7
	/QJhzCQNw5Q+xeklBD+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdLZ1-0008TN-LA; Tue, 18 Jun 2019 21:22:47 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdLYo-0008SU-88
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 21:22:35 +0000
Received: by mail-io1-f67.google.com with SMTP id u13so33346115iop.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 14:22:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=C9hK4r8BtF8iLuupXMfzzv+UZSHE7aHpjUxgAmUhVwU=;
 b=kKRdiH70VOBQUljvtFBDP1EMrSDaeYDl21xfdD5p9kidQdeDerh/n6kPqpsypT28jN
 mbM79vMlb7K6x5KLNva4fKofh8vq5+gZPOmMNP3diBokWQrWeFCPSOis1t4fkT9emT0h
 kpBYU0RAcZ5Xm90dqTyb8GQSedCI49e1KV+sehX5M6GE9adGytfsD2OrG+ROGqC/FxVc
 IrgGQ6xv0nVNFKiUOR3Wtrnbfs5G/eH9Bv31X9Bw2C0l1N9nXxKt5htI5qg06nhCCuWl
 kbtRTfoWJjXaYu0LNBVDn8vhXKYXtyOtEfIRlEz2YTR+15/cf5mudFRDNpvSlsSlLn8B
 oWdQ==
X-Gm-Message-State: APjAAAUvtpWJ0N+umYfkPiGRDXzf+Q5NnnvBHWHQ0+mcNVx8/P7yyoGR
 JAyt4FxMvsYN+kHJ7Xgg3tZOYzo=
X-Google-Smtp-Source: APXvYqxhvuYhONc7fufr49q5hWKvs0Jy9A59+wLZpzT/VUq+mOSJIt+6QzaXT1oPxcd2HIjDAsHTxg==
X-Received: by 2002:a5d:885a:: with SMTP id t26mr7974594ios.218.1560892953024; 
 Tue, 18 Jun 2019 14:22:33 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.192])
 by smtp.googlemail.com with ESMTPSA id p9sm13233480ioj.49.2019.06.18.14.22.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 14:22:32 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: arm: Convert MOXA ART board/soc bindings to
 json-schema
Date: Tue, 18 Jun 2019 15:22:26 -0600
Message-Id: <20190618212229.32302-2-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_142234_296987_F0A68DB1 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, Jonas Jensen <jonas.jensen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert MOXA ART SoC bindings to DT schema format using json-schema.

Cc: Jonas Jensen <jonas.jensen@gmail.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/moxart.txt        | 12 ------------
 .../devicetree/bindings/arm/moxart.yaml       | 19 +++++++++++++++++++
 2 files changed, 19 insertions(+), 12 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/moxart.txt
 create mode 100644 Documentation/devicetree/bindings/arm/moxart.yaml

diff --git a/Documentation/devicetree/bindings/arm/moxart.txt b/Documentation/devicetree/bindings/arm/moxart.txt
deleted file mode 100644
index 11087edb0658..000000000000
--- a/Documentation/devicetree/bindings/arm/moxart.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-MOXA ART device tree bindings
-
-Boards with the MOXA ART SoC shall have the following properties:
-
-Required root node property:
-
-compatible = "moxa,moxart";
-
-Boards:
-
-- UC-7112-LX: embedded computer
-  compatible = "moxa,moxart-uc-7112-lx", "moxa,moxart"
diff --git a/Documentation/devicetree/bindings/arm/moxart.yaml b/Documentation/devicetree/bindings/arm/moxart.yaml
new file mode 100644
index 000000000000..c068df59fad2
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/moxart.yaml
@@ -0,0 +1,19 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/moxart.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MOXA ART device tree bindings
+
+maintainers:
+  - Jonas Jensen <jonas.jensen@gmail.com>
+
+properties:
+  compatible:
+    description: UC-7112-LX embedded computer
+    items:
+      - const: moxa,moxart-uc-7112-lx
+      - const: moxa,moxart
+
+...
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
