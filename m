Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FEF12AB6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 10:52:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IrXwYC6Gh8VBvI9iSdWDvjA7ERUZcDvOrsv7zGAyIOc=; b=bn+ER9Flwg96UzxgJlvB57rvL+
	9wJ9cD7NyVjOhWL299mOn45r9e031pcF5S6dn+RNz3Y/x7sgpnoyoL0lupqba8AGfmQhTCBxXwR8x
	cq2DlHIsZBGk8YyBxn44BApf7Umdp2lWV7g1LndrnlhReu71n4Q9QrqBXJD8VdwUZpGqwu32N5NJ6
	GJDngIkVgBUJCIA9yITe0j+wzVLilymvP1LUcQ3a2SMiYt/8G4FScinoTz7WJmZG6AFZrZtFMiT+N
	m5xAkTIdDmzc5QA2ygxEKH5j+euvpZ1cr60IQgWdy0AMYhfpYHxSaob3F0IH6trVzrQ7LhbBcp/+m
	5MUwZSRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikPoe-000445-2Z; Thu, 26 Dec 2019 09:52:24 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikPoU-00043Y-0t
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 09:52:15 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id xBQ9pgNY023812;
 Thu, 26 Dec 2019 18:51:43 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com xBQ9pgNY023812
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1577353904;
 bh=ZLGd9Sa7OALWrLmeWhKg0zq7ZvRRBITnevotAyP+VUY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oMWsgAD7R/WJ2a2AIefVtYY9nZ9TdqVt884C1haeLpabCj7Fd2Xf4zuc3jhuQk30K
 yjjIxwdEdN2KbihzBeV7tl0m0LqoCaihEX/dETE7W/li8pQqaH85rnWM/s+ojNu2Xz
 203MHgdB5eUJBhu9KvHsOKMuWvmQ7KzJycDHx6Fzg7evPmc34l0qY1TdGdVdZvXCrF
 /aIGwh8lWfh1dMQyXw5GDKKywIecYr1hq+0y47ELlRUPnsV5Ty+IeHMdCDzOb0qgDp
 LZU34q1ozlbJdJvz++YtUNDTbHztD+AQXSZQ6cKTSxj0w0CkMes0JrI31FZaQCIb9s
 5syvPjmEpHsVA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org
Subject: [PATCH 2/2] iommu/arm-smmu-v3: simplify parse_driver_options()
Date: Thu, 26 Dec 2019 18:51:41 +0900
Message-Id: <20191226095141.30352-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191226095141.30352-1-yamada.masahiro@socionext.com>
References: <20191226095141.30352-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_015214_278096_31CDA451 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Using ARRAY_SIZE() instead of the sentinel is slightly simpler, IMHO.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/iommu/arm-smmu-v3.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index ed9933960370..b27489b7f9d8 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -676,7 +676,6 @@ struct arm_smmu_option_prop {
 static const struct arm_smmu_option_prop arm_smmu_options[] = {
 	{ ARM_SMMU_OPT_SKIP_PREFETCH, "hisilicon,broken-prefetch-cmd" },
 	{ ARM_SMMU_OPT_PAGE0_REGS_ONLY, "cavium,cn9900-broken-page1-regspace"},
-	{ 0, NULL},
 };
 
 static inline void __iomem *arm_smmu_page1_fixup(unsigned long offset,
@@ -696,16 +695,16 @@ static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
 
 static void parse_driver_options(struct arm_smmu_device *smmu)
 {
-	int i = 0;
+	int i;
 
-	do {
+	for (i = 0; i < ARRAY_SIZE(arm_smmu_options); i++) {
 		if (of_property_read_bool(smmu->dev->of_node,
 						arm_smmu_options[i].prop)) {
 			smmu->options |= arm_smmu_options[i].opt;
 			dev_notice(smmu->dev, "option %s\n",
 				arm_smmu_options[i].prop);
 		}
-	} while (arm_smmu_options[++i].opt);
+	};
 }
 
 /* Low-level queue manipulation functions */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
