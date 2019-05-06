Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58584153E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 20:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a1iPJQiKyIvoM1Xn5X6NQ9WNzMS3Pc5EvG5DO3uhw5o=; b=PMjRrS02zGmXdn
	xlOiGughSKsUAkpuJHnfU2Nr4R8N3MmxjrZObz1+unYBmguzF16VbU+XqXSTEgKdQlo9qpw5wVq10
	RIur+SnzM+tqk3OzQR/9v6+g02n9jtjrjeP/akqmPPvxmEfxeN1onr+UY7CE9/eYtYyntIFLGbKyF
	vc8kPj9ug5LRZKfpDRhZ74nM5vOwGR+FrcrqujEAu65b6Mt+IZ2cxxyUY7cLZRnrPqP5mVYBzICRf
	4QcudqF+PhpQtbMDSlVHOWpAq2iy8ziHquHSZG816PV6txb8p59x61aIQJ2LgAt1ECEsve/lh+lSv
	pElNzBNpiiF5jZJAD1+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNija-0004gB-8r; Mon, 06 May 2019 18:53:06 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNijR-0004fI-Dm
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 18:52:58 +0000
Received: by mail-ed1-x542.google.com with SMTP id w33so13994723edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 11:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xOMG2HdbEZ3SrXQ8q7Gqb0A8n9cqtIr7U5g8ZrmeSwY=;
 b=jhxVShgPi56fhBmH6sXGURNSQPG8rifG26Da8orjFSRRc8gRE6k4Cv6HwdBHg4knfI
 l5tc2Q+doMEgflLHad6284EeKM+Hshw3o9FH3NdEkGrVsvtFV4R2axudVscNb2s97B7y
 TU8ZHMgrm2I96elHH5u5wUkhBml+5CSM0Bdrjpo6Z3hiwSnAQoLfuou4AItwdkOpsxed
 80lBtJ3c6s9ug68FFc8DHgEZ18q+zoY1HdpsnDLUDCZ8hzDP1k/iNQBJQXz0tnLVDZDA
 PjjVf3eEJQcaUVjosMg85BMeUtS+scBv/cwOJtifNVGUGwrOUDP6xQ2JB5R79hYAa3k2
 M/6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xOMG2HdbEZ3SrXQ8q7Gqb0A8n9cqtIr7U5g8ZrmeSwY=;
 b=MAOZzCZoYyaTR6HychrosNYuEj6d8RyFS/IEtusodYlAzB8X+6+DTwL1BYLg8sZ1bQ
 ePjC3mCa2C+LqVXIaLCH0vifFiNu4FcA8gvrr+NsuvW1NeBgXj7kMTStx7s2soWssLMG
 eg+Eru03Y62Au6C19kUROTFnjhVoUr+mzHmXkmT86GVoMFyazoM6XpBeLpdzKOHfMEXQ
 6MRULs0M7wvj4EIRQWYhj5WmE/gpbJ4WUMJeFmq04Hl4liZQx6nA1kF2XR2Z+rJDg/ZE
 DTsEZx5/1FudIoTlNP8tiwwqZFhZDWyFWUyK4K6lNr5xp/WFC2czR8ojVOkxtWFf/xKy
 mCDw==
X-Gm-Message-State: APjAAAXLtBNI1uLsN/yuSw7qhbtNwRXGTvl4Lx617/CoM6004p9tvrZy
 EBWEmMYIR8CegbgXeJJgIowKzw==
X-Google-Smtp-Source: APXvYqx/0bwigCkWFM3Wz/6ksylC3p72YzFRn5H6iW89lDNU+bH1gdGYQluV+iLWz8wcDznRZGXmPg==
X-Received: by 2002:a17:906:469a:: with SMTP id
 a26mr20917778ejr.164.1557168775535; 
 Mon, 06 May 2019 11:52:55 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:a0:bc00:d9d9:922a:828d:a50e])
 by smtp.gmail.com with ESMTPSA id
 e35sm3361412eda.2.2019.05.06.11.52.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 11:52:54 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v3 0/4] iommu/amd: Convert the AMD iommu driver to the
 dma-iommu api
Date: Mon,  6 May 2019 19:52:02 +0100
Message-Id: <20190506185207.31069-1-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_115257_543580_CA854F26 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Tom Murphy <tmurphy@arista.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the AMD iommu driver to the dma-iommu api. Remove the iova
handling and reserve region code from the AMD iommu driver.

Change-log:
v3:
-rename dma_limit to dma_mask
-exit handle_deferred_device early if (!is_kdump_kernel())
-remove pointless calls to handle_deferred_device
v2:
-Rebase on top of this series:
 http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-iommu-ops.3
-Add a gfp_t parameter to the iommu_ops::map function.
-Made use of the reserve region code inside the dma-iommu api

Tom Murphy (4):
  iommu: Add gfp parameter to iommu_ops::map
  iommu/dma-iommu: Handle deferred devices
  iommu/dma-iommu: Use the dev->coherent_dma_mask
  iommu/amd: Convert the AMD iommu driver to the dma-iommu api

 drivers/iommu/Kconfig          |   1 +
 drivers/iommu/amd_iommu.c      | 694 ++++-----------------------------
 drivers/iommu/arm-smmu-v3.c    |   2 +-
 drivers/iommu/arm-smmu.c       |   2 +-
 drivers/iommu/dma-iommu.c      |  50 ++-
 drivers/iommu/exynos-iommu.c   |   2 +-
 drivers/iommu/intel-iommu.c    |   2 +-
 drivers/iommu/iommu.c          |  43 +-
 drivers/iommu/ipmmu-vmsa.c     |   2 +-
 drivers/iommu/msm_iommu.c      |   2 +-
 drivers/iommu/mtk_iommu.c      |   2 +-
 drivers/iommu/mtk_iommu_v1.c   |   2 +-
 drivers/iommu/omap-iommu.c     |   2 +-
 drivers/iommu/qcom_iommu.c     |   2 +-
 drivers/iommu/rockchip-iommu.c |   2 +-
 drivers/iommu/s390-iommu.c     |   2 +-
 drivers/iommu/tegra-gart.c     |   2 +-
 drivers/iommu/tegra-smmu.c     |   2 +-
 include/linux/iommu.h          |  21 +-
 19 files changed, 184 insertions(+), 653 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
