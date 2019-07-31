Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7317D7C1F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:44:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKj+FidveyLDRx53thsmBbdZC3viZrhGLn2en7U76OY=; b=d/Q4x063Aq0S1a
	iwincmz3y4eqTz7Lb8w+Mc0P/5jTfmsM8xWHZPncZW/CaVacZIstMJ6NvJhjNIRdhRuGpi00uB5Yp
	suC68zd62SOQ6P+9g9m5/q2guFgXF41dZRWzZrRYj9zDYgryBcya58L5Zn5o5crYJXxLfirMYt3ua
	FI9HywdriKY3SbrdwCg3w7pS28u0DjslhRngUZOSUXEwUgc8TcUStQgQTPWOrH0HRhKP83A6x5TCM
	iOLwYAw5F4XNiQlOdGjY4C6kVX+JS+nun72RMEVMSolpQOCBMdz5GU9TKAvsq2SxoMyeHh4naOlbK
	xhbdD12PlV9Q8S9uJCxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsny8-0006S6-2b; Wed, 31 Jul 2019 12:44:36 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsntr-0000OV-FR
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:40:19 +0000
Received: by mail-wm1-x344.google.com with SMTP id l2so59656790wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 05:40:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WizoPIpJaKEOM8keVQY+4BOKIt1ZSfvce2lQKnegAL4=;
 b=ckHocCMLDHqzBF6s9DOcxp+6e/eLz9YRUmG9keahMxrmfPKFZUV/54T/2IjBgXhhe0
 YffPVI0DLYjh2Bwamhr2sdgPK2TeDL31oVVgfEsEx3NYWpMCAQDgl9yCkSSdC57R2Vi/
 2IBm0Utoyeb2vMeF21sPvlom7FAQMWAoL2SDGG3jmrf+qQp4cffFACh11pM47cAPI8Ez
 apIzhenEoWSRlCdTv+7KnkobDyJhqM9BQX6qASZUpQsxugBjfkyYJWiPcK8hWBYr149b
 sTbWuoB7rWeybmX1uPGoIjMnDAVJbA3Z/fNTuuRVb7ZTTcbFU17pTI9FwXaKgdT2VUo+
 NzKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WizoPIpJaKEOM8keVQY+4BOKIt1ZSfvce2lQKnegAL4=;
 b=DaBH7Pc/ajWtWBilV+pboQhOZq+lQooZC/X8lG4BjTiynexjH6fUapwfhJDBHMIYzc
 R31JCzcFELNvZu49mvOx1RL/AVR1VlkUoXhrMPi3y3FS2niqjeoAt24hXqd5Uoo3sac9
 HQq26f5FEg8L8AUMfM3oME1DgBPDs5aHynHYRl9ZS6q+cIXhkdgbrF+rh5PeTlEw9eVg
 0ifxRQQPb8AdbYGU6V3tyFa/qy9Jy3nKeCxCRXEuzVGtUDCQg2UATbrOr1sURSu/rxi1
 69fdPsoDr79paW4jKqHLtw+l3dFV469wP7u9Bbt+qL7PS2DGg7NXpG3Pf2HmBRAOyKPc
 8qUw==
X-Gm-Message-State: APjAAAV9Xkm8ScOqTewdx7YS9XBePaTODEIQ8qDznMXdO6z3R/UA8yE6
 yWp3IZM/m4EGXJqjecWVF3bSwg==
X-Google-Smtp-Source: APXvYqwDPOxco6g/MHBgaf8q6x2onNr51cb1t1+BxEgPGrv/rv4Hu0+/MZkWCY9T61/xK0sYnPpWFA==
X-Received: by 2002:a1c:ddc1:: with SMTP id
 u184mr108079706wmg.158.1564576808108; 
 Wed, 31 Jul 2019 05:40:08 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x185sm62504271wmg.46.2019.07.31.05.40.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 05:40:07 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 5/6] arm64: dts: meson-g12b: support a311d and s922x cpu
 operating points
Date: Wed, 31 Jul 2019 14:39:59 +0200
Message-Id: <20190731124000.22072-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731124000.22072-1-narmstrong@baylibre.com>
References: <20190731124000.22072-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_054012_019137_A2A8802B 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org,
 Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christian Hewitt <christianshewitt@gmail.com>

