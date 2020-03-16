Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E42186159
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 02:33:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lPgA5b78mHK2GgaFuZdVhfJHG+xDybxkP/ovl7a2gmY=; b=OKhBTgv4EHx0Eynn2/Ruu8gjXX
	vfE03iCaPNrl5o3mIEyyaUsXzBrfxHGYEdZaYJMM2cI5etE2P05weFbqoc9KVR5DryK9fx2StAM1F
	qX9bt/BqAelO+DYplCt7wnaiigc0bayIdp0PTs0/KxovGGIBBbE3rkf6JG6QjTywsFM8LDE65cO8p
	kHj7h+oBkp0pPzOh+6Ud+6jL6YXsPDDOyWTwHgkwceGbPRWFAUFDQvWtdW0qRl32Xb7VAvJ9oncS4
	PSn3v66etD6kRgrIfuh5GkSfXD591WD0f7nVZ1zT3W362f/BHi63nLkAvarSZbEjg/uRSSiZCWXO/
	EVdOKBnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDedV-0006Gz-Qa; Mon, 16 Mar 2020 01:33:45 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDedI-0006Bz-Aq
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 01:33:33 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1ABA21A07AB;
 Mon, 16 Mar 2020 02:33:28 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 77E951A079F;
 Mon, 16 Mar 2020 02:33:21 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8259D402EE;
 Mon, 16 Mar 2020 09:33:12 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 abel.vesa@nxp.com, leonard.crestez@nxp.com, daniel.baluta@nxp.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 2/2] arm64: dts: imx8qxp-mek: Add PMIC thermal zone support
Date: Mon, 16 Mar 2020 09:26:33 +0800
Message-Id: <1584321993-8642-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584321993-8642-1-git-send-email-Anson.Huang@nxp.com>
References: <1584321993-8642-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_183332_511764_8A7D11AB 
X-CRM114-Status: UNSURE (   7.56  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX8QXP MEK board has PMIC thermal sensor, add support for it.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 33 +++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index b1befdb..ff5695b 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -154,6 +154,39 @@
 	status = "okay";
 };
 
+&thermal_zones {
+	pmic-thermal0 {
+		polling-delay-passive = <250>;
+		polling-delay = <2000>;
+		thermal-sensors = <&tsens IMX_SC_R_PMIC_0>;
+
+		trips {
+			pmic_alert0: trip0 {
+				temperature = <110000>;
+				hysteresis = <2000>;
+				type = "passive";
+			};
+
+			pmic_crit0: trip1 {
+				temperature = <125000>;
+				hysteresis = <2000>;
+				type = "critical";
+			};
+		};
+
+		cooling-maps {
+			map0 {
+				trip = <&pmic_alert0>;
+				cooling-device =
+					<&A35_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&A35_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&A35_2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&A35_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+			};
+		};
+	};
+};
+
 &usdhc1 {
 	assigned-clocks = <&clk IMX_CONN_SDHC0_CLK>;
 	assigned-clock-rates = <200000000>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
