Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCF918565D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 22:43:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/3LbICgnJgs4AxVxM7xQwvuJQ6XPbFghRRG8+DniWk=; b=Qzmfs5KK5Dy/br
	e7a4SlKcN+nIP5VWwTT6ekwcHBcuLBSZTcfnIM/zLX+Wxds9K9yb9vNePhzUDflkrbA25IpVX/D0A
	MSmRgqTISMITjOKiIaUqTxm9xZaAT8sfk+YBCaJXsIzUBmmaTewBlNos7g4mrClZ0RTYDFTHaX93x
	adFKTGbjftEx1WzrHXjYDw1U4f/IQDJAEb1vFpOD6kRu90Y70Bu7DjeYeyDvDhVfZkC6rO3Di8Uqy
	99VC5rEybw+E6Sdif2oFMwL1vCmoll43qr8O7pZwuCxOiKM3o28rpyCbp7SpdGJQXxkvJxzAZYrr9
	uI/j3d9L76Jc6w3kl64Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDEZO-0001pF-V1; Sat, 14 Mar 2020 21:43:46 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDEZF-0001ni-Dc
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 21:43:38 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 2C709827D;
 Sat, 14 Mar 2020 21:44:21 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 5/7] ARM: omap2plus_defconfig: Enable McPDM optional PMIC
 clock as modules
Date: Sat, 14 Mar 2020 14:43:26 -0700
Message-Id: <20200314214328.13342-5-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200314214328.13342-1-tony@atomide.com>
References: <20200314214328.13342-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_144337_498326_F7A6A7E8 
X-CRM114-Status: UNSURE (   6.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The McPDM module is only usable on hardware where it's module clock
is wired to the PMIC. Let's enable the optional PMIC module clocks
for this so boards can use McPDM.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/configs/omap2plus_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -488,6 +488,8 @@ CONFIG_RTC_DRV_PALMAS=m
 CONFIG_RTC_DRV_OMAP=m
 CONFIG_RTC_DRV_CPCAP=m
 CONFIG_DMADEVICES=y
+CONFIG_CLK_TWL6040=m
+CONFIG_COMMON_CLK_PALMAS=m
 CONFIG_OMAP_IOMMU=y
 CONFIG_REMOTEPROC=y
 CONFIG_OMAP_REMOTEPROC=m
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
