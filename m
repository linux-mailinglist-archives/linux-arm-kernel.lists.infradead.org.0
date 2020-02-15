Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460BE15FCB7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 06:23:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Wb57kNUI4yMLl8gh6Tb2yapPlnwjlZWJqqTp5P3y4pc=; b=MBGGJKxFI0OHRHqFqRdYaNX9A+
	2NgJ1VmcXSt1oDFu1cCqOmu8DpNk19wiGNO/k/+h9zlu3rXKWPGtn/6KXFW5NFigJMGyOoZMhyVlf
	iRBJ/pUn6aB/5+tEKtzTSe1KSxNcZfZmUFT7vsYZIFiBCP08Bl1TzLphitp1vqh1PxXA1cFz9Q8D7
	JsjqjggqiR2ui/2DxoYuu/Ww9r+hHOCriauxVVSCtrMV5+US2fq3cFfwJKGf8YZhyNE8/NbxOTZOT
	WvPgprw13B8G8pJQYwuE4+o99wGV1EYy7cDYPEFyNfE48rXlyfYHi40qTi9WwyolCtbJQKZlgnP/i
	zhYxw1TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2pup-0006zX-6J; Sat, 15 Feb 2020 05:22:55 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ptl-0005vP-7w
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 05:21:50 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 19E4A2067BA;
 Sat, 15 Feb 2020 06:21:45 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 57A312067B2;
 Sat, 15 Feb 2020 06:21:39 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 329C9402E0;
 Sat, 15 Feb 2020 13:21:32 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de
Subject: [PATCH V2 5/7] ARM: dts: imx6sx-sdb: Use new pin names with DCE/DTE
 for UART pins
Date: Sat, 15 Feb 2020 13:15:56 +0800
Message-Id: <1581743758-4475-6-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581743758-4475-1-git-send-email-Anson.Huang@nxp.com>
References: <1581743758-4475-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_212149_439093_BBE2B1A9 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Use new pin names containing DCE/DTE for UART RX/TX/RTS/CTS pins, this
is to distinguish the DCE/DTE functions.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6sx-sdb.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx-sdb.dtsi b/arch/arm/boot/dts/imx6sx-sdb.dtsi
index f6972de..3e5fb72 100644
--- a/arch/arm/boot/dts/imx6sx-sdb.dtsi
+++ b/arch/arm/boot/dts/imx6sx-sdb.dtsi
@@ -564,17 +564,17 @@
 
 		pinctrl_uart1: uart1grp {
 			fsl,pins = <
-				MX6SX_PAD_GPIO1_IO04__UART1_TX		0x1b0b1
-				MX6SX_PAD_GPIO1_IO05__UART1_RX		0x1b0b1
+				MX6SX_PAD_GPIO1_IO04__UART1_DCE_TX	0x1b0b1
+				MX6SX_PAD_GPIO1_IO05__UART1_DCE_RX	0x1b0b1
 			>;
 		};
 
 		pinctrl_uart5: uart5grp {
 			fsl,pins = <
-				MX6SX_PAD_KEY_ROW3__UART5_RX		0x1b0b1
-				MX6SX_PAD_KEY_COL3__UART5_TX		0x1b0b1
-				MX6SX_PAD_KEY_ROW2__UART5_CTS_B		0x1b0b1
-				MX6SX_PAD_KEY_COL2__UART5_RTS_B		0x1b0b1
+				MX6SX_PAD_KEY_ROW3__UART5_DCE_RX	0x1b0b1
+				MX6SX_PAD_KEY_COL3__UART5_DCE_TX	0x1b0b1
+				MX6SX_PAD_KEY_ROW2__UART5_DCE_CTS	0x1b0b1
+				MX6SX_PAD_KEY_COL2__UART5_DCE_RTS	0x1b0b1
 			>;
 		};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
