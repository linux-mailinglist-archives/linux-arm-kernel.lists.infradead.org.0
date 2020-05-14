Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEEC1D2499
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 03:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Y5vPQIxKTXTEP4QVOLzErSNBeWeK8AJ6k71K1c/1Bdg=; b=AnP
	rQLQC0mjQvDKceWQhK6vEjJupxT8eGJbYsGoekpS88jiKTnLLx10lxGIsq/h3bQ+Rm4imy30/E+xW
	av0Pk+pk3kzLceC44VLA7uJwUgq6XM0qV5D6b89jKIhlSJSQStT2aI3hNhcGTOZno0DEYDNMc98FQ
	Za8/BLJ4JOcJmMqvT/e46+AACvRmwC4seoYUgP3h5OPeJxbsIwEZPg3iBFRJm3iuhWXghHjJGaYMP
	Je8k4vwNoPjE8lBZoIjXOzO/MbBkqL8nOzOYMDlSMP8hvzLC+ICTdyr5I7aBDh4Rq63Hgz8RACs8t
	K+mEeQRvYXbCG/oneAGMzsTxiU7zMUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2W6-0003cX-4z; Thu, 14 May 2020 01:18:30 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2Vx-0003bg-NJ
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 01:18:23 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5E9931A15F1;
 Thu, 14 May 2020 03:18:18 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 81F5F1A012E;
 Thu, 14 May 2020 03:18:14 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 70523402B4;
 Thu, 14 May 2020 09:18:09 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: imx6qdl: Use nvmem interface to get fuse data
Date: Thu, 14 May 2020 09:08:47 +0800
Message-Id: <1589418528-26410-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_181821_897631_AF18C2B4 
X-CRM114-Status: UNSURE (   9.21  )
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

Although ocotp clock is always ON for i.MX6QDL, OCOTP can be
accessed directly, but since i.MX6QDL nvmem interface is supported,
and fsl,tempmon-data is deprecated, use it instead of getting fuse
data by reading ocotp directly, this makes all i.MX6 SoCs aligned.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6qdl.dtsi | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index 98da446..1763c2b 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -74,7 +74,8 @@
 		interrupt-parent = <&gpc>;
 		interrupts = <0 49 IRQ_TYPE_LEVEL_HIGH>;
 		fsl,tempmon = <&anatop>;
-		fsl,tempmon-data = <&ocotp>;
+		nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
+		nvmem-cell-names = "calib", "temp_grade";
 		clocks = <&clks IMX6QDL_CLK_PLL3_USB_OTG>;
 		#thermal-sensor-cells = <0>;
 	};
@@ -1171,6 +1172,14 @@
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
 
 			tzasc@21d0000 { /* TZASC1 */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
