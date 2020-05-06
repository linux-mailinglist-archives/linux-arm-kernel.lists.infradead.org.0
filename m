Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687A41C6868
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:20:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JXAnRXIU5MbvbSulAX426B3ALbz7cdLAs22uVJq0xgI=; b=jHTU15ThAR+8Ml
	ryPgWWaTdJ2RO/RBCxi46sGW7t1yFj/JfrQZWwoBvxs69z0afjRk7OX0b5/F/1tq5q8DDdg4z6Sc6
	/iMJdHEMvlrdyFi7JlAbBeucQUDbjxpU5DxZmrc+5qQh8+R7Y/q5O7hW3rV07cRDbCkdhKD9wREzT
	GcJmZ31OLgYsllIhGvnTsfl+WAkORdwfehdyTE0wXfcBGkPhmMOWzmHlfa5SVXfHUtieUGx4N8LSX
	3aVPP0MrZWXu+9mMyNREYUKvoZ1FPvnODswiHdyj4wJCkXOkR7OStzi+DHrlzaWWHktSq8uD9aZyF
	FWl2fB+kafzHvIH1MRgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDPQ-0002ta-LL; Wed, 06 May 2020 06:19:56 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDPI-0002sE-4x
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:19:49 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 31ABBB1B4892FA1B686D;
 Wed,  6 May 2020 14:19:44 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.487.0; Wed, 6 May 2020
 14:19:37 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <tony@atomide.com>, <linux@armlinux.org.uk>, <peter.ujfalusi@ti.com>,
 <linux-omap@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] ARM: OMAP2+: remove unneeded variable "errata" in
 configure_dma_errata()
Date: Wed, 6 May 2020 14:19:00 +0800
Message-ID: <20200506061900.19832-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_231948_359770_44DB4A87 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.191 listed in wl.mailspike.net]
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
Cc: Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following coccicheck warning:

arch/arm/mach-omap2/dma.c:82:10-16: Unneeded variable: "errata". Return
"0" on line 161

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 arch/arm/mach-omap2/dma.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/mach-omap2/dma.c b/arch/arm/mach-omap2/dma.c
index 8cc109cc242a..ef5022bc91a2 100644
--- a/arch/arm/mach-omap2/dma.c
+++ b/arch/arm/mach-omap2/dma.c
@@ -79,8 +79,6 @@ static const struct omap_dma_reg reg_map[] = {
 
 static unsigned configure_dma_errata(void)
 {
-	unsigned errata = 0;
-
 	/*
 	 * Errata applicable for OMAP2430ES1.0 and all omap2420
 	 *
@@ -158,7 +156,7 @@ static unsigned configure_dma_errata(void)
 	if (cpu_is_omap34xx() && (omap_type() != OMAP2_DEVICE_TYPE_GP))
 		SET_DMA_ERRATA(DMA_ROMCODE_BUG);
 
-	return errata;
+	return 0;
 }
 
 static const struct dma_slave_map omap24xx_sdma_dt_map[] = {
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
