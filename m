Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 488AB598F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s/vK0Ykk2EdvdH/vkFqOI6YixrK80n/ZPvicWAE10f0=; b=DHRqENiQ3sFTdZ
	yXi8ipvWNMqLDDs7GMrZqqtmY3pAlMCouwoT62OyGAnVLfRBTHNUWSEfcQw7gIBV7oa4JGaID7g/H
	3aXMMVj4ezWI0FBgzk7H0CtqiO2EQMRZXtEeY7suIA7MbAUdWWmn4kvHya4Y6NrbVfc9GefT/l2u4
	CKKci547UT64fIX+laBDensWKlZv7qOmPE6jXv/pLFw8pyhYzuW73J3p6pfWJmWNKA8YpNm/NaNIp
	hleR0hn6W6co7N91C0sxg0GZzRHJek2QK6M5amxJzjERs55ivl2Bs31gjO0Jv6Np8fU1VjcEPJcxu
	irODyRGP16zy4dkD7QeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgogq-0002bg-SW; Fri, 28 Jun 2019 11:05:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgogP-0002Wg-JP
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:04:47 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A15F8208E3;
 Fri, 28 Jun 2019 11:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561719884;
 bh=StUx9PONOQCmZX0nAG2V/FqWNZznDR+tHYF35sxlupY=;
 h=Date:From:To:Cc:Subject:From;
 b=zGXGM3CsSPG8rNfZKBK+hI0oUX0Srt2iG3bKpubpstG79EChhiXX0vNyOqOCh4elU
 9CsLldWuDgRR1dDwFDGn0uMIPurfZrJq/OEtTkyt0pfdaOKWJlYHd0c6wAPHnOZ+it
 gg06ysEXhayOj5b5+T0iZkvolN3YABe2JhuT5H8Y=
Date: Fri, 28 Jun 2019 12:04:40 +0100
From: Will Deacon <will@kernel.org>
To: joro@8bytes.org
Subject: [GIT PULL] iommu/arm-smmu: Updates for 5.3
Message-ID: <20190628110440.piorghrmwrbitmtz@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_040446_072317_0C320106 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jean-philippe.brucker@arm.com, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joerg,

Please pull this handful of arm-smmu updates for 5.3. These changes include
support for the system cache present in some Qualcomm SoCs, better support
for non-coherent page-table walkers and a larger command queue size for
SMMUv3 implementations in preparation for some optimisations I've been
working on.

Thanks,

Will

--->8

The following changes since commit cd6c84d8f0cdc911df435bb075ba22ce3c605b07:

  Linux 5.2-rc2 (2019-05-26 16:49:19 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git for-joerg/arm-smmu/updates

for you to fetch changes up to 9e6ea59f3ff37192fd7aec7821dca6ece629b7d0:

  iommu/io-pgtable: Support non-coherent page tables (2019-06-25 13:26:47 +0100)

----------------------------------------------------------------
Bjorn Andersson (1):
      iommu/io-pgtable: Support non-coherent page tables

Vivek Gautam (1):
      iommu/io-pgtable-arm: Add support to use system cache

Will Deacon (2):
      iommu/arm-smmu-v3: Increase maximum size of queues
      iommu/io-pgtable: Replace IO_PGTABLE_QUIRK_NO_DMA with specific flag

 drivers/iommu/arm-smmu-v3.c        | 58 +++++++++++++++++++++++++-------------
 drivers/iommu/arm-smmu.c           |  4 +--
 drivers/iommu/io-pgtable-arm-v7s.c | 17 ++++++-----
 drivers/iommu/io-pgtable-arm.c     | 40 ++++++++++++++++----------
 drivers/iommu/ipmmu-vmsa.c         |  1 +
 include/linux/io-pgtable.h         | 11 +++-----
 include/linux/iommu.h              |  6 ++++
 7 files changed, 86 insertions(+), 51 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
