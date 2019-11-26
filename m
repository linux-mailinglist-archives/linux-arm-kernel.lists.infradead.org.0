Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D28F1109E3B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 13:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fKu2vf6ncaDDAl/2FrlHB+NsVakw6JQw9SjyhnakhYQ=; b=ov/L3I0kpNf8c9
	4HRiaRa5SzkuUJQeLBAk2fsFFcpx6m+lLMtI6vpazRd8WshWffM79xshD3lL8uHZccIbXFXT5ihBa
	8dQdUgjXdcN1eKCkQDkXVPpKKd1HWolMGhkkRlNsT65Bu79GANOPCHAO7qJ4SBoERywjHivmtA4ED
	3NE7IM7F3SLlxqldaGS764fL9GMqJ+JP3G0QvHwKdevt8GQtCk02k0BDzr1IeI13nncsWD24GWybl
	dBQBvttdiAShG7FHEMfKmV0/7aPX5BvB3C6zaXwqz4kGbwQU+QjGIyBgor0S2ywNDHawT+JDjg8ST
	Qv7aEZ0Wf3JqTpPnBQQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZaGG-00023v-Vn; Tue, 26 Nov 2019 12:48:08 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZaFt-0001TA-L3
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 12:47:47 +0000
Received: by mail-lf1-x144.google.com with SMTP id v201so12923030lfa.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 04:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/p96GrhJGPg9Xf6gp9GH4ciAC1P8wBef6dk9g/l5lqo=;
 b=mheHExVd4Ion93iLNCbiYXKRLA1axwpfBMfj6jwJ1PetoCWM2UrBG8U7CxddKjpjyy
 LQPgc4CFLSd/Xpwq8fGHgqIZhy+BXszAkz2yVwuyeFy1dTATUzaDxyw8nPTiBXhMcLRW
 fz9ep+NG6cDr5Zr9qmrGQ68BvRogCmL4/zUlmhpwBB6u4ElzbuCqvr2X5njv/xucQrOU
 vvGjF78QVFHrHfUu7J+HBx78IHsUfOLgPjdX2Vr26IzF7bCceTkILmNNTcV5Hvr7bShe
 V9heK2CLkmcflM/6qciOk88FJob8BJnjVUJQlQaF8VH8ZNTl8e0rxjKO1H8nKnb+Y/V+
 AGKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/p96GrhJGPg9Xf6gp9GH4ciAC1P8wBef6dk9g/l5lqo=;
 b=T0ilJvdZayKVUO9rBUkSyWrf4+Y0w09tW0KNPfxq68/Tn9g5/Y0T8BkNmW5hqXjZV5
 vNs4qFIG7Ywnt1JRmXeRNYzlDpJxa/xYekXertbF0IPlsQCl6YKbTnkP3gkhAVXtdK1/
 g6bhcJVQSTNoz+r+ciMTuX1cpG94uyKtcKnr8KpYeEJKjlMl4fvVIgoLuKS3Ak0Ek1b+
 sMlPYH3hpNrDKjS3TyN55TVrmvnMyRnyDKY1INTwYt/xGMG8Ab2n3MS3gQxi9fTC7g+l
 hAAk1ZX5XjXuZ0slP83aUipQWvWhEo2vMih5htvsgzWV4wVRDGXsTLHUMI9WArDYzVqj
 jjNA==
X-Gm-Message-State: APjAAAWPls8HcnjSpxYtdPKGHck/xzw3CAatpH+7SDgwx58iy0G1fHrH
 JizqehwN5XRWlF/c7cB0LxuhawFDhnM=
X-Google-Smtp-Source: APXvYqzx0Ll3In6Ug9oVnmjBC/GIaiG9VNFa0hCFgmOgnGYERDowV3zqsD9wnRgCU7zSXw3wslExFg==
X-Received: by 2002:ac2:50da:: with SMTP id h26mr24137564lfm.123.1574772462725; 
 Tue, 26 Nov 2019 04:47:42 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id j10sm14874lfc.53.2019.11.26.04.47.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 04:47:41 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] ARM: dts: ux500: Break out DB8500 DTSI
Date: Tue, 26 Nov 2019 13:47:35 +0100
Message-Id: <20191126124738.77690-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_044745_914566_399FB791 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DB8500 exists in an enhanced variant named DB8520
for some machines. To clearly distinguish between the
different machines, create an explicit db8500.dtsi
and move the operating points (only known difference so
far) to that file, so we can add an explicit db8520.dtsi
after this.

Cc: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/ste-db8500.dtsi           | 15 +++++++++++++++
 arch/arm/boot/dts/ste-dbx5x0.dtsi           |  5 -----
 arch/arm/boot/dts/ste-href.dtsi             |  1 -
 arch/arm/boot/dts/ste-hrefprev60-stuib.dts  |  3 +--
 arch/arm/boot/dts/ste-hrefprev60-tvk.dts    |  1 +
 arch/arm/boot/dts/ste-hrefprev60.dtsi       |  1 -
 arch/arm/boot/dts/ste-hrefv60plus-stuib.dts |  3 +--
 arch/arm/boot/dts/ste-hrefv60plus-tvk.dts   |  1 +
 arch/arm/boot/dts/ste-hrefv60plus.dtsi      |  1 -
 arch/arm/boot/dts/ste-snowball.dts          |  2 +-
 10 files changed, 20 insertions(+), 13 deletions(-)
 create mode 100644 arch/arm/boot/dts/ste-db8500.dtsi

