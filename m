Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9577816B4E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 00:11:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a8Qyh4zpUjxNmk6uuUisbJE02/fJnQR9SDX2wCzhI7Q=; b=XWZtSI4/zrPVaDj+SEPFiNIaUl
	JQjHITDA2F94SgWD9A+S61ckvAdY6+7GZ7cg/H2HILltOe8ojh9jLrvyzP52lH2OiVVqpO+sqRmuh
	TwFQT+oNIvI46ow4Qk24FVR8PeOBU161oFzdp+2n2tIf50Z1+vdRrItR9Prw2FNJIJFaaM5zL/TsW
	oyWTyq82IF5WuS73mNhQ9GNAxO5JpJcu96B0p8WuJReGuAEAK1NRTzAGCP854ZYPG6PqcCklIaVNs
	3Z/oUo49TCfwj45nnxtgw9YydoZbhl3j0HPIB4v2IJzgOW/q8G8wQhWEZBrQmIyJ1RkprogHFOVWZ
	ZAj9DLDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6MsP-0005Jz-Ci; Mon, 24 Feb 2020 23:11:01 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Mq6-0002On-5Z
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 23:08:43 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E79D2210038;
 Tue, 25 Feb 2020 00:08:30 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B0EB3210041;
 Tue, 25 Feb 2020 00:08:30 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 0448640A63; Mon, 24 Feb 2020 16:08:29 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: shawnguo@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 04/15] arm64: defconfig: Enable QorIQ DPAA2 drivers
Date: Mon, 24 Feb 2020 17:07:59 -0600
Message-Id: <1582585690-463-5-git-send-email-leoyang.li@nxp.com>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <1582585690-463-1-git-send-email-leoyang.li@nxp.com>
References: <1582585690-463-1-git-send-email-leoyang.li@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_150838_377751_BEC1CF56 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enables drivers for NXP DPAA2 framework, related Ethernet and crypto
device which can be found on QorIQ SoCs like LS1088a, LS2088a and
LX2160a.

The framework and ethernet drivers are enabled as built-in to boot
from network without an initramfs.

Signed-off-by: Li Yang <leoyang.li@nxp.com>
---
 arch/arm64/configs/defconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 54ac7c1558d8..9eaf0993cca5 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -209,6 +209,7 @@ CONFIG_FW_LOADER_USER_HELPER=y
 CONFIG_FW_LOADER_USER_HELPER_FALLBACK=y
 CONFIG_HISILICON_LPC=y
 CONFIG_SIMPLE_PM_BUS=y
+CONFIG_FSL_MC_BUS=y
 CONFIG_MTD=y
 CONFIG_MTD_BLOCK=y
 CONFIG_MTD_RAW_NAND=y
@@ -265,6 +266,7 @@ CONFIG_THUNDER_NIC_PF=y
 CONFIG_FEC=y
 CONFIG_FSL_FMAN=y
 CONFIG_FSL_DPAA_ETH=y
+CONFIG_FSL_DPAA2_ETH=y
 CONFIG_HIX5HD2_GMAC=y
 CONFIG_HNS_DSAF=y
 CONFIG_HNS_ENET=y
@@ -758,6 +760,7 @@ CONFIG_RPMSG_QCOM_SMD=y
 CONFIG_OWL_PM_DOMAINS=y
 CONFIG_RASPBERRYPI_POWER=y
 CONFIG_FSL_DPAA=y
+CONFIG_FSL_MC_DPIO=y
 CONFIG_IMX_SCU_SOC=y
 CONFIG_QCOM_AOSS_QMP=y
 CONFIG_QCOM_GENI_SE=y
@@ -885,6 +888,7 @@ CONFIG_CRYPTO_ANSI_CPRNG=y
 CONFIG_CRYPTO_USER_API_RNG=m
 CONFIG_CRYPTO_DEV_SUN8I_CE=m
 CONFIG_CRYPTO_DEV_FSL_CAAM=m
+CONFIG_CRYPTO_DEV_FSL_DPAA2_CAAM=m
 CONFIG_CRYPTO_DEV_QCOM_RNG=m
 CONFIG_CRYPTO_DEV_HISI_ZIP=m
 CONFIG_CMA_SIZE_MBYTES=32
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
