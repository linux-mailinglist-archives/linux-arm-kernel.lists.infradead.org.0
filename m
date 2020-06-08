Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDC71F11D4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 05:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3yU7myrL8xho2Jo61F7BpST7JP7FhNfMbRc5bDpBLBI=; b=Nub
	6OOvx3ol2G2RxzQ5sVa3j3LW1+0EUTy7UbTvlmxTd+Ay8PP53VfHGkKrBTe4ACPtKxtN0I8cLIS66
	J3bqrimI9nq1dKs995iSIyuHSBSlTkcuLSVsW+cv7WrgeHTGvQvU56xvaS3S2larUUoWgi+Oy12K5
	SYgUBHdPjHcBJfcyKfBrWJDNZfBtNlAXxgx3Q8lVkvYmm9kxRHVTI2bQV6476FeJF8S7Mnlyx/Ey+
	zzHGo+pmh1nTcukcnY+RLbG43zM6sJwm8g7da7eXNtiQdfcVAM0c5TjIlv0Nk7oD1uqJtAx+Ibx1Y
	LxZAhpARgEbFQMvgMtscf6P8vdVjaTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji8d8-0007u4-FG; Mon, 08 Jun 2020 03:39:22 +0000
Received: from out30-57.freemail.mail.aliyun.com ([115.124.30.57])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji8cz-0007rg-9U; Mon, 08 Jun 2020 03:39:14 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R211e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e07484;
 MF=baolin.wang@linux.alibaba.com; NM=1; PH=DS; RN=20; SR=0;
 TI=SMTPD_---0U-sW8OL_1591587543; 
Received: from localhost(mailfrom:baolin.wang@linux.alibaba.com
 fp:SMTPD_---0U-sW8OL_1591587543) by smtp.aliyun-inc.com(127.0.0.1);
 Mon, 08 Jun 2020 11:39:03 +0800
From: Baolin Wang <baolin.wang@linux.alibaba.com>
To: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, agross@kernel.org,
 bjorn.andersson@linaro.org, matthias.bgg@gmail.com, robdclark@gmail.com,
 robh@kernel.org, tomeu.vizoso@collabora.com, steven.price@arm.com,
 alyssa.rosenzweig@collabora.com, airlied@linux.ie, daniel@ffwll.ch
Subject: [PATCH 0/2] Some improvements for iommu
Date: Mon,  8 Jun 2020 11:38:39 +0800
Message-Id: <cover.1591587029.git.baolin.wang@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_203913_509376_964C2DA4 
X-CRM114-Status: UNSURE (   5.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.57 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, baolin.wang@linux.alibaba.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

The first patch masks some functions as static, and the second patch
changes to use the gfp parameter from iommu_ops->map() to allocate
ARM page pages. Any comments are welcome. Thanks.

Baolin Wang (2):
  iommu: Mark __iommu_map/__iommu_map_sg as static
  iommu: Add gfp parameter to io_pgtable_ops->map()

 drivers/gpu/drm/panfrost/panfrost_mmu.c |  2 +-
 drivers/iommu/arm-smmu-v3.c             |  2 +-
 drivers/iommu/arm-smmu.c                |  2 +-
 drivers/iommu/io-pgtable-arm-v7s.c      | 10 +++++-----
 drivers/iommu/io-pgtable-arm.c          | 10 +++++-----
 drivers/iommu/iommu.c                   | 10 +++++-----
 drivers/iommu/ipmmu-vmsa.c              |  2 +-
 drivers/iommu/msm_iommu.c               |  2 +-
 drivers/iommu/mtk_iommu.c               |  2 +-
 drivers/iommu/qcom_iommu.c              |  2 +-
 include/linux/io-pgtable.h              |  2 +-
 11 files changed, 23 insertions(+), 23 deletions(-)

-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
