Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B64C41CF315
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 13:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/GMwxSa9TV8fFTMxDoXB9Kkfrw2vWti3KqReQAnzOgQ=; b=cjCrVSX4qdE/dZ
	dHXLjS3RYqcNE3KYPYuv0ULjgxjAhklE1N1BXrbcHR+9SEKOt5OwttuFfzGjpvExxy8kL4Q0cL3aE
	k7MsYOnrU258YMVW7uo3eGafaW+/3GtOawFSsa2sm2WJu8m9C+xd9U5lkYS0hU/Q+R4dJTdZyDcmp
	poI7kWuhsWHEIB/9r1QwVlbiq7XxPpB37iGjyut3YZnN1gY7zwok6uRtzLK922F54r7FkO9AAoUrv
	jMIvg0mrUrsj7tjR6XOTtG3LJJ999KnbMNfbP8p+crgOSi9LCdSZffmWlrcExgY64zoe7ZEQ3r4Qk
	ZuSOhR4+KCpFvC3M7A+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYSmS-0004S7-27; Tue, 12 May 2020 11:09:00 +0000
Received: from mail-m17613.qiye.163.com ([59.111.176.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSmH-0004RH-Dn
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 11:08:51 +0000
Received: from ubuntu.localdomain (unknown [157.0.31.122])
 by mail-m17613.qiye.163.com (Hmail) with ESMTPA id 06A8A482D55;
 Tue, 12 May 2020 19:08:39 +0800 (CST)
From: Bernard Zhao <bernard@vivo.com>
To: Lukasz Luba <lukasz.luba@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] memory/samsung: reduce unnecessary mutex lock area
Date: Tue, 12 May 2020 04:08:27 -0700
Message-Id: <20200512110827.39475-1-bernard@vivo.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VITEtCQkJDSkhLTEJDSFlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nj46LCo*UTg8GTJWFAI1Sk1P
 OjYKCRNVSlVKTkNCSUNKTElJSUNDVTMWGhIXVRkeCRUaCR87DRINFFUYFBZFWVdZEgtZQVlKTkxV
 S1VISlVKSUlZV1kIAVlBSUlPTjcG
X-HM-Tid: 0a720892839793bakuws06a8a482d55
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_040849_618809_38FE7E6F 
X-CRM114-Status: UNSURE (   7.66  )
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

Maybe dmc->df->lock seems not needed to protect "if (ret)
& dev_warn" branch. Maybe this change speed up the code a bit.

Signed-off-by: Bernard Zhao <bernard@vivo.com>
----
Changes since v1:
*change release lock before the if statement.
*revert dmc->df->lock mutex lock to protect function
exynos5_dmc_perf_events_check
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
