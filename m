Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4E9182552
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 23:56:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SRpug4nsv+2/a90K7EJLFyYZcBTq/qQefxDpoJUq7g=; b=Nmeh7SG/AH0S9S
	SSO1SfM2IIc4s1yKbkLnki2nLMub3Khu/FcOMlVPRDI1DT/2V9iZvG9z0mL74u0xk4ov+wP6xyOF1
	U/wbgVKBtYBAgmc7JRTzMVtHIeoxCBrf+v3ZnWw2jpjYA0HYjZ/8ubXCwHJhYItVx4oah+/XAdU4v
	3e8K4crBxIA2NXghJ0+bn1t9Cu40+q3OqrkUJEiY06HqOco38EocT4jVvcd/CUjRdKzHd9KOb1xzb
	heO2oBiWxSlu+FXinigvCnf+n07txFGE8vovmGPOa1ABzCUW+kUhsWl+WIrmM/S1KA1f8QURjm2HH
	13dIx2VdZpWE7TFLOudg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCAGt-00089j-Gq; Wed, 11 Mar 2020 22:56:15 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCAEs-0004p2-Dq
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 22:54:12 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 08B10200BE8;
 Wed, 11 Mar 2020 23:54:09 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C423B2005A8;
 Wed, 11 Mar 2020 23:54:08 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 0CA8840A85; Wed, 11 Mar 2020 15:54:08 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: shawnguo@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 06/15] arm64: defconfig: Enable NXP/FSL SPI controller
 drivers
Date: Wed, 11 Mar 2020 17:53:08 -0500
Message-Id: <20200311225317.11198-7-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.25.1.377.g2d2118b
In-Reply-To: <20200311225317.11198-1-leoyang.li@nxp.com>
References: <20200311225317.11198-1-leoyang.li@nxp.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_155410_604662_8EA1F7AA 
X-CRM114-Status: UNSURE (   7.63  )
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

Enables SPI controller drivers used in various NXP/FSL SoCs.

QSPI is fast enough to connect big flash for file system.  It is used to
connect 512MB NAND flash and 256MB NOR flash on LS1028RDB.  It is used
as bootsource for other platforms like LS2080ardb too. Enabled as
built-in to load RFS from SPI flash without requiring initramfs.

Signed-off-by: Li Yang <leoyang.li@nxp.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7390c8f3838d..e97ef8b944b8 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -398,8 +398,11 @@ CONFIG_SPI=y
 CONFIG_SPI_ARMADA_3700=y
 CONFIG_SPI_BCM2835=m
 CONFIG_SPI_BCM2835AUX=m
+CONFIG_SPI_FSL_LPSPI=y
+CONFIG_SPI_FSL_QUADSPI=y
 CONFIG_SPI_NXP_FLEXSPI=y
 CONFIG_SPI_IMX=m
+CONFIG_SPI_FSL_DSPI=y
 CONFIG_SPI_MESON_SPICC=m
 CONFIG_SPI_MESON_SPIFC=m
 CONFIG_SPI_ORION=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
