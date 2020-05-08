Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE72D1CAEA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 15:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xxsdKLo/t9vDnxfdzXrzKHnx9IEBVkwZ0NB7Cozs7SA=; b=GkDVEtF88pjNXi
	WUqDzgTkpP9xi/lg2UfK4Jptx+mI7l6CThZsb01dbF4hGoYkG1igqXiXYy2CudCtZsJ2sDcVacmJi
	rbOHgScnD6zRdeZa8jqlFHa/X8WuDhKHGFggiZ5j/tNb4F+7vSEjLiKYlnjPmSoktKYuL3sOrKuV8
	HCHGgtwGOUdCAHDVbwDQUL0PPXUqCVAw+r9VBGTq+BU4bmmgngTwVJv7T0zR5k/ZVyc5R44Cldq9P
	6ygtt407+a/qD5C8HTnL7fcWjL6hq52IdhjHsEOT9p9/IJl3kuPCNv8eSOPVD/P8RfSobtia43xk4
	R3IDFAdvbML6cSzGRNHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX2pU-0006am-6A; Fri, 08 May 2020 13:14:16 +0000
Received: from mail-m17613.qiye.163.com ([59.111.176.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX2pA-0006O9-BJ
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 13:13:58 +0000
Received: from ubuntu.localdomain (unknown [157.0.31.122])
 by mail-m17613.qiye.163.com (Hmail) with ESMTPA id EC4A1482C00;
 Fri,  8 May 2020 21:13:44 +0800 (CST)
From: Bernard Zhao <bernard@vivo.com>
To: Lukasz Luba <lukasz.luba@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] memory/samsung: reduce unnecessary mutex lock area
Date: Fri,  8 May 2020 06:13:38 -0700
Message-Id: <20200508131338.32956-1-bernard@vivo.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZSFVMSU5CQkJDSElKTkhISVlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OhQ6Dgw*TTgrMz4*Txc0TDE5
 TFEaCj1VSlVKTkNDQk9ITUlOSkxCVTMWGhIXVRkeCRUaCR87DRINFFUYFBZFWVdZEgtZQVlKTkxV
 S1VISlVKSUlZV1kIAVlBSUpNTjcG
X-HM-Tid: 0a71f46b9b9093bakuwsec4a1482c00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_061356_962554_EB3B979A 
X-CRM114-Status: UNSURE (   7.36  )
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
Cc: opensource.kernel@vivo.com, Bernard Zhao <bernard@vivo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Maybe dmc->df->lock is unnecessary to protect function
exynos5_dmc_perf_events_check(dmc). If we have to protect,
dmc->lock is more better and more effective.
Also, it seems not needed to protect "if (ret) & dev_warn"
branch.

Signed-off-by: Bernard Zhao <bernard@vivo.com>
---
 drivers/memory/samsung/exynos5422-dmc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
index 22a43d662833..88e8ac8b5327 100644
--- a/drivers/memory/samsung/exynos5422-dmc.c
+++ b/drivers/memory/samsung/exynos5422-dmc.c
@@ -1345,16 +1345,14 @@ static irqreturn_t dmc_irq_thread(int irq, void *priv)
 	int res;
 	struct exynos5_dmc *dmc = priv;
 
-	mutex_lock(&dmc->df->lock);
-
 	exynos5_dmc_perf_events_check(dmc);
 
+	mutex_lock(&dmc->df->lock);
 	res = update_devfreq(dmc->df);
+	mutex_unlock(&dmc->df->lock);
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
