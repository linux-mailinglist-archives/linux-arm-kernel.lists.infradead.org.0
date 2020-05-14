Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28B21D249A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 03:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h+hzBWsPqCraufOszTd3y7Hdui7vXsyKCvx1Ot+j/NM=; b=P9PqfP1NNpS7nyIJAIvRgJ1HD8
	T0myXDxS1Npen7Omr+0t+OCBB8sJYnypx89bY8SsXKecQ0M2TwO7KZ//02oCUhiQU7NALDZ5FFase
	VaLJ26zDpzYMhzTofoogb98Y8oNRNLK+H4Pn210jsmkcKryVQsEHcnYa1aJCGpUh+FqGaY/JVupuM
	oxid208w3W3GyN1ni4FkKir2CJpheDdLZFzihTp4s79p7byPf+R7UP24SOx84bhr3ST2CgYff7xSc
	BjZukkry6a60eQCYqZHPCQ5bE1i/mmaCqUBaWQ8ceNugTcqhDMpsCZob07sTaU00fsL3PcrhGCC3r
	qm3ul3Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2WH-0003kf-Uo; Thu, 14 May 2020 01:18:41 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2Vy-0003bj-D7
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 01:18:23 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4E25B1A0194;
 Thu, 14 May 2020 03:18:19 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7CCCD1A0167;
 Thu, 14 May 2020 03:18:15 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6F753402BB;
 Thu, 14 May 2020 09:18:10 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: imx6sl: Use nvmem interface to get fuse data
Date: Thu, 14 May 2020 09:08:48 +0800
Message-Id: <1589418528-26410-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589418528-26410-1-git-send-email-Anson.Huang@nxp.com>
References: <1589418528-26410-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_181822_575247_048211CB 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Although ocotp clock is always ON for i.MX6SL, OCOTP can be
accessed directly, but since i.MX6SL nvmem interface is supported,
and fsl,tempmon-data is deprecated, use it instead of getting fuse
data by reading ocotp directly, this makes all i.MX6 SoCs aligned.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6sl.dtsi | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index 8230b45..fcb84fe 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -98,7 +98,8 @@
 		interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-parent = <&gpc>;
 		fsl,tempmon = <&anatop>;
-		fsl,tempmon-data = <&ocotp>;
+		nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
+		nvmem-cell-names = "calib", "temp_grade";
 		clocks = <&clks IMX6SL_CLK_PLL3_USB_OTG>;
 	};
 
@@ -961,6 +962,14 @@
 				cpu_speed_grade: speed-grade@10 {
 					reg = <0x10 4>;
 				};
+
+				tempmon_calib: calib@38 {
+					reg = <0x38 4>;
+				};
+
+				tempmon_temp_grade: temp-grade@20 {
+					reg = <0x20 4>;
+				};
 			};
 
 			audmux: audmux@21d8000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
