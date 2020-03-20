Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3B918D307
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 16:35:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WRETn8VRa+iJg3NveNjetBVNkTp6Nt4n9LZo2m06YLQ=; b=NGgZyUTFQimbso
	aG+64Dh7Ka1qPYXhtjqc7mYaPxXiI2DP2TwSG30q29JBGkO+6ZZSdekDI8UohGHhL/Tfu0MFEcO3X
	RvVQAs18rfH7+W4loMFCuXuf2VsO3ToUBBVwfCyuW88bxEww2lRg4yYWknStE9jKuGuF/P/ooxaSO
	V73U+hWuAsRruklVWDQkPZ0KYFWNxn31d6dPJUnvEuHnQ3M5F9NMEABgTX/OI08dz8unKbGrTvc20
	qhVFS40xswbo87be7MTzqxV2+1wj6c+1xW39hU/1A4PPM6ESpJuY9vmzK47QitFjHV53OLVsNrzz/
	gFs6KY7o/YdvxSk/5gZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFJgR-0005iy-PS; Fri, 20 Mar 2020 15:35:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFJgC-0005gR-KD
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 15:35:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 112912070A;
 Fri, 20 Mar 2020 15:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584718524;
 bh=PCMtCPWpgRJ4SJUtOrkrxxNkDVKdaN+ir2Ppk0Q6Dig=;
 h=Date:From:To:Cc:Subject:From;
 b=ZnbSRZUXjKZ/oVvf1zRUFVbw8Ehqux0gkX2zaKJ6khisHbkvmeQKxrZSGQOlzDSSI
 YcTff5BxuARj7/zu5Ezmam39siZsUv9vyI1A6SWob82GkM101PbnTp2/xzyW7N1e+7
 mSG/91kWrfvQPMlbptIWr8sBmadoiDDVb4f+SWkg=
Date: Fri, 20 Mar 2020 15:35:20 +0000
From: Will Deacon <will@kernel.org>
To: joro@8bytes.org
Subject: [GIT PULL] iommu/arm-smmu: Updates for 5.7
Message-ID: <20200320153519.GB6815@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_083524_689714_54E39B7F 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jean-philippe@linaro.org, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joerg,

Please pull these Arm SMMU updates for 5.7. The summary is in the tag (which
you may need to re-fetch if you've got my tree added as a remote).

Cheers,

Will

--->8

The following changes since commit f8788d86ab28f61f7b46eb6be375f8a726783636:

  Linux 5.6-rc3 (2020-02-23 16:17:42 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git tags/arm-smmu-updates

for you to fetch changes up to 6a481a95d4c198a2dd0a61f8877b92a375757db8:

  iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation support (2020-03-18 21:37:10 +0000)

----------------------------------------------------------------
Arm SMMU updates for 5.7

- Support for the TLB range invalidation command in SMMUv3.2

- Introduction of command batching helpers...

- ... which are then used to batch up CD and ATC invalidation

- Support for PCI PASID, along with necessary PCI symbol exports

- MAINTAINERS update to include DT binding docs

----------------------------------------------------------------
Jean-Philippe Brucker (5):
      PCI/ATS: Export symbols of PASID functions
      iommu/arm-smmu-v3: Add support for PCI PASID
      iommu/arm-smmu-v3: Write level-1 descriptors atomically
      iommu/arm-smmu-v3: Add command queue batching helpers
      iommu/arm-smmu-v3: Batch context descriptor invalidation

Rob Herring (2):
      iommu/arm-smmu-v3: Batch ATC invalidation commands
      iommu/arm-smmu-v3: Add SMMUv3.2 range invalidation support

Robin Murphy (1):
      MAINTAINERS: Cover Arm SMMU DT bindings

 MAINTAINERS                 |   1 +
 drivers/iommu/arm-smmu-v3.c | 204 ++++++++++++++++++++++++++++++++++++++------
 drivers/pci/ats.c           |   4 +
 3 files changed, 181 insertions(+), 28 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
