Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B166C12CBB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 02:45:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pdTRpQpL+0WZqWWYeYeTw1w4Qg+euEcdo1f4zwE9UDM=; b=am2s46ZrF6H/Eq6jDT3s5pzX8/
	yXk5heDgW+DdFOjSpTumR5EQeApEEWbukm2ASj5Jfh4TdSZwT84OSJybajoIbe1ddSpjjncmcDVVb
	LTZOM4/hCk4EsFa87aPsLbm24Qsk57QgowW2+DMEGpZLT24ATIpY0Ow7hfZ3Mr/d26tWdie+uCyoF
	EJYNiN4ErUe0BQSV8q1OwMDL3E3qvX7L36ZOnb4AwLNAexw71TspqflGXMqvOHr4VTKuemJSjl5WK
	4Sn0YA34AwUGhxLqQniB1/x8Y8s5kF3zMDwCIRZSAWnZJItf7XLKlouiFGx3yLIczgPKI04vzH2+V
	W06dlqUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilk7x-0007fY-7P; Mon, 30 Dec 2019 01:45:49 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilk6x-0005gB-NC
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 01:44:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 79FD620119A;
 Mon, 30 Dec 2019 02:44:46 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2C414200470;
 Mon, 30 Dec 2019 02:44:41 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5E5A1402DA;
 Mon, 30 Dec 2019 09:44:30 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 andreas@kemnade.info, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] ARM: dts: imx6sl-tolino-shine3: Remove incorrect power
 supply assignment
Date: Mon, 30 Dec 2019 09:41:11 +0800
Message-Id: <1577670071-1322-5-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1577670071-1322-1-git-send-email-Anson.Huang@nxp.com>
References: <1577670071-1322-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_174447_900855_99B0C896 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
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

The vdd3p0's input should be from external USB VBUS directly, NOT
PMIC's dcdc2, so remove the power supply assignment for vdd3p0.

Fixes: 0b47f9201075 ("ARM: dts: add devicetree entry for Tolino Shine 3")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6sl-tolino-shine3.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sl-tolino-shine3.dts b/arch/arm/boot/dts/imx6sl-tolino-shine3.dts
index 0ee4925..27143ea 100644
--- a/arch/arm/boot/dts/imx6sl-tolino-shine3.dts
+++ b/arch/arm/boot/dts/imx6sl-tolino-shine3.dts
@@ -290,10 +290,6 @@
 	vin-supply = <&dcdc2_reg>;
 };
 
-&reg_vdd3p0 {
-	vin-supply = <&dcdc2_reg>;
-};
-
 &ricoh619 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_ricoh_gpio>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