diff --git a/arch/arm/boot/dts/ste-db8500.dtsi b/arch/arm/boot/dts/ste-db8500.dtsi
new file mode 100644
index 000000000000..d309fad32229
--- /dev/null
+++ b/arch/arm/boot/dts/ste-db8500.dtsi
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include "ste-dbx5x0.dtsi"
+
+/ {
+	cpus {
+		cpu@300 {
+			/* cpufreq controls */
+			operating-points = <998400 0
+					    800000 0
+					    400000 0
+					    200000 0>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index d4a55369452d..4e02b1b6c0bf 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -51,11 +51,6 @@
 			device_type = "cpu";
 			compatible = "arm,cortex-a9";
 			reg = <0x300>;
-			/* cpufreq controls */
-			operating-points = <998400 0
-					    800000 0
-					    400000 0
-					    200000 0>;
 			clocks = <&prcmu_clk PRCMU_ARMSS>;
 			clock-names = "cpu";
 			clock-latency = <20000>;
diff --git a/arch/arm/boot/dts/ste-href.dtsi b/arch/arm/boot/dts/ste-href.dtsi
index 5eafd5d8a8cd..33e3b0b3c53d 100644
--- a/arch/arm/boot/dts/ste-href.dtsi
+++ b/arch/arm/boot/dts/ste-href.dtsi
@@ -4,7 +4,6 @@
  */
 
 #include <dt-bindings/interrupt-controller/irq.h>
-#include "ste-dbx5x0.dtsi"
 #include "ste-href-family-pinctrl.dtsi"
 
 / {
diff --git a/arch/arm/boot/dts/ste-hrefprev60-stuib.dts b/arch/arm/boot/dts/ste-hrefprev60-stuib.dts
index d2405133860a..8ce6b723abf2 100644
--- a/arch/arm/boot/dts/ste-hrefprev60-stuib.dts
+++ b/arch/arm/boot/dts/ste-hrefprev60-stuib.dts
@@ -4,8 +4,7 @@
  */
 
 /dts-v1/;
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
+#include "ste-db8500.dtsi"
 #include "ste-hrefprev60.dtsi"
 #include "ste-href-stuib.dtsi"
 
diff --git a/arch/arm/boot/dts/ste-hrefprev60-tvk.dts b/arch/arm/boot/dts/ste-hrefprev60-tvk.dts
index 54b0f8282b2c..8b88c91dca6c 100644
--- a/arch/arm/boot/dts/ste-hrefprev60-tvk.dts
+++ b/arch/arm/boot/dts/ste-hrefprev60-tvk.dts
@@ -4,6 +4,7 @@
  */
 
 /dts-v1/;
+#include "ste-db8500.dtsi"
 #include "ste-hrefprev60.dtsi"
 #include "ste-href-tvk1281618.dtsi"
 
diff --git a/arch/arm/boot/dts/ste-hrefprev60.dtsi b/arch/arm/boot/dts/ste-hrefprev60.dtsi
index 937f942f0961..115495de8612 100644
--- a/arch/arm/boot/dts/ste-hrefprev60.dtsi
+++ b/arch/arm/boot/dts/ste-hrefprev60.dtsi
@@ -5,7 +5,6 @@
  * Device Tree for the HREF+ prior to the v60 variant.
  */
 
-#include "ste-dbx5x0.dtsi"
 #include "ste-href-ab8500.dtsi"
 #include "ste-href.dtsi"
 
diff --git a/arch/arm/boot/dts/ste-hrefv60plus-stuib.dts b/arch/arm/boot/dts/ste-hrefv60plus-stuib.dts
index 36163c0b5267..1316886e6bcb 100644
--- a/arch/arm/boot/dts/ste-hrefv60plus-stuib.dts
+++ b/arch/arm/boot/dts/ste-hrefv60plus-stuib.dts
@@ -6,8 +6,7 @@
  */
 
 /dts-v1/;
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
+#include "ste-db8500.dtsi"
 #include "ste-hrefv60plus.dtsi"
 #include "ste-href-stuib.dtsi"
 
diff --git a/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts b/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts
index cf59e9bb9a74..b31e43d5ff89 100644
--- a/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts
+++ b/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts
@@ -6,6 +6,7 @@
  */
 
 /dts-v1/;
+#include "ste-db8500.dtsi"
 #include "ste-hrefv60plus.dtsi"
 #include "ste-href-tvk1281618.dtsi"
 
diff --git a/arch/arm/boot/dts/ste-hrefv60plus.dtsi b/arch/arm/boot/dts/ste-hrefv60plus.dtsi
index aece8eb2924f..05b4fbbba57f 100644
--- a/arch/arm/boot/dts/ste-hrefv60plus.dtsi
+++ b/arch/arm/boot/dts/ste-hrefv60plus.dtsi
@@ -3,7 +3,6 @@
  * Copyright 2012 ST-Ericsson AB
  */
 
-#include "ste-dbx5x0.dtsi"
 #include "ste-href-ab8500.dtsi"
 #include "ste-href.dtsi"
 
diff --git a/arch/arm/boot/dts/ste-snowball.dts b/arch/arm/boot/dts/ste-snowball.dts
index f8dec3976c91..be90e73c923e 100644
--- a/arch/arm/boot/dts/ste-snowball.dts
+++ b/arch/arm/boot/dts/ste-snowball.dts
@@ -4,7 +4,7 @@
  */
 
 /dts-v1/;
-#include "ste-dbx5x0.dtsi"
+#include "ste-db8500.dtsi"
 #include "ste-href-ab8500.dtsi"
 #include "ste-href-family-pinctrl.dtsi"
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
