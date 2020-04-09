Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 823CF1A3D05
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 01:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=96E7hRrAiVqN+MwVJKQdkI9+VpTJtuUN/0FAB+1qdow=; b=kYJ
	d52NABWj+auZNkswKTXW9Oa0Yivm21DjSE5pvCxCg2PuRFnuckC68P12qVaOh98jBRGWpzLOKOVjD
	JftWABLbH09K0UjrkyKUHIobtS2g0KDVUAlqcfkZYazTAbwqqtO8S640SbPl9AxyLd/EDihhUU5BD
	p+R2/59B7a613/t2mEx00scJEhqBiA+kybKyiRdJ3Arb7YCNjazcKROYmcotdX67m53bzglBlVxPv
	815j1/VzTdWKXyhQDda4OJYjjT5G1v39YzoRjSuaxRi1wyggvFehgx+CweQeT4rIhyVv2UmOp+X1k
	f8rOw39uEGoLAHyujHBQo3aLk8PAPzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMghj-0002od-5l; Thu, 09 Apr 2020 23:35:27 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMggV-0007yc-HF
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 23:34:15 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586475253; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=HLu3LXKVdwRi2myzF6VISXReouVgdhBst/ZOPq5Z52I=;
 b=aSCoDfqnEjTAPa3ifQF2V6B7Xb2P50auWyi/XS3ALvzUeOGHUcSNg9BtPNKbZVQFWHFocw6s
 Epr58NzS9KmUj/7K+7lPc/27XisFiHirzaRiLpnafn5xqEr/QFoOBasd6C6eTvQEOmEyQfPV
 qzmgxQdnmwbLwIolss+dE1HA+fc=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8fb0e9.7f8d5d768810-smtp-out-n02;
 Thu, 09 Apr 2020 23:34:01 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 31E0DC58A2E; Thu,  9 Apr 2020 23:33:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from localhost.localdomain (c-71-237-101-98.hsd1.co.comcast.net
 [71.237.101.98])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A0FF5C433D2;
 Thu,  9 Apr 2020 23:33:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A0FF5C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v6 0/5] iommu/arm-smmu: Split pagetable support for arm-smmu-v2
Date: Thu,  9 Apr 2020 17:33:45 -0600
Message-Id: <20200409233350.6343-1-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_163414_125523_F901F0BF 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sam Ravnborg <sam@ravnborg.org>, Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 David Airlie <airlied@linux.ie>, Akhil P Oommen <akhilpo@codeaurora.org>,
 dri-devel@lists.freedesktop.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Wen Yang <wen.yang99@zte.com.cn>,
 will@kernel.org, Joerg Roedel <joro@8bytes.org>,
 Ben Dooks <ben.dooks@codethink.co.uk>, linux-arm-kernel@lists.infradead.org,
 Brian Masney <masneyb@onstation.org>, freedreno@lists.freedesktop.org,
 Joerg Roedel <jroedel@suse.de>, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-arm-msm@vger.kernel.org, Sharat Masetty <smasetty@codeaurora.org>,
 robin.murphy@arm.com, Abhinav Kumar <abhinavk@codeaurora.org>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 zhengbin <zhengbin13@huawei.com>, Rob Clark <robdclark@gmail.com>,
 tongtiangen <tongtiangen@huawei.com>, Daniel Vetter <daniel@ffwll.ch>,
 Drew Davenport <ddavenport@chromium.org>,
 Wambui Karuga <wambui.karugax@gmail.com>, Enrico Weigelt <info@metux.net>,
 Georgi Djakov <georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is another iteration for the split pagetable support based on the
suggestions from Robin and Will [1].

Background: In order to support per-context pagetables the GPU needs to enable
split tables so that we can store global buffers in the TTBR1 space leaving the
GPU free to program the TTBR0 register with the address of a context specific
pagetable.

If the DOMAIN_ATTR_SPLIT_TABLES attribute is set on the domain before attaching,
the context bank assigned to the domain will be programmed to allow translations
in the TTBR1 space. Translations in the TTBR0 region will be disallowed because,
as Robin pointe out, having a un-programmed TTBR0 register is dangerous.

The driver can determine if TTBR1 was successfully programmed by querying
DOMAIN_ATTR_SPLIT_TABLES after attaching. The domain geometry will also be
updated to reflect the virtual address space for the TTBR1 range.

Upcoming changes will allow auxiliary domains to be attached to the device which
will enable and program TTBR0.

This patchset is based on top of linux-next-20200409

Change log:

v6: Cleanups for the arm-smmu TTBR1 patch from Will Deacon
v4: Only program TTBR1 when split pagetables are requested. TTBR0 will be
enabled later when an auxiliary domain is attached
v3: Remove the implementation specific and make split pagetable support
part of the generic configuration

[1] https://lists.linuxfoundation.org/pipermail/iommu/2020-January/041373.html


Jordan Crouse (5):
  iommu: Add DOMAIN_ATTR_SPLIT_TABLES
  iommu/arm-smmu: Add support for TTBR1
  drm/msm: Attach the IOMMU device during initialization
  drm/msm: Refactor address space initialization
  drm/msm/a6xx: Support split pagetables

 drivers/gpu/drm/msm/adreno/a2xx_gpu.c    | 16 ++++++++
 drivers/gpu/drm/msm/adreno/a3xx_gpu.c    |  1 +
 drivers/gpu/drm/msm/adreno/a4xx_gpu.c    |  1 +
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c    |  1 +
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c    | 51 ++++++++++++++++++++++++
 drivers/gpu/drm/msm/adreno/adreno_gpu.c  | 23 ++++++++---
 drivers/gpu/drm/msm/adreno/adreno_gpu.h  |  8 ++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c  | 18 +++------
 drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c | 18 ++++-----
 drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c |  4 --
 drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c | 18 ++++-----
 drivers/gpu/drm/msm/msm_drv.h            |  8 +---
 drivers/gpu/drm/msm/msm_gem_vma.c        | 36 +++--------------
 drivers/gpu/drm/msm/msm_gpu.c            | 49 +----------------------
 drivers/gpu/drm/msm/msm_gpu.h            |  4 +-
 drivers/gpu/drm/msm/msm_gpummu.c         |  6 ---
 drivers/gpu/drm/msm/msm_iommu.c          | 18 +++++----
 drivers/gpu/drm/msm/msm_mmu.h            |  1 -
 drivers/iommu/arm-smmu.c                 | 48 ++++++++++++++++++----
 drivers/iommu/arm-smmu.h                 | 24 ++++++++---
 include/linux/iommu.h                    |  2 +
 21 files changed, 200 insertions(+), 155 deletions(-)

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
