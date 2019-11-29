Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 280C410D8AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 17:49:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTeo3bebg8Cd4Z5SZN7GucO9GlufAb6pSbzHZ0h/HF4=; b=lQV5UYsolXM66d
	+6nj+tF4EoICy//k7DMNIBq/mu+StgxyTU2pY2Urop4+0/YmFa3GaxJj7uDgEf5AflVB9/gwAF3d+
	ks+jBol8I8wNcjX+9Us7d9O4SG4Fe/ZeZIWHlfZx4Mr6HeYLRiQ3pKkrm32g9qbkyyAKsx0Epcniz
	8p2Frwk5tUXM7fsbuwLvM/i5Pxt3acbXuSPgViCtj4f3zwxRCF75A5p+EE4X3RmBf3CHnN9kUNPwv
	WzbrarU7RMd6yTboRXydKWqyTScCI583NQP7EGxvOrsK94CPzACeXNfbxqHeGwV/txNm1jDGBCIYj
	9/k97RzdXUg2kNKPRUpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iajSR-0007MK-IA; Fri, 29 Nov 2019 16:49:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iajSH-0007LC-0h
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 16:49:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iajS9-0008VS-BY; Fri, 29 Nov 2019 17:49:09 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iajS1-00046g-6H; Fri, 29 Nov 2019 17:49:01 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
 linux-imx@nxp.com, c.hemp@phytec.de, s.christ@phytec.de,
 chf.fritz@googlemail.com, s.riedmueller@phytec.de
Subject: [PATCH 2/3] ARM: dts: imx6: phycore-som: fix emmc supply
Date: Fri, 29 Nov 2019 17:48:58 +0100
Message-Id: <20191129164859.15632-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191129164859.15632-1-m.felsch@pengutronix.de>
References: <20191129164859.15632-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_084917_055038_CB2FF63C 
X-CRM114-Status: GOOD (  11.77  )
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
The 1.8V pmic rail is connected to the emmc vccq (vqmmc).

Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i.MX 6 SOM")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
index 46d4953c5588..44e333848b4d 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -183,7 +183,7 @@
 	pinctrl-0 = <&pinctrl_usdhc4>;
 	bus-width = <8>;
 	non-removable;
-	vmmc-supply = <&vdd_emmc_1p8>;
+	vqmmc-supply = <&vdd_emmc_1p8>;
 	status = "disabled";
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
