Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4DB30065
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 18:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k+Siq7xybO3nHKBqUhv+umgXD3uW2ZlS1qL9gaIYfmQ=; b=L9IuhJE2GnPbuPS9+A+OyH8mWC
	0ckYb6x9wWQa+aHB1yTKwc4vCXk9UZ78Fq6g0wcxxsPbM90KRhxii49xa15cgHsfEoE+pmaFg9CzV
	xYJ8R/hcsP7+rrbQ/w9PU8T7lLX2XHOD7avqZ8m1jyWsiaHzq+8sO6a78kt/tB6qHxz0sD+4mFUb2
	ruUShRqZOlZL6MdrGtiKifAOq6o0mU5gO3rdagWnghMFoT6VfpakfGwz8R4a6UMckYrjk/sRLENCG
	ATqDTitxuJiEgN0bUx6m1Mumi9HLGQhjfzuRuhjrTuRrWcnrY4ps1+/ux889hsojE6mlEABJCz2p8
	UtA7jSeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWOKS-0006QZ-6g; Thu, 30 May 2019 16:55:00 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWOK8-000680-My
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 16:54:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 755F515AD;
 Thu, 30 May 2019 09:54:40 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 422823F5AF; Thu, 30 May 2019 09:54:39 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/4] coresight: tmc-etr: Do not call smp_processor_id()
 from preemptible
Date: Thu, 30 May 2019 17:54:24 +0100
Message-Id: <1559235267-25232-2-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559235267-25232-1-git-send-email-suzuki.poulose@arm.com>
References: <1559235267-25232-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_095440_749022_BD617958 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: coresight@lists.linaro.org, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, mathieu.poirier@linaro.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
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
index ce0114a..7c81f63 100644
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
+	node = (event->cpu == -1) ? NUMA_NO_NODE : cpu_to_node(event->cpu);
 
 	etr_perf = kzalloc_node(sizeof(*etr_perf), GFP_KERNEL, node);
 	if (!etr_perf)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
