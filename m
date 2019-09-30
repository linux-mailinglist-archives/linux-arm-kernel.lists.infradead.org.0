Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2FBC2379
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0nbgsz9fx30jPEG5447e7ZMZrLLF43rY8WWhogwtjCU=; b=CRd7L3uK5AiY0L
	FxhgJKlG46jYAjGyQ6tTYDsVd4CJKi4brJEXMkD0LqHQ84qCjXpxtUCzBzLrNelnTVUo4ufYKaupW
	GG81zA+1Ot6seUt8ukpepwLlHfS0GbUYrZrxAvAszixwhOaw1vvbNxeFcGYTtg4TQEOXy8Anewolj
	JXqZuxEwIFLO74AFNEAZZS54zQYNFe799YnJpYVaHJ7qOhXBPfWYMriIISzmwXG+q4A2UmxyGxGnR
	Bg5GVsw54ujZBGXVilHemCCL2ccoBmFVuQIPJJ8c/gnqaPbMeQMUUaVq7+IByd5KQV6qLhsf9y3FF
	2C3o/wW4/5z3O/YjfZIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwoU-0008Lc-Io; Mon, 30 Sep 2019 14:38:10 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwnT-0007NV-8m
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:37:10 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4FC4CFE66C605F3E5AC5;
 Mon, 30 Sep 2019 22:36:53 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Mon, 30 Sep 2019 22:36:46 +0800
From: John Garry <john.garry@huawei.com>
To: <lorenzo.pieralisi@arm.com>, <guohanjun@huawei.com>,
 <sudeep.holla@arm.com>, <robin.murphy@arm.com>, <mark.rutland@arm.com>,
 <will@kernel.org>
Subject: [RFC PATCH 0/6] SMMUv3 PMCG IMP DEF event support
Date: Mon, 30 Sep 2019 22:33:45 +0800
Message-ID: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_073707_927777_E0AE3C5F 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: nleeder@codeaurora.org, John Garry <john.garry@huawei.com>,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 shameerali.kolothum.thodi@huawei.com, linuxarm@huawei.com,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds IMP DEF event support for the SMMUv3 PMCG.

It is marked as an RFC as the method to identify the PMCG implementation
may be a quite disliked. And, in general, the series is somewhat
incomplete.

So the background is that the PMCG supports IMP DEF events, yet we have no
method to identify the PMCG to know the IMP DEF events.

A method for identifying the PMCG implementation could be using
PMDEVARCH, but we cannot rely on this being set properly, as whether this
is implemented is not defined in SMMUv3 spec.

Another method would be perf event aliasing, but this method of event
matching is based on CPU id, which would not guarantee same
uniqueness as PMCG implementation.

Yet another method could be to continue using ACPI OEM ID in the IORT
code, but this does not scale. And it is not suitable if we ever add DT
support to the PMCG driver.

The method used in this series is based on matching on the parent SMMUv3
IIDR. We store this IIDR contents in the arm smmu structure as the first
element, which means that we don't have to expose SMMU APIs - this is
the part which may be disliked.

The final two patches switch the pre-existing PMCG model identification
from ACPI OEM ID to the same parent SMMUv3 IIDR matching.

For now, we only consider SMMUv3' nodes being the associated node for
PMCG.

John Garry (6):
  ACPI/IORT: Set PMCG device parent
  iommu/arm-smmu-v3: Record IIDR in arm_smmu_device structure
  perf/smmuv3: Retrieve parent SMMUv3 IIDR
  perf/smmuv3: Support HiSilicon hip08 (hi1620) IMP DEF events
  perf/smmuv3: Match implementation options based on parent SMMU IIDR
  ACPI/IORT: Drop code to set the PMCG software-defined model

 drivers/acpi/arm64/iort.c     | 69 ++++++++++++++--------------
 drivers/iommu/arm-smmu-v3.c   |  5 +++
 drivers/perf/arm_smmuv3_pmu.c | 84 ++++++++++++++++++++++++++++++-----
 include/linux/acpi_iort.h     |  8 ----
 4 files changed, 112 insertions(+), 54 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