Meson g12b ships with a low-speed (S922X) and high-speed (A311D) variant
so remove cpu_opp_table nodes in meson-g12b.dtsi and create two new dtsi
that can be included in device-specific dts files. Opp points were taken
from the vendor BSP kernel.

Also make meson-g12b-odroid-n2.dts include the new meson-g12b-s922x.dtsi.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12b-a311d.dtsi    | 149 ++++++++++++++++++
 .../boot/dts/amlogic/meson-g12b-odroid-n2.dts |   2 +-
 .../boot/dts/amlogic/meson-g12b-s922x.dtsi    | 124 +++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   | 115 --------------
 4 files changed, 274 insertions(+), 116 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d.dtsi
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d.dtsi
new file mode 100644
index 000000000000..d61f43052a34
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d.dtsi
@@ -0,0 +1,149 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#include "meson-g12b.dtsi"
+
+/ {
+	cpu_opp_table_0: opp-table-0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-250000000 {
+			opp-hz = /bits/ 64 <250000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-667000000 {
+			opp-hz = /bits/ 64 <667000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <761000>;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <781000>;
+		};
+
+		opp-1398000000 {
+			opp-hz = /bits/ 64 <1398000000>;
+			opp-microvolt = <811000>;
+		};
+
+		opp-1512000000 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-microvolt = <861000>;
+		};
+
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <901000>;
+		};
+
+		opp-1704000000 {
+			opp-hz = /bits/ 64 <1704000000>;
+			opp-microvolt = <951000>;
+		};
+
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <1001000>;
+		};
+	};
+
+	cpub_opp_table_1: opp-table-1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-250000000 {
+			opp-hz = /bits/ 64 <250000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-667000000 {
+			opp-hz = /bits/ 64 <667000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <751000>;
+		};
+
+		opp-1398000000 {
+			opp-hz = /bits/ 64 <1398000000>;
+			opp-microvolt = <771000>;
+		};
+
+		opp-1512000000 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-microvolt = <771000>;
+		};
+
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <781000>;
+		};
+
+		opp-1704000000 {
+			opp-hz = /bits/ 64 <1704000000>;
+			opp-microvolt = <791000>;
+		};
+
+		opp-1800000000 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-microvolt = <831000>;
+		};
+
+                opp-1908000000 {
+                        opp-hz = /bits/ 64 <1908000000>;
+                        opp-microvolt = <861000>;
+                };
+
+                opp-2016000000 {
+                        opp-hz = /bits/ 64 <2016000000>;
+                        opp-microvolt = <911000>;
+                };
+
+                opp-2108000000 {
+                        opp-hz = /bits/ 64 <2108000000>;
+                        opp-microvolt = <951000>;
+                };
+
+                opp-2208000000 {
+                        opp-hz = /bits/ 64 <2208000000>;
+                        opp-microvolt = <1011000>;
+                };
+	};
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
index 777bfb938854..6cfc2c69bb4f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
@@ -6,7 +6,7 @@
 
 /dts-v1/;
 
-#include "meson-g12b.dtsi"
+#include "meson-g12b-s922x.dtsi"
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/gpio/meson-g12a-gpio.h>
 #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
new file mode 100644
index 000000000000..046cc332d07f
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-s922x.dtsi
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#include "meson-g12b.dtsi"
+
+/ {
+	cpu_opp_table_0: opp-table-0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-250000000 {
+			opp-hz = /bits/ 64 <250000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-667000000 {
+			opp-hz = /bits/ 64 <667000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <731000>;
+		};
+
+		opp-1398000000 {
+			opp-hz = /bits/ 64 <1398000000>;
+			opp-microvolt = <761000>;
+		};
+
+		opp-1512000000 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-microvolt = <791000>;
+		};
+
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <831000>;
+		};
+
+		opp-1704000000 {
+			opp-hz = /bits/ 64 <1704000000>;
+			opp-microvolt = <861000>;
+		};
+
+		opp-1896000000 {
+			opp-hz = /bits/ 64 <1896000000>;
+			opp-microvolt = <981000>;
+		};
+	};
+
+	cpub_opp_table_1: opp-table-1 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			opp-microvolt = <751000>;
+		};
+
+		opp-250000000 {
+			opp-hz = /bits/ 64 <250000000>;
+			opp-microvolt = <751000>;
+		};
+
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <751000>;
+		};
+
+		opp-667000000 {
+			opp-hz = /bits/ 64 <667000000>;
+			opp-microvolt = <751000>;
+		};
+
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-microvolt = <771000>;
+		};
+
+		opp-1200000000 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-microvolt = <771000>;
+		};
+
+		opp-1398000000 {
+			opp-hz = /bits/ 64 <1398000000>;
+			opp-microvolt = <791000>;
+		};
+
+		opp-1512000000 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-microvolt = <821000>;
+		};
+
+		opp-1608000000 {
+			opp-hz = /bits/ 64 <1608000000>;
+			opp-microvolt = <861000>;
+		};
+
+		opp-1704000000 {
+			opp-hz = /bits/ 64 <1704000000>;
+			opp-microvolt = <891000>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
index 98ae8a7c8b41..d5edbc1a1991 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
@@ -95,121 +95,6 @@
 			compatible = "cache";
 		};
 	};
