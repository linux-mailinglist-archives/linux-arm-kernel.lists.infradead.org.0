Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8991813A12
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 15:24:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5pv2EgHuaFLq0povAKsaqF/PX3OKl83IDGjUPA8cgpw=; b=b7k
	Hy3KB+pJOPk0ncu84fmnjl5QwnSb1JWKNzn+1Myqbn/gXZG8ihJBjUuu/sfSSamMpI1EOzdaycUtE
	8JuLt/BcCGJnJTMRRx4DnLgP1sIwgdmV/UcbBFyDnZAcB+6uzfxq00qnX3ruiqp8ke3wIVA/hzHjt
	g6Ib4OQHW9lqPDx0ia+AMi/x+19MZfd8e8FU8QVfmgmhQomfUEnRheb2QzX4i3CWOo6HyU7Y36cZN
	3FaZ3+Tpr51cP5jKRRM2+qbeWA0CB/P+PnA1YlvSb7fYStEvfJk5VIAEGnsY1X8kB0g9gUBD4PIp2
	/BWQfOI/DsvGC1m1jVyWf+LPdU94qeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMueS-0005LA-BI; Sat, 04 May 2019 13:24:28 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMueH-0005J2-DE
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 13:24:20 +0000
Received: by mail-ed1-x542.google.com with SMTP id e56so9437832ede.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 06:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id;
 bh=iyAAdc/hWRW2hoexYmZRWuZhkprGVEqqGQbkYpxS37k=;
 b=G3KCFm0fbzzI5F1zvOaRO7d1l4ziZIc3CASA+uBY+RtDmidxSUQwWdeXFWtJOGLvYw
 a8yXmR1xI+Y2k53XMjmr8di4aBIt0In+/ytHYBL5TqUrHglv98FG0Eh0Vd6bmRsYYwYU
 mgxtUdE4nyACk972b901w9YsVjxBsYQseAlIOI3Cy43lAcovNGZEFC8Ba71/Oj//FiL5
 awp0y5M0274CBiGPuUoOAsJisrUXDjTUNJ9Xc3jnQTtRfUxSI/JI+U/AQGIARS0k91zP
 0kA1mk/UoQLSxxaLwLNPvd2A9TNRXxzX7bCEEg5Nrb8THmWNUI1ZqCSYcwSs94pbbFFl
 Zptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iyAAdc/hWRW2hoexYmZRWuZhkprGVEqqGQbkYpxS37k=;
 b=Pu7vp56avfYGc6bTnZZBXX35j0A45KM3nzsOZeIawYRnFu2EH3r8St/Y6/p7TV9NLH
 wJ6y3xCPvR0ui4k6HbwExTatn9FSPva1Se6+c7osquZO3Jg797k8F18yzxSk7w3Uu6mz
 1c2+hUyBnDz+yh38/pCsTuHWcI03b4nHuZjR3yvzOh3bdR1HkZCliH1uadKZOJLUozrN
 LjYJjTFnXxw/eshTg90Sx/4W04Fd3FtDh7vTKNEnM61KnR9PZMURG6iplFzgxH2r2VYM
 l+IfT/NPjTnE1BMHIVPueQnCa6o4voL7IsRn0pU4adDj9/ol4+NNsNjdVYiakq5Q7Dic
 qs+w==
X-Gm-Message-State: APjAAAWbee29tCDzW2Wgpv8reYpqDgQp0HbFjyAOaFL05WEEwwK1XHuW
 /s7fqfOMeX/s5PhoGpjmFYvz5A==
X-Google-Smtp-Source: APXvYqz4LGJhruC7j3NhOPSVnefUenYnUMxbvpiMSoAHKZ2baaSBXg9l+vRLGrvk4q5MJKcE05cUbQ==
X-Received: by 2002:a50:b68b:: with SMTP id d11mr13947835ede.42.1556976254830; 
 Sat, 04 May 2019 06:24:14 -0700 (PDT)
Received: from localhost.localdomain ([79.97.203.116])
 by smtp.gmail.com with ESMTPSA id s53sm1391106edb.20.2019.05.04.06.24.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 06:24:14 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [RFC 0/7] Convert the Intel iommu driver to the dma-ops api
Date: Sat,  4 May 2019 14:23:16 +0100
Message-Id: <20190504132327.27041-1-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_062417_575397_7051E75A 
X-CRM114-Status: GOOD (  14.89  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-msm@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tom Murphy <tmurphy@arista.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the intel iommu driver to the dma-ops api so that we can remove a bunch of repeated code.

This patchset depends on the "iommu/vt-d: Delegate DMA domain to generic iommu" and
"iommu/amd: Convert the AMD iommu driver to the dma-iommu api" patch sets which haven't
yet merged so this is just a RFC to get some feedback before I do more testing.

Tom Murphy (7):
  iommu/vt-d: Set the dma_ops per device so we can remove the
    iommu_no_mapping code
  iommu/vt-d: Remove iova handling code from non-dma ops path
  iommu: improve iommu iotlb flushing
  iommu/dma-iommu: Handle freelists in the dma-iommu api path
  iommu/dma-iommu: add wrapper for iommu_dma_free_cpu_cached_iovas
  iommu/vt-d: convert the intel iommu driver to the dma-iommu ops api
  iommu/vt-d: Always set DMA_PTE_READ if the iommu doens't support zero
    length reads

 drivers/iommu/Kconfig           |   1 +
 drivers/iommu/amd_iommu.c       |  14 +-
 drivers/iommu/arm-smmu-v3.c     |   3 +-
 drivers/iommu/arm-smmu.c        |   2 +-
 drivers/iommu/dma-iommu.c       |  48 ++-
 drivers/iommu/exynos-iommu.c    |   3 +-
 drivers/iommu/intel-iommu.c     | 605 +++++---------------------------
 drivers/iommu/iommu.c           |  21 +-
 drivers/iommu/ipmmu-vmsa.c      |   2 +-
 drivers/iommu/msm_iommu.c       |   2 +-
 drivers/iommu/mtk_iommu.c       |   3 +-
 drivers/iommu/mtk_iommu_v1.c    |   3 +-
 drivers/iommu/omap-iommu.c      |   2 +-
 drivers/iommu/qcom_iommu.c      |   2 +-
 drivers/iommu/rockchip-iommu.c  |   2 +-
 drivers/iommu/s390-iommu.c      |   3 +-
 drivers/iommu/tegra-gart.c      |   2 +-
 drivers/iommu/tegra-smmu.c      |   2 +-
 drivers/vfio/vfio_iommu_type1.c |   3 +-
 include/linux/dma-iommu.h       |   3 +
 include/linux/intel-iommu.h     |   1 -
 include/linux/iommu.h           |  24 +-
 22 files changed, 175 insertions(+), 576 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
