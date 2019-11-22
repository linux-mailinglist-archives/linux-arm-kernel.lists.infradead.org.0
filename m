Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5C5107B5E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 00:32:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6moP4jTMXrOmYr8FOgX/ySDpZDtcLEPltBAoCeyZ0ko=; b=H98
	6NMI9iF9fYn+p0zCDgEnGN+eHmSu24k3Gw1UmylTdzeLqgiQbNsRM56O4rO+gBLVEPaoiN9xOKa5r
	W/zoYcPwxSrKJfSWrIRqdIx9VV0CCM9tbWyNAdJ7NHZ6ImOHm3RHj2fNqDiCTvez46DgnxK4hm/rr
	XSBjtuM/9/kyZDthyEKip6G1dppy6NVICrGnRT8XGF96QRITMh7Mq4vgcySDDKjKTWemx4ZF8cIfv
	MjOeXGwQ5Qp34vDyrralmkhpqsGjKuNPecU/SnQXxMNCRx1D/xSgAguHifZS06NmXZPOmAd4of42y
	4E4PtPrfDAm2ZpbuBSsHTgj4qlIO59w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYIPD-0002Qc-IT; Fri, 22 Nov 2019 23:32:03 +0000
Received: from a27-18.smtp-out.us-west-2.amazonses.com ([54.240.27.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYIP0-0002Pf-K6
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 23:31:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574465509;
 h=From:To:Cc:Subject:Date:Message-Id;
 bh=6W+Hea0Amd6/uilOnF5QbG8DckcKj2ySVsuPY5EsZLg=;
 b=P7A5G5nmzstgc/R4v2nPMy34RGMmGN2KC768C12e3zF5mfpbpY7G40QTPJPwVbxu
 P56sqs+irk3RoOtxQZFrbywHbWRlgbi6y+IU3wkXCW6T9wQ7NbfFYDu7q7RqlWkoc+N
 f+LUpH/A5OgNe8jqEbYdPWU/g0xHWqQDrMPAP7Xw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574465509;
 h=From:To:Cc:Subject:Date:Message-Id:Feedback-ID;
 bh=6W+Hea0Amd6/uilOnF5QbG8DckcKj2ySVsuPY5EsZLg=;
 b=Ril9X1XmPtR62a5XUetfRguih2PYT412XOhJf5w5maRcgTVxmRJsjRQpWMXpL4lO
 VrcydiVvSeIp/8QxdwPdCsf0OfjpSYsD3Y384cGJDZjm56bPuVOH5RT8KPUYHNGprwG
 QmfiHWOFTn0g5JWLeHRAjDrPjQp/LMKXv2CQWX9E=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 79D8FC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v2 0/8] iommu/arm-smmu: Split pagetable support for Adreno GPUs
Date: Fri, 22 Nov 2019 23:31:49 +0000
Message-ID: <0101016e957515a9-151d51f7-0961-4853-a0b7-5636ad5642b8-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.7.4
X-SES-Outgoing: 2019.11.22-54.240.27.18
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_153150_819709_C5B23F7E 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 AngeloGioacchino Del Regno <kholk11@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, Wen Yang <wen.yang99@zte.com.cn>,
 Jonathan Marek <jonathan@marek.ca>, will@kernel.org,
 Joerg Roedel <joro@8bytes.org>, Mamta Shukla <mamtashukla555@gmail.com>,
 Ben Dooks <ben.dooks@codethink.co.uk>, linux-arm-kernel@lists.infradead.org,
 Brian Masney <masneyb@onstation.org>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Sharat Masetty <smasetty@codeaurora.org>,
 Jeykumar Sankaran <jsanka@codeaurora.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 freedreno@lists.freedesktop.org, Sean Paul <sean@poorly.run>,
 Allison Randal <allison@lohutok.net>, Bruce Wang <bzwang@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Drew Davenport <ddavenport@chromium.org>, robin.murphy@arm.com,
 Georgi Djakov <georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Another refresh to support split pagetables for Adreno GPUs as part of an
incremental process to enable per-context pagetables.

In order to support per-context pagetables the GPU needs to enable split tables
so that we can store global buffers in the TTBR1 space leaving the GPU free to
program the TTBR0 register with the address of a context specific pagetable.

This patchset adds split pagetable support for devices identified with the
compatible string qcom,adreno-smmu-v2. If the compatible string is enabled and
DOMAIN_ATTR_SPLIT_TABLES is non zero at attach time, the implementation will
set up the TTBR0 and TTBR1 spaces with identical configurations and program
the domain pagetable into the TTBR1 register. The TTBR0 register will be
unused.

The driver can determine if split pagetables were programmed by querying
DOMAIN_ATTR_SPLIT_TABLES after attaching. The domain geometry will also be
updated to reflect the virtual address space for the TTBR1 range.

These patches are on based on top of linux-next-20191120 with [1], [2], and [3]
from Robin on the iommu list.

The first four patches add the device tree bindings and implementation
specific support for arm-smmu and the rest of the patches add the drm/msm
implementation followed by the device tree update for sdm845.

[1] https://lists.linuxfoundation.org/pipermail/iommu/2019-October/039718.html
[2] https://lists.linuxfoundation.org/pipermail/iommu/2019-October/039719.html
[3] https://lists.linuxfoundation.org/pipermail/iommu/2019-October/039720.html


Jordan Crouse (8):
  dt-bindings: arm-smmu: Add Adreno GPU variant
  iommu: Add DOMAIN_ATTR_SPLIT_TABLES
  iommu/arm-smmu: Pass io_pgtable_cfg to impl specific init_context
  iommu/arm-smmu: Add split pagetables for Adreno IOMMU implementations
  drm/msm: Attach the IOMMU device during initialization
  drm/msm: Refactor address space initialization
  drm/msm/a6xx: Support split pagetables
  arm64: dts: qcom: sdm845:  Update Adreno GPU SMMU compatible string

 .../devicetree/bindings/iommu/arm,smmu.yaml        |  6 ++
 arch/arm64/boot/dts/qcom/sdm845.dtsi               |  2 +-
 drivers/gpu/drm/msm/adreno/a2xx_gpu.c              | 16 ++++
 drivers/gpu/drm/msm/adreno/a3xx_gpu.c              |  1 +
 drivers/gpu/drm/msm/adreno/a4xx_gpu.c              |  1 +
 drivers/gpu/drm/msm/adreno/a5xx_gpu.c              |  1 +
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c              | 45 ++++++++++
 drivers/gpu/drm/msm/adreno/adreno_gpu.c            | 23 ++++--
 drivers/gpu/drm/msm/adreno/adreno_gpu.h            |  8 ++
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            | 18 ++--
 drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c           | 18 ++--
 drivers/gpu/drm/msm/disp/mdp5/mdp5_cfg.c           |  4 -
 drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c           | 18 ++--
 drivers/gpu/drm/msm/msm_drv.h                      |  8 +-
 drivers/gpu/drm/msm/msm_gem_vma.c                  | 37 ++-------
 drivers/gpu/drm/msm/msm_gpu.c                      | 49 +----------
 drivers/gpu/drm/msm/msm_gpu.h                      |  4 +-
 drivers/gpu/drm/msm/msm_gpummu.c                   |  6 --
 drivers/gpu/drm/msm/msm_iommu.c                    | 18 ++--
 drivers/gpu/drm/msm/msm_mmu.h                      |  1 -
 drivers/iommu/arm-smmu-impl.c                      |  6 +-
 drivers/iommu/arm-smmu-qcom.c                      | 96 ++++++++++++++++++++++
 drivers/iommu/arm-smmu.c                           | 52 +++++++++---
 drivers/iommu/arm-smmu.h                           | 14 +++-
 include/linux/iommu.h                              |  1 +
 25 files changed, 295 insertions(+), 158 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
