Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B178EB30
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xQlT9fguUFpakcjFG9AzM+ChFxT/NIzfQ9zWxd14t2Y=; b=N4D/yemV+59ZEi
	j7CueiCpeZwSr8GylWLGIJJTq5DRo6S+u3uTpbn6+KrNvlc82mbXXC5rIq9Nv5uklmy17+yJJyLaD
	9yvGw+ykCWpNQi02dvLp1S+yiacwR00qFoo0+I+j0cSjCj59mBwzVBizsjD3D8C4f12hzYBLPT4db
	kEvTH5OKrBQImz6OaS5b8sEQDVn4h5T6VwdUJ+BK0g0a9lvEn1KHR1bJRsfAwCPb8ct5HaOaSYQ5v
	H1vw77h7cL1bzYNv2LiZOoWliWy9ZsNdG9RmsgC/bNUU6MjSJO+Omc8++NsUM0NVqHmohP6Lfg/NW
	eBljVJ7XFf/eNtnsnvmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyEbo-0005Jg-Ve; Thu, 15 Aug 2019 12:12:01 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyEba-0005It-GW
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:11:48 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 3F05632DDAE6107C412A;
 Thu, 15 Aug 2019 20:11:40 +0800 (CST)
Received: from HGHY4L002753561.china.huawei.com (10.133.215.186) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.439.0; Thu, 15 Aug 2019 20:11:32 +0800
From: Zhen Lei <thunder.leizhen@huawei.com>
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>, "Jean-Philippe
 Brucker" <jean-philippe@linaro.org>, John Garry <john.garry@huawei.com>,
 "Robin Murphy" <robin.murphy@arm.com>, Will Deacon <will@kernel.org>, Joerg
 Roedel <joro@8bytes.org>, iommu <iommu@lists.linux-foundation.org>, Omer
 Peleg <omer@cs.technion.ac.il>, Adam Morrison <mad@cs.technion.ac.il>,
 Shaohua Li <shli@fb.com>, Ben Serebrin <serebrin@google.com>, David Woodhouse
 <David.Woodhouse@intel.com>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, linux-kernel
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/2] iommu/iova: enhance the rcache optimization
Date: Thu, 15 Aug 2019 20:11:02 +0800
Message-ID: <20190815121104.29140-1-thunder.leizhen@huawei.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.215.186]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_051146_745826_AB67C856 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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

v1 --> v2
1. I did not chagne the patches but added this cover-letter.
2. Add a batch of reviewers base on
   9257b4a206fc ("iommu/iova: introduce per-cpu caching to iova allocation")
3. I described the problem I met in patch 2, but I hope below brief description
   can help people to quickly understand.
   Suppose there are six rcache sizes, each size can maximum hold 10000 IOVAs.
   --------------------------------------------
   |  4K   |  8K  | 16K  |  32K | 64K  | 128K |
   --------------------------------------------
   | 10000 | 9000 | 8500 | 8600 | 9200 | 7000 |
   --------------------------------------------
   As the above map displayed, the whole rcache buffered too many IOVAs. Now, the
   worst case can be coming, suppose we need 20000 4K IOVAs at one time. That means
   10000 IOVAs can be allocated from rcache, but another 10000 IOVAs should be 
   allocated from RB tree base on alloc_iova() function. But the RB tree currently
   have at least (9000 + 8500 + 8600 + 9200 + 7000) = 42300 nodes. The average speed
   of RB tree traverse will be very slow. For my test scenario, the 4K size IOVAs are
   frequently used, but others are not. So similarly, when the 20000 4K IOVAs are
   continuous freed, the first 10000 IOVAs can be quickly buffered, but the other
   10000 IOVAs can not.

Zhen Lei (2):
  iommu/iova: introduce iova_magazine_compact_pfns()
  iommu/iova: enhance the rcache optimization

 drivers/iommu/iova.c | 100 +++++++++++++++++++++++++++++++++++++++++++++++----
 include/linux/iova.h |   1 +
 2 files changed, 95 insertions(+), 6 deletions(-)

-- 
1.8.3



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
