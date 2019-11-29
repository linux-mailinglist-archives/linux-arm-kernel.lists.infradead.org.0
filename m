Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF3F10D967
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 19:07:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OhMd4A5nYOFrm9HDqwvhYZno2kc/+XhXuwYqTuKZ+wM=; b=Y9jTUb5NYW9mT5
	FtjrdKKnKsqFTYqoZqBMERT03nEmyOETwig4qInTJqgThQ7SLpsnCTUX3pCQrX3vs0/GL/HxGHUDy
	DF/a8pKl6AeALt0xow0l3/QerjF/Pmb7NKdC1RZHGXEWEsjXlzodsXJLM4U2Z6IZiZosh+QkkaZ3H
	Vgrn9ASS9MWZt4PohngX3UYimURqYYKjJf/D0BKuZqjMSqKWJKGaVxEVkzLSawsxH5MzyGvjjyaTu
	v++TkkaUjAnT9p4xZdPObYK0HHoAjlcBQHXLK0M1Z9dQtjR9ixqUz4BndJ8gWTRvxFb5hpLeozT8R
	DbtEHSOeinyzZMlE6kCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iakg7-0002tk-Gn; Fri, 29 Nov 2019 18:07:39 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iakem-0001xq-6R
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 18:06:22 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xATI08mp024288; Fri, 29 Nov 2019 19:06:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=dAq7R3H7IKdrtGpxINjpm51TQLi/qDTgGLAWiKNgOtg=;
 b=I3jX63QURBQNXTQCzaTMFLxGbe0DLV8yFgvhdy4EsEYg7AdJvd5tx9zVS+Paw1xrs3bs
 dfm+xn0sCbZ2iMNORvJWCmrTu+hr33fQvlDDKm6WO9KrQO6i0V07+1mq9YWkuwMugZUd
 NyTtqBfAVW724CVUTCFxsKmMzFz/jVrWTxWCmZnVrJKaRD/fPPZJ/VlO47iFkVOyvpG3
 oZHWmEwju0fsP048pkxVZxHXDKirN3KrZgfBHb9U8uXC3Q9ITP4kjNZ6Xv4EDvNw6zek
 soXNzoeJeszfMeI8xxM0LybJ8iB+EpKIE5hZ/nLu4L+2B5dXF6+kvRvD1T7+BGLgF1al Tg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2whcxss0n2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 Nov 2019 19:06:06 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0915E100038;
 Fri, 29 Nov 2019 19:06:06 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EA6A1222D1F;
 Fri, 29 Nov 2019 19:06:05 +0100 (CET)
Received: from localhost (10.75.127.48) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 29 Nov 2019 19:06:05
 +0100
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, <arnd@arndb.de>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH v2 2/6] ARM: dts: stm32: Update stm32mp157 pinctrl files
Date: Fri, 29 Nov 2019 19:05:58 +0100
Message-ID: <20191129180602.28470-3-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191129180602.28470-1-alexandre.torgue@st.com>
References: <20191129180602.28470-1-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-29_06:2019-11-29,2019-11-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_100616_553521_F5DA42F6 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to cover the STM32MP15 SOCs family this commit updates pinctrl
file names (group definition and packages files).
This family includes: STM32MP151, STM32MP153 and STM32MP157.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
similarity index 100%
rename from arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
rename to arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 628c74a45a25..2f6dd51e8506 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -7,7 +7,8 @@
 /dts-v1/;
 
 #include "stm32mp157c.dtsi"
-#include "stm32mp157xac-pinctrl.dtsi"
+#include "stm32mp15-pinctrl.dtsi"
+#include "stm32mp15xxac-pinctrl.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/mfd/st,stpmic1.h>
 
diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
index 2f9f8cf94b02..7ee7b4d13d39 100644
--- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
@@ -7,7 +7,8 @@
 /dts-v1/;
 
 #include "stm32mp157c.dtsi"
-#include "stm32mp157xac-pinctrl.dtsi"
+#include "stm32mp15-pinctrl.dtsi"
+#include "stm32mp15xxac-pinctrl.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/mfd/st,stpmic1.h>
 
diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
index 341fb6064447..e5d8da01aaef 100644
--- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
@@ -6,7 +6,8 @@
 /dts-v1/;
 
 #include "stm32mp157c.dtsi"
