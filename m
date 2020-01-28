Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7351A14C2FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 23:34:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6Fnt1NmkKOWDT4k05Pdo0ZqGavqKk1WKgrbZ4ohDppQ=; b=ZPQ
	GuZVZDXx52mzrRXpbRN0Fnz+MkuM+5qM4/6PNI2BHKdbB171MIuO7mQk+SL2hjwbGdIvNVenj0Xqx
	I4RDyN6FZ+WR/Th4a1s27/C6mun/TX7YtLB2qGiebxEWY4HSdUKDkrLvkF+QaL4qV4wELJ/5+aoxX
	5ae7TZ5d3HMpwt9zB5Ab+8s6RqFuZr3KbnKhIiLbT/UdPdXj2zHhWXuD221WP1o3lpKV9Y/WVKc4Y
	2D+cyc5HnK8ITj+MhxHMN2/lKmCfwjczz884lSrKvBfU45y2u/Q4hGMHEuv88zAUk9PzWGjocoI0k
	3zdWhTEz4jRLFC/271abnSQkADBK2Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwZRF-00018a-2d; Tue, 28 Jan 2020 22:34:29 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwZR3-00017N-2t
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 22:34:21 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580250859; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=KPGUQcF0y0b6zGbjLTPz7+ZC/IF0jWlRKWGLcU9qULU=;
 b=QiPRvCvIl/VXHB2y3EH6jz7+za6rBYpPgBGMxlanrXzl7vyt3UnpiPkD1m4cG+5JJgPEJd6u
 yUxfJ5dkpFWNCaoF1VfAiTKemecj84wvzPnZCrbDJVSTw7m1/7lm4zT7j4IrdVc3nDnVppXV
 H0BH6xXkANBNSDV8y9w68niut5Y=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e30b6e0.7fe1326d3928-smtp-out-n03;
 Tue, 28 Jan 2020 22:34:08 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7190AC447A2; Tue, 28 Jan 2020 22:34:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D9F38C43383;
 Tue, 28 Jan 2020 22:34:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D9F38C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: iommu@lists.linux-foundation.org,
	Rob Clark <robdclark@gmail.com>
Subject: [RFC PATCH v1] iommu/arm-smmu: Allow domains to choose a context bank
Date: Tue, 28 Jan 2020 15:33:43 -0700
Message-Id: <1580250823-30739-1-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_143419_487611_8AEE6280 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: robin.murphy@arm.com, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Domains which are being set up for split pagetables usually want to be
on a specific context bank for hardware reasons. Force the context
bank for domains with the split-pagetable quirk to context bank 0.
If context bank 0 is taken, move that context bank to another unused
bank and rewrite the stream matching registers accordingly.

This is be used by [1] and [2] to leave context bank 0 open so that
the Adreno GPU can program it.

[1] https://lists.linuxfoundation.org/pipermail/iommu/2020-January/041438.html
[2] https://lists.linuxfoundation.org/pipermail/iommu/2020-January/041444.html

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
---

 drivers/iommu/arm-smmu.c | 63 +++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 59 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 85a6773..799a254 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -254,6 +254,43 @@ static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
 	return idx;
 }
 
+static void arm_smmu_write_s2cr(struct arm_smmu_device *smmu, int idx);
+
+static int __arm_smmu_alloc_cb(struct arm_smmu_device *smmu, int start,
+		int target)
+{
+	int new, i;
+
+       /* Allocate a new context bank id */
+	new = __arm_smmu_alloc_bitmap(smmu->context_map, start,
+		smmu->num_context_banks);
+
+	if (new < 0)
+		return new;
+
+	/* If no target is set or we actually got the bank index we wanted */
+	if (target == -1 || new == target)
+		return new;
+
+	/* Copy the context configuration to the new index */
+	memcpy(&smmu->cbs[new], &smmu->cbs[target], sizeof(*smmu->cbs));
+	smmu->cbs[new].cfg->cbndx = new;
+
+	/* FIXME: Do we need locking here? */
+	for (i = 0; i < smmu->num_mapping_groups; i++) {
+		if (smmu->s2crs[i].cbndx == target) {
+			smmu->s2crs[i].cbndx = new;
+			arm_smmu_write_s2cr(smmu, i);
+		}
+	}
+
+	/*
+	 * FIXME: Does getting here imply that 'target' is already set in the
+	 * context_map?
+	 */
+	return target;
+}
+
 static void __arm_smmu_free_bitmap(unsigned long *map, int idx)
 {
 	clear_bit(idx, map);
@@ -770,6 +807,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
 	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
 	unsigned long quirks = 0;
+	int forcecb = -1;
 
 	mutex_lock(&smmu_domain->init_mutex);
 	if (smmu_domain->smmu)
@@ -844,8 +882,25 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 			 * SEP_UPSTREAM so we don't need to reduce the size of
 			 * the ias to account for the sign extension bit
 			 */
-			if (smmu_domain->split_pagetables)
-				quirks |= IO_PGTABLE_QUIRK_ARM_TTBR1;
+			if (smmu_domain->split_pagetables) {
+				/*
+				 * If split pagetables are enabled, assume that
+				 * the user's intent is to use per-instance
+				 * pagetables which, at least on a QCOM target,
+				 * means that this domain should be on context
+				 * bank 0.
+				 */
+
+				/*
+				 * If we can't force to context bank 0 then
+				 * don't bother enabling split pagetables which
+				 * then would not allow aux domains
+				 */
+				if (start == 0) {
+					forcecb = 0;
+					quirks |= IO_PGTABLE_QUIRK_ARM_TTBR1;
+				}
+			}
 		} else if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_L) {
 			fmt = ARM_32_LPAE_S1;
 			ias = min(ias, 32UL);
@@ -883,8 +938,8 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 		ret = -EINVAL;
 		goto out_unlock;
 	}
-	ret = __arm_smmu_alloc_bitmap(smmu->context_map, start,
-				      smmu->num_context_banks);
+
+	ret = __arm_smmu_alloc_cb(smmu, start, forcecb);
 	if (ret < 0)
 		goto out_unlock;
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
