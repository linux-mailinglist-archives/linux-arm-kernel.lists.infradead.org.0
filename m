Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2392C1EA326
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 13:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rlMhWExjsxp0qXrh2PLXZwiuiw4bMf+6igZYwIlEARI=; b=Xf1Vx1HFONu5YL
	JjJ3MSBTkYr0w2uaqAGRkRivQ43Px/QUI/XjseDFh62ChaGtO5fHN0u2luQJpzM+p539gtgIaRUMH
	2ZZqIEL9iIhZI6o0qxchTKMeRrssxZRN+SgW4126EYoT96H5hsJkTjJn8EnnU8H5s0jig+fPGAWhe
	2O1gD1wnavxUPBVgG5Vv6E5DQ2JSAxI8UB9hkrYDDdN/P9HCg1MRqBUf0bPZfzyDz/X/6v6oE/9Dc
	OSVawTOoOzA/pBlAqI1Sfk8PAq85PJyj0EhAKZkx3E6rYYAZAh14PqVdYp0wW9RJmv5TspJFIUTSd
	9MyMoihhKMvWiKC5G/dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfj1x-0008VD-3s; Mon, 01 Jun 2020 11:55:01 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfj1n-0008Rm-5Z
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 11:54:53 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 727A1D4B5A6A15A60BF1;
 Mon,  1 Jun 2020 19:54:43 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Mon, 1 Jun 2020 19:54:37 +0800
From: John Garry <john.garry@huawei.com>
To: <will@kernel.org>, <robin.murphy@arm.com>
Subject: [PATCH RFC 0/2] iommu/arm-smmu-v3: Improve cmdq lock efficiency
Date: Mon, 1 Jun 2020 19:50:46 +0800
Message-ID: <1591012248-37956-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_045451_384661_1BE65D9D 
X-CRM114-Status: UNSURE (   8.45  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: song.bao.hua@hisilicon.com, maz@kernel.org, joro@8bytes.org,
 John Garry <john.garry@huawei.com>, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As mentioned in [0], the CPU may consume many cycles processing
arm_smmu_cmdq_issue_cmdlist(). One issue we find is the cmpxchg() loop to
get space on the queue takes approx 25% of the cycles for this function.

The cmpxchg() is removed as follows:
- We assume that the cmdq can never fill with changes to limit the
  batch size (where necessary) and always issue a CMD_SYNC for a batch
  We need to do this since we no longer maintain the cons value in
  software, and we cannot deal with no available space properly.
- Replace cmpxchg() with atomic inc operation, to maintain the prod
  and owner values.

Early experiments have shown that we may see a 25% boost in throughput
IOPS for my NVMe test with these changes. And some CPUs, which were
loaded at ~55%, now see a ~45% load.

So, even though the changes are incomplete and other parts of the driver
will need fixing up (and it looks maybe broken for !MSI support), the
performance boost seen would seem to be worth the effort of exploring
this.

Comments requested please.

Thanks

[0] https://lore.kernel.org/linux-iommu/B926444035E5E2439431908E3842AFD24B86DB@DGGEMI525-MBS.china.huawei.com/T/#ma02e301c38c3e94b7725e685757c27e39c7cbde3

John Garry (2):
  iommu/arm-smmu-v3: Calculate bits for prod and owner
  iommu/arm-smmu-v3: Remove cmpxchg() in arm_smmu_cmdq_issue_cmdlist()

 drivers/iommu/arm-smmu-v3.c | 92 +++++++++++++++++++++++----------------------
 1 file changed, 47 insertions(+), 45 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
