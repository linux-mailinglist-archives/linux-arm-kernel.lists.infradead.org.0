Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB012131CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SuQacIZW+9m5iG1B1E9DPjvQfM0qyIOsU2jTVfBA1BE=; b=oQZ
	rlw2iKS8scZr/Vnuk438GK1V83CLFfF+x4QkCdPTPBTzzFaGipxLTEw1YYfYlikEkdY2S7GpmQAkr
	HKthRc/sYFq5Wj4Bzy3rL5+j54hWEqcvYFBV0f60ayrXVaAOm+ecsjYB8jWlVU7TQlVQuXSNDJM5s
	uiBLaTZ+BT6ZgQeZggrYtRcl6usEufNwM6Da3jyFOwgKg/qXWUXI7oBWHo9//m1EW260bQzFOSgqP
	5k3bKNGwE68TpdRysQwbzqhqojKUwSbJ3Va8QourRdXtZxhPXXXt9P49ixfyR8O5yiVRoGJf8Zpcg
	dwddSBzQEnC8+lImnKg0eYOR7gJ7Ybw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMafz-0001C4-Ty; Fri, 03 May 2019 16:04:43 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMafr-0001BY-Kv
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:04:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5619B374;
 Fri,  3 May 2019 09:04:35 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 3AB533F557; Fri,  3 May 2019 09:04:34 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] coresight: Do not call smp_processor_id() from preemptible
Date: Fri,  3 May 2019 17:04:18 +0100
Message-Id: <1556899459-27785-1-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_090435_879355_67FE0D5E 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Instead of using smp_processor_id() to figure out the node,
use the numa_node_id() for the current CPU node to avoid
splats like :

 BUG: using smp_processor_id() in preemptible [00000000] code: perf/1743
 caller is alloc_etr_buf.isra.6+0x80/0xa0
 CPU: 1 PID: 1743 Comm: perf Not tainted 5.1.0-rc6-147786-g116841e #344
 Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Platform, BIOS EDK II Feb  1 2019
  Call trace:
   dump_backtrace+0x0/0x150
   show_stack+0x14/0x20
   dump_stack+0x9c/0xc4
   debug_smp_processor_id+0x10c/0x110
   alloc_etr_buf.isra.6+0x80/0xa0
   tmc_alloc_etr_buffer+0x12c/0x1f0
   etm_setup_aux+0x1c4/0x230
   rb_alloc_aux+0x1b8/0x2b8
   perf_mmap+0x35c/0x478
   mmap_region+0x34c/0x4f0
   do_mmap+0x2d8/0x418
   vm_mmap_pgoff+0xd0/0xf8
   ksys_mmap_pgoff+0x88/0xf8
   __arm64_sys_mmap+0x28/0x38
   el0_svc_handler+0xd8/0x138
   el0_svc+0x8/0xc

Fixes: 855ab61c16bf70b646 ("coresight: tmc-etr: Refactor function tmc_etr_setup_perf_buf()")
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 793639f..74578bd 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1323,13 +1323,11 @@ static struct etr_perf_buffer *
 tmc_etr_setup_perf_buf(struct tmc_drvdata *drvdata, struct perf_event *event,
 		       int nr_pages, void **pages, bool snapshot)
 {
-	int node, cpu = event->cpu;
+	int node;
 	struct etr_buf *etr_buf;
 	struct etr_perf_buffer *etr_perf;
 
-	if (cpu == -1)
-		cpu = smp_processor_id();
-	node = cpu_to_node(cpu);
+	node = (event->cpu == -1)? numa_node_id() : cpu_to_node(event->cpu);
 
 	etr_perf = kzalloc_node(sizeof(*etr_perf), GFP_KERNEL, node);
 	if (!etr_perf)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
