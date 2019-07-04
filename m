Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 515D95F502
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 10:55:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pEKbd9Odsf8+eKODtums7plyLg13EcqjaoUvtqHuTq0=; b=kqFdIT2XhJ29MPmZC5d0vu1ACv
	/+xNJ/VDqq7pesZtNIfcKoqC8Oh92ZzvgGyM1LODCVEhRHubIM93mxORiqWxWiw8TB7DsaWUSAqL1
	jCMjfYQ+cHQoSVzgaUuZY5PQLly2tm8NdoMKqK5t/OIyfsd3Ybl1VA5GOjeRheBW5aFgbfQemvsEc
	jX53kWvTjqYLGG9gsoZqZfIguj0owbhLc937SNFA9Ii8TGrpHQL4/8mElkErPfsOf7sYHPFmhAUY7
	6QACpi11eVyQTIeAqVsunwALw0HPC3VBG6HmI8HMyOf7cyiAWFJeCR6sR6Ll96xdor0VBbChAF8Ik
	kEKLcCrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hixW7-0001qs-To; Thu, 04 Jul 2019 08:55:00 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hixUn-0001AD-Pd
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 08:53:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 98B33200579;
 Thu,  4 Jul 2019 10:53:36 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8A9CA200150;
 Thu,  4 Jul 2019 10:53:36 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id C4B84205D9;
 Thu,  4 Jul 2019 10:53:35 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Will Deacon <will@kernel.org>,
 Frank Li <Frank.li@nxp.com>
Subject: [PATCH 3/3] arm64: defconfig: Build imx8 ddr pmu as module
Date: Thu,  4 Jul 2019 11:53:22 +0300
Message-Id: <e51a2f95044f0a9003c3be2e82c3c4b2653670a7.1562230183.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1562230183.git.leonard.crestez@nxp.com>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1562230183.git.leonard.crestez@nxp.com>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_015337_965963_3ACC1F2F 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, devicetree@vger.kernel.org,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is available on all imx8 but is not "boot critical" in any way so
build as a module.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 812fe887477d..134a4067846f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -766,10 +766,11 @@ CONFIG_PHY_ROCKCHIP_INNO_USB2=y
 CONFIG_PHY_ROCKCHIP_PCIE=m
 CONFIG_PHY_ROCKCHIP_TYPEC=y
 CONFIG_PHY_UNIPHIER_USB2=y
 CONFIG_PHY_UNIPHIER_USB3=y
 CONFIG_PHY_TEGRA_XUSB=y
+CONFIG_FSL_IMX8_DDR_PMU=m
 CONFIG_HISI_PMU=y
 CONFIG_QCOM_L2_PMU=y
 CONFIG_QCOM_L3_PMU=y
 CONFIG_NVMEM_SUNXI_SID=y
 CONFIG_NVMEM_IMX_OCOTP=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
