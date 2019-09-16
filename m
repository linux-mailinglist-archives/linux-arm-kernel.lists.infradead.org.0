Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423A3B3BDA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RaAdFipA3f7xVyON45bK4JIDdKz/f64hOX3KK7a5mr4=; b=AZp
	bY+RH1/jDU3Ng4jBrmykzCBW4zCxOsK6bPMcdx2D/doqsiAKxpKq/reynX4d5Su1Ogf65GN/xilGi
	tOLRPDMbZycLjvhbE6tHE4htzaw/UVVr9b+3HhsPvHDl5/eFJ0kxBdocdm54uPRKSsLGDDdoxoKjc
	wQKauDkMtX3xIsKe1D12/v+y6y54+Hgu65ssWLOdVSzQpBYr8RYDXByeE6/XV+GpsK74+wMUb0U6X
	sfKwmNfHdO2q5frG8FO17KXsR6ZxBGugGuqR+be2JCKmWQjLRPAv/qxwtOY4zS2ZIrbTL+vXHyTrK
	z9J3/uPSslioIMy/ckt7jGF4Vk9ZRvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rRo-00054Q-AF; Mon, 16 Sep 2019 13:53:44 +0000
Received: from smtprz14.163.net ([106.3.154.247] helo=smtp.tom.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rRY-000546-Fp
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 13:53:30 +0000
Received: from my-app01.tom.com (my-app01.tom.com [127.0.0.1])
 by freemail01.tom.com (Postfix) with ESMTP id 2C8F51C86011
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 21:53:17 +0800 (CST)
Received: from my-app01.tom.com (HELO smtp.tom.com) ([127.0.0.1])
 by my-app01 (TOM SMTP Server) with SMTP ID -1586585411
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 21:53:17 +0800 (CST)
Received: from antispam1.tom.com (unknown [172.25.16.55])
 by freemail01.tom.com (Postfix) with ESMTP id 295761C860DF
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 21:53:10 +0800 (CST)
Received: from antispam1.tom.com (antispam1.tom.com [127.0.0.1])
 by antispam1.tom.com (Postfix) with ESMTP id 5F0DB10011BC
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 21:53:10 +0800 (CST)
X-Virus-Scanned: Debian amavisd-new at antispam1.tom.com
Received: from antispam1.tom.com ([127.0.0.1])
 by antispam1.tom.com (antispam1.tom.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QSd5RrAt8ArA for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 21:53:09 +0800 (CST)
Received: from localhost (unknown [182.150.160.140])
 by antispam1.tom.com (Postfix) with ESMTPA id 7689A100191F;
 Mon, 16 Sep 2019 21:53:08 +0800 (CST)
From: Liu Xiang <liuxiang_1999@126.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] iommu/arm-smmu: Free context bitmap in the err path of
 arm_smmu_init_domain_context
Date: Mon, 16 Sep 2019 21:53:00 +0800
Message-Id: <1568641980-5011-1-git-send-email-liuxiang_1999@126.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_065328_692268_F8C37AFB 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.9 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;
 id=liuxiang_1999%40126.com; ip=106.3.154.247; r=bombadil.infradead.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (liuxiang_1999[at]126.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (liuxiang_1999[at]126.com)
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 2.4 SPOOFED_FREEMAIL       No description available.
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
Cc: will@kernel.org, Liu Xiang <liuxiang_1999@126.com>, joro@8bytes.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 robin.murphy@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When alloc_io_pgtable_ops is failed, context bitmap which is just allocated
by __arm_smmu_alloc_bitmap should be freed to release the resource.

Signed-off-by: Liu Xiang <liuxiang_1999@126.com>
---
 drivers/iommu/arm-smmu.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 64977c1..523a641 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -936,6 +936,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 	return 0;
 
 out_clear_smmu:
+	__arm_smmu_free_bitmap(smmu->context_map, cfg->cbndx);
 	smmu_domain->smmu = NULL;
 out_unlock:
 	mutex_unlock(&smmu_domain->init_mutex);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
