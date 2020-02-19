Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D10163E09
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:44:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVsPCRFmbjH/s9w3/51yM+7CgQMENxFEIN9BTL5yhZs=; b=oZI4pGNBFmGoB5
	Z5X3oAi97Xcjr4KEmCTMJo1+b4g69NEE8zNMY0C5uCPFkm0q5mwDVw/u9vdvMX92GQWQ4Ks/ey5Gc
	Cjaqxu6T/ee2mVlHU4kJRWTEbWJ7h4iMmB+eENMLNtnmGOc2RICM4WxPi7Im4LnxVj2vePmqIBfR7
	hzViKQcPCOQ7cC7HRWPU0t9+qGd6IbwusHZ2CuP4fb1bTP5UTedNCYdSy20CXR/mF6E+yJLAg9j+3
	f/kKuIznNPpTnwfcu2h+JwO9TwZBy/v7KXvXTK7vNoU+r26UngmstNzp71KllFQL2SJAfHrJQfrT/
	Do4ZcjOTK1VnRNDJyKIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4K1Y-0007mU-Hs; Wed, 19 Feb 2020 07:44:00 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4K1F-0007gc-Px
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:43:43 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01J7ha0W072284;
 Wed, 19 Feb 2020 01:43:36 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582098216;
 bh=K1F4IClb6EB+DMD6RoWKBjL3ij6S1ICIWNFN/YtUkek=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=l6xXsCOKu8BhuHYCv3FCXDfZk2ixz50fcy/1Li1Bk2UBpIq0ecHhMYFI+aVpGfl4J
 AQrBw2OeREZWwiuIRrRw4vb5ac9SShhkjTy8843auxaMSMbQzNEUIsxvSfpznZ/LYO
 uKT9JqgNnyOA+mj5di34585oAJxvFfgCOpf2hXto=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01J7ha5E038651
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 19 Feb 2020 01:43:36 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 19
 Feb 2020 01:43:35 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 19 Feb 2020 01:43:35 -0600
Received: from a0393675ula.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01J7hKCb068778;
 Wed, 19 Feb 2020 01:43:31 -0600
From: Keerthy <j-keerthy@ti.com>
To: <rui.zhang@intel.com>, <robh+dt@kernel.org>, <daniel.lezcano@linaro.org>
Subject: [PATCH v3 3/4] arm64: dts: ti: am654: Add thermal zones
Date: Wed, 19 Feb 2020 13:13:13 +0530
Message-ID: <20200219074314.22829-4-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219074314.22829-1-j-keerthy@ti.com>
References: <20200219074314.22829-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_234341_936523_365D6690 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The am654 SoC has three thermal zones namely MPU0, MPU1 and MCU
zones

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 .../dts/ti/k3-am654-industrial-thermal.dtsi   | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi

diff --git a/arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi b/arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi
new file mode 100644
index 000000000000..cdc3d40c3f60
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-am654-industrial-thermal.dtsi
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <dt-bindings/thermal/thermal.h>
+
+mpu0_thermal: mpu0_thermal {
+	polling-delay-passive = <250>; /* milliseconds */
+	polling-delay = <500>; /* milliseconds */
+	thermal-sensors = <&wkup_vtm0 0>;
+
+	trips {
+		mpu0_crit: mpu0_crit {
+			temperature = <125000>; /* milliCelsius */
+			hysteresis = <2000>; /* milliCelsius */
+			type = "critical";
+		};
+	};
+};
+
+mpu1_thermal: mpu1_thermal {
+	polling-delay-passive = <250>; /* milliseconds */
+	polling-delay = <500>; /* milliseconds */
+	thermal-sensors = <&wkup_vtm0 1>;
+
+	trips {
+		mpu1_crit: mpu1_crit {
+			temperature = <125000>; /* milliCelsius */
+			hysteresis = <2000>; /* milliCelsius */
+			type = "critical";
+		};
+	};
+};
+
+mcu_thermal: mcu_thermal {
+	polling-delay-passive = <250>; /* milliseconds */
+	polling-delay = <500>; /* milliseconds */
+	thermal-sensors = <&wkup_vtm0 2>;
+
+	trips {
+		mcu_crit: mcu_crit {
+			temperature = <125000>; /* milliCelsius */
+			hysteresis = <2000>; /* milliCelsius */
+			type = "critical";
+		};
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
