Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7556133EFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:11:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4LmnjvwZaTs+0isJAT4QyTSRlWmOtVVhzx1dyZG70sg=; b=hN8qvEkP/6PE8y
	q7HDeRxpu60YdHtFJ1FGjSVn3GKu04aAbuEGM4HbWdjkx58QRX5n+fLYTDyM13S4WUn5FkhNt02f1
	8LzUakv0EgTMMoQXI9M9kvugocmPvEv06D40vPGTxTjZM1DCoxZXWlxEYGswOEqoi3RYrbEGgnAIO
	497j1CIJUoseaOgV+kPVRnyOvZ22kE8VMERwKc7OYqHsO3oauoAzJ/ABZw4fQAIbA18ZOrxBUiW8G
	4QpGgRGRaw23QK4aO9nd1J7HpoOuGbegAF2758SsT3Hc4gEQbf+BzZfraId2J99wLMqDlCoOl3Lua
	KOu58J3JRLeB4EglRgVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip8JI-0005qg-Bu; Wed, 08 Jan 2020 10:11:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip8Iu-0005Zy-Fb
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:11:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ip8Io-0005Kn-23; Wed, 08 Jan 2020 11:11:02 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ip8In-0007qs-Hm; Wed, 08 Jan 2020 11:11:01 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
 linux-imx@nxp.com, c.hemp@phytec.de, s.christ@phytec.de,
 chf.fritz@googlemail.com, s.riedmueller@phytec.de
Subject: [PATCH v2 2/3] ARM: dts: imx6: phycore-som: fix emmc supply
Date: Wed,  8 Jan 2020 11:10:56 +0100
Message-Id: <20200108101057.29599-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200108101057.29599-1-m.felsch@pengutronix.de>
References: <20200108101057.29599-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_021108_537884_DDD4D72E 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the vmmc is supplied by the 1.8V pmic rail but this is wrong.
On a default module VCCQ and VCC are powered by the 3.3V power rail and
the user can optional connect the VCCQ to the pmic 1.8V emmc power rail
using a solder jumper.

Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i.MX 6 SOM")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- remove all supplies references because per default the emmc is
  powered by the 3.3V power rail.
- adapt commit message

 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
index f23eef1e54e0..31fa37d2fe47 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -183,7 +183,6 @@
 	pinctrl-0 = <&pinctrl_usdhc4>;
 	bus-width = <8>;
 	non-removable;
-	vmmc-supply = <&vdd_emmc_1p8>;
 	status = "disabled";
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
