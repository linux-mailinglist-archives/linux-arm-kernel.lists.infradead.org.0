Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E490D22BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 10:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UEcdYah2KW7V90bEIGcHcCw6Y0tM9+aspRTV1fOVbSQ=; b=uvorhaxNp6KUdP
	RZMbX1Z8nvM4TNiuPHaf/wncuEya92E5pG7vyNcPUMaB5VD03ve741jiJd1O+NNV4XRFeeNWB5+YA
	Pv62o2KQrnL+B4lHGKLI1JrlEjfQ32C4UTDRkIWsjgY3evlzYkGocffIj1lO78omPtRI5sBp2gUqk
	9YZszN6w5OwtvzRx5ikTxUrEglhtCvHrhpRXAxULbJNxkUIHOhr5wIpJaHo1+4x2/Qr3PRK9+CMAf
	Bocc1icri2hdCsoXnu5VwOck5HZzEWnPXxUi9lBXUdFx5avXrLeUXqbTH7eagRdL/F7mUwdHWML7R
	xjn14v2+1P9Pl08bvTaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iITo9-0003NW-DA; Thu, 10 Oct 2019 08:28:25 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITny-0003Lj-Si
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 08:28:16 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 39B40C6BE8E923966329
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 16:28:06 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Thu, 10 Oct 2019 16:27:56 +0800
From: Zhou Wang <wangzhou1@hisilicon.com>
To: <xuwei5@huawei.com>
Subject: [PATCH] arm64: defconfig: Enable SMMU v3 PMCG
Date: Thu, 10 Oct 2019 16:24:50 +0800
Message-ID: <1570695890-46743-1-git-send-email-wangzhou1@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_012815_091107_9EBA6C77 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Zhou Wang <wangzhou1@hisilicon.com>, linuxarm@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HiSilicon Kunpeng920 SoC's SMMU has Performance Monitor Counter Groups(PMCG).
This patch enables related driver in defconfig.

Signed-off-by: Zhou Wang <wangzhou1@hisilicon.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8e05c39..1f4940c 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -801,6 +801,7 @@ CONFIG_PHY_ROCKCHIP_TYPEC=y
 CONFIG_PHY_UNIPHIER_USB2=y
 CONFIG_PHY_UNIPHIER_USB3=y
 CONFIG_PHY_TEGRA_XUSB=y
+CONFIG_ARM_SMMU_V3_PMU=m
 CONFIG_FSL_IMX8_DDR_PMU=m
 CONFIG_HISI_PMU=y
 CONFIG_QCOM_L2_PMU=y
-- 
2.8.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
