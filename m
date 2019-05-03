Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3BE1318A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vkg2olYTDgaJE7xzeJe1m0ksoU5BkG+K4le+jGDJTdU=; b=Cd9k3oPgHWCOH1
	CaFCNaWMg4hMAI21REJPe86SO+Xn4vs4HKEX32GQgX6LXNCFZiXpqrf1KDL3df/1zWJiBnfvnjaCW
	F9Id2cin6cChBhMlou24ALeScbz+OWSxVNHuYOfz6UqsTQsxdpwv4aSthoD0kFYlK37E2hfFeHf0s
	JwEuUuMp/M2RicQ6KBZsXhsn82KCbr10UTui/ic1WC70hspV8wtTdFqz8UZEuz8guwIySBUF40i0W
	fr95bkyHrwJ3MIjNcngEn7tVHkqLynV27mqPnb0uVPLNRKJH9m2OJgx0VwSqrdzMgZ4/5JYSvaoM5
	lcnhvHy+j+91eFK1NfUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaVf-0003rO-4M; Fri, 03 May 2019 15:54:03 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaUf-0002du-RT
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:53:06 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 44wc9202NLz1rYXJ;
 Fri,  3 May 2019 17:52:54 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 44wc916pF3z1qtf0;
 Fri,  3 May 2019 17:52:53 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id qPwQUTyvqaiX; Fri,  3 May 2019 17:52:53 +0200 (CEST)
X-Auth-Info: xMIodIoFfhmX3tJSgnL3w1Ze8VvS/Jh3kklFMQtspIQ=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri,  3 May 2019 17:52:52 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/8] ARM: dts: imx53: Add GPIO beeper on M53Menlo
Date: Fri,  3 May 2019 17:52:33 +0200
Message-Id: <20190503155235.6414-6-marex@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503155235.6414-1-marex@denx.de>
References: <20190503155235.6414-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_085302_623412_2314C87A 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add GPIO beeper, to let the board produce beeps.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/imx53-m53menlo.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
index 74ac72c85743..567ea20e1ffe 100644
--- a/arch/arm/boot/dts/imx53-m53menlo.dts
+++ b/arch/arm/boot/dts/imx53-m53menlo.dts
@@ -64,6 +64,12 @@
 		};
 	};
 
+	beeper {
+		compatible = "gpio-beeper";
+		pinctrl-0 = <&pinctrl_beeper>;
+		gpios = <&gpio6 3 GPIO_ACTIVE_HIGH>;
+	};
+
 	reg_usbh1_vbus: regulator-usbh1-vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "vbus";
@@ -180,6 +186,12 @@
 			>;
 		};
 
+		pinctrl_beeper: beepergrp {
+			fsl,pins = <
+				MX53_PAD_CSI0_DAT17__GPIO6_3		0x1c4
+			>;
+		};
+
 		pinctrl_can1: can1grp {
 			fsl,pins = <
 				MX53_PAD_GPIO_7__CAN1_TXCAN		0x1c4
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
