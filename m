Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D190613713F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:30:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KD8hFBeJWQ8VGnEgYUdiYtJ9N0EcsOO7Q35EeJaSFlA=; b=e9B4m0FhF4tbwH
	tTjuXq2UziItAQv8nY6Wc+4afDaDksgjd3IthWPs1T+c5BttyE2EUE/QCz1P5QqGWDu+HWAzQp1Xo
	E2QLxDwi2u+MnxzYMyMVD/gilJgP7nEvynBWPXLa9BQT4cOrixbo8qhozMhD0CTLQJe+z15vpQfCL
	3E1rGL5U55HAfaPFjEjTxDFdqvOgJ6WQvroQvstImYksLaU2hSxxNiXXO9NEh9Pr/Sy3pBroGFGqw
	5wWGOmlsZrNhkR1XnXYXiwNtnqnvyMbFY+OJSpTO92jEyCSHSbWOjYvCsFjC9ctac9ksPTVX1BMea
	S/rPRoptTDSCJq+nOsHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwEX-0001xU-My; Fri, 10 Jan 2020 15:29:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwDe-0001GD-Mc
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:29:04 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9A162072E;
 Fri, 10 Jan 2020 15:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578670142;
 bh=XDhMKYHKYKCs5Yd37zUZP3/fa97xSPHnezl5XOkh/wE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xLFsU+ze8ckwBqHsHqq2pBptDUrdFlE+4KQ35YxjI0IdWKuBDBSp7/lzsjgzAc0ep
 MFu9c7KCbIr1ceyZ6AIC4vgX888Za+NXjnX4Ldenf3HRKogHLz6ZTe6cMjHuX7gwu5
 OTLWpeImXMPet7KnhjnTCaUAnfHYNPwCw4gSGVPM=
From: Will Deacon <will@kernel.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 3/8] iommu/io-pgtable-arm: Ensure non-cacheable mappings are
 Outer Shareable
Date: Fri, 10 Jan 2020 15:28:47 +0000
Message-Id: <20200110152852.24259-4-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110152852.24259-1-will@kernel.org>
References: <20200110152852.24259-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_072902_810968_2237B01A 
X-CRM114-Status: GOOD (  12.15  )
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
Cc: Will Deacon <will@kernel.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 kernel-team@android.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Armv7 ARM states that Normal, Non-cacheable mappings must explicitly
be marked as Outer Shareable in order to avoid UNPREDICTABLE behaviour:

  | Overlaying the shareability attribute (B3-1377, ARM DDI 0406C.c)
  |
  | A memory region with a resultant memory type attribute of Normal, and
  | a resultant cacheability attribute of Inner Non-cacheable, Outer
  | Non-cacheable, must have a resultant shareability attribute of Outer
  | Shareable, otherwise shareability is UNPREDICTABLE

Although this requirement doesn't appear to exist in the Armv8 docs,
where the 'SH' field is simply ignored in this case, it's
straightforward enough to set it here.

Cc: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Will Deacon <will@kernel.org>
---
 drivers/iommu/io-pgtable-arm.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index ab440b52a5f4..4b437ead2300 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -303,9 +303,8 @@ static void __arm_lpae_init_pte(struct arm_lpae_io_pgtable *data,
 
 	if (data->iop.fmt != ARM_MALI_LPAE)
 		pte |= ARM_LPAE_PTE_AF;
-	pte |= ARM_LPAE_PTE_SH_IS;
-	pte |= paddr_to_iopte(paddr, data);
 
+	pte |= paddr_to_iopte(paddr, data);
 	__arm_lpae_set_pte(ptep, pte, &data->iop.cfg);
 }
 
@@ -463,6 +462,11 @@ static arm_lpae_iopte arm_lpae_prot_to_pte(struct arm_lpae_io_pgtable *data,
 	if (prot & IOMMU_NOEXEC)
 		pte |= ARM_LPAE_PTE_XN;
 
+	if (prot & IOMMU_CACHE)
+		pte |= ARM_LPAE_PTE_SH_IS;
+	else
+		pte |= ARM_LPAE_PTE_SH_OS;
+
 	return pte;
 }
 
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
