Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6C5F2521
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 03:16:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mINPQvM2CT7mP6ufgnA8VnpDIk2iQZ2WsJf19QPmdGw=; b=nud
	bY2AY24fJXtokpOO2cQeWQvWBBP50RvgxAf0x/B8P0QbiE+/kkSKV2HJu51pOzWcR/rKbBccg0coD
	edap/Hgz0PTK0SrJ8Ni7wdDLB3rreGmpu+eOmPVNkmIvyYvXoHTNVt+RFrTNpqXfeynx8xpbhXU0I
	NLO+tMhXYSzmBg263R8EzIKayO1ldKCRXlXIHlm8VtBkp25ukTPvqbIP7LOHjEUlI6xFCHhMl5ims
	n8rLKzNRzvVcDtTad6g9MZh18HXqiMd3yLC0yk1cDZLZl8zD6OfNRoBjNtYyg88/V/8ugRpB2Sbc8
	LVOcJqDtKf8m69oUH5AbvphLYCGxiMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSXLn-0007SP-BT; Thu, 07 Nov 2019 02:16:43 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSXLc-0007Ql-7o
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 02:16:36 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D93AC1A0244;
 Thu,  7 Nov 2019 03:16:30 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CBE841A00C2;
 Thu,  7 Nov 2019 03:16:24 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 12ED2402B1;
 Thu,  7 Nov 2019 10:16:17 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 manivannan.sadhasivam@linaro.org, andrew.smirnov@gmail.com,
 marcel.ziswiler@toradex.com, sebastien.szymanski@armadeus.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: dts: imx7d-sdb-reva: Add revision in board
 compatible string
Date: Thu,  7 Nov 2019 10:14:52 +0800
Message-Id: <1573092893-10612-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_181635_739336_DD571595 
X-CRM114-Status: UNSURE (   6.84  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX7D SDB Rev-A board should use its own board compatible
string instead of default i.MX7D SDB board.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx7d-sdb-reva.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/imx7d-sdb-reva.dts b/arch/arm/boot/dts/imx7d-sdb-reva.dts
index 7ce9d8c..cabdaa6 100644
--- a/arch/arm/boot/dts/imx7d-sdb-reva.dts
+++ b/arch/arm/boot/dts/imx7d-sdb-reva.dts
@@ -7,6 +7,9 @@
 #include "imx7d-sdb.dts"
 
 / {
+	model = "Freescale i.MX7 SabreSD RevA Board";
+	compatible = "fsl,imx7d-sdb-reva", "fsl,imx7d";
+
 	reg_usb_otg2_vbus: regulator-usb-otg2-vbus {
 		pinctrl-0 = <&pinctrl_usb_otg2_vbus_reg_reva>;
 		gpio = <&gpio4 7 GPIO_ACTIVE_HIGH>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
