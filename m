Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 381C210D8AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 17:50:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4qpSvfjcWKQHx8eoOpYKIhtBZU3HG6BZbaavy2MbOWU=; b=McUGULjGHW+oEY
	+3BTWBFl9blc2X25YPRIHnIRxo90tfNLpefBZ9In6/uDtGbgv8n3UdYyHk7Tgs/uJPA8MUpestkHM
	EvZtUGV3z8KJZT/XEEM2CS0HzNfOBenwNO63IrFe0cQMj7zE0//kEivisDU/f03Hg1bnEPLkERDt0
	s7l00aJw6JiBI3Bn2JxeR7Fhlwrj/ttwFPuTMzbj87UARWoN6gktOkqForsbTv5yqgCkhlY41SEDC
	khVmSdwKdQjsMvuqhW3ggn8tw5vuaWiEwtM1d475nT3xnSq2Vo3nkMBobgU+F6EfXdqP5HrYxitGe
	ryxh/2wJFC2y7DqZBYQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iajSx-0007k2-9i; Fri, 29 Nov 2019 16:49:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iajSH-0007LB-1N
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 16:49:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iajS9-0008VR-BY; Fri, 29 Nov 2019 17:49:09 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iajS1-00046e-5h; Fri, 29 Nov 2019 17:49:01 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
 linux-imx@nxp.com, c.hemp@phytec.de, s.christ@phytec.de,
 chf.fritz@googlemail.com, s.riedmueller@phytec.de
Subject: [PATCH 1/3] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
Date: Fri, 29 Nov 2019 17:48:57 +0100
Message-Id: <20191129164859.15632-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_084917_075349_EE83822D 
X-CRM114-Status: GOOD (  10.78  )
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

The current set minimum voltage of 730000mV seems to be wrong. I don't
know the document which specifies that but the imx6qdl datasheets says
that the minimum voltage should be 1.05V for VDD_ARM (LDO enabled, lowest
opp) and 1.275V for VDD_SOC (LDO enabled, lowest opp).

Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i.MX 6 SOM")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
index 6486df3e2942..46d4953c5588 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -107,14 +107,14 @@
 		regulators {
 			vdd_arm: buck1 {
 				regulator-name = "vdd_arm";
-				regulator-min-microvolt = <730000>;
+				regulator-min-microvolt = <1050000>;
 				regulator-max-microvolt = <1380000>;
 				regulator-always-on;
 			};
 
 			vdd_soc: buck2 {
 				regulator-name = "vdd_soc";
-				regulator-min-microvolt = <730000>;
+				regulator-min-microvolt = <1275000>;
 				regulator-max-microvolt = <1380000>;
 				regulator-always-on;
 			};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
