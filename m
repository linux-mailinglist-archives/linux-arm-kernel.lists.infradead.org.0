Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 456CA1FB426
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:23:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mKgq23ngyARbKdkLMpsrEjeGDQ+glKNCrXf1OwaebAA=; b=HNBV9Cq1dAgIpW
	1f74eKSix9RVdS4HrsLI0eI3AsOOF0lM6IA1LmRfNj2l/P39x78WHd1JbeC7kTRX0eA4W9lchBPth
	njShoutdticNMWbnSIB+al8Up85a/2S57eiMHTB/o45KdPrILJSYDZ/LV2ymygD6MmVfqQ3jTxgme
	IBABLZKJLntGWsxVm0G5sarL2rFEsX1wOe0dLFPKcfwUDHqcKb+Xf8ERx+zNFtVmec9xXQzGBzd6l
	xnIdR8R7TbRHXYuaROhWERcLprL7y15PqJVhQUYgYKPOSFCAR0haxIT/n5MXVJkkqT2ccDdbCitD5
	0PFW7uNwdBltONEyoz2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCUl-0004GM-4f; Tue, 16 Jun 2020 14:23:23 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCC8-00050I-HD
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 14:04:19 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9F381D7136FA4F2B2E33;
 Tue, 16 Jun 2020 22:03:57 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Tue, 16 Jun 2020 22:03:50 +0800
From: John Garry <john.garry@huawei.com>
To: <will@kernel.org>, <robin.murphy@arm.com>
Subject: [PATCH RFC v2 0/4] iommu/arm-smmu-v3: Improve cmdq lock efficiency
Date: Tue, 16 Jun 2020 21:59:49 +0800
Message-ID: <1592315993-164290-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_070408_771539_CB3DC361 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: trivial@kernel.org, maz@kernel.org, joro@8bytes.org,
 John Garry <john.garry@huawei.com>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As mentioned in [0], the CPU may consume many cycles processing
arm_smmu_cmdq_issue_cmdlist(). One issue we find is the cmpxchg() loop to
get space on the queue takes approx 25% of the cycles for this function.

This series removes that cmpxchg().

For my NVMe test with 3x NVMe SSDs, I'm getting a ~24% throughput
increase:
Before: 1310 IOPs
After: 1630 IOPs

I also have a test harness to check the rate of DMA map+unmaps we can
achieve:

CPU count	32	64	128
Before:		63187	19418	10169
After:		93287	44789	15862

(unit is map+unmaps per CPU per second)

There's no specific problem that I know of with this series, as previous
issues should now be fixed - but I'm a bit nervous about how we deal with
the queue being full and wrapping.

And I want to test more.

Thanks

[0] https://lore.kernel.org/linux-iommu/B926444035E5E2439431908E3842AFD24B86DB@DGGEMI525-MBS.china.huawei.com/T/#ma02e301c38c3e94b7725e685757c27e39c7cbde3

John Garry (4):
  iommu/arm-smmu-v3: Fix trivial typo
  iommu/arm-smmu-v3: Calculate bits for prod and owner
  iommu/arm-smmu-v3: Always issue a CMD_SYNC per batch
  iommu/arm-smmu-v3: Remove cmpxchg() in arm_smmu_cmdq_issue_cmdlist()

 drivers/iommu/arm-smmu-v3.c | 210 ++++++++++++++++++++++--------------
 1 file changed, 131 insertions(+), 79 deletions(-)

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
