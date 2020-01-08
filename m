Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC7F133EFE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:11:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iym6IKDTBgmH8DnfiTMlZXFjCyGXKges+hrkFwIUtIw=; b=nx6+AfLYw+BJqs
	t5CWRmP6SnZQCc2L5q+YffYHSOLEYzye7x5Lq+epjW5OLs5NhI2EDLiLdxAWWhOKZvYo3sLjIud34
	7PrKxt+MMOak2hvoG3QfkQ42wWwQKwAOi1X5R4HRXxEnWHctXokF+aTl8/WdwYY9eeVX9BY2B1Eu0
	cZkc43SvUd7DPgUEvo5LoEsxpm9wLVkIWERKPd+i3r9nsjJn7lHbdwdJVGhSv0OijY8NC0XvG1m48
	LV4XgKW4gGhgHCu0sEyaiL8hrcTn62NhFpv0weK4JwPeUL/KZDOuQdbBA/TxrtArI2AmWYMSoerrw
	uScCnRIjpIT37rHASY2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip8J7-0005fo-Fv; Wed, 08 Jan 2020 10:11:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip8Iu-0005aI-TD
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:11:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ip8Io-0005Ki-2F; Wed, 08 Jan 2020 11:11:02 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ip8In-0007qp-HH; Wed, 08 Jan 2020 11:11:01 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com,
 linux-imx@nxp.com, c.hemp@phytec.de, s.christ@phytec.de,
 chf.fritz@googlemail.com, s.riedmueller@phytec.de
Subject: [PATCH v2 1/3] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
Date: Wed,  8 Jan 2020 11:10:55 +0100
Message-Id: <20200108101057.29599-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_021108_938667_49385727 
X-CRM114-Status: GOOD (  11.24  )
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
that the minimum voltage should be 0.925V for VDD_ARM (LDO bypassed,
lowest opp) and 1.15V for VDD_SOC (LDO bypassed, lowest opp).

Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i.MX 6 SOM")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- use ldo bypassed values
- adapt commit message

 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
index 6486df3e2942..f23eef1e54e0 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -107,14 +107,14 @@
 		regulators {
 			vdd_arm: buck1 {
 				regulator-name = "vdd_arm";
-				regulator-min-microvolt = <730000>;
+				regulator-min-microvolt = <925000>;
 				regulator-max-microvolt = <1380000>;
 				regulator-always-on;
 			};
 
 			vdd_soc: buck2 {
 				regulator-name = "vdd_soc";
-				regulator-min-microvolt = <730000>;
+				regulator-min-microvolt = <1150000>;
 				regulator-max-microvolt = <1380000>;
 				regulator-always-on;
 			};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
