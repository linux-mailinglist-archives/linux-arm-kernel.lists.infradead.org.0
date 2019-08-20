Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E44E968F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 21:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gs3LMKpav4UB620/tMlxXriu3e3wy8VEQUsbddwcMcE=; b=Rbw
	GF33tXPequzRJ8vyjfxENCQg3zRp1hk6Mm9m33VWh71un8ibMczWuI7sH+kgqN5BSmHgh/to9Dp3u
	S4kVsxenrQTFKSk4s763z2Ino4L2t3TNlgMEoYL4W1huLD6Tbt+Wa1QXmtYE18t4sNgeHBF9BLbdi
	/mtSTgSOGyo1hUEyna+3hwby2SAt551zWy8pG+ytsq8fBsHmG39wXV6zv0P0KVvZINBMmzLHgAemn
	ItN6Lw2jbPGTd04KXdub8gmbDteB7nHrWZczBgeCqjlql2cWf0V6K2bkVGrgh1Idn+SAWSpPK3WR8
	OD8KAxBWWMCuqcCpPJuRtYmJX93xusA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i09TF-0004r6-Cp; Tue, 20 Aug 2019 19:07:05 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i09Ss-0004gI-DG
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 19:06:44 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B107F609EF; Tue, 20 Aug 2019 19:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566328001;
 bh=JVOA+N1GY0FZQY7fgH8GBUcQtg09RuZemNa9uGbRUB4=;
 h=From:To:Cc:Subject:Date:From;
 b=cGY7R235YpB41zyv7M/1ugHWDI/ziFKNIhV41PxzgJpu41F6SGQDPsnKwT6v84uoQ
 fwqeJ4SiPMJHdMcNS8NqeMHuTc+Y0mkoUoewjphPYIoFjfs3bE9TnJaNA0KhyWBgjr
 ByKKqzNSXQ8/sVSsM+l2UJjMV1ECTRqOyl5Afywc=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E2A2A608FC;
 Tue, 20 Aug 2019 19:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566327999;
 bh=JVOA+N1GY0FZQY7fgH8GBUcQtg09RuZemNa9uGbRUB4=;
 h=From:To:Cc:Subject:Date:From;
 b=M3Z+8dS+lEFL8B05ojyqH3qIFG+culCff2FSu0EKY/ry/7K1KKZg7C+hKtsTsrbnv
 r7SpMsyJIV9oQxPSzEoaALo1KWXvI5skX+lAVXXVB5SrxlSgeY4eBsNUb67pkptlr6
 71/65oHOvbmE6FBMuD0JfkDviPqBoXzhgDZmtu5M=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E2A2A608FC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: [PATCH 0/7] iommu/arm-smmu: Split pagetable support for Adreno GPUs
Date: Tue, 20 Aug 2019 13:06:25 -0600
Message-Id: <1566327992-362-1-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_120642_495599_4F217516 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Will Deacon <will@kernel.org>, Wen Yang <wen.yang99@zte.com.cn>,
 Jonathan Marek <jonathan@marek.ca>, Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org, Mamta Shukla <mamtashukla555@gmail.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Fritz Koenig <frkoenig@google.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, Sharat Masetty <smasetty@codeaurora.org>,
 Abhinav Kumar <abhinavk@codeaurora.org>,
 Jeykumar Sankaran <jsanka@codeaurora.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>, Bruce Wang <bzwang@chromium.org>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Rob Clark <robdclark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Robin Murphy <robin.murphy@arm.com>, Georgi Djakov <georgi.djakov@linaro.org>,
 Sravanthi Kollukuduru <skolluku@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is another iteration to support split pagetables for Adreno GPUs as part of
an incremental process to enable per-context pagetables.

In order to support per-context pagetables the GPU needs to enable split
pagetables so that we can store the global buffers in the TTBR1 space leaving
the GPU free to program the TTBR0 register with the page address of a context
specific pt.

Previous revisions of this series can be found at [1] and [2].

This iteration is built on top of the arm-smmu-impl and arm-smmu-v2
rework code from Robin Murphy [3] and [4].

This code is based on the realization that when split pagetables are enabled the
configuration for the T1 address space is identical to that of the T0 space,
so we can just take the TCR configuration provided by io-pgtable, duplicate it
and shift it by 16 bits.

Since the current split pagetable implementation is specific to the Adreno
GPUs we can also take a small shortcut and only allow split pagetables for SMMUs
with a 49 bit upstream bus which allows us to use the default configuration
for the sign extension bit and we can avoid a lot of extra code to handle
different upstream bus sizes that will never get used.

The first patch implements the split pagetable support for arm-smmu-v2.

The second adds a SMMU model for the Adreno GPU SMMU and enables the split
pagetables if conditions warrant.

The 3rd and 4th patches add a domain attribute to query the status of split
pagetables.

The remaining patches modify drm/msm slightly to allow a6xx targets to
recognize if split pagetables are enabled and adjust the address space
accordingly.

This series only includes support for split pagetables because I wanted to get
this out for discussion and I haven't ported over the aux domain code to this
kernel version, but I don't suspect it will end up being much different than
previous versions [5].

[1] https://patchwork.freedesktop.org/series/63403/
[2] https://patchwork.freedesktop.org/series/64874/
[3] https://lists.linuxfoundation.org/pipermail/iommu/2019-August/037905.html
[4] https://lists.linuxfoundation.org/pipermail/iommu/2019-August/038244.html
[5] https://patchwork.freedesktop.org/patch/307601/


Jordan Crouse (7):
  iommu/arm-smmu: Support split pagetables
  dt-bindings: arm-smmu: Add Adreno GPU variant
  iommu/arm-smmu: Add a SMMU variant for the Adreno GPU
  iommu: Add DOMAIN_ATTR_SPLIT_TABLES
  iommu/arm-smmu: Support DOMAIN_ATTR_SPLIT_TABLES
  drm/msm: Create the msm_mmu object independently from the address
    space
  drm/msm: Use per-target functions to set up address spaces

 .../devicetree/bindings/iommu/arm,smmu.txt         |  7 +++
 drivers/gpu/drm/msm/adreno/a2xx_gpu.c              | 28 +++++++++++
 drivers/gpu/drm/msm/adreno/a3xx_gpu.c              |  1 +
 drivers/gpu/drm/msm/adreno/a4xx_gpu.c              |  1 +
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c              |  1 +
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c              | 56 ++++++++++++++++++++++
 drivers/gpu/drm/msm/adreno/adreno_gpu.c            | 43 ++++++++++++++---
 drivers/gpu/drm/msm/adreno/adreno_gpu.h            |  5 ++
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            | 16 ++++---
 drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c           | 16 ++++---
 drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c           |  4 --
 drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c           | 13 ++++-
 drivers/gpu/drm/msm/msm_drv.h                      |  8 +---
 drivers/gpu/drm/msm/msm_gem_vma.c                  | 30 ++----------
 drivers/gpu/drm/msm/msm_gpu.c                      | 51 ++------------------
 drivers/gpu/drm/msm/msm_gpu.h                      |  4 +-
 drivers/iommu/arm-smmu-impl.c                      | 15 ++++++
 drivers/iommu/arm-smmu.c                           | 46 ++++++++++++++++--
 drivers/iommu/arm-smmu.h                           |  2 +
 include/linux/iommu.h                              |  1 +
 20 files changed, 237 insertions(+), 111 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
