Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9262E69F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 22:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZooXboQ7yblX0zNX5cgMysBPiNrxidXp/p2MR68nPcE=; b=Ddr
	noeqUs9bFGgriTSmNT6vCkuuyZBRHC+DpZ+MpwkK2yxP4X0x2jGho+96MarvK9pRH1rSegeaMZO//
	Pi/pk8e4QpWIt1u8REsXmhSNPeetZje0DXCD3kq8lb8zKBwjFd6tVo0W5l0X/ILy/+B6vEo6+bpBN
	B+uz/kIzEgDhrStk6tVj3Te5GDnNDDX5CtE9CaYQ0qikd9uMk6y39QKAD6VvCQVqWOpbpVf9ysLej
	1qNswIXnBl8MXpmyzKvl3nCeYk95L6QLeBE1/zbDWLMEmPwKFwVNvJWT2DZ/4eyQYZVYxBJz7SqbQ
	ZB46FmsqnMgbP23qcyAc7Rl/vXAKnfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5bZ-0007Ll-Oj; Wed, 29 May 2019 20:55:25 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5bI-0006vf-Pz
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 20:55:10 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 45E0360A4E; Wed, 29 May 2019 20:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559163306;
 bh=a10cqXD3K1rvMJw3L43nt+iaIhgdpjlzVZD15xJBhaA=;
 h=From:To:Cc:Subject:Date:From;
 b=Vp0ytwik6JEWAQFO/yG5VFu3Z6MkCfPENawBVa/y59bquj5SpgduvRjs2xXk0Pdrg
 xAShGzTeW+ZhTTQJhO/ke4tluOhH90QajK5uXiU5Odl6uJsGHhWHgplxm1hmnN+M9s
 WYMKWEjF49mjefdBuETfWF9op/mMPhoYsCjvOGFs=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 00F036030E;
 Wed, 29 May 2019 20:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559163304;
 bh=a10cqXD3K1rvMJw3L43nt+iaIhgdpjlzVZD15xJBhaA=;
 h=From:To:Cc:Subject:Date:From;
 b=cSnhvA7BCJGATHq0sbtLanP6Lv34+whQEyH5M/1UWMBpLxrtk5CUaKV7c2SE1lSQd
 3/RMJ4i5inUbtIPaeQtlZgTz/sjprVqxt79t2tdd0hrHLlltv1Ng8V263HFJzEQIKv
 05ODYE8MeXimWoQrEpyB//MZ6ROo8rVnPKiBQOC0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 00F036030E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: [PATCH v3 00/16] drm/msm: Per-instance pagetable support
Date: Wed, 29 May 2019 14:54:36 -0600
Message-Id: <1559163292-4792-1-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_135509_024793_8710B1FF 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, dianders@chromium.org,
 Wen Yang <wen.yang99@zte.com.cn>, Rob Herring <robh@kernel.org>,
 Jonathan Marek <jonathan@marek.ca>, jean-philippe.brucker@arm.com,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Mamta Shukla <mamtashukla555@gmail.com>, Kees Cook <keescook@chromium.org>,
 linux-arm-msm@vger.kernel.org, Sharat Masetty <smasetty@codeaurora.org>,
 Zhen Lei <thunder.leizhen@huawei.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 hoegsberg@google.com, Thomas Zimmermann <tzimmermann@suse.de>,
 Robin Murphy <robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is v3 of the per-instance pagetable support. Biggest change in this
revision is moving nearly all of the split pagetable support into
io-pgtable-arm and setting up specific ops to handle the unique behavior
of the split pagetables. Now that I've spent some time with it, I like how
it turned out.

For background:

Per-instance pagetables allow the target GPU driver to create and manage
an individual pagetable for each file descriptor instance and switch
between them asynchronously using the GPU to reprogram the pagetable
registers on the fly.

Most of the heavy lifting for this is done in the arm-smmu-v2 driver by
taking advantage of the newly added multiple domain API. The first patch in the
series allows opted-in clients to direct map a device with
iommu_request_dm_for_dev(). This bypasses the DMA domain creation in the IOMMU
core which serves several purposes for the GPU by skipping the otherwise unused
DMA domain and also keeping context bank 0 unused on the hardware (for better or
worse, the GPU is hardcoded to only use context bank 0 for switching).

The next several patches enable split pagetable support. This is used to map
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

Jordan Crouse (16):
  iommu/arm-smmu: Allow client devices to select direct mapping
  iommu: Add DOMAIN_ATTR_SPLIT_TABLES
  iommu/io-pgtable-arm: Add support for AARCH64 split pagetables
  iommu/arm-smmu: Add support for DOMAIN_ATTR_SPLIT_TABLES
  iommu: Add DOMAIN_ATTR_PTBASE
  iommu/arm-smmu: Add auxiliary domain support for arm-smmuv2
  drm/msm/adreno: Enable 64 bit mode by default on a5xx and a6xx targets
  drm/msm: Print all 64 bits of the faulting IOMMU address
  drm/msm: Pass the MMU domain index in struct msm_file_private
  drm/msm/gpu: Move address space setup to the GPU targets
  drm/msm: Add support for IOMMU auxiliary domains
  drm/msm: Add a helper function for a per-instance address space
  drm/msm: Add support to create target specific address spaces
  drm/msm/gpu: Add ttbr0 to the memptrs
  drm/msm/a6xx: Support per-instance pagetables
  drm/msm/a5xx: Support per-instance pagetables

 drivers/gpu/drm/msm/adreno/a2xx_gpu.c     |  37 +++--
 drivers/gpu/drm/msm/adreno/a3xx_gpu.c     |  50 ++++--
 drivers/gpu/drm/msm/adreno/a4xx_gpu.c     |  51 ++++--
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c     | 163 ++++++++++++++++++-
 drivers/gpu/drm/msm/adreno/a5xx_gpu.h     |  19 +++
 drivers/gpu/drm/msm/adreno/a5xx_preempt.c |  70 ++++++--
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c     | 166 ++++++++++++++++++-
 drivers/gpu/drm/msm/adreno/a6xx_gpu.h     |   1 +
 drivers/gpu/drm/msm/adreno/adreno_gpu.c   |   7 -
 drivers/gpu/drm/msm/msm_drv.c             |  25 ++-
 drivers/gpu/drm/msm/msm_drv.h             |   5 +
 drivers/gpu/drm/msm/msm_gem.h             |   2 +
 drivers/gpu/drm/msm/msm_gem_submit.c      |  13 +-
 drivers/gpu/drm/msm/msm_gem_vma.c         |  53 +++---
 drivers/gpu/drm/msm/msm_gpu.c             |  59 +------
 drivers/gpu/drm/msm/msm_gpu.h             |   3 +
 drivers/gpu/drm/msm/msm_iommu.c           |  99 +++++++++++-
 drivers/gpu/drm/msm/msm_mmu.h             |   4 +
 drivers/gpu/drm/msm/msm_ringbuffer.h      |   1 +
 drivers/iommu/arm-smmu.c                  | 176 ++++++++++++++++++--
 drivers/iommu/io-pgtable-arm.c            | 261 +++++++++++++++++++++++++++---
 drivers/iommu/io-pgtable.c                |   1 +
 include/linux/io-pgtable.h                |   2 +
 include/linux/iommu.h                     |   2 +
 24 files changed, 1082 insertions(+), 188 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
