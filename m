Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA06C1C7564
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2GMmiQgewkLLBVYji4VnjyEfETSqce+5dnttpMnzyRo=; b=MNK/lJtGWoDjr/
	gUIA+2L3OB5snLObnMpR6+kktahhh6MOUL+EYjaknB7UK84ewRHUvA78iUM+bNxlbvhRbSmcecbkE
	NnnOKIuxd4+HCHL1663gApvFIHDxt7kqeVOGt8FeByv7bh+UGd9Dj9sOh0c1RSpxoDAjKBbIAdEth
	buMIBz5IDpHI08KxCPJ1mbxtqZnxGZrRKVNAnLUHDcCjzJQvCOafVrbAO7cZIVunH8aiYPpOVp25d
	9jgWZDSDjQK7AUFAja0vRgo6El1akb6xdvO5T3QFM7oCWB8XusS/z3T1fdWRweutYBZl1r1TSyrSh
	g9SshVdbfH8MRhk+cUtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWMMX-0004ZR-IA; Wed, 06 May 2020 15:53:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWMMP-0004Yg-Dn
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:53:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA818D6E;
 Wed,  6 May 2020 08:53:22 -0700 (PDT)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F3A7E3F68F;
 Wed,  6 May 2020 08:53:21 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] coresight: etm4x: Fix use-after-free of per-cpu etm drvdata
Date: Wed,  6 May 2020 16:53:12 +0100
Message-Id: <20200506155312.1777481-1-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_085325_546289_DBC9806E 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: coresight@lists.linaro.org, Mike Leach <mike.leach@linaro.org>,
 saiprakash.ranjan@codeaurora.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

etm probe could be deferred due to the dependency in the trace
path chain and may be retried. We need to clear the per-cpu
etmdrvdata entry for the etm in case of a failure to avoid
use-after-free cases as reported below:

KASAN use-after-free bug in etm4_cpu_pm_notify():

