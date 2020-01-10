Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BB6137138
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:29:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Uz5VO+a/h5P4taGYbxV0ITKs499n78/n9OP7SUlDJVU=; b=peWEsTfdlvILD8
	UOgbIY4e6NN6VZHKRgnOlM5Yb1FhUur4FpWT5setGHBoO9LLsBdIZWtD21wfURWLgE7rl2p/jjUM+
	DvzE2JW9dNwEVGQ+vDZQupPE3TcOGZOrioh/qxzGFMqM+V962mTgQWqOhhol8fIbZsQGfIDTkRKQJ
	wiwIn140/i/06fk5M7OyJBV5uT02of+dS0fMG7pN4/IdS+2szvra6WQrFB8jYYpGV52L+qT4+u1Od
	fbpEudDceiMhDjAKjf3WraPa5HcIGBrUf0ye4IBK/TUksQpeXqogtbU43u81EeR1ilOgYPi1te8Kh
	aIEHp42hdza74o9SOm+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwDs-0001EW-Dy; Fri, 10 Jan 2020 15:29:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwDZ-0001DY-Kc
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:28:59 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35C6E2072E;
 Fri, 10 Jan 2020 15:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578670137;
 bh=ahdxfdIjALO4E1DfYPrQ3mWPi2V7mWynaKkIQzETaJ0=;
 h=From:To:Cc:Subject:Date:From;
 b=PLkuLRiHhENh4kbiHti7nMQR83afwfNZ1SCnF9R8bBSi/5+zaXkGEWh2ZFnR8fWGi
 0LVlLE1TFGJ4df+gdQzGuj0Fcf6kpQSBKB0r6Ubph2C2XR6+EGWYecSCV01RR5piEh
 jAj5CE4jIsyosrFSO+SusBszgYX5LYqbGhdEKSOA=
From: Will Deacon <will@kernel.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 0/8] Finish off the split page table prep work
Date: Fri, 10 Jan 2020 15:28:44 +0000
Message-Id: <20200110152852.24259-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_072857_701782_2989CA1C 
X-CRM114-Status: GOOD (  10.02  )
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

Hi all,

Last merge window, I merged most of the split page table prep work from Robin
[1], but there were a few patches left pending some rework. I think Robin was
hoping to get that done for 5.5, but what with the holidays falling like they
did and other committments, I've ended up picked up the bits that were left
over.

I'm pretty limited with regards to SMMU hardware on which I can test this lot,
so I might have broken something.

Applies against for-joerg/arm-smmu/updates.

Will

[1] https://lore.kernel.org/lkml/20191104202012.GN24909@willie-the-truck

Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Jordan Crouse <jcrouse@codeaurora.org>

--->8

Robin Murphy (3):
  iommu/io-pgtable-arm: Rationalise TTBRn handling
  iommu/io-pgtable-arm: Rationalise TCR handling
  iommu/io-pgtable-arm: Prepare for TTBR1 usage

Will Deacon (5):
  iommu/io-pgtable-arm: Support non-coherent stage-2 page tables
  iommu/io-pgtable-arm: Ensure non-cacheable mappings are Outer
    Shareable
  iommu/io-pgtable-arm: Ensure ARM_64_LPAE_S2_TCR_RES1 is unsigned
  iommu/arm-smmu: Rename public #defines under ARM_SMMU_ namespace
  iommu/io-pgtable-arm: Rationalise VTCR handling

 drivers/iommu/arm-smmu-impl.c      |   2 +-
 drivers/iommu/arm-smmu-v3.c        |  60 ++++----
 drivers/iommu/arm-smmu.c           | 171 ++++++++++++----------
 drivers/iommu/arm-smmu.h           | 228 ++++++++++++++++++-----------
 drivers/iommu/io-pgtable-arm-v7s.c |  23 ++-
 drivers/iommu/io-pgtable-arm.c     | 155 +++++++++-----------
 drivers/iommu/io-pgtable.c         |   2 +-
 drivers/iommu/ipmmu-vmsa.c         |   2 +-
 drivers/iommu/msm_iommu.c          |   4 +-
 drivers/iommu/mtk_iommu.c          |   4 +-
 drivers/iommu/qcom_iommu.c         |  25 ++--
 include/linux/io-pgtable.h         |  27 +++-
 12 files changed, 381 insertions(+), 322 deletions(-)

-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