-#include "stm32mp157xaa-pinctrl.dtsi"
+#include "stm32mp15-pinctrl.dtsi"
+#include "stm32mp15xxaa-pinctrl.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/mfd/st,stpmic1.h>
 
diff --git a/arch/arm/boot/dts/stm32mp157xaa-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157xaa-pinctrl.dtsi
deleted file mode 100644
index 875adf5e1e30..000000000000
--- a/arch/arm/boot/dts/stm32mp157xaa-pinctrl.dtsi
+++ /dev/null
@@ -1,90 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
-/*
- * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
- * Author: Alexandre Torgue <alexandre.torgue@st.com>
- */
-
-#include "stm32mp157-pinctrl.dtsi"
-/ {
-	soc {
-		pinctrl: pin-controller@50002000 {
-			st,package = <STM32MP_PKG_AA>;
-
-			gpioa: gpio@50002000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 0 16>;
-			};
-
-			gpiob: gpio@50003000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 16 16>;
-			};
-
-			gpioc: gpio@50004000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 32 16>;
-			};
-
-			gpiod: gpio@50005000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 48 16>;
-			};
-
-			gpioe: gpio@50006000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 64 16>;
-			};
-
-			gpiof: gpio@50007000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 80 16>;
-			};
-
-			gpiog: gpio@50008000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 96 16>;
-			};
-
-			gpioh: gpio@50009000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 112 16>;
-			};
-
-			gpioi: gpio@5000a000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 128 16>;
-			};
-
-			gpioj: gpio@5000b000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 144 16>;
-			};
-
-			gpiok: gpio@5000c000 {
-				status = "okay";
-				ngpios = <8>;
-				gpio-ranges = <&pinctrl 0 160 8>;
-			};
-		};
-
-		pinctrl_z: pin-controller-z@54004000 {
-			st,package = <STM32MP_PKG_AA>;
-
-			gpioz: gpio@54004000 {
-				status = "okay";
-				ngpios = <8>;
-				gpio-ranges = <&pinctrl_z 0 400 8>;
-			};
-		};
-	};
-};
diff --git a/arch/arm/boot/dts/stm32mp157xab-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157xab-pinctrl.dtsi
deleted file mode 100644
index 961fa12a59c3..000000000000
--- a/arch/arm/boot/dts/stm32mp157xab-pinctrl.dtsi
+++ /dev/null
@@ -1,62 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
-/*
- * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
- * Author: Alexandre Torgue <alexandre.torgue@st.com>
- */
-
-#include "stm32mp157-pinctrl.dtsi"
-/ {
-	soc {
-		pinctrl: pin-controller@50002000 {
-			st,package = <STM32MP_PKG_AB>;
-
-			gpioa: gpio@50002000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 0 16>;
-			};
-
-			gpiob: gpio@50003000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 16 16>;
-			};
-
-			gpioc: gpio@50004000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 32 16>;
-			};
-
-			gpiod: gpio@50005000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 48 16>;
-			};
-
-			gpioe: gpio@50006000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 64 16>;
-			};
-
-			gpiof: gpio@50007000 {
-				status = "okay";
-				ngpios = <6>;
-				gpio-ranges = <&pinctrl 6 86 6>;
-			};
-
-			gpiog: gpio@50008000 {
-				status = "okay";
-				ngpios = <10>;
-				gpio-ranges = <&pinctrl 6 102 10>;
-			};
-
-			gpioh: gpio@50009000 {
-				status = "okay";
-				ngpios = <2>;
-				gpio-ranges = <&pinctrl 0 112 2>;
-			};
-		};
-	};
-};
diff --git a/arch/arm/boot/dts/stm32mp157xac-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157xac-pinctrl.dtsi
deleted file mode 100644
index 26600f188d25..000000000000
--- a/arch/arm/boot/dts/stm32mp157xac-pinctrl.dtsi
+++ /dev/null
@@ -1,78 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
-/*
- * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
- * Author: Alexandre Torgue <alexandre.torgue@st.com>
- */
-
-#include "stm32mp157-pinctrl.dtsi"
-/ {
-	soc {
-		pinctrl: pin-controller@50002000 {
-			st,package = <STM32MP_PKG_AC>;
-
-			gpioa: gpio@50002000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 0 16>;
-			};
-
-			gpiob: gpio@50003000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 16 16>;
-			};
-
-			gpioc: gpio@50004000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 32 16>;
-			};
-
-			gpiod: gpio@50005000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 48 16>;
-			};
-
-			gpioe: gpio@50006000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 64 16>;
-			};
-
-			gpiof: gpio@50007000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 80 16>;
-			};
-
-			gpiog: gpio@50008000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 96 16>;
-			};
-
-			gpioh: gpio@50009000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 112 16>;
-			};
-
-			gpioi: gpio@5000a000 {
-				status = "okay";
-				ngpios = <12>;
-				gpio-ranges = <&pinctrl 0 128 12>;
-			};
-		};
-
-		pinctrl_z: pin-controller-z@54004000 {
-			st,package = <STM32MP_PKG_AC>;
-
-			gpioz: gpio@54004000 {
-				status = "okay";
-				ngpios = <8>;
-				gpio-ranges = <&pinctrl_z 0 400 8>;
-			};
-		};
-	};
-};
diff --git a/arch/arm/boot/dts/stm32mp157xad-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157xad-pinctrl.dtsi
deleted file mode 100644
index 910113f3e69a..000000000000
--- a/arch/arm/boot/dts/stm32mp157xad-pinctrl.dtsi
+++ /dev/null
@@ -1,62 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
-/*
- * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
- * Author: Alexandre Torgue <alexandre.torgue@st.com>
- */
-
-#include "stm32mp157-pinctrl.dtsi"
-/ {
-	soc {
-		pinctrl: pin-controller@50002000 {
-			st,package = <STM32MP_PKG_AD>;
-
-			gpioa: gpio@50002000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 0 16>;
-			};
-
-			gpiob: gpio@50003000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 16 16>;
-			};
-
-			gpioc: gpio@50004000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 32 16>;
-			};
-
-			gpiod: gpio@50005000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 48 16>;
-			};
-
-			gpioe: gpio@50006000 {
-				status = "okay";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 64 16>;
-			};
-
-			gpiof: gpio@50007000 {
-				status = "okay";
-				ngpios = <6>;
-				gpio-ranges = <&pinctrl 6 86 6>;
-			};
-
-			gpiog: gpio@50008000 {
-				status = "okay";
-				ngpios = <10>;
-				gpio-ranges = <&pinctrl 6 102 10>;
-			};
-
-			gpioh: gpio@50009000 {
-				status = "okay";
-				ngpios = <2>;
-				gpio-ranges = <&pinctrl 0 112 2>;
-			};
-		};
-	};
-};
diff --git a/arch/arm/boot/dts/stm32mp15xxaa-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15xxaa-pinctrl.dtsi
new file mode 100644
index 000000000000..04f7a43ad66f
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp15xxaa-pinctrl.dtsi
@@ -0,0 +1,85 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
+ * Author: Alexandre Torgue <alexandre.torgue@st.com> for STMicroelectronics.
+ */
+
+&pinctrl {
+	st,package = <STM32MP_PKG_AA>;
+
+	gpioa: gpio@50002000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 0 16>;
+	};
+
+	gpiob: gpio@50003000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 16 16>;
+	};
+
+	gpioc: gpio@50004000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 32 16>;
+	};
+
+	gpiod: gpio@50005000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 48 16>;
+	};
+
+	gpioe: gpio@50006000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 64 16>;
+	};
+
+	gpiof: gpio@50007000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 80 16>;
+	};
+
+	gpiog: gpio@50008000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 96 16>;
+	};
+
+	gpioh: gpio@50009000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 112 16>;
+	};
+
+	gpioi: gpio@5000a000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 128 16>;
+	};
+
+	gpioj: gpio@5000b000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 144 16>;
+	};
+
+	gpiok: gpio@5000c000 {
+		status = "okay";
+		ngpios = <8>;
+		gpio-ranges = <&pinctrl 0 160 8>;
+	};
+};
+
+&pinctrl_z {
+	st,package = <STM32MP_PKG_AA>;
+
+	gpioz: gpio@54004000 {
+		status = "okay";
+		ngpios = <8>;
+		gpio-ranges = <&pinctrl_z 0 400 8>;
+	};
+};
diff --git a/arch/arm/boot/dts/stm32mp15xxab-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15xxab-pinctrl.dtsi
new file mode 100644
index 000000000000..328dad140e9b
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp15xxab-pinctrl.dtsi
@@ -0,0 +1,57 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
+ * Author: Alexandre Torgue <alexandre.torgue@st.com> for STMicroelectronics.
+ */
+
+&pinctrl {
+	st,package = <STM32MP_PKG_AB>;
+
+	gpioa: gpio@50002000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 0 16>;
+	};
+
+	gpiob: gpio@50003000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 16 16>;
+	};
+
+	gpioc: gpio@50004000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 32 16>;
+	};
+
+	gpiod: gpio@50005000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 48 16>;
+	};
+
+	gpioe: gpio@50006000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 64 16>;
+	};
+
+	gpiof: gpio@50007000 {
+		status = "okay";
+		ngpios = <6>;
+		gpio-ranges = <&pinctrl 6 86 6>;
+	};
+
+	gpiog: gpio@50008000 {
+		status = "okay";
+		ngpios = <10>;
+		gpio-ranges = <&pinctrl 6 102 10>;
+	};
+
+	gpioh: gpio@50009000 {
+		status = "okay";
+		ngpios = <2>;
+		gpio-ranges = <&pinctrl 0 112 2>;
+	};
+};
diff --git a/arch/arm/boot/dts/stm32mp15xxac-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15xxac-pinctrl.dtsi
new file mode 100644
index 000000000000..7eaa245f44db
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp15xxac-pinctrl.dtsi
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
+ * Author: Alexandre Torgue <alexandre.torgue@st.com> for STMicroelectronics.
+ */
+
+&pinctrl {
+	st,package = <STM32MP_PKG_AC>;
+
+	gpioa: gpio@50002000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 0 16>;
+	};
+
+	gpiob: gpio@50003000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 16 16>;
+	};
+
+	gpioc: gpio@50004000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 32 16>;
+	};
+
+	gpiod: gpio@50005000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 48 16>;
+	};
+
+	gpioe: gpio@50006000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 64 16>;
+	};
+
+	gpiof: gpio@50007000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 80 16>;
+	};
+
+	gpiog: gpio@50008000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 96 16>;
+	};
+
+	gpioh: gpio@50009000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 112 16>;
+	};
+
+	gpioi: gpio@5000a000 {
+		status = "okay";
+		ngpios = <12>;
+		gpio-ranges = <&pinctrl 0 128 12>;
+	};
+};
+
+&pinctrl_z {
+	st,package = <STM32MP_PKG_AC>;
+
+	gpioz: gpio@54004000 {
+		status = "okay";
+		ngpios = <8>;
+		gpio-ranges = <&pinctrl_z 0 400 8>;
+	};
+};
diff --git a/arch/arm/boot/dts/stm32mp15xxad-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15xxad-pinctrl.dtsi
new file mode 100644
index 000000000000..b63e207de216
--- /dev/null
+++ b/arch/arm/boot/dts/stm32mp15xxad-pinctrl.dtsi
@@ -0,0 +1,57 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
+/*
+ * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
+ * Author: Alexandre Torgue <alexandre.torgue@st.com> for STMicroelectronics.
+ */
+
+&pinctrl {
+	st,package = <STM32MP_PKG_AD>;
+
+	gpioa: gpio@50002000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 0 16>;
+	};
+
+	gpiob: gpio@50003000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 16 16>;
+	};
+
+	gpioc: gpio@50004000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 32 16>;
+	};
+
+	gpiod: gpio@50005000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 48 16>;
+	};
+
+	gpioe: gpio@50006000 {
+		status = "okay";
+		ngpios = <16>;
+		gpio-ranges = <&pinctrl 0 64 16>;
+	};
+
+	gpiof: gpio@50007000 {
+		status = "okay";
+		ngpios = <6>;
+		gpio-ranges = <&pinctrl 6 86 6>;
+	};
+
+	gpiog: gpio@50008000 {
+		status = "okay";
+		ngpios = <10>;
+		gpio-ranges = <&pinctrl 6 102 10>;
+	};
+
+	gpioh: gpio@50009000 {
+		status = "okay";
+		ngpios = <2>;
+		gpio-ranges = <&pinctrl 0 112 2>;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
