Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA69182559
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 23:56:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h7BxYkuIrEm4rU1TMSnRt0TquXcbnKTCvW5W3opZcFw=; b=XKPkZnGz43QApf
	SZaxsDn/n8kJ9j8OE9t559l1BbSvaBgPPk9bz+BpwE3uKouddfX0VaLCy7FzTlAzIAUkEuAEIiCiT
	WbUV7P1Qzc7rS/NNbodQMgqjhL4IUUvY2Ytad2+LKzszIHq1DnZVmm/iX6ZqoeQPgci0z7wpjNVBe
	Krt2zroC//PIkMWshQuZVy/9Fb95grgaDcBFDPADsCUpygx40IC5LzowR9DLlbbRtiARKy88cshgl
	9PGAaKfioiVItO93WHE6wFa091brlKB0ZBZK53URAdOU4/uLKlTu7T8YCYBp955qhgJSXva4+OD0P
	UbLjYp1IxR1SeuoyBFWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCAHK-0000Eu-JW; Wed, 11 Mar 2020 22:56:42 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCAEs-0004pk-Lq
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 22:54:14 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 818BC2005A8;
 Wed, 11 Mar 2020 23:54:09 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4A9DA200BDA;
 Wed, 11 Mar 2020 23:54:09 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 CED7440A63; Wed, 11 Mar 2020 15:54:08 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: shawnguo@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 09/15] arm64: defconfig: Enable QorIQ IFC NAND controller
 driver
Date: Wed, 11 Mar 2020 17:53:11 -0500
Message-Id: <20200311225317.11198-10-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
In-Reply-To: <20200311225317.11198-1-leoyang.li@nxp.com>
References: <20200311225317.11198-1-leoyang.li@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_155410_845155_9D7A3381 
X-CRM114-Status: UNSURE (   8.72  )
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
Cc: linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enables NXP/FSL QorIQ IFC flash controller driver for NAND.  Enabled as
built-in to load RFS from nand flash without initramfs.

Remove CONFIG_MEMORY as it is selected by CONFIG_MTD_NAND_FSL_IFC.

Signed-off-by: Li Yang <leoyang.li@nxp.com>
---
 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d2d5d470a6fc..a625e322fa27 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -217,6 +217,7 @@ CONFIG_MTD_BLOCK=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_DENALI_DT=y
 CONFIG_MTD_NAND_MARVELL=y
+CONFIG_MTD_NAND_FSL_IFC=y
 CONFIG_MTD_NAND_QCOM=y
 CONFIG_MTD_SPI_NOR=y
 CONFIG_SPI_CADENCE_QUADSPI=y
@@ -801,7 +802,6 @@ CONFIG_ARCH_K3_J721E_SOC=y
 CONFIG_TI_SCI_PM_DOMAINS=y
 CONFIG_EXTCON_USB_GPIO=y
 CONFIG_EXTCON_USBC_CROS_EC=y
-CONFIG_MEMORY=y
 CONFIG_IIO=y
 CONFIG_EXYNOS_ADC=y
 CONFIG_QCOM_SPMI_ADC5=m
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
