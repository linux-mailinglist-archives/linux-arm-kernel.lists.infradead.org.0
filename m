Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A70133F02
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:11:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQ5kSWDLYhKMO2LRCRl6A/0P+Q8Ldfj2oE51pa2ciwY=; b=Y2Tv0plDmFkZJC
	6oFIAwyYKPjn3c+MGUa+reLP4brGJ8fZsjdXuDG2Ku1dZsxUmSKC2e+qw2cc12DUpu9E22IE1hMF+
	Q2jT2okyooMDmVNYshOSA7Q8OYPea3obv+PV2dOiVe7Q1i66KbMgi6KkqsK/IQY5c1ul/IzCH3+NJ
	BW0wFMtt4c8P7DNHw/0jhW2kKGRAnDgm50IrX5urbD5g5WAqvuw8++JIweDVSozPgnlUogqGHcE9n
	KkSKE9BkU1oBOdPEZoax9LGPafGaF9fqs65aMLw4cYYu/mQEVfVm2f4YXx0+O8XA0zU78KW8CfVX9
	ZIuGzfawxl63F7iNMdDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip8Ja-00062r-GS; Wed, 08 Jan 2020 10:11:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip8Iu-0005ZZ-G1
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:11:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ip8Io-0005Kp-23; Wed, 08 Jan 2020 11:11:02 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ip8In-0007qu-IK; Wed, 08 Jan 2020 11:11:01 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
 linux-imx@nxp.com, c.hemp@phytec.de, s.christ@phytec.de,
 chf.fritz@googlemail.com, s.riedmueller@phytec.de
Subject: [PATCH v2 3/3] ARM: dts: imx6: phycore-som: add pmic onkey device
Date: Wed,  8 Jan 2020 11:10:57 +0100
Message-Id: <20200108101057.29599-3-m.felsch@pengutronix.de>
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
X-CRM114-CacheID: sfid-20200108_021108_547986_A894F32B 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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

Without the onkey device it isn't possible to power off the system using
the X_PMIC_nONKEY signal which is routed to the SoM pin header.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- no changes

 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
index 31fa37d2fe47..0e7f452dfb81 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -100,6 +100,10 @@
 			compatible = "dlg,da9062-rtc";
 		};
 
+		da9062_onkey: onkey {
+			compatible = "dlg,da9062-onkey";
+		};
+
 		watchdog {
 			compatible = "dlg,da9062-watchdog";
 		};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