-
-	cpu_opp_table_0: opp-table-0 {
-		compatible = "operating-points-v2";
-		opp-shared;
-
-		opp-100000000 {
-			opp-hz = /bits/ 64 <100000000>;
-			opp-microvolt = <731000>;
-		};
-
-		opp-250000000 {
-			opp-hz = /bits/ 64 <250000000>;
-			opp-microvolt = <731000>;
-		};
-
-		opp-500000000 {
-			opp-hz = /bits/ 64 <500000000>;
-			opp-microvolt = <731000>;
-		};
-
-		opp-666666666 {
-			opp-hz = /bits/ 64 <666666666>;
-			opp-microvolt = <731000>;
-		};
-
-		opp-1000000000 {
-			opp-hz = /bits/ 64 <1000000000>;
-			opp-microvolt = <731000>;
-		};
-
-		opp-1200000000 {
-			opp-hz = /bits/ 64 <1200000000>;
-			opp-microvolt = <731000>;
-		};
-
-		opp-1398000000 {
-			opp-hz = /bits/ 64 <1398000000>;
-			opp-microvolt = <761000>;
-		};
-
-		opp-1512000000 {
-			opp-hz = /bits/ 64 <1512000000>;
-			opp-microvolt = <791000>;
-		};
-
-		opp-1608000000 {
-			opp-hz = /bits/ 64 <1608000000>;
-			opp-microvolt = <831000>;
-		};
-
-		opp-1704000000 {
-			opp-hz = /bits/ 64 <1704000000>;
-			opp-microvolt = <861000>;
-		};
-
-		opp-1896000000 {
-			opp-hz = /bits/ 64 <1896000000>;
-			opp-microvolt = <981000>;
-		};
-	};
-
-	cpub_opp_table_1: opp-table-1 {
-		compatible = "operating-points-v2";
-		opp-shared;
-
-		opp-100000000 {
-			opp-hz = /bits/ 64 <100000000>;
-			opp-microvolt = <751000>;
-		};
-
-		opp-250000000 {
-			opp-hz = /bits/ 64 <250000000>;
-			opp-microvolt = <751000>;
-		};
-
-		opp-500000000 {
-			opp-hz = /bits/ 64 <500000000>;
-			opp-microvolt = <751000>;
-		};
-
-		opp-666666666 {
-			opp-hz = /bits/ 64 <666666666>;
-			opp-microvolt = <751000>;
-		};
-
-		opp-1000000000 {
-			opp-hz = /bits/ 64 <1000000000>;
-			opp-microvolt = <751000>;
-		};
-
-		opp-1200000000 {
-			opp-hz = /bits/ 64 <1200000000>;
-			opp-microvolt = <771000>;
-		};
-
-		opp-1398000000 {
-			opp-hz = /bits/ 64 <1398000000>;
-			opp-microvolt = <791000>;
-		};
-
-		opp-1512000000 {
-			opp-hz = /bits/ 64 <1512000000>;
-			opp-microvolt = <821000>;
-		};
-
-		opp-1608000000 {
-			opp-hz = /bits/ 64 <1608000000>;
-			opp-microvolt = <861000>;
-		};
-
-		opp-1704000000 {
-			opp-hz = /bits/ 64 <1704000000>;
-			opp-microvolt = <891000>;
-		};
-	};
 };
 
 &clkc {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
