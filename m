Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282FD1DE790
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 15:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C08BSevle3SPRWm4yHdOXVWN6lZp73jyXPmax7r4lMk=; b=UhEjez9Q/YpCV/
	II6yUHE5/os/heUvnh8p7wsZ2P+/EkkwAUf6jOGjyT9xvLBZi5W82zkKJIk8OGkgjzzwLOdzAZgbI
	p2k9AxuEFHoJlWnbSAZD5duOlJChHcklEhDiRA8xpGIj4rQNjqJ96qsBlX5FGfrTeOtWl1T0+V20s
	TeODkrLBfHpcCObXvzUoP7rCX5OCWnnPhPe9Oj+kfvnBLURFfovtcjsCP9/ZjnQxi7kI+3Poa3KRI
	XoORTW1kdFYHa3J6sTzItnIQLn5+hEmpZbM4ZtJMO9PLFfpPF99kca8wm7VfE4K+tNKt7UGeTgEUx
	xDrWFGhRSATZfcvnQJUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc7K4-0004oD-5J; Fri, 22 May 2020 13:02:48 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc7Jr-0004nG-0b
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 13:02:40 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590152558; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=aZcjMzyQhmF408KAg+aRhNzpY4xzo8oNxhr6p1nbQUY=;
 b=OXhreo1ZOUevHX67uXrkW3jvivgaJBxk+c0CGVUAvcKm1ad44kwhKXjVzysfoyC+htMh1cW7
 F6D4hN+BQyVoTgIxm1xIu7O6a8BN3Ro7/hdQk3Wyt7rxn75mUd7e0woinpi5fuqSycCHi//S
 0GmbkCj6CeOTjZ67GJvAqUDQ63Y=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ec7cd46.7f2e1a80ba78-smtp-out-n05;
 Fri, 22 May 2020 13:01:58 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 48C57C433C8; Fri, 22 May 2020 13:01:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 29C5BC433C6;
 Fri, 22 May 2020 13:01:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 29C5BC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Joerg Roedel <jroedel@suse.de>
Subject: [PATCH] iommu: Fix group refcount in iommu_alloc_default_domain()
Date: Fri, 22 May 2020 18:31:45 +0530
Message-Id: <20200522130145.30067-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_060238_699206_54C8D071 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the change to move default domain allocation to probe,
there is a refcount decrement missing for the group in
iommu_alloc_default_domain(). Because of this missing
refcount decrement, the device is never released from the
group as the devices_kobj refcount never reaches 0 in
iommu_group_remove_device() leading to a lot of issues.
One such case is that this will lead to a different group
allocation on every reload of the module which configures
iommu such as the ath10k module which then finally fails
to attach this device to the SMMU with -ENOSPC error in
__arm_smmu_alloc_bitmap() once the count of module reload
crosses the number of context banks. This will then lead
to NULL pointer deference in the next reload of the module.
Add the missing refcount decrement(iommu_group_put()) in
iommu_alloc_default_domain() to fix this issue.

Call trace:

<snip>...
  platform wifi-firmware.0: Adding to iommu group 82
  ath10k_snoc 18800000.wifi: could not attach device: -28
  platform wifi-firmware.0: Removing from iommu group 82
  ath10k_snoc 18800000.wifi: failed to initialize firmware: -28
  ath10k_snoc: probe of 18800000.wifi failed with error -28
  platform wifi-firmware.0: Adding to iommu group 83
  Unable to handle kernel NULL pointer dereference at virtual address 0000000000000000
  Mem abort info:
    ESR = 0x96000006
    EC = 0x25: DABT (current EL), IL = 32 bits
    SET = 0, FnV = 0
    EA = 0, S1PTW = 0
  Data abort info:
    ISV = 0, ISS = 0x00000006
    CM = 0, WnR = 0
  user pgtable: 4k pages, 39-bit VAs, pgdp=0000000177a53000
  [0000000000000000] pgd=00000001e74f5003, pud=00000001e74f5003, pmd=0000000000000000
  Internal error: Oops: 96000006 [#1] PREEMPT SMP
  pstate: 60400009 (nZCv daif +PAN -UAO)
  arm_smmu_flush_iotlb_all+0x20/0x6c
  iommu_create_device_direct_mappings+0x17c/0x1d8
  iommu_probe_device+0xc0/0x100
  of_iommu_configure+0x108/0x240
  of_dma_configure+0x130/0x1d0
  ath10k_fw_init+0xc4/0x1c4 [ath10k_snoc]
  ath10k_snoc_probe+0x5cc/0x678 [ath10k_snoc]
  platform_drv_probe+0x90/0xb0
  really_probe+0x134/0x2ec
  driver_probe_device+0x64/0xfc
  device_driver_attach+0x4c/0x6c
  __driver_attach+0xac/0xc0
  bus_for_each_dev+0x8c/0xd4
  driver_attach+0x2c/0x38
  bus_add_driver+0xfc/0x1d0
  driver_register+0x64/0xf8
  __platform_driver_register+0x4c/0x58
  init_module+0x20/0x1000 [ath10k_snoc]
  do_one_initcall+0x13c/0x2d0
  do_init_module+0x58/0x1dc
  load_module+0xde0/0xf10
  __arm64_sys_finit_module+0xb0/0xe0
  el0_svc_common+0xa4/0x154
  el0_svc_compat_handler+0x2c/0x38
  el0_svc_compat+0x8/0x10
 Code: d503201f f85b8268 b4000248 f8560e74 (f9400280)
 ---[ end trace e5c1470a584952a0 ]---
 Kernel panic - not syncing: Fatal exception

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 drivers/iommu/iommu.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index a4c2f122eb8b..05f7b77c432f 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -1491,6 +1491,7 @@ static int iommu_alloc_default_domain(struct device *dev)
 {
 	struct iommu_group *group;
 	unsigned int type;
+	int ret;
 
 	group = iommu_group_get(dev);
 	if (!group)
@@ -1501,7 +1502,11 @@ static int iommu_alloc_default_domain(struct device *dev)
 
 	type = iommu_get_def_domain_type(dev);
 
-	return iommu_group_alloc_default_domain(dev->bus, group, type);
+	ret = iommu_group_alloc_default_domain(dev->bus, group, type);
+
+	iommu_group_put(group);
+
+	return ret;
 }
 
 /**
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
