Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 605F72552C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PgdO//aneBZeYIQ/BsqTeGHZ4QgYks+ZiNcNHY9mvN8=; b=gFr
	5lovTcwjwq9pm9TD3AL72m5OUUvPgPUbUslKD0b21lL5RD/dzk13vRdCqYZmjMKypBeA8E9iMOHjZ
	LOP2Uu/mesJouZQnK0OdvuG36AohH51Eqn9ChBmm5leJnTitc+Oo9kTnYTZu4C+Z5Qo3L+CpPUI+r
	8IFLqG4M5Y7X88YcQvfK0Lm09jkSqZtBCEDeifZDp76lwYPv7ggjEucM2O0z2bQIb7W7OOpMpBSxe
	b571fdrOu9gUTQV++a/aV9c1Cbfuv6k0J0GTuh6U8L2xaNltjhRV7+QNbhXRkJ4LLKAmy0mKaOwLw
	1Ps2OvQjyrxmC7FC3XUsuEyKvm61uaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7PF-000062-G9; Tue, 21 May 2019 16:14:25 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7P7-00005X-0N
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:14:18 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6C1C36115D; Tue, 21 May 2019 16:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558455253;
 bh=XEaXjrXY1Q6Wd+gJ+WxNDOVUYRY8dVm52md5PI1E1n4=;
 h=From:To:Cc:Subject:Date:From;
 b=RZISNZwIizGwlfPPw/YgkxUmjm2OSM/nCTegzHE7zGXqp2TWs8Zr04J8LsRPReB35
 peLy4lh7T/rWPhrQBkiC1RaVzP8ArHgt3HjV0oDC5n/InZI2Kyr0af30lMQMClTQzG
 +9SS837APJMKUtg+D3UJEG6qPtCysFaG8WQbz+h4=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5E3EA6087F;
 Tue, 21 May 2019 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558455250;
 bh=XEaXjrXY1Q6Wd+gJ+WxNDOVUYRY8dVm52md5PI1E1n4=;
 h=From:To:Cc:Subject:Date:From;
 b=PSPgUd79z8v7c0MBhbxiaVungiKnYR6C62UdL/lcaxsCYzg1sTL8UQQvzS2QpH7Y+
 i4ep3OTg7o2XVCF85yUuw4mca3UjOup1LdccPZf9s6IwXvycn1zgXApCCMN+m5fxdr
 6hXcxWeBPpVqXI0L+6UU2qQ54AOiDhZZzZGaM2Go=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5E3EA6087F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: [PATCH v2 00/15] drm/msm: Per-instance pagetable support
Date: Tue, 21 May 2019 10:13:48 -0600
Message-Id: <1558455243-32746-1-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_091417_090044_9E6E7EDF 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Rob Clark <robdclark@gmail.com>, Kees Cook <keescook@chromium.org>,
 Jonathan Marek <jonathan@marek.ca>, jean-philippe.brucker@arm.com,
 linux-arm-msm@vger.kernel.org, Sharat Masetty <smasetty@codeaurora.org>,
 Will Deacon <will.deacon@arm.com>, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 David Airlie <airlied@linux.ie>, iommu@lists.linux-foundation.org,
 Mamta Shukla <mamtashukla555@gmail.com>, hoegsberg@google.com,
 Joerg Roedel <joro@8bytes.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel@ffwll.ch>, Sean Paul <sean@poorly.run>,
 Wen Yang <wen.yang99@zte.com.cn>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a refresh of the per-instance pagetable support for arm-smmu-v2 and the
MSM GPU driver. I think this is pretty mature at this point, so I've dropped the
RFC designation and ask for consideration for 5.3.

Per-instance pagetables allow the target GPU driver to create and manage
an individual pagetable for each file descriptor instance and switch
between them asynchronously using the GPU to reprogram the pagetable
registers on the fly.

Most of the heavy lifting for this is done in the arm-smmu-v2 driver by
taking advantage of the newly added multiple domain API. The first patch in the
series allows opted-in clients to create a default identity domain when the
IOMMU group for the SMMU device is created. This bypasses the DMA domain
creation in the IOMMU core which serves several purposes for the GPU by skipping
the otherwise  unused DMA domain and also keeping context bank 0 unused on the
hardware (for better or worse, the GPU is hardcoded to only use context bank 0
for switching).

