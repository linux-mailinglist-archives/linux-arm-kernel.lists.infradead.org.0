Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9416B19748
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 06:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sd7nvbjlQRQ1PTvcJ7+wz0/v+sdWHeZ/NunIjfB0ClA=; b=CXN6176rriLbNv
	/rDhh984vwb1X+6DxVJiAet6xbjolBOFaHPPkhU5gUhLVjrQzRspwwGlvDmmVFJ5bILpwWo8/PEbL
	Ol4TTa5gpGOeUnU0V5Kjje1pcrs/gsKTYYr9QWjUgYq9gND1LaXRCklvQjvbB+3g8DkkEGCFM9OX/
	+h/nnMXgcBjUhYQ8U8kc+FL1Lq/FteoosrcasbJgdyu4lOsaNi7xg6qvTFhG4URqVanOSG2EgQc68
	TNCRWyjIB/4hORmbxU8SvS7ERvNP7r62i1Jdro/Y58Ux6Zz4mUzn/dcsevujgQcvW7o61N2GOYVel
	jTJWP52caMKvPy1h+Kfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOwi7-00068S-Cq; Fri, 10 May 2019 04:00:39 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOwi0-00067z-0h
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 04:00:33 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 449428E409AA2E2FDA63;
 Fri, 10 May 2019 12:00:25 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Fri, 10 May 2019
 12:00:17 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <catalin.marinas@arm.com>, <will.deacon@arm.com>, <marc.zyngier@arm.com>, 
 <lokeshvutla@ti.com>, <tony@atomide.com>
Subject: [PATCH] arm64: arch_k3: Fix kconfig dependency warning
Date: Fri, 10 May 2019 11:52:55 +0800
Message-ID: <20190510035255.27568-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_210032_280432_0594CAC0 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix Kbuild warning when SOC_TI is not set

WARNING: unmet direct dependencies detected for TI_SCI_INTA_IRQCHIP
  Depends on [n]: TI_SCI_PROTOCOL [=y] && SOC_TI [=n]
  Selected by [y]:
  - ARCH_K3 [=y]

Fixes: 009669e74813 ("arm64: arch_k3: Enable interrupt controller drivers")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 42eca65..9d1292f 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -88,6 +88,7 @@ config ARCH_K3
 	bool "Texas Instruments Inc. K3 multicore SoC architecture"
 	select PM_GENERIC_DOMAINS if PM
 	select MAILBOX
+	select SOC_TI
 	select TI_MESSAGE_MANAGER
 	select TI_SCI_PROTOCOL
 	select TI_SCI_INTR_IRQCHIP
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
