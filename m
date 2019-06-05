Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60869356A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Rll3/yqEcPYxnYu6NB6GcmnAUGL4Zf6+Nrc60Izfns=; b=ThLPDa+jtCIgr1
	+yncQAb+1vJccoa2C04XjMXCtvaiSXWyF1Gb3OtTWS7fW3eHmcMyAOY34VDufUfeT+QdVjulr8o4A
	KcyWwKME76JtlwPuJZexpgFFhaMXeiUBpvKcl4LYpst+nAY4zTIq9aoYQPhrVMCiNh1+rP82CvGjg
	VuIvN6ihwS42OoJqM+uqMWcMn+BhxCtOSgDRs8vTjm9yrmGNUAWj8Omr9spZhn6pDFeF31JYbNMjq
	XYkl62Ov3+lHY4tlPKjqkKbehnrV7xfOOIbD3/7YPC+vZ17zqdpV5bN6CNf4bhs3v5SvGiz9gOmF9
	ZlSZNeJ7A04FQ2Igz98A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYP6b-0002NP-Ce; Wed, 05 Jun 2019 06:09:01 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYP63-0001lJ-1m
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:08:31 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5568PZQ060630;
 Wed, 5 Jun 2019 01:08:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559714905;
 bh=e23WnTYvUjw9k/zJtezvgJoxPPb3ZOXliq0JWnFHfqk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=lP9miJR2kR9Ehv7kxaPt19OOtTChVNhX+A/FaQrcrLc1tXFVSfAk76mKo7c6cDwii
 7aV4aufI727Jjuo137tlUIDl/JQgsBCATYJbSRDEcfc4lSYxUIc4Ecw9Le2XHbgXQg
 9iAY73DXFCcQ9k98ixcKIDfQIL8D6KAER1kg2+B4=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5568PKd129668
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 5 Jun 2019 01:08:25 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 5 Jun
 2019 01:08:24 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 5 Jun 2019 01:08:24 -0500
Received: from a0393675ula.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5568Dlj066906;
 Wed, 5 Jun 2019 01:08:22 -0500
From: Keerthy <j-keerthy@ti.com>
To: <t-kristo@ti.com>, <nm@ti.com>, <robh+dt@kernel.org>
Subject: [RFC PATCH 3/3] arm64: dts: ti: am654-base-board: Add gpio_keys node
Date: Wed, 5 Jun 2019 11:38:46 +0530
Message-ID: <20190605060846.25314-4-j-keerthy@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605060846.25314-1-j-keerthy@ti.com>
References: <20190605060846.25314-1-j-keerthy@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_230827_721619_3408A266 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
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
