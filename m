Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98865B31BB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 21:34:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y0ZKJxyXJUjyo2FpbyhB7hkk5TIXrC/A9bCapQPOf2c=; b=TxJijTRq52dx27
	6zx9zW4xY4AV6hBgC2g53ZfgKyEaL2dHeNnfaoiHhRr+EBzOOUSmxLVxEIqJ5gsA4g4Gpmnqw9Bpe
	jCZ00WaZVLf26SpVe19GdXUcf2851mPkVKP4XW9DRJq6LbpF63/AYDmoVzgjQT1RilRHpPqFd2yq9
	DgvNxPDaTkaRtPTQ9NOG2/1VHTwkZzWxKWnpTMosHzKvVF7yRuYGICZAD8K0fQkkshFGhVBaLgTwR
	EqU3huqkJd8V+909khWGbmBkXqZ9lS+gd0aBE3/9rfvlEUEjtx+MhLzSTkOsMuUjFzQyDbhJu5vaa
	kqmKc4sWuHx7Xd76k2NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9aHz-0004D0-Nz; Sun, 15 Sep 2019 19:34:28 +0000
Received: from smtp02.smtpout.orange.fr ([80.12.242.124]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9aHm-0004Bz-Gz
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 19:34:16 +0000
Received: from localhost.localdomain ([93.23.196.41]) by mwinf5d03 with ME
 id 1va5210090u43at03va5ta; Sun, 15 Sep 2019 21:34:07 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 15 Sep 2019 21:34:07 +0200
X-ME-IP: 93.23.196.41
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: will@kernel.org,
	robin.murphy@arm.com,
	joro@8bytes.org
Subject: [PATCH] iommu/arm-smmu: Axe a useless test in
 'arm_smmu_master_alloc_smes()'
Date: Sun, 15 Sep 2019 21:34:01 +0200
Message-Id: <20190915193401.27426-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_123414_853873_6175B9A4 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.124 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 iommu@lists.linux-foundation.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'ommu_group_get_for_dev()' never returns NULL, so this test can be removed.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/iommu/arm-smmu.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index c3ef0cc8f764..6fae8cdbe985 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1038,8 +1038,6 @@ static int arm_smmu_master_alloc_smes(struct device *dev)
 	}
 
 	group = iommu_group_get_for_dev(dev);
-	if (!group)
-		group = ERR_PTR(-ENOMEM);
 	if (IS_ERR(group)) {
 		ret = PTR_ERR(group);
 		goto out_err;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
