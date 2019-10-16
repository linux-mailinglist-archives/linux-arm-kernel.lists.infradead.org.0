Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE037D8B10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 10:34:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wDnFNftHzvl4qihRKzkG5UoeRhQ2yajWL0zDnDLNXRs=; b=Kvd
	VwYo/FkMgNxsZl9+CoP3LGK5WQghZqjybRMaMsAROpS+tD2/uJF+ev+4i1w2bjcUBNq800vh5f+iG
	0mQ5PB4OZMTJfRkpXBEx7CASsbvYJITqJsHWt8gIA0DEklyrrvioSPKXn4a8B/K3y5/izyo7jfP88
	699ULRx2t41C6gVHqURRz3Cppsv8iJutSLMAEke62IZJcD+8n/ntIV+wQiggKxKBBojbhQCD0E+Xi
	SwTh1UWqf6ukqWeSZsD9Rt8pfqDTBC+TUU8kzds/xTBiX/Ib2vrMKlcHEjHxNZst4/4VWKluhWsdU
	IJJ3DiyeEBOWi77nxhRlGFT76dCjA9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKekp-0003zM-NH; Wed, 16 Oct 2019 08:33:59 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKekh-0003yl-RL
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 08:33:53 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B98321A0501;
 Wed, 16 Oct 2019 10:33:34 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 48A391A052D;
 Wed, 16 Oct 2019 10:33:31 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 166AA402B3;
 Wed, 16 Oct 2019 16:33:27 +0800 (SGT)
From: Peter Chen <peter.chen@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/1] ARM: dts: imx6ul-14x14-evk.dtsi: configure USBOTG1 ID
 pinctrl
Date: Wed, 16 Oct 2019 16:31:05 +0800
Message-Id: <1571214665-26402-1-git-send-email-peter.chen@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_013352_025638_7393D9F6 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Peter Chen <peter.chen@nxp.com>,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Without configuring this pinctrl, the ID value can't be got correctly,
then, the dual-role switch can't work well.

Reviewed-by: Jun Li <jun.li@nxp.com>
Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
index c2a9dd57e56a..ed3d993c25f7 100644
--- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
+++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
@@ -266,6 +266,8 @@
 
 &usbotg1 {
 	dr_mode = "otg";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb_otg1>;
 	status = "okay";
 };
 
@@ -499,6 +501,12 @@
 		>;
 	};
 
+	pinctrl_usb_otg1: usbotg1grp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO00__ANATOP_OTG1_ID	0x17059
+		>;
+	};
+
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = <
 			MX6UL_PAD_SD1_CMD__USDHC1_CMD     	0x17059
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
