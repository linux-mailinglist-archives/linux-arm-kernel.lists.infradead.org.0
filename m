Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E7B174080
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 20:46:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=a3+q84dLWNhUOGqrYHcWP62ghl0fwYN7ZUhK1ALs8yU=; b=XFO
	G5hAvzGNx+iEITMd8XUNkrEsMUBY5kqcGoVjBqt+aNbSwI8FBTJ8MWoMJjefJ5uWbz+9nd5DeyXul
	8Z+9wU0HVjjmqv4GN1oiji11D/xbWpegrOMlUpmk6fkg7YFibG1DSTNnx6nrvRAKGxcpQxiI7q2fA
	BrZ55i01ao9XtZNonO52+2nu+Qt7ZwFuHILotn/RmDyifKVidwScvxc1Z7UxpvDDsKdRRJD4w2LsH
	0BkFtDcRQLbpJpEl+RLnpqq7TW9cr3FXy7jkHLnA4mc3is4c5GlF9V1cev3LPH0j0hrd8hHJqsoTV
	XNqJKiU/DmWY7Kx3YLd1iPq9+QkY1kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7laZ-0007uh-91; Fri, 28 Feb 2020 19:46:23 +0000
Received: from lists.gateworks.com ([108.161.130.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7laQ-0007uL-1q
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 19:46:15 +0000
Received: from 68-189-91-139.static.snlo.ca.charter.com ([68.189.91.139]
 helo=tharvey.pdc.gateworks.com)
 by lists.gateworks.com with esmtp (Exim 4.82)
 (envelope-from <tharvey@gateworks.com>)
 id 1j7lbO-0005Rf-VP; Fri, 28 Feb 2020 19:47:15 +0000
From: Tim Harvey <tharvey@gateworks.com>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] ARM: dts: imx6qdl-gw5910: add CC1352 UART
Date: Fri, 28 Feb 2020 11:46:07 -0800
Message-Id: <1582919167-28690-1-git-send-email-tharvey@gateworks.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_114614_133889_1941FB2F 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tim Harvey <tharvey@gateworks.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GW5910-C revision adds a TI CC1352 connected to IMX UART4

Signed-off-by: Tim Harvey <tharvey@gateworks.com>
---
 arch/arm/boot/dts/imx6qdl-gw5910.dtsi | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
index be1af74..30fe47f 100644
--- a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
@@ -220,6 +220,14 @@
 	status = "okay";
 };
 
+/* cc1352 */
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3>;
+	uart-has-rtscts;
+	status = "okay";
+};
+
 /* Sterling-LWB Bluetooth */
 &uart4 {
 	pinctrl-names = "default";
@@ -411,6 +419,23 @@
 		>;
 	};
 
+	pinctrl_uart3: uart3grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
+			MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
+			MX6QDL_PAD_EIM_D23__UART3_RTS_B		0x1b0b1
+			MX6QDL_PAD_EIM_D31__UART3_CTS_B		0x1b0b1
+			MX6QDL_PAD_EIM_A25__GPIO5_IO02		0x4001b0b1 /* DIO20 */
+			MX6QDL_PAD_DISP0_DAT11__GPIO5_IO05	0x4001b0b1 /* DIO14 */
+			MX6QDL_PAD_DISP0_DAT12__GPIO5_IO06	0x4001b0b1 /* DIO15 */
+			MX6QDL_PAD_DISP0_DAT14__GPIO5_IO08	0x1b0b1 /* TMS */
+			MX6QDL_PAD_DISP0_DAT15__GPIO5_IO09	0x1b0b1 /* TCK */
+			MX6QDL_PAD_DISP0_DAT16__GPIO5_IO10	0x1b0b1 /* TDO */
+			MX6QDL_PAD_DISP0_DAT17__GPIO5_IO11	0x1b0b1 /* TDI */
+			MX6QDL_PAD_DISP0_DAT23__GPIO5_IO17	0x4001b0b1 /* RST# */
+		>;
+	};
+
 	pinctrl_uart4: uart4grp {
 		fsl,pins = <
 			MX6QDL_PAD_CSI0_DAT12__UART4_TX_DATA	0x1b0b1
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
