Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E43D41CF46B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m2r5s3gB6E4EUd2z8/Bz6JSbprs6AToOdLCpuRqPZIE=; b=gYdptP39BGmTIS
	lxumvaPBlwhzFnGbpYfVFp6aDW3pAdUnkcyfoGrULwiPqZdf/Fr3QShYyGLQcsI+bLx4WewBeUGwt
	zy905+DU3x5Ti+NPGWx9xjCbuJEF10m+SouO0njmxUZYtMueFpVFlm8qNNjDXe98RO4FUagxWI0AX
	wl4d4STiPUezx8yFc0aAkoQb50267R4d0MvtP9TWKs2fykDEVdvV6WyuOKH587W/PbRrKheUkLcFP
	No5QEwOGPhsCRKaTFmmJYBwlD4g5M91kGj7R9PaxXeCTt+9wa14wGRQ+no1ER0N9MPnfQtS0LltKE
	IcLQnTvsC1eRPw3hP2pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYU51-0004A9-QC; Tue, 12 May 2020 12:32:15 +0000
Received: from mail-m17613.qiye.163.com ([59.111.176.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYU4t-00048k-Jr
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 12:32:09 +0000
Received: from ubuntu.localdomain (unknown [157.0.31.122])
 by mail-m17613.qiye.163.com (Hmail) with ESMTPA id 4357E482CFB;
 Tue, 12 May 2020 20:31:57 +0800 (CST)
From: Bernard Zhao <bernard@vivo.com>
To: Lukasz Luba <lukasz.luba@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] memory/samsung: reduce protected code area in IRQ
Date: Tue, 12 May 2020 05:31:49 -0700
Message-Id: <20200512123149.40162-1-bernard@vivo.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VCT0xCQkJCTk9JSUhNSFlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Oj46GAw6Pzg8CTIMIRQ6MD8L
 KBcKCzdVSlVKTkNCSUNNTEpCTkpNVTMWGhIXVRkeCRUaCR87DRINFFUYFBZFWVdZEgtZQVlKTkxV
 S1VISlVKSUlZV1kIAVlBSUlCSjcG
X-HM-Tid: 0a7208dec7fa93bakuws4357e482cfb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_053208_199591_855FCB2C 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.13 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [59.111.176.13 listed in wl.mailspike.net]
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

This change will speed-up a bit this IRQ processing and there
is no need to protect return value or printing.

Signed-off-by: Bernard Zhao <bernard@vivo.com>
---
Changes since v1:
*change release lock before the if statement.
*revert dmc->df->lock mutex lock to protect function
exynos5_dmc_perf_events_check

Changes since v2:
*Improve subject and commit message

Link for V1:
*https://lore.kernel.org/patchwork/patch/1238888/
---
 drivers/memory/samsung/exynos5422-dmc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
index 22a43d662833..25196d6268e2 100644
--- a/drivers/memory/samsung/exynos5422-dmc.c
+++ b/drivers/memory/samsung/exynos5422-dmc.c
@@ -1346,15 +1346,13 @@ static irqreturn_t dmc_irq_thread(int irq, void *priv)
 	struct exynos5_dmc *dmc = priv;
 
 	mutex_lock(&dmc->df->lock);
-
 	exynos5_dmc_perf_events_check(dmc);
-
 	res = update_devfreq(dmc->df);
+	mutex_unlock(&dmc->df->lock);
+
 	if (res)
 		dev_warn(dmc->dev, "devfreq failed with %d\n", res);
 
-	mutex_unlock(&dmc->df->lock);
-
 	return IRQ_HANDLED;
 }
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