[    8.574566] coresight etm0: CPU0: ETM v4.2 initialized
[    8.581920] BUG: KASAN: use-after-free in etm4_cpu_pm_notify+0x580/0x2024
[    8.581925] Read of size 8 at addr ffffff813304f8c8 by task swapper/3/0
[    8.581927]
[    8.581934] CPU: 3 PID: 0 Comm: swapper/3 Tainted: G S      W         5.4.28 #314
[    8.587775] coresight etm1: CPU1: ETM v4.2 initialized
[    8.594195] Call trace:
[    8.594205]  dump_backtrace+0x0/0x188
[    8.594209]  show_stack+0x20/0x2c
[    8.594216]  dump_stack+0xdc/0x144
[    8.594227]  print_address_description+0x3c/0x494
[    8.594232]  __kasan_report+0x144/0x168
[    8.601598] coresight etm2: CPU2: ETM v4.2 initialized
[    8.602563]  kasan_report+0x10/0x18
[    8.602568]  check_memory_region+0x1a4/0x1b4
[    8.602572]  __kasan_check_read+0x18/0x24
[    8.602577]  etm4_cpu_pm_notify+0x580/0x2024
[    8.665945]  notifier_call_chain+0x5c/0x90
[    8.670166]  __atomic_notifier_call_chain+0x90/0xf8
[    8.675182]  cpu_pm_notify+0x40/0x6c
[    8.678858]  cpu_pm_enter+0x38/0x80
[    8.682451]  psci_enter_idle_state+0x34/0x70
[    8.686844]  cpuidle_enter_state+0xb8/0x20c
[    8.691143]  cpuidle_enter+0x38/0x4c
[    8.694820]  call_cpuidle+0x3c/0x68
[    8.698408]  do_idle+0x1a0/0x280
[    8.701729]  cpu_startup_entry+0x24/0x28
[    8.705768]  secondary_start_kernel+0x15c/0x170
[    8.710423]
[    8.711972] Allocated by task 242:
[    8.715473]  __kasan_kmalloc+0xf0/0x1ac
[    8.719426]  kasan_slab_alloc+0x14/0x1c
[    8.723375]  __kmalloc_track_caller+0x23c/0x388
[    8.728040]  devm_kmalloc+0x38/0x94
[    8.731632]  etm4_probe+0x48/0x3c8
[    8.735140]  amba_probe+0xbc/0x158
[    8.738645]  really_probe+0x144/0x408
[    8.742412]  driver_probe_device+0x70/0x140
[    8.746716]  __device_attach_driver+0x9c/0x110
[    8.751287]  bus_for_each_drv+0x90/0xd8
[    8.755236]  __device_attach+0xb4/0x164
[    8.759188]  device_initial_probe+0x20/0x2c
[    8.763490]  bus_probe_device+0x34/0x94
[    8.767436]  device_add+0x34c/0x3e0
[    8.771029]  amba_device_try_add+0x68/0x440
[    8.775332]  amba_deferred_retry_func+0x48/0xc8
[    8.779997]  process_one_work+0x344/0x648
[    8.784127]  worker_thread+0x2ac/0x47c
[    8.787987]  kthread+0x128/0x138
[    8.791313]  ret_from_fork+0x10/0x18
[    8.794993]
[    8.796532] Freed by task 242:
[    8.799684]  __kasan_slab_free+0x15c/0x22c
[    8.803897]  kasan_slab_free+0x10/0x1c
[    8.807761]  kfree+0x25c/0x4bc
[    8.810913]  release_nodes+0x240/0x2b0
[    8.814767]  devres_release_all+0x3c/0x54
[    8.818887]  really_probe+0x178/0x408
[    8.822661]  driver_probe_device+0x70/0x140
[    8.826963]  __device_attach_driver+0x9c/0x110
[    8.831539]  bus_for_each_drv+0x90/0xd8
[    8.835487]  __device_attach+0xb4/0x164
[    8.839431]  device_initial_probe+0x20/0x2c
[    8.843732]  bus_probe_device+0x34/0x94
[    8.847678]  device_add+0x34c/0x3e0
[    8.851274]  amba_device_try_add+0x68/0x440
[    8.855576]  amba_deferred_retry_func+0x48/0xc8
[    8.860240]  process_one_work+0x344/0x648
[    8.864366]  worker_thread+0x2ac/0x47c
[    8.868228]  kthread+0x128/0x138
[    8.871557]  ret_from_fork+0x10/0x18
[    8.875231]
[    8.876782] The buggy address belongs to the object at ffffff813304f800
[    8.876782]  which belongs to the cache kmalloc-1k of size 1024
[    8.889632] The buggy address is located 200 bytes inside of
[    8.889632]  1024-byte region [ffffff813304f800, ffffff813304fc00)
[    8.901761] The buggy address belongs to the page:
[    8.906695] page:ffffffff04ac1200 refcount:1 mapcount:0 mapping:ffffff8146c03800 index:0x0 compound_mapcount: 0
[    8.917047] flags: 0x4000000000010200(slab|head)
[    8.921799] raw: 4000000000010200 dead000000000100 dead000000000122 ffffff8146c03800
[    8.929753] raw: 0000000000000000 0000000000100010 00000001ffffffff 0000000000000000
[    8.937703] page dumped because: kasan: bad access detected
[    8.943433]
[    8.944974] Memory state around the buggy address:
[    8.949903]  ffffff813304f780: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
[    8.957320]  ffffff813304f800: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[    8.964742] >ffffff813304f880: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[    8.972157]                                               ^
[    8.977886]  ffffff813304f900: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[    8.985298]  ffffff813304f980: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[    8.992713] ==================================================================

Fixes: f188b5e76aae9 ( "coresight: etm4x: Save/restore state across CPU low power states ")
Reported-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Tested-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 0b2c7c7efacb..d7e19d91ff17 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1516,6 +1516,7 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 	return 0;
 
 err_arch_supported:
+	etmdrvdata[drvdata->cpu] = NULL;
 	if (--etm4_count == 0) {
 		etm4_cpu_pm_unregister();
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
