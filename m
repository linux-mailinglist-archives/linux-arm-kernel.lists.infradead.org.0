Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316051FDD84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iu47gEEZZEvFz+YK3AwfKTjfKRU+oPUSyelYvxFMnPo=; b=PpqfqdTAI9V2dW
	d/nyMhC9dDjX5/ApP5E9QzaEdLOSp/bFleeCDpyNR++AOGEPks0hHzwIEyiQLDCOeLZzFvNdls3Fs
	jW2NnknmjVZckyVq9VwaLksZUfPf7kNE5xjO+YqVgVno4vbH3c6S9E1Q+6hThxvz1CyREVoSvtPIL
	olXuUAMr8/6ia6hlw+huyME815gA0kwG4ITBMsKOAvWKlycu5j54V8Ankmur3XCIt2hpcg6Q7E/ng
	MrLCqREiBVv0HBvQizHl6QkRDrroOMzl1WRIQJV2sAOzPxbjmKWPZE1dIKgI5pnRiP1oqQunhACJq
	q+3LRXygn/VkX1AGf1Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljKO-0003bW-4Y; Thu, 18 Jun 2020 01:26:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlj7D-0002hL-6Y
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:13:18 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4EB7421D7B;
 Thu, 18 Jun 2020 01:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442794;
 bh=8A5vvyWCKAprClXHd8OFeNNiODXdXs8A9IWp2M4u3LI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jbpJCCmS4rvrCa/2J1emYAIG73Z1TBTQVyTXZJg5r6Zot0CiL1pWJkLzafhdyPzLh
 kWyimX5+iwK67JcLmyJJ3VNLGlQOyFN+p3IMyQEaBoFWD7bvgicAkoFhp9KZ9jKE+e
 gJnsi0YxJQTqY0nCRjBVD7EarvYoNQ5RKWv9aog0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 236/388] coresight: etm4x: Fix use-after-free of
 per-cpu etm drvdata
Date: Wed, 17 Jun 2020 21:05:33 -0400
Message-Id: <20200618010805.600873-236-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_181315_382829_EE6954FA 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

[ Upstream commit 3f4943d422c5febbb3c764670011a00eb2a86238 ]

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

Fixes: f188b5e76aae ("coresight: etm4x: Save/restore state across CPU low power states")
Reported-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Tested-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Link: https://lore.kernel.org/r/20200518180242.7916-22-mathieu.poirier@linaro.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index a90d757f7043..a6d6c7a3abcb 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1527,6 +1527,7 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 	return 0;
 
 err_arch_supported:
+	etmdrvdata[drvdata->cpu] = NULL;
 	if (--etm4_count == 0) {
 		etm4_cpu_pm_unregister();
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
