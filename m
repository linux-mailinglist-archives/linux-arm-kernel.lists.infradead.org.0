Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B83CB45EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 05:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=82QiPIMQA8omKF/I8bj+WbzKp3c6Gr/YJ8OvJhCn69o=; b=tDT41sIR+ljac6wEh8uH0R4XrP
	ZdekalpETYkSzsOOVK8spFBveA7wCHgDtBz5SI+n3TQ45WGpz56Y5eQiHR5YkF2K3ql5k5Wi/YaRW
	9HRsVlXMAfKuKIeDUXFSeMdRzFexiC72bPQd47cjkYV6LltXCqJdmVONhydq7kPpTbpBcqwEBFkcJ
	ZVi2bE8Wxdx93665QR050wCdQXPMHbvCpnLz13AsRIFv1QYMlKreIiOwywhuZY2IZQwftLQFTQGhE
	bOkPJmEPQExxx0es55OGFEwsM6hPpsfpcOEL/Y80LUdJhtMZ17x9S7J0uEz6qxxAs3Yo8oNxH13qZ
	lO5rQBQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA3x9-0005Ye-Sg; Tue, 17 Sep 2019 03:14:56 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA3wN-00051v-Mi
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 03:14:09 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 716A8200637;
 Tue, 17 Sep 2019 05:14:06 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 74D12200639;
 Tue, 17 Sep 2019 05:13:45 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1AE47402FC;
 Tue, 17 Sep 2019 11:13:31 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, dmitry.torokhov@gmail.com,
 aisheng.dong@nxp.com, ulf.hansson@linaro.org, fugang.duan@nxp.com,
 peng.fan@nxp.com, leonard.crestez@nxp.com, daniel.baluta@nxp.com,
 olof@lixom.net, mripard@kernel.org, arnd@arndb.de,
 jagan@amarulasolutions.com, dinguyen@kernel.org,
 bjorn.andersson@linaro.org, marcin.juszkiewicz@linaro.org,
 andriy.shevchenko@linux.intel.com, yuehaibing@huawei.com,
 cw00.choi@samsung.com, enric.balletbo@collabora.com,
 m.felsch@pengutronix.de, ping.bai@nxp.com, ronald@innovation.ch,
 stefan@agner.ch, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org
Subject: [PATCH RESEND V5 3/5] arm64: dts: imx8qxp: Add scu key node
Date: Tue, 17 Sep 2019 11:12:17 +0800
Message-Id: <1568689939-8871-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568689939-8871-1-git-send-email-Anson.Huang@nxp.com>
References: <1568689939-8871-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_201407_941134_38202A33 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add scu key node for i.MX8QXP, disabled by default as it
depends on board design.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No changes.
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index 1133b41..71e38c1 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/imx8-clock.h>
 #include <dt-bindings/firmware/imx/rsrc.h>
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/pads-imx8qxp.h>
 
@@ -174,6 +175,12 @@
 			#power-domain-cells = <1>;
 		};
 
+		scu_key: scu-key {
+			compatible = "fsl,imx8qxp-sc-key", "fsl,imx-sc-key";
+			linux,keycode = <KEY_POWER>;
+			status = "disabled";
+		};
+
 		rtc: rtc {
 			compatible = "fsl,imx8qxp-sc-rtc";
 		};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
