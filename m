Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB5814C2D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 23:16:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mH6DBZFlAoXvS7b76WDun9jTmc20PX21psID4ElBJu8=; b=NRi
	z7lNaMh3I3J4SoxigDb9VB4wo+ptH8JR8rT+jdkZgt+7nbVXd7f377AKf/+GVMfniaAUgl/3bTaPY
	UpgScfW69viXVtZIJxqF5TXfflLVX7XA9cgFIWVytaKm8bk68eaZrI/T/eLbcWrllQBMerCMSLpME
	uVd8mQVYU0UcNYPio1mfqOMhqR0TLKjI+uiC7eQ5v+4BgIXMxUtqe4VnsZlJUaIEjDeJjZPgQZMxv
	svOcAOsBXR1wKTL/AOnTDPZo7BSNJ+bMPY51674xwnvO7tU84KtElOXLjFJ+8yEs4kjglRtaXR5gW
	xF91btzdlZvLFi9YKU9Xtil19wF4tUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwZA0-0002qI-JV; Tue, 28 Jan 2020 22:16:40 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwZ9h-0002pT-Vm
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 22:16:23 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580249782; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=i+aFwz/XZq1hLfURdhwYcNPvIQ+jYpVpqGRNNihkjB8=;
 b=rGm3EnZJitouALoI2igkgLLBOUzRizIQtRBNcXGOJkXs8Zp1DUw/cRLsoaGktRQrsa8ZfLez
 yf1FNI9keLGhh0yrHdcq71VttdKyClwEaPcVzUnm6ZAt2hWfIti3R0Lqnmj9wealW0WLaefs
 nwgiNNdjbontsABm5BvxoNSsJHc=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e30b2b2.7f4d058e8228-smtp-out-n01;
 Tue, 28 Jan 2020 22:16:18 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B18B8C447A3; Tue, 28 Jan 2020 22:16:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B3BD1C433CB;
 Tue, 28 Jan 2020 22:16:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B3BD1C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v1 0/6] iommu/arm-smmu: Auxiliary domain and per instance
 pagetables
Date: Tue, 28 Jan 2020 15:16:04 -0700
Message-Id: <1580249770-1088-1-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_141622_398516_EC9FD909 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: freedreno@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 will@kernel.org, Sharat Masetty <smasetty@codeaurora.org>,
 robin.murphy@arm.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
 Sean Paul <sean@poorly.run>, Joerg Roedel <joro@8bytes.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some clients have a requirement to sandbox memory mappings for security and
advanced features like SVM. This series adds support to enable per-instance
pagetables as auxiliary domains in the arm-smmu driver and adds per-instance
support for the Adreno GPU.

This patchset builds on the split pagetable support from [1]. In that series the
TTBR1 address space is programmed for the default ("master") domain and enables
support for auxiliary domains. Each new auxiliary domain will allocate a
pagetable which the leaf driver can program through the usual IOMMU APIs. It can
also query the physical address of the pagetable.

In the SMMU driver the first auxiliary domain will enable and program the TTBR0
space. Subsequent auxiliary domains won't touch the hardware. Similarly when
the last auxiliary domain is detached the TTBR0 region will be disabled again.

In the Adreno driver each new file descriptor instance will create a new
auxiliary domain / pagetable and use it for all the memory allocations of that
instance. The driver will query the base address of each pagetable and switch
them dynamically using the built-in table switch capability of the GPU. If any
of these features fail the driver will automatically fall back to using the
default (global) pagetable.

This patchset had previously been submitted as [2] but has been significantly
modified since then.

Jordan

[1] https://lists.linuxfoundation.org/pipermail/iommu/2020-January/041438.html
[2] https://patchwork.freedesktop.org/series/57441/


Jordan Crouse (6):
  iommu: Add DOMAIN_ATTR_PTBASE
  arm/smmu: Add auxiliary domain support for arm-smmuv2
  drm/msm/adreno: ADd support for IOMMU auxiliary domains
  drm/msm: Add support to create target specific address spaces
  drm/msm/gpu: Add ttbr0 to the memptrs
  drm/msm/a6xx: Support per-instance pagetables

 drivers/gpu/drm/msm/adreno/a6xx_gpu.c |  89 +++++++++++++
 drivers/gpu/drm/msm/msm_drv.c         |  22 +++-
 drivers/gpu/drm/msm/msm_gpu.h         |   2 +
 drivers/gpu/drm/msm/msm_iommu.c       |  72 +++++++++++
 drivers/gpu/drm/msm/msm_mmu.h         |   3 +
 drivers/gpu/drm/msm/msm_ringbuffer.h  |   1 +
 drivers/iommu/arm-smmu.c              | 230 +++++++++++++++++++++++++++++++---
 drivers/iommu/arm-smmu.h              |   3 +
 include/linux/iommu.h                 |   2 +
 9 files changed, 405 insertions(+), 19 deletions(-)

-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
