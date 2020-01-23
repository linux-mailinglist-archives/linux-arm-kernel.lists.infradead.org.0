Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C851460CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 03:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OTokLWAQQE3XEqYqZvHs44BiQTaxUGkIJRiQzGlTgEA=; b=Gao
	+aAgSONJqbLjElHAeo5EH3fCyqtlUfEOUxlR0+UdUPPpK8IJVolckFjZtk0HEeiQ4ivIwVPpCL35y
	u1aIvAYNHjskOtp6YeqpQFG9h5JOoRnuS0s2YDjQvT2jXAbIfJwUTsgg/y0fmh2Vwk5XQmEG1k4Av
	QTLADjslApvRh+0JWqFBMXYL/cYRv99DBI5lGBt0KjuNI3GG4gL1yho64+m8KnFsTbrUOoc69mi0s
	/d7/Lbk/Qe5mIAUgFCKqn1WMij7yCuqm5U+BktP00pQ33huDOu1wcfmEC5cTKEj83IYuFgoLIn3cY
	iQygpYgkuKqdBXJYqUObpgmEOk+AJPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuSfT-0002Xj-6S; Thu, 23 Jan 2020 02:56:27 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuSfI-0002XQ-UU
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 02:56:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6C5BC1A420E;
 Thu, 23 Jan 2020 03:56:11 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 112141A41F6;
 Thu, 23 Jan 2020 03:56:09 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 28374402AA;
 Thu, 23 Jan 2020 10:56:06 +0800 (SGT)
From: Peter Chen <peter.chen@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/1] ARM: dts: imx7ulp-evk: disable usbotg1 overcurrent
 function
Date: Thu, 23 Jan 2020 10:51:44 +0800
Message-Id: <1579747904-32614-1-git-send-email-peter.chen@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_185617_121421_C466ED78 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Peter Chen <peter.chen@nxp.com>, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At imx7ulp evk, all USBOTG1 OC (Over Current) function pins are
used by others, and the USB driver doesn't support OC function
through the GPIO, so we disable the OC function for this board
as well as delete the pinctrl for it.

Reviewed-by: Jun Li <jun.li@nxp.com>
Acked-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 arch/arm/boot/dts/imx7ulp-evk.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7ulp-evk.dts b/arch/arm/boot/dts/imx7ulp-evk.dts
index a863a2b337d6..eff51e113db4 100644
--- a/arch/arm/boot/dts/imx7ulp-evk.dts
+++ b/arch/arm/boot/dts/imx7ulp-evk.dts
@@ -72,7 +72,7 @@
 	srp-disable;
 	hnp-disable;
 	adp-disable;
-	over-current-active-low;
+	disable-over-current;
 	status = "okay";
 };
 
@@ -110,7 +110,6 @@
 	pinctrl_usbotg1_id: otg1idgrp {
 		fsl,pins = <
 			IMX7ULP_PAD_PTC13__USB0_ID	0x10003
-			IMX7ULP_PAD_PTC16__USB1_OC2	0x10003
 		>;
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
