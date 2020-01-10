Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 384CB13713C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:29:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ixc9aWYXgtlNy0XaHQgc1MnVREBMdDe3Z64lIInboM=; b=bHbare4910vsYf
	Yd6ywlRJHAsRq1dBy7incK396Pynh/jh7gzKYQ5z9zAu1k1SSiZxfXOVGmdtHrHDTCrv652MyGH5l
	eFv5C22A2npSi8nQpdBeqI81XCZUsTEZ35XETZrBcG7Z/4g7PNShVH0NRnVlmva9G07fReLvaULwh
	6fyYppwJbzaGTE/U1IaAvw9Dkel6goJvjLgjfqDzSwFGcTPUJA5tHBhd94Lf5ZHnqUcBBjAmtAm5h
	6cv1pMNKvu0aMLZxG1iTx5uMdnxf8lryh99UvOjAVNFQaUqloUa3dPH7Wgv9HuhuRrtxDaKJFm29L
	IVjf2OfvHvr/6LTPw2rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwEM-0001gT-Iz; Fri, 10 Jan 2020 15:29:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwDc-0001EX-Su
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:29:02 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4581A2077C;
 Fri, 10 Jan 2020 15:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578670140;
 bh=VF6ckcIHsORXZjbRculGsvWGPa8Ik1AflYU+0zpjSR8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1y9L8uH5eqyZQPNii+30rpcL7Jmz8UbQfDFO0xAiJd8ZiIxDGiYAZiFxU/gaMa2IB
 IXAk0soB/xeIMBPo/Oxw0RJS2/L8IwKq/sL6DjKye+FG5caArbtVgcL0SfGRE7kWBS
 OkoSR5ef8cbGgYOks8ftYt/TzsumowfXrH3ogUo0=
From: Will Deacon <will@kernel.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 2/8] iommu/io-pgtable-arm: Support non-coherent stage-2 page
 tables
Date: Fri, 10 Jan 2020 15:28:46 +0000
Message-Id: <20200110152852.24259-3-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110152852.24259-1-will@kernel.org>
References: <20200110152852.24259-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_072901_000176_5C9231C1 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-team@android.com, Robin Murphy <robin.murphy@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 9e6ea59f3ff3 ("iommu/io-pgtable: Support non-coherent page tables")
added support for non-coherent page-table walks to the Arm IOMMU page-table
backends. Unfortunately, it left the stage-2 allocator unchanged, so let's
hook that up in the same way.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 drivers/iommu/io-pgtable-arm.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 7b422b9fe05b..ab440b52a5f4 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -910,10 +910,16 @@ arm_64_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
 	}
 
 	/* VTCR */
-	reg = ARM_64_LPAE_S2_TCR_RES1 |
-	     (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
-	     (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
-	     (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
+	reg = ARM_64_LPAE_S2_TCR_RES1;
+	if (cfg->coherent_walk) {
+		reg |= (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
+		       (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
+		       (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
+	} else {
+		reg |= (ARM_LPAE_TCR_SH_OS << ARM_LPAE_TCR_SH0_SHIFT) |
+		       (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_IRGN0_SHIFT) |
+		       (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_ORGN0_SHIFT);
+	}
 
 	sl = data->start_level;
 
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
