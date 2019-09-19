Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A26B7564
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 10:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=g8+hNfKPpT0YQsQlDvsrj2tAemWmcWSMYWwonZe5+AY=; b=KhdvTb0bF31LBEIhSweCHUbhBw
	vX+O8AzpU1GCk520/l9HlFc3onb5+IkOVjgy9rQz3Ut7GRQXqdfZZ5YlQao1Qvtq1ossjuoNbo8yV
	1dfTzPTnPr6HfsbrPQmXXRwfBS70p0fMWvJPdLZ3rGVy/4PGX/MMsm7GsoLMx5gLk3m3dDF8ejcMS
	6PXvkSyjzFGFH8qjpYFaqSlONZtguBX98/p38BCqLawim1RVQF24x8t/fj969tjqVBlR8ixtpxVC1
	4dpBNgWIdKPNB2ShjD6Hjy8zurfzsPrtr3W161g87XdBFYp7OOn4QcLDW3FR6PxOlDARIhYihHQdH
	oAYqaVfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAs36-0004Xo-LM; Thu, 19 Sep 2019 08:44:26 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAs2l-0004Wc-Tp
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 08:44:06 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9B68A7CD0F122A9A5390;
 Thu, 19 Sep 2019 16:43:51 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 19 Sep 2019 16:43:44 +0800
From: John Garry <john.garry@huawei.com>
Subject: arm64 iommu groups issue
To: Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <maz@kernel.org>, "Will
 Deacon" <will@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
 Sudeep Holla <sudeep.holla@arm.com>, "Guohanjun (Hanjun Guo)"
 <guohanjun@huawei.com>
Message-ID: <9625faf4-48ef-2dd3-d82f-931d9cf26976@huawei.com>
Date: Thu, 19 Sep 2019 09:43:37 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_014404_338181_CF894C6B 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, iommu <iommu@lists.linux-foundation.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

We have noticed a special behaviour on our arm64 D05 board when the SMMU 
is enabled with regards PCI device iommu groups.

This platform does not support ACS, yet we find that all functions for a 
PCI device are not grouped together:

root@ubuntu:/sys# dmesg | grep "Adding to iommu group"
[    7.307539] hisi_sas_v2_hw HISI0162:01: Adding to iommu group 0
[   12.590533] hns_dsaf HISI00B2:00: Adding to iommu group 1
[   13.688527] mlx5_core 000a:11:00.0: Adding to iommu group 2
[   14.324606] mlx5_core 000a:11:00.1: Adding to iommu group 3
[   14.937090] ehci-platform PNP0D20:00: Adding to iommu group 4
[   15.276637] pcieport 0002:f8:00.0: Adding to iommu group 5
[   15.340845] pcieport 0004:88:00.0: Adding to iommu group 6
[   15.392098] pcieport 0005:78:00.0: Adding to iommu group 7
[   15.443356] pcieport 000a:10:00.0: Adding to iommu group 8
[   15.484975] pcieport 000c:20:00.0: Adding to iommu group 9
[   15.543647] pcieport 000d:30:00.0: Adding to iommu group 10
[   15.599771] serial 0002:f9:00.0: Adding to iommu group 5
[   15.690807] serial 0002:f9:00.1: Adding to iommu group 5
[   84.322097] mlx5_core 000a:11:00.2: Adding to iommu group 8
[   84.856408] mlx5_core 000a:11:00.3: Adding to iommu group 8

root@ubuntu:/sys#  lspci -tv
lspci -tvv
-+-[000d:30]---00.0-[31]--
   +-[000c:20]---00.0-[21]----00.0  Huawei Technologies Co., Ltd.
   +-[000a:10]---00.0-[11-12]--+-00.0  Mellanox [ConnectX-5]
   |                           +-00.1  Mellanox [ConnectX-5]
   |                           +-00.2  Mellanox [ConnectX-5 VF]
   |                           \-00.3  Mellanox [ConnectX-5 VF]
   +-[0007:90]---00.0-[91]----00.0  Huawei Technologies Co., ...
   +-[0006:c0]---00.0-[c1]--
   +-[0005:78]---00.0-[79]--
   +-[0004:88]---00.0-[89]--
   +-[0002:f8]---00.0-[f9]--+-00.0  MosChip Semiconductor Technology ...
   |                        +-00.1  MosChip Semiconductor Technology ...
   |                        \-00.2  MosChip Semiconductor Technology ...
   \-[0000:00]-

For the PCI devices in question - on port 000a:10:00.0 - you will notice 
that the port and VFs (000a:11:00.2, 3) are in one group, yet the 2 PFs 
(000a:11:00.0, 000a:11:00.1) are in separate groups.

I also notice the same ordering nature on our D06 platform - the 
pcieport is added to an iommu group after PF for that port. However this 
platform supports ACS, so not such a problem.

After some checking, I find that when the pcieport driver probes, the 
associated SMMU device had not registered yet with the IOMMU framework, 
so we defer the probe for this device - in iort.c:iort_iommu_xlate(), 
when no iommu ops are available, we defer.

Yet, when the mlx5 PF devices probe, the iommu ops are available at this 
stage. So the probe continues and we get an iommu group for the device - 
but not the same group as the parent port, as it has not yet been added 
to a group. When the port eventually probes it gets a new, separate group.

This all seems to be as the built-in module init ordering is as follows: 
pcieport drv, smmu drv, mlx5 drv

I notice that if I build the mlx5 drv as a ko and insert after boot, all 
functions + pcieport are in the same group:

[   11.530046] hisi_sas_v2_hw HISI0162:01: Adding to iommu group 0
[   17.301093] hns_dsaf HISI00B2:00: Adding to iommu group 1
[   18.743600] ehci-platform PNP0D20:00: Adding to iommu group 2
[   20.212284] pcieport 0002:f8:00.0: Adding to iommu group 3
[   20.356303] pcieport 0004:88:00.0: Adding to iommu group 4
[   20.493337] pcieport 0005:78:00.0: Adding to iommu group 5
[   20.702999] pcieport 000a:10:00.0: Adding to iommu group 6
[   20.859183] pcieport 000c:20:00.0: Adding to iommu group 7
[   20.996140] pcieport 000d:30:00.0: Adding to iommu group 8
[   21.152637] serial 0002:f9:00.0: Adding to iommu group 3
[   21.346991] serial 0002:f9:00.1: Adding to iommu group 3
[  100.754306] mlx5_core 000a:11:00.0: Adding to iommu group 6
[  101.420156] mlx5_core 000a:11:00.1: Adding to iommu group 6
[  292.481714] mlx5_core 000a:11:00.2: Adding to iommu group 6
[  293.281061] mlx5_core 000a:11:00.3: Adding to iommu group 6

This does seem like a problem for arm64 platforms which don't support 
ACS, yet enable an SMMU. Maybe also a problem even if they do support ACS.

Opinion?

Thanks,
John


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
