Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE671C88B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5G/Lbra1QR79BwYNbWL0Ge1AnnG5+kcZ/EafStgySsc=; b=ctmXjOyHwvdAfv
	wlMu7vOTFjeEhqsB6qMyb6wQgNqeOKo57IW4Yrk3tlJVlQHsSDaV1q8qpzzvZQrT2O5CQN+GzuLK9
	leW19sSlbUNB7mfYBSLyWizQsSg6WO0foflhVIdX+zRfX//Ux4R+ukiUF1A58zG0pDiThJI0mTYX2
	gO5MSook8DL/DHZ4WipTiDDuTAV/hpBBs1zHq4Af0uzQEYR1e5iN55yJb/o90A2+GYE2DzybbLXkq
	3bfpskkQCYfra8gE5ED/zMYw6vuW0dVomxXQbEhMigb859MEF9N2Q0FOrXpubg+a9goDad6B8zxOw
	n3nKqcb93lzA4SSuOZBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeyK-0003iE-9d; Thu, 07 May 2020 11:45:48 +0000
Received: from mail-m17613.qiye.163.com ([59.111.176.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWey9-0003h1-Dg
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:45:39 +0000
Received: from ubuntu.localdomain (unknown [157.0.31.122])
 by mail-m17613.qiye.163.com (Hmail) with ESMTPA id 2BEEA482B3F;
 Thu,  7 May 2020 19:45:22 +0800 (CST)
From: Bernard Zhao <bernard@vivo.com>
To: Lukasz Luba <lukasz.luba@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] memory/samsung: Maybe wrong triming parameter
Date: Thu,  7 May 2020 04:45:14 -0700
Message-Id: <20200507114514.11589-1-bernard@vivo.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VOS0JCQkJMTklLT09NQ1lXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pgg6Gjo5NTg0GT8wSyNCHzMv
 IkwwCRJVSlVKTkNDQ05KQkhISkxJVTMWGhIXVRkeCRUaCR87DRINFFUYFBZFWVdZEgtZQVlKTkxV
 S1VISlVKSUlZV1kIAVlBSUtMTDcG
X-HM-Tid: 0a71eef455f993bakuws2beea482b3f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_044537_652703_819881C2 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.13 listed in list.dnswl.org]
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
Cc: opensource.kernel@vivo.com, Bernard Zhao <bernard@vivo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In function create_timings_aligned, all the max is to use
dmc->min_tck->xxx, aligned with val dmc->timings->xxx.
But the dmc->timings->tFAW use dmc->min_tck->tXP?
Maybe this point is wrong parameter useing.

Signed-off-by: Bernard Zhao <bernard@vivo.com>
---
 drivers/memory/samsung/exynos5422-dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
index 81a1b1d01683..22a43d662833 100644
--- a/drivers/memory/samsung/exynos5422-dmc.c
+++ b/drivers/memory/samsung/exynos5422-dmc.c
@@ -1091,7 +1091,7 @@ static int create_timings_aligned(struct exynos5_dmc *dmc, u32 *reg_timing_row,
 	/* power related timings */
 	val = dmc->timings->tFAW / clk_period_ps;
 	val += dmc->timings->tFAW % clk_period_ps ? 1 : 0;
-	val = max(val, dmc->min_tck->tXP);
+	val = max(val, dmc->min_tck->tFAW);
 	reg = &timing_power[0];
 	*reg_timing_power |= TIMING_VAL2REG(reg, val);
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
