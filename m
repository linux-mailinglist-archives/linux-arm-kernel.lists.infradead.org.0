Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418001DD497
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 19:40:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hrn4OKsF2mie5arAtmChgtTa1PUXYvAQiQ0Vcn5+UGI=; b=i7v7KbULGKX1j0
	FFMuVvPaGrOIm3olTrmAyOUQFeCNZ9MkDICVA4E7LA9QM0mTmXzJTnlvGol7EPZnb3TMyRkF8i74s
	KrQuWoXv41o7pYyO+DNkCOUzhui8TLh8U2ikpqRxFBj67B4vmlW3b+8vJ9qz4l+9q1K50m8GkBy+n
	JyDCkBOqsQBQPBijIMKb4K8kYOeX4Ar2l1fx0741hYKFrl1Mo9MO3VnBObOQ0m2T3IeoA3cIi6b26
	xSEm8Z+bmnSUt1ijSWBAHxNBxmVdXFHX6Jd3FGeNFPGIEyw7s87yT7obcqmE1gQPgZCxGTFv6i8Fr
	1R0dGn+z9Qki5qcYhFxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbpAn-0005FY-6S; Thu, 21 May 2020 17:40:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbpAb-0005EJ-HQ
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 17:39:50 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7A27207F7;
 Thu, 21 May 2020 17:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590082788;
 bh=rZ7OTMNu5T3UCgib1e3eEgYYpyAWOaCd5OohlJnEMDo=;
 h=Date:From:To:Cc:Subject:From;
 b=oEgGuQeONzen71ym3SmfwHbStp6Iv/qiCn0Zlhowk7y9UaPuWTV7/MDErl+ZfoI92
 hKW2W7RzfGMoHlfcHHFFWSidXGbZ61miQMpUe5ThBpYwJXb506hwMe4IX82saoP6tl
 9OQNYX8y1p83Kx0VoFMpCjUZprB7ll8BGFkU8EQw=
Date: Thu, 21 May 2020 18:39:44 +0100
From: Will Deacon <will@kernel.org>
To: joro@8bytes.org
Subject: [GIT PULL] iommu/arm-smmu: Updates for 5.8
Message-ID: <20200521173944.GM6608@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_103949_598890_0F0F310E 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-team@android.com, iommu@lists.linux-foundation.org,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joerg,

Please pull these Arm SMMU updates for 5.8. The branch is based on your
'core' branch from a little while ago.

Summary in the tag.

Cheers,

Will

--->8

The following changes since commit 1b032ec1ecbce6047af7d11c9db432e237cb17d8:

  iommu: Unexport iommu_group_get_for_dev() (2020-05-05 14:36:14 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git tags/arm-smmu-updates

for you to fetch changes up to 0299a1a81ca056e79c1a7fb751f936ec0d5c7afe:

  iommu/arm-smmu-v3: Manage ASIDs with xarray (2020-05-21 14:54:06 +0100)

----------------------------------------------------------------
Arm SMMU updates for 5.8

- Avoid mapping reserved MMIO space on SMMUv3, so that it can be claimed
  by the PMU driver

- Use xarray to manage ASIDs on SMMUv3

- Reword confusing shutdown message

- DT compatible string updates

- Allow implementations to override the default domain type

----------------------------------------------------------------
Andre Przywara (1):
      dt-bindings: arm-smmu: Allow mmu-400, smmu-v1 compatible

Chen Zhou (1):
      iommu/arm-smmu-v3: remove set but not used variable 'smmu'

Jean-Philippe Brucker (2):
      iommu/arm-smmu-v3: Don't reserve implementation defined register space
      iommu/arm-smmu-v3: Manage ASIDs with xarray

Jordan Crouse (1):
      iommu/arm-smmu: Allow client devices to select direct mapping

Sai Prakash Ranjan (3):
      iommu/arm-smmu: Make remove callback message more informative
      iommu: arm-smmu-impl: Convert to a generic reset implementation
      iommu/arm-smmu: Implement iommu_ops->def_domain_type call-back

Sibi Sankar (3):
      dt-bindings: remoteproc: qcom: Add iommus property
      arm64: dts: qcom: sdm845-cheza: Add iommus property
      iommu/arm-smmu-qcom: Request direct mapping for modem device

 .../devicetree/bindings/iommu/arm,smmu.yaml        |  4 +-
 .../devicetree/bindings/remoteproc/qcom,q6v5.txt   |  3 +
 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi         |  5 ++
 drivers/iommu/arm-smmu-impl.c                      |  8 ++-
 drivers/iommu/arm-smmu-qcom.c                      | 37 ++++++++++++-
 drivers/iommu/arm-smmu-v3.c                        | 64 +++++++++++++++++-----
 drivers/iommu/arm-smmu.c                           | 14 ++++-
 drivers/iommu/arm-smmu.h                           |  1 +
 8 files changed, 113 insertions(+), 23 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
