Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EE71FCA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 00:47:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ihbpzad7Uz0uSyBWu9jtEdVRNSA1SpnDe7eWWiSrjXY=; b=VngnjRPbtv4VA0
	RZvYQgxRqRJPVrTO7cv00qWpl/gphfdNopurB91cg46XkBbTT8waA+w36tZsQupHyxlswiOBpNE5f
	KLNIOX87no9TekFWT5k6CVV3KcgvzMIByPcb+ojSf2o28zrC4R8kvjKY3Y1PVlP23/PoxSEl9KQ62
	ItL5P3tMkI/UBStz/DzdCLTrcfhigacFx7MfPMTFj8lNCAYnok+XmNNiBo8UDkca/QZqW3kJYIm9V
	xZh2RCttLQeY9Ga83d3GuhPk4mww8ZhLacBH2Xh9BGBV2u11ubM4TMraMw520U28/iiVHMcJNlAzn
	gFi0o3hunODHjWXrxRpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR2gB-0006kp-SK; Wed, 15 May 2019 22:47:19 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR2fG-0005gl-5k
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 22:46:24 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 4548mW6xwjz1rFsL;
 Thu, 16 May 2019 00:46:19 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 4548mW6lWYz1qqkW;
 Thu, 16 May 2019 00:46:19 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id WXYlG4EH5ma2; Thu, 16 May 2019 00:46:18 +0200 (CEST)
X-Auth-Info: q8Lcde+TDvsevyvhu5oCUJH7I0TDu+51aTqh9BiW5ks=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 16 May 2019 00:46:18 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 7/8] ARM: dts: imx53: Add GPIO line names on M53Menlo
Date: Thu, 16 May 2019 00:46:00 +0200
Message-Id: <20190515224601.4527-7-marex@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515224601.4527-1-marex@denx.de>
References: <20190515224601.4527-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_154622_430053_871825C4 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add meaningful GPIO line names for the board GPIOs.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
To: linux-arm-kernel@lists.infradead.org
---
V2: No change
---
 arch/arm/boot/dts/imx53-m53menlo.dts | 72 ++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
index 39a76a5bbd19..a106233d1651 100644
--- a/arch/arm/boot/dts/imx53-m53menlo.dts
+++ b/arch/arm/boot/dts/imx53-m53menlo.dts
@@ -116,6 +116,78 @@
 	status = "okay";
 };
 
+&gpio1 {
+	gpio-line-names =
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "";
+};
+
+&gpio2 {
+	gpio-line-names =
+		"", "", "", "",
+		"", "", "", "",
+		"TestPin_SV2_3", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "";
+};
+
+&gpio3 {
+	gpio-line-names =
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"CPLD_JTAG_TDI", "CPLD_JTAG_TMS", "", "",
+		"", "CPLD_JTAG_TDO", "", "";
+};
+
+&gpio5 {
+	gpio-line-names =
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "CPLD_JTAG_TCK", "KBD_intK",
+		"CPLD_int", "CPLD_JTAG_internal", "CPLD_D[0]", "CPLD_D[1]",
+		"CPLD_D[2]", "CPLD_D[3]", "CPLD_D[4]", "CPLD_D[5]",
+		"CPLD_D[6]", "CPLD_D[7]", "DISP_reset", "KBD_intI";
+};
+
+&gpio6 {
+	gpio-line-names =
+		"", "", "", "",
+		"CPLD_reset", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "";
+};
+
+&gpio7 {
+	gpio-line-names =
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "USB-OTG_OverCurrent", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "",
+		"", "", "", "";
+};
+
 &i2c1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
