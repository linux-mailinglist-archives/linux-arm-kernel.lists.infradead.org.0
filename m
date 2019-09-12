Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CCCB0EB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 14:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Phtcc1RUFwe0hgYQ2ZmiQL8bBuCOIh5LCf4arBxZG2U=; b=nX1
	11ZVoSBPg8yPQJcHoWS+Lp7mDAcpeZQZQZwnSJXhGlrG6NhwLdiCfZiKl8IoRcYYFiFBLYa8xBLCA
	eivycLgeOCxziYnHPwKI0EoP44ATmsyVLtEbsaibNBFVsQKymNYVBPT77mFFs5G9PGTlGmZcJXFVe
	M1eJ8qrKyouUgRUMdmCOJkb5jH2gamlJWZyN7p+evk/+QvAbYYTPvuczoIz1a27tpvpBlMlEfRB89
	BPDkRgBJwwlh9vZbmwVIFSSI9vYrCrr2zD6WKST0JjHnDATu5Q5kuHDDMVIyD+wkOtAKd7E4DrTBv
	zK9KejBHHj1UyfuTN2XJ4IPSGhKWpoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8O1y-0004I5-Qf; Thu, 12 Sep 2019 12:16:59 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8O1m-0004Hl-Fd
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 12:16:47 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 68E142006A6;
 Thu, 12 Sep 2019 14:16:42 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5C0AA2001B9;
 Thu, 12 Sep 2019 14:16:42 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id DA21320618;
 Thu, 12 Sep 2019 14:16:41 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peter Chen <peter.chen@nxp.com>,
	Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] imx_v6_v7_defconfig: Build USB_CONFIGFS into kernel
Date: Thu, 12 Sep 2019 15:16:39 +0300
Message-Id: <e4cc32cf4814aa0d63e72a824fb09f6b637b792c.1568290456.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_051646_665640_79773FE6 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some imx chips don't have chips and a limited number of USB controllers.
For such cases NXP suggests configuring the USB controller as an
ethernet gadget for network boot testing.

Switch USB_CONFIGFS to be built into the kernel so that we can configure
the ethernet gadget without also deploying modules.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm/configs/imx_v6_v7_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index ade4a2dd1a18..5debac5b038e 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -325,11 +325,11 @@ CONFIG_USB_TEST=m
 CONFIG_USB_EHSET_TEST_FIXTURE=m
 CONFIG_NOP_USB_XCEIV=y
 CONFIG_USB_MXS_PHY=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_FSL_USB2=y
-CONFIG_USB_CONFIGFS=m
+CONFIG_USB_CONFIGFS=y
 CONFIG_USB_CONFIGFS_SERIAL=y
 CONFIG_USB_CONFIGFS_ACM=y
 CONFIG_USB_CONFIGFS_OBEX=y
 CONFIG_USB_CONFIGFS_NCM=y
 CONFIG_USB_CONFIGFS_ECM=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
