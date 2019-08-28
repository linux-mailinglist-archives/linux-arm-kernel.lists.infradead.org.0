Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4377EA08C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 19:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=n03s8lA1Gh66tR0LuFyfGTdFATA044s5N4OaUF01Nzs=; b=X40
	t8Mhw8w8uFBG1EvVJz6UfPS0sZ40/fqHoENX9v/hCT8tAcHnuy6wT4fMQXWZar2Tw5bYj3CWW7K6u
	GczCGmwHcSCVY/AOjmpEDqRDuJfq+ceH4sxPsTVchq/M0RepuAqRSC87ZbsfAdxg8eyVlE/2m9+39
	FtQKMXQ3O5EHxFnGxP3WjvJ3pLaUK+cOCWDYeUKHFJc3dokTE/5uEQlu26cIBgAwKWLLOnoPCSnvf
	+Jw1jWBAMb3VEsBErA+MGKDCP/WXBmbpwG61UvpzGYQqqN6n47cEdBmjZP95GYJDZdvUC6vnHzYJ9
	RMkXm9D+Fwo89vAmIXXz/yPkdq+Zkkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i31uQ-00029p-CO; Wed, 28 Aug 2019 17:39:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i31uD-00029U-EU
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 17:38:50 +0000
Received: from sstabellini-ThinkPad-T480s.xilinx.com
 (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 69D4F2077B;
 Wed, 28 Aug 2019 17:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567013928;
 bh=RIt/H8XgVifTEhugC1lEufb4AZAcq59OXKgKcWpAXrM=;
 h=From:To:Cc:Subject:Date:From;
 b=mFFmsoI2WrO9CnnAGYaAzhzpXYFxVVg9B1B5BCL83R/9wuur9d4dRBFfL8iMMd4hi
 W+BLxOuQOCNffysulPuuGslQVUWOHw/40PAdmxLOV9uTxovYH9PTbypJI5oSdu+TUL
 pr+4j0JgPlICgAjAu0M7l4Q5vmQfBvVbBboU8gl0=
From: Stefano Stabellini <sstabellini@kernel.org>
To: will@kernel.org
Subject: [PATCH] arm-smmu: check for generic bindings first
Date: Wed, 28 Aug 2019 10:38:37 -0700
Message-Id: <20190828173837.29617-1-sstabellini@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_103849_520962_37437CBD 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sstabellini@kernel.org, linux-kernel@vger.kernel.org,
 michal.simek@xilinx.com, git@xilinx.com,
 Stefano Stabellini <stefano.stabellini@xilinx.com>, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefano Stabellini <stefano.stabellini@xilinx.com>

Today, the arm-smmu driver checks for mmu-masters on device tree, the
legacy property, if it is absent it assumes that we are using the new
bindings. If it is present it assumes that we are using the legacy
bindings. All arm-smmus need to use the same bindings: legacy or new.

There are two issues with this:

- we are not actually checking for the new bindings explicitly
It would be better to have an explicit check for the new bindings rather
than assuming we must be using the new if the old are not there.

- old and new bindings cannot coexist
It would be nice to be able to provide both old and new bindings so
that software that hasn't been updated yet is still able to get IOMMU
information from the legacy bindings while at the same time newer
software can get the latest information via the new bindings. (Xen has
not been updated to use the new binding yet for instance.) The current
code breaks under these circumstances because if the old bindings are
present, the new are not even checked.

This patch changes the scheme by checking for #iommu-cells, which is
only present with the new bindings, before checking for mmu-masters.
The new bindings are always favored when present. All SMMUs still need
to use the same bindings: mix-and-matching new and old bindings between
different SMMUs is not allowed.

Signed-off-by: Stefano Stabellini <stefano.stabellini@xilinx.com>
---

Let me know if you'd like me to turn the two using_*_binding variables
into a single one.

Also, please note that this is not meant as an excuse not to get Xen
updated to use the new binding.

 drivers/iommu/arm-smmu.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 64977c131ee6..79b518ff215c 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -2118,7 +2118,7 @@ static int arm_smmu_device_dt_probe(struct platform_device *pdev,
 {
 	const struct arm_smmu_match_data *data;
 	struct device *dev = &pdev->dev;
-	bool legacy_binding;
+	bool legacy_binding, generic_binding;
 
 	if (of_property_read_u32(dev->of_node, "#global-interrupts",
 				 &smmu->num_global_irqs)) {
@@ -2132,16 +2132,20 @@ static int arm_smmu_device_dt_probe(struct platform_device *pdev,
 
 	parse_driver_options(smmu);
 
-	legacy_binding = of_find_property(dev->of_node, "mmu-masters", NULL);
-	if (legacy_binding && !using_generic_binding) {
-		if (!using_legacy_binding)
-			pr_notice("deprecated \"mmu-masters\" DT property in use; DMA API support unavailable\n");
-		using_legacy_binding = true;
-	} else if (!legacy_binding && !using_legacy_binding) {
+	generic_binding = of_find_property(dev->of_node, "#iommu-cells", NULL);
+	if (generic_binding && !using_legacy_binding) {
 		using_generic_binding = true;
 	} else {
-		dev_err(dev, "not probing due to mismatched DT properties\n");
-		return -ENODEV;
+		legacy_binding = of_find_property(dev->of_node, "mmu-masters",
+						  NULL);
+		if (legacy_binding && !using_generic_binding) {
+			if (!using_legacy_binding)
+				pr_notice("deprecated \"mmu-masters\" DT property in use; DMA API support unavailable\n");
+			using_legacy_binding = true;
+		} else {
+			dev_err(dev, "not probing due to mismatched DT properties\n");
+			return -ENODEV;
+		}
 	}
 
 	if (of_dma_is_coherent(dev->of_node))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
