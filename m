Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8133FD85D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 04:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yU2Qz9aFfO6ygTAXjvN0vQZesdndEacl5z9WFa1rBZ0=; b=mOE3AZ57N1v2lTel35SwAfNAI2
	pgYMKMkXAVyhMyYejPErmp7tnMWj3G/oDAgrKRzHY53v1XVI/0CZADp2R0cfA2gf+GXn0bbaA1El0
	/JEAL0raHC5KqJKDew276MrTkbhhpPzb9MI1Lt5x8ju8U6NlGx94goL8HcZXIMWG+HjoS8sg3zUeb
	WJO5g79XK2WNvkllC8sIQ2pxgn+7u7nDjesx1yOjkJcZTF2ffkKre2tQfB2G5bQ75RQ4pikfXqTzL
	zlxTSwoDXNaqD8e3rdLEKxkZqjf98kHyoH8Nb/uexYymZk10EdW+qAer/CD7C0y79BOuunJGcEZ6F
	3WoSb8Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKYtw-0004Kh-EM; Wed, 16 Oct 2019 02:19:00 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKYsj-0003U6-R7
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 02:17:47 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1EF0E200923;
 Wed, 16 Oct 2019 04:17:44 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 30C8D20093E;
 Wed, 16 Oct 2019 04:17:27 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7911F40342;
 Wed, 16 Oct 2019 10:17:09 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 jun.li@nxp.com, ping.bai@nxp.com, daniel.baluta@nxp.com,
 leonard.crestez@nxp.com, daniel.lezcano@linaro.org, l.stach@pengutronix.de,
 ccaione@baylibre.com, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 jon@solid-run.com, baruch@tkos.co.il, angus@akkea.ca, pavel@ucw.cz,
 agx@sigxcpu.org, troy.kisky@boundarydevices.com,
 gary.bisson@boundarydevices.com, dafna.hirschfeld@collabora.com,
 richard.hu@technexion.com, andradanciu1997@gmail.com,
 manivannan.sadhasivam@linaro.org, aisheng.dong@nxp.com, peng.fan@nxp.com,
 fugang.duan@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] ARM: dts: imx7ulp: Move usdhc clocks assignment to board
 DT
Date: Wed, 16 Oct 2019 10:14:27 +0800
Message-Id: <1571192067-19600-5-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571192067-19600-1-git-send-email-Anson.Huang@nxp.com>
References: <1571192067-19600-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_191746_086915_D5143D43 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

usdhc's clock rate is different according to different devices
connected, so clock rate assignment should be placed in board
DT according to different devices connected on each usdhc port.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx7ulp-evk.dts | 2 ++
 arch/arm/boot/dts/imx7ulp.dtsi    | 4 ----
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx7ulp-evk.dts b/arch/arm/boot/dts/imx7ulp-evk.dts
index 4245b33..f1093d2 100644
--- a/arch/arm/boot/dts/imx7ulp-evk.dts
+++ b/arch/arm/boot/dts/imx7ulp-evk.dts
@@ -77,6 +77,8 @@
 };
 
 &usdhc0 {
+	assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC0>;
+	assigned-clock-parents = <&scg1 IMX7ULP_CLK_NIC1_DIV>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc0>;
 	cd-gpios = <&gpio_ptc 10 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index 25e6f09..d37a192 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -223,8 +223,6 @@
 				 <&scg1 IMX7ULP_CLK_NIC1_DIV>,
 				 <&pcc2 IMX7ULP_CLK_USDHC0>;
 			clock-names = "ipg", "ahb", "per";
-			assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC0>;
-			assigned-clock-parents = <&scg1 IMX7ULP_CLK_NIC1_DIV>;
 			bus-width = <4>;
 			fsl,tuning-start-tap = <20>;
 			fsl,tuning-step = <2>;
@@ -239,8 +237,6 @@
 				 <&scg1 IMX7ULP_CLK_NIC1_DIV>,
 				 <&pcc2 IMX7ULP_CLK_USDHC1>;
 			clock-names = "ipg", "ahb", "per";
-			assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC1>;
-			assigned-clock-parents = <&scg1 IMX7ULP_CLK_NIC1_DIV>;
 			bus-width = <4>;
 			fsl,tuning-start-tap = <20>;
 			fsl,tuning-step = <2>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
