Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2C758EED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 02:21:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0rf+gdFM/KHtoD3Xz/FjJP+CKYrWpl5lCoHw2FIwVQs=; b=MmKzOOiUa3NfXL
	x6XEM/PGN+vLq/VGqvCOMxHBecwWDAzLyDCyrUFPJGmw5CbaxxP2/1i2Kg4GYpYfJ50HDEO8jo88T
	0dspzNh/qzwDURnawkfR5YxPVDKIQDRmPbMFMrVqmdmewdHSu+/zNSuALTZI4ToSxrmpPCQExPqp8
	rY6orU/dKZaN0XttJvzesm4hK9zPKasAjtchdxTqqX4ki/0Ux4BFn+TjImmKJ5YpK1hLCf2l+5UYr
	LzzqdZ4eP1dodJUuQy1UF0ynOmq5puP6dhGME9c/xVwtMKhYTgpZeEI9/Zvp3wooKz/ilSg0O+eyU
	f4Cix7cuvMCjZr8QFuOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgeeD-0006BV-7o; Fri, 28 Jun 2019 00:21:49 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgedz-0006B7-QM
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 00:21:38 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 45ZcrV23nNz1rGRw;
 Fri, 28 Jun 2019 02:21:30 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 45ZcrV1dPLz1qqkM;
 Fri, 28 Jun 2019 02:21:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id NkMVTMh2uIzA; Fri, 28 Jun 2019 02:21:29 +0200 (CEST)
X-Auth-Info: k9LbxVcetL5kGDML7J54aNymc26nhs46kvh1HbXH2QQ=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri, 28 Jun 2019 02:21:29 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: socfpga: Fix up button mapping on VINING FPGA
Date: Fri, 28 Jun 2019 02:19:20 +0200
Message-Id: <20190628001920.1416-1-marex@denx.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_172136_009969_829670EB 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Dinh Nguyen <dinguyen@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing buttons and signals to the VINING FPGA device tree,
so they are presented to the userspace via gpio-keys evdev.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Dinh Nguyen <dinguyen@kernel.org>
---
 .../boot/dts/socfpga_cyclone5_vining_fpga.dts | 22 ++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts b/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts
index 355b3dbf438d..622cc7cc1471 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts
@@ -36,21 +36,33 @@
 
 		hps_temp0 {
 			label = "BTN_0";			/* TEMP_OS */
-			gpios = <&portc 18 GPIO_ACTIVE_LOW>;	/* HPS_GPIO60 */
+			gpios = <&portc 18 GPIO_ACTIVE_LOW>;	/* HPS_GPI5 */
 			linux,code = <BTN_0>;
 		};
 
 		hps_hkey0 {
-			label = "BTN_1";			/* DIS_PWR */
-			gpios = <&portc 19 GPIO_ACTIVE_LOW>;	/* HPS_GPIO61 */
+			label = "GP_SWITCH";			/* GP_SWITCH */
+			gpios = <&portc 19 GPIO_ACTIVE_LOW>;	/* HPS_GPI6 */
 			linux,code = <BTN_1>;
 		};
 
 		hps_hkey1 {
-			label = "hps_hkey1";			/* POWER_DOWN */
-			gpios = <&portc 20 GPIO_ACTIVE_LOW>;	/* HPS_GPIO62 */
+			label = "RESET_SWITCH";			/* RESET_SWITCH */
+			gpios = <&portc 20 GPIO_ACTIVE_LOW>;	/* HPS_GPI7 */
+			linux,code = <BTN_2>;
+		};
+
+		hps_hkey2 {
+			label = "POWER_DOWN";			/* POWER_DOWN */
+			gpios = <&portc 4 GPIO_ACTIVE_LOW>;	/* HPS_GPIO62 */
 			linux,code = <KEY_POWER>;
 		};
+
+		hps_hkey3 {
+			label = "SENSE";			/* SENSE */
+			gpios = <&porta 9 GPIO_ACTIVE_LOW>;	/* HPS_GPIO9 */
+			linux,code = <BTN_3>;
+		};
 	};
 
 	regulator-usb-nrst {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
