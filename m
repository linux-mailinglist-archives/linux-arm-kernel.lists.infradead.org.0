Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8BB8E495
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 07:46:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rRs5sbw1ZzX7PZkfbXvP8aVHZJ2aKZuTImE+acB/47k=; b=tul43aNPu3l4WK
	mzakb3NUFThSS2CB5tkmr3OG+T/czi2b7CG07TQ4Dut8YmWoIUX4LTzlIthBYLZFS4+kvYFceZPPf
	bYf0Pcd1Wngct7yvHAZh+ou2ikJDN9Ri8KsnunJesvN5vem/Jz74QUYI5+bpW4EiycnWfwfu112I5
	dz5Q03RkehG3bL/C80zAf9xq+qqP/GO6Z/DZ1+lTelJQsdfjo2tCIzGp2CqOucId1YH2ZUC+sYlQo
	gkYprK3SJdTJy8XL38VYgOJuyhJnlACmq35vMXKWdkqPSzJ52XKdqOedZnMpT36VpkYYPkphx1Qpp
	PdhC0+mOP+yPPp1/McsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy8ab-0008U9-GY; Thu, 15 Aug 2019 05:46:21 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy8aJ-0008Sy-Th
 for linux-arm-kernel@bombadil.infradead.org; Thu, 15 Aug 2019 05:46:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A6pYuT4l1bnfrqQfspgQo+WHkOoA1W5fDsNVVderSO0=; b=vg7WvK4LAqogHi/PtiVl16y3Im
 wvKH/JLPS+CyuQatx67DS051r1kflIfpR9J5RApcnMtlZJvLLF1ln2ju4Jcx0iSmjyzYW0mb2GFQg
 9UCrLvvsrPtAd8lO/OvjdXelepXQ3mAFSFRMpkEOcFZEZo13LQ/gtFLQi8xZ0MUhOtgBBcEIOEau9
 LvdEN2TvO/xQCf42pbUBbL16zPbXU1n0T6sqsGjbGgcwZsYaPIt7zEg+e7dXWezTS+rWAQcvM26QF
 nRqoWBdhwb7CV7/ljgMGigjI8VmSQWZGhRZLgfawlb7UYSvp1MOT2VqCFlb/MvBd+aq++ma37KZvb
 99HIixQw==;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy8aG-0007qo-Vm
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 05:46:02 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id DCF73649FA0FCEA333F3;
 Thu, 15 Aug 2019 13:45:10 +0800 (CST)
Received: from HGHY4L002753561.china.huawei.com (10.133.215.186) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Thu, 15 Aug 2019 13:45:03 +0800
From: Zhen Lei <thunder.leizhen@huawei.com>
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, "Jean-Philippe
 Brucker" <jean-philippe@linaro.org>, John Garry <john.garry@huawei.com>,
 "Robin Murphy" <robin.murphy@arm.com>, Will Deacon <will@kernel.org>, Joerg
 Roedel <joro@8bytes.org>, iommu <iommu@lists.linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-kernel
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/2] add nr_ats_masters for quickly check
Date: Thu, 15 Aug 2019 13:44:37 +0800
Message-ID: <20190815054439.30652-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.215.186]
X-CFilter-Loop: Reflected
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
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

v1 --> v2:
1. change the type of nr_ats_masters from atomic_t to int, and move its
   ind/dec operation from arm_smmu_enable_ats()/arm_smmu_disable_ats() to
   arm_smmu_attach_dev()/arm_smmu_detach_dev(), and protected by
   "spin_lock_irqsave(&smmu_domain->devices_lock, flags);"

Zhen Lei (2):
  iommu/arm-smmu-v3: don't add a master into smmu_domain before it's
    ready
  iommu/arm-smmu-v3: add nr_ats_masters for quickly check

 drivers/iommu/arm-smmu-v3.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

-- 
1.8.3



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
