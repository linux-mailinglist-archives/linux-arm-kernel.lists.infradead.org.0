Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF24787422
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 10:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97ReR8BzBQJfLkQ5hO3qPhR0w5ys2GLRm99d1f+Zk5k=; b=XNOU+vY2ugJWjd
	maL2aAMG6iDEQ46UplSO2JYYHvNuW5KaniUL5mT+rTiHrjTdol2P6kaowS5aOJ75s2j1MMPtCDIim
	jes6sVV8Dtr6HAff1yh+Qm3AfsX1wYGgMJkcWZc66dCtDs4D40oSizih63jvsVCS4ZBok2UjTELd5
	ov45eAS24+mMwnVqPIrbjPYFSWHY8GSqAp8kxdZbH2tBJ3k9wpdikE5Y4ZQAWqDRBcACgwms5Tf2F
	gdI5wvDDD/AVx7Jvrdol+nfMz3ASpMU/jmRevIvJT4Bd2CPX8mHzV6gOmBf2+lqAUY70CqqXQqADj
	M/o7lh1+rMtsbASxJqgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw0K4-0006JK-6t; Fri, 09 Aug 2019 08:32:28 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw0IW-00054X-QH
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 08:30:54 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x798UnqQ026980;
 Fri, 9 Aug 2019 03:30:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565339449;
 bh=Oz+Gc0ro6GRqf4q2xzx0zBsTiD/yeoByYWJBluu+ngU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=L/6fboBOpIfXufUduuF3GH7gU6AJCk+6PBESN9sxQ4lNc3/h49bVppErbSkM6S7pn
 89EhjaaEg9M1sTJLltoxSU7kIlVpCoSg/3Nfg0iEuAlbvOw+pqgHKpzQSMTMTait4K
 324vVJ2y2E3DpfgMXohznYnGElBcWjASVtVRCKMw=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x798UnLO109093
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Aug 2019 03:30:49 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 9 Aug
 2019 03:30:49 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 9 Aug 2019 03:30:49 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x798USdk070370;
 Fri, 9 Aug 2019 03:30:46 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
 <linus.walleij@linaro.org>
Subject: [PATCH 6/6] arm64: dts: k3-j721e: Add gpio-keys on common processor
 board
Date: Fri, 9 Aug 2019 13:59:47 +0530
Message-ID: <20190809082947.30590-7-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190809082947.30590-1-lokeshvutla@ti.com>
References: <20190809082947.30590-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_013053_091273_9D8664D4 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nikhil Devshatwar <nikhil.nd@ti.com>

Common processor board for K3 J721E platform has two push buttons
namely SW10 and SW11.
Add a gpio-keys device node to model them as input keys in Linux.
Add required pinmux nodes to set GPIO pins as input.

Signed-off-by: Nikhil Devshatwar <nikhil.nd@ti.com>
Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 .../dts/ti/k3-j721e-common-proc-board.dts     | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
index 509579ca3db2..d2894d55fbbe 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -6,12 +6,49 @@
 /dts-v1/;
 
 #include "k3-j721e-som-p0.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 
 / {
 	chosen {
 		stdout-path = "serial2:115200n8";
 		bootargs = "console=ttyS2,115200n8 earlycon=ns16550a,mmio32,0x02800000";
 	};
+
+	gpio_keys: gpio-keys {
+		compatible = "gpio-keys";
+		autorepeat;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sw10_button_pins_default &sw11_button_pins_default>;
+
+		sw10: sw10 {
+			label = "GPIO Key USER1";
+			linux,code = <BTN_0>;
+			gpios = <&main_gpio0 0 GPIO_ACTIVE_LOW>;
+		};
+
+		sw11: sw11 {
+			label = "GPIO Key USER2";
+			linux,code = <BTN_1>;
+			gpios = <&wkup_gpio0 7 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&main_pmx0 {
+	sw10_button_pins_default: sw10_button_pins_default {
+		pinctrl-single,pins = <
+			J721E_IOPAD(0x0, PIN_INPUT, 7) /* (AC18) EXTINTn.GPIO0_0 */
+		>;
+	};
+};
+
+&wkup_pmx0 {
+	sw11_button_pins_default: sw11_button_pins_default {
+		pinctrl-single,pins = <
+			J721E_WKUP_IOPAD(0xcc, PIN_INPUT, 7) /* (G28) WKUP_GPIO0_7 */
+		>;
+	};
 };
 
 &wkup_uart0 {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
