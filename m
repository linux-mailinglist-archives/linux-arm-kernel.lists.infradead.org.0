Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C04C37102
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Rll3/yqEcPYxnYu6NB6GcmnAUGL4Zf6+Nrc60Izfns=; b=Vbk8qpvK+xaPY0
	lcuAOuGjBLStDZVqPSIU3PXhHhvSKv9ttqrLiInnEN7SZFhqQJw5mEbZ8aDbFD5gzk6ZXg6qKDi+C
	+ItteCXY8cr7NAEKISUzaXmSEbFMmDR8VQ95TLdsD0lfHlhnHlps+tC7XbE81LxlFH1z5NbgXX8K8
	bB9rFLhw9Qh9xzafQA2bfRULis60QXnj3QXnRnHwKLW/CWXdY9saagYYc9S3gWHNP+2uaOStzkmzy
	O/Ddb17Rf57XhI9TXvD3P9oRaDWkz3Ocyyp2LnIA26i8Iq4iSllP1ZRkzNm878liFB90UlvMnoMGu
	R2FxnXdVUuDRx8W/03dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYp8Z-000390-AX; Thu, 06 Jun 2019 09:56:47 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYp7t-0002TR-Qd
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:56:10 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x569u3Vm078863;
 Thu, 6 Jun 2019 04:56:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559814963;
 bh=e23WnTYvUjw9k/zJtezvgJoxPPb3ZOXliq0JWnFHfqk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=kdhMAv/SIp7Oz5pW85x+hEflM9hQV60bFXhGgLRwlWb9Cck0v6eujqxbF6mwIdtrn
 5/l6frjbKgqM1wJyEMs+bnGLIVTQUTf+ftfoxdrwEye8eBlVUrljr0yMBD+v8alu1m
 CrdX+c8aJvsjnP1QAOZ5RbMdlNoSL/EbS1tvY5QM=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x569u35f054665
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 6 Jun 2019 04:56:03 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 6 Jun
 2019 04:56:03 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 6 Jun 2019 04:56:03 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x569thsu016817;
 Thu, 6 Jun 2019 04:55:59 -0500
From: Keerthy <j-keerthy@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>, <robh+dt@kernel.org>
Subject: [RFC RESEND PATCH v2 4/4] arm64: dts: ti: am654-base-board: Add
 gpio_keys node
Date: Thu, 6 Jun 2019 15:26:20 +0530
Message-ID: <20190606095620.6211-5-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190606095620.6211-1-j-keerthy@ti.com>
References: <20190606095620.6211-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_025606_525945_E3A2BD8C 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, lokeshvutla@ti.com,
 j-keerthy@ti.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are 2 push buttons: SW5 and SW6 that are basically connected to
WKUP_GPIO0_24 and WKUP_GPIO0_27 respectively. Add the respective
nodes and the pinctrl data to set the mode to GPIO and Input.

Signed-off-by: Keerthy <j-keerthy@ti.com>
---
 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
index cf1aa276a1ea..ea50b6e36eff 100644
--- a/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-am654-base-board.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "k3-am654.dtsi"
+#include <dt-bindings/input/input.h>
 
 / {
 	compatible =  "ti,am654-evm", "ti,am654";
@@ -33,6 +34,25 @@
 			no-map;
 		};
 	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+		pinctrl-names = "default";
+		pinctrl-0 = <&push_button_pins_default>;
+
+		sw5 {
+			label = "GPIO Key USER1";
+			linux,code = <BTN_0>;
+			gpios = <&wkup_gpio0 24 GPIO_ACTIVE_LOW>;
+		};
+
+		sw6 {
+			label = "GPIO Key USER2";
+			linux,code = <BTN_1>;
+			gpios = <&wkup_gpio0 27 GPIO_ACTIVE_LOW>;
+		};
+	};
 };
 
 &wkup_pmx0 {
@@ -42,6 +62,13 @@
 			AM65X_WKUP_IOPAD(0x00e4, PIN_INPUT, 0) /* (AD6) WKUP_I2C0_SDA */
 		>;
 	};
+
+	push_button_pins_default: push_button__pins_default {
+		pinctrl-single,pins = <
+			AM65X_WKUP_IOPAD(0x0030, PIN_INPUT, 7) /* (R5) WKUP_GPIO0_24 */
+			AM65X_WKUP_IOPAD(0x003c, PIN_INPUT, 7) /* (P2) WKUP_GPIO0_27 */
+		>;
+	};
 };
 
 &main_pmx0 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