The next two patches enable split pagetable support. This is used to map
global buffers for the GPU so we can safely switch the TTBR0 pagetable for the
instance.

The last two arm-smmu-v2 patches enable auxillary domain support. Again the
SMMU client can opt-in to allow auxiliary domains, and if enabled will create
a pagetable but not otherwise touch the hardware. The client can get the address
of the pagetable through an attribute to perform its own switching.

After the arm-smmu-v2 patches are more than several msm/gpu patches to allow
for target specific address spaces, enable 64 bit virtual addressing and
implement the mechanics of pagetable switching.

For the purposes of merging all the patches between

drm/msm/adreno: Enable 64 bit mode by default on a5xx and a6xx targets

and

drm/msm: Add support to create target specific address spaces

can be merged to the msm-next tree without dependencies on the IOMMU changes.
Only the last three patches will require coordination between the two areas.

Jordan Crouse (15):
  iommu/arm-smmu: Allow IOMMU enabled devices to skip DMA domains
  iommu: Add DOMAIN_ATTR_SPLIT_TABLES
  iommu/arm-smmu: Add split pagetable support for arm-smmu-v2
  iommu: Add DOMAIN_ATTR_PTBASE
  iommu/arm-smmu: Add auxiliary domain support for arm-smmuv2
  drm/msm/adreno: Enable 64 bit mode by default on a5xx and a6xx targets
  drm/msm: Print all 64 bits of the faulting IOMMU address
  drm/msm: Pass the MMU domain index in struct msm_file_private
  drm/msm/gpu: Move address space setup to the GPU targets
  drm/msm: Add a helper function for a per-instance address space
  drm/msm/gpu: Add ttbr0 to the memptrs
  drm/msm: Add support to create target specific address spaces
  drm/msm: Add support for IOMMU auxiliary domains
  drm/msm/a6xx: Support per-instance pagetables
  drm/msm/a5xx: Support per-instance pagetables

 drivers/gpu/drm/msm/adreno/a2xx_gpu.c     |  37 +++-
 drivers/gpu/drm/msm/adreno/a3xx_gpu.c     |  50 +++--
 drivers/gpu/drm/msm/adreno/a4xx_gpu.c     |  51 +++--
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c     | 163 +++++++++++++-
 drivers/gpu/drm/msm/adreno/a5xx_gpu.h     |  19 ++
 drivers/gpu/drm/msm/adreno/a5xx_preempt.c |  70 ++++--
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c     | 166 +++++++++++++-
 drivers/gpu/drm/msm/adreno/a6xx_gpu.h     |   1 +
 drivers/gpu/drm/msm/adreno/adreno_gpu.c   |   7 -
 drivers/gpu/drm/msm/msm_drv.c             |  25 ++-
 drivers/gpu/drm/msm/msm_drv.h             |   5 +
 drivers/gpu/drm/msm/msm_gem.h             |   2 +
 drivers/gpu/drm/msm/msm_gem_submit.c      |  13 +-
 drivers/gpu/drm/msm/msm_gem_vma.c         |  53 +++--
 drivers/gpu/drm/msm/msm_gpu.c             |  59 +----
 drivers/gpu/drm/msm/msm_gpu.h             |   3 +
 drivers/gpu/drm/msm/msm_iommu.c           |  99 ++++++++-
 drivers/gpu/drm/msm/msm_mmu.h             |   4 +
 drivers/gpu/drm/msm/msm_ringbuffer.h      |   1 +
 drivers/iommu/arm-smmu-regs.h             |  19 ++
 drivers/iommu/arm-smmu.c                  | 352 +++++++++++++++++++++++++++---
 drivers/iommu/io-pgtable-arm.c            |   3 +-
 drivers/iommu/iommu.c                     |  29 ++-
 include/linux/iommu.h                     |   5 +
 24 files changed, 1052 insertions(+), 184 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
