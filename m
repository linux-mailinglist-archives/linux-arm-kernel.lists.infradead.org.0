Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DCF9A5C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 04:48:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=29yG9wjmbsj6ppN8nxJezwg4FhCjh8AkhFzVHEeLbX8=; b=uXGNRfQfkiS1dJ
	BBwRO7oSO2NCWw/GNk+dhYpEA1sGZNDYFGjtDbFTig08qNZ8OBfjRyEHse5V8pC0UDwmQLXKbRWnX
	Ws8hOgVlwEW4DDYRAImeaBfPDIZCaVLc3gTkRG0ecwtOxkkH7bqMUXBq8gEFHCkt5iSWNi6QkKEfc
	GEok1nUtI6+HT9mOWimCulDL7OZbh8jZtqK6WDI17hrRhE7qp/YTQqFHKC0rXwl0/aLwi/fccWvF+
	BMiAuuBdMr+nMRMDYvlZcgLnazKYeBdFl91CAieyovERmxvD8bXtbxrVWxgmaeGeMzyl4Lxog9Jxq
	nngLgC51dGFHlw0vmulw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0zcR-0006f6-Pj; Fri, 23 Aug 2019 02:48:03 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0zbU-0006B5-Hy
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 02:47:07 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 19377A30A9AEE019E02A;
 Fri, 23 Aug 2019 10:46:55 +0800 (CST)
Received: from HGHY4L002753561.china.huawei.com (10.133.215.186) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Fri, 23 Aug 2019 10:46:47 +0800
From: Zhen Lei <thunder.leizhen@huawei.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>, John Garry
 <john.garry@huawei.com>, Robin Murphy <robin.murphy@arm.com>, Will Deacon
 <will@kernel.org>, Joerg Roedel <joro@8bytes.org>, iommu
 <iommu@lists.linux-foundation.org>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3 0/2] improve the concurrency of arm_smmu_atc_inv_domain()
Date: Fri, 23 Aug 2019 10:45:49 +0800
Message-ID: <20190823024551.24448-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.215.186]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_194704_768972_E304E1C0 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Zhen Lei <thunder.leizhen@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

v2 --> v3:
As Will Deacon's suggestion, I changed the lock type of
arm_smmu_domain.devices_lock from spinlock_t to rwlock_t, and I saw that the
performance is all right. And further use nr_ats_masters to quickly check have
no obvious effect, so I drop it.

Here is the performance data tested on my board:
Withou any change:
Jobs: 24 (f=24): [0.1% done] [9798M/0K /s] [2392K/0  iops] [09h:59m:13s]
Jobs: 24 (f=24): [0.1% done] [9782M/0K /s] [2388K/0  iops] [09h:59m:12s]
Jobs: 24 (f=24): [0.2% done] [9825M/0K /s] [2399K/0  iops] [09h:59m:11s]
Jobs: 24 (f=24): [0.2% done] [9836M/0K /s] [2401K/0  iops] [09h:59m:10s]

Change lock type from spinlock_t to rwlock_t:
Jobs: 24 (f=24): [0.1% done] [10996M/0K /s] [2685K/0  iops] [09h:59m:13s]
Jobs: 24 (f=24): [0.1% done] [10817M/0K /s] [2641K/0  iops] [09h:59m:12s]
Jobs: 24 (f=24): [0.2% done] [11083M/0K /s] [2706K/0  iops] [09h:59m:11s]
Jobs: 24 (f=24): [0.2% done] [10603M/0K /s] [2589K/0  iops] [09h:59m:10s]

Use nr_ats_masters:
Jobs: 24 (f=24): [0.2% done] [11105M/0K /s] [2711K/0  iops] [eta 09h:58m:40s]
Jobs: 24 (f=24): [0.2% done] [10511M/0K /s] [2566K/0  iops] [eta 09h:58m:39s]
Jobs: 24 (f=24): [0.2% done] [10560M/0K /s] [2578K/0  iops] [eta 09h:58m:38s]
Jobs: 24 (f=24): [0.2% done] [10494M/0K /s] [2562K/0  iops] [eta 09h:58m:37s]
Jobs: 24 (f=24): [0.2% done] [10528M/0K /s] [2570K/0  iops] [eta 09h:58m:36s]
Jobs: 24 (f=24): [0.3% done] [10638M/0K /s] [2597K/0  iops] [eta 09h:58m:35s]
Jobs: 24 (f=24): [0.3% done] [11158M/0K /s] [2724K/0  iops] [eta 09h:58m:34s]
Jobs: 24 (f=24): [0.3% done] [11386M/0K /s] [2780K/0  iops] [eta 09h:58m:32s]
Jobs: 24 (f=24): [0.3% done] [11118M/0K /s] [2714K/0  iops] [eta 09h:58m:32s]
Jobs: 24 (f=24): [0.3% done] [11031M/0K /s] [2693K/0  iops] [eta 09h:58m:31s]
Jobs: 24 (f=24): [0.3% done] [11361M/0K /s] [2774K/0  iops] [eta 09h:58m:30s]

v1 --> v2:
1. change the type of nr_ats_masters from atomic_t to int, and move its
   ind/dec operation from arm_smmu_enable_ats()/arm_smmu_disable_ats() to
   arm_smmu_attach_dev()/arm_smmu_detach_dev(), and protected by
   "spin_lock_irqsave(&smmu_domain->devices_lock, flags);"

Zhen Lei (2):
  iommu/arm-smmu-v3: don't add a master into smmu_domain before it's
    ready
  iommu/arm-smmu-v3: change the lock type of
    arm_smmu_domain.devices_lock

 drivers/iommu/arm-smmu-v3.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

-- 
1.8.3



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
