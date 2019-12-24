Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460A5129EE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 09:15:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RxmkIoujMWz+v3gT422FJn4rnqb7ndM5e28PakzXmKw=; b=m1H
	dNq81d+EXAPgXMRga3UrSx1JNVKEbnCvn9bQ500sEHssInoWuOeq/50ekLIhdnBAf7EFOMC3pq2+Q
	Osn0oWxk8ZPc4sQjv4w50WK0nBRwelmYuitcaxpLtEvyB+4a/61m3mGV45zoGFtRdMZejqG858yeq
	yQXtVEqbuZ1uOyVhuv+h07O7fd/4bTbG0YYL8/Iavb2dw0OZGDH5YNqufxRGj9my9Eg+oee6gStp5
	xscwyEQTx/jXDFIyyM9F3QLkbBoOoj83bOPjW5U7jsbPuVTgNU9cRxI5OLJcN6jvfFbsv3VY2o6cN
	FogeYAfyF+BqwwcR7wd4zd65h7Pg0eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijfLw-0001Y2-He; Tue, 24 Dec 2019 08:15:40 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijfLo-0001XU-N0
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 08:15:34 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id xBO8F6tO002467;
 Tue, 24 Dec 2019 17:15:06 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com xBO8F6tO002467
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1577175308;
 bh=NbmBvDtMJ9z3Td8I6VubahSRd9ne5gs2UkZ7H3zze/8=;
 h=From:To:Cc:Subject:Date:From;
 b=w1D1o9lLd17YUs9iR6sMAJ70Ko/YIzdjEGoKti9JQCdALk56d5wqxG1STTEJUkUeV
 OvRF13UWwZZf8xS6CXgiOg+/jwFaX01jDqcRYaZegKpO4OalJyND/FAalfnQPVDv2y
 7v5hvfSt6B2jVx2SdXBZ6WSY8dfCN9QcFYrNyG+6SK20UV82gTdius2NerU2XrkCH8
 dDi6g/PE0uyrpptvh/YijOR5bixz6F6b9gVRbHQ3y5Awhsp856QkkWkfWZl+jMtVGP
 hT2nXixKIw+I0oY/lXK0tAZgkn8cwzuD1Ak07HI0atUmHZDT3a/mEkh27vroNROc9Z
 TbrVy0Ofau6Sg==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org
Subject: [PATCH 1/2] iommu/arm-smmu-v3: remove useless of_match_ptr()
Date: Tue, 24 Dec 2019 17:14:59 +0900
Message-Id: <20191224081500.18628-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_001533_103971_DB477084 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CONFIG option controlling this driver, ARM_SMMU_V3,
depends on ARM64, which select's OF.

So, CONFIG_OF is always defined when building this driver.
of_match_ptr(arm_smmu_of_match) is the same as arm_smmu_of_match.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/iommu/arm-smmu-v3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index effe72eb89e7..d9e0d9c19b4f 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -3698,7 +3698,7 @@ static const struct of_device_id arm_smmu_of_match[] = {
 static struct platform_driver arm_smmu_driver = {
 	.driver	= {
 		.name		= "arm-smmu-v3",
-		.of_match_table	= of_match_ptr(arm_smmu_of_match),
+		.of_match_table	= arm_smmu_of_match,
 		.suppress_bind_attrs = true,
 	},
 	.probe	= arm_smmu_device_probe,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
