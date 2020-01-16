Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 771A313DCD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 15:01:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hG+Aw2IyvpwlNwhNb0jXfhIPCy7rIWPeI44s8px/OyA=; b=FKpDCiaOHfI2v+
	WhpEN5gfG/5XqEERmN+T9rinm8GFBKosm4FXXPdaFjtdNC5zGqMDp092VnxbQJEv4Nv9N8nkBawgY
	ipMoA7kr+muuThy8ZRSHk3pVMzWVqVExXvg5hIUHhB5j4+fWYMZKS8eKJ4RKJKvuefMtnLV5ba0Cw
	u7HflbCPiFQAEUaPJU3b8TBmLJAtaPY8xE3JtX801hTsAb1acMR7JB4ZJcopoBH4lOkOggSjFxy4r
	UHXkiGpqz/OIj522VGF9ZgBfmIz6rnZWu+S2n8TBo1P3kNvT55XK+U0GoZ7Wet/zO0m1NWFe1ot+e
	WIvmXL70yNYO6907tn2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5iF-0006NF-Ag; Thu, 16 Jan 2020 14:01:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5i4-0006LR-4y
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 14:01:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1is5hx-00075d-Ep; Thu, 16 Jan 2020 15:01:13 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1is5hw-0002UE-3N; Thu, 16 Jan 2020 15:01:12 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
 linux-imx@nxp.com, c.hemp@phytec.de, s.christ@phytec.de,
 chf.fritz@googlemail.com, s.riedmueller@phytec.de
Subject: [PATCH v3 2/2] ARM: dts: imx6: phycore-som: fix emmc supply
Date: Thu, 16 Jan 2020 15:01:08 +0100
Message-Id: <20200116140108.6069-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116140108.6069-1-m.felsch@pengutronix.de>
References: <20200116140108.6069-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_060120_192311_DCB11B48 
X-CRM114-Status: GOOD (  10.17  )
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
Cc: linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the vmmc is supplied by the 1.8V pmic rail but this is wrong.
The default module behaviour is to power VCCQ and VCC by the 3.3V power
rail. Optional the user can connect the VCCQ to the pmic 1.8V emmc
power rail using a solder jumper.

Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i.MX 6 SOM")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v3:
- adapt commit message
v2:
- remove all supplies references because per default the emmc is
  powered by the 3.3V power rail.
- adapt commit message
---
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
index 51a47a242783..0e7f452dfb81 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -187,7 +187,6 @@
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
