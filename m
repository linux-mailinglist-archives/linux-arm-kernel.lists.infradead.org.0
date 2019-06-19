Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBAF4C1FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 22:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I3kNfH7AEn9Q2mcGoXiLSeK083Dx/fz58N/mPL27m10=; b=GfSTNUgBIE8GHtgGs0Ir9a6pir
	gLg8wVM61k6Xz5Oytba25LSPNDLSVjn0dEnm0pL1u6hiRWR2gq0qB8P7X9iOeY/bTgdXO/qctJO/8
	NE01ykGBp+YNhj+A6fGnAyKwMhPo39FyVT9W0H8D3xAgeBtXgZpWJqHCi8XqzBHOPPuMMJIKz8AfA
	idYpyely+GKgRsbmZ47rGNwr+trtKPjxd0WHhfSXEkeXvZeJPxVtzdGdyo9AOBmfin7lhnmSqiLKx
	t3sVfLkgHJ4vjHR/Z/nXW++/Lc2ZKc/11glXu0GTiYQxTlMRnt+epKzlynTg/3s8aTuxsvNGd4YCm
	t8MEQf2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdgmo-0007jf-2s; Wed, 19 Jun 2019 20:02:26 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdgeO-0006fB-1s
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 19:53:47 +0000
Received: by mail-pl1-x642.google.com with SMTP id cl9so249608plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 12:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UC0Qh+uUJVyhwc88NCYhgwMpRvPxciHY87Ex0aW5HaU=;
 b=NrKx5tWye87n268TSdDr9qGjAoXq6nSSvFB7xRH+Pm3dagLn9GTCc4w1flwFX6f1p3
 N173E/bBOONw9hfKQ8L1JCTTBBKkhj+DnIvwoGknbWhUbSYqYsIl8Jsh+i/nsRStqJln
 juw80OR54qWJYq2ZQ04R6urpbTlV5VTTZAmdb6u/T3Y+g5VcAR0rUshOdc48AYkR4ARp
 ekmIvh/q0tKH02NJCb/po2qyc7gjVa+UbGlSnAzT/PJZG6RaqIyMBPuq71pOr1lGmy5x
 Q8GwVObdsAFoyJXln/6GtC/pvBVs7XqzDd35gkvEeDMKk/gNYrJPktbf7E0luClisnf2
 l2fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UC0Qh+uUJVyhwc88NCYhgwMpRvPxciHY87Ex0aW5HaU=;
 b=GC4G4tiey2rSjkl9oIvfuaXtmNRcU3wZIAIHEQs6GIMIT1T9IgKHDoAJDpHwQsyu/A
 88csZqk+bpQB+gZhek/YSbXt6v2jGmbuGeHfISADvs68mfVC5yHq5vgLQM2k6uansV8c
 lQai6HZ05XgB5Bq9exC7BLvG3u7Z7axI+NkDJhY3bTVs7W6+EBo3Bgoy4EQCc0M2vOP4
 mrMxe3os2qNgzGLkhrhIttUNFA9H8qqaiJ16VWOCokOH0/YaAhoJ7wWQN968vNgYTAYB
 X8myZ2qLrYpl3X6bXcX0fp0GxaJwQJ6+MRKqz5tmVApiopoyhKQhXLcQsZxo+XYW6fzI
 7uSg==
X-Gm-Message-State: APjAAAUgdu5eJkYu+fam95OvqE2URQa92PxH8jOfm0Ekw0WulN1a3NJl
 Rdfm+1Lv0vGlbCBukEfIc+z5xA==
X-Google-Smtp-Source: APXvYqyL0c6KGe2kHuhwvHCq5nGgCZcgHpC6FzUptevvSR8Au7sLnU7ax3G48/oUSfcWsHnAL+FSwA==
X-Received: by 2002:a17:902:148:: with SMTP id
 66mr113353833plb.143.1560974022077; 
 Wed, 19 Jun 2019 12:53:42 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j14sm21615993pfn.120.2019.06.19.12.53.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 12:53:41 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 22/28] coresight: tmc-etf: Do not call smp_processor_id from
 preemptible
Date: Wed, 19 Jun 2019 13:53:12 -0600
Message-Id: <20190619195318.19254-23-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619195318.19254-1-mathieu.poirier@linaro.org>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_125344_111223_0EB607C6 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

During a perf session we try to allocate buffers on the "node" associated
with the CPU the event is bound to. If it is not bound to a CPU, we
use the current CPU node, using smp_processor_id(). However this is unsafe
in a pre-emptible context and could generate the splats as below :

 BUG: using smp_processor_id() in preemptible [00000000] code: perf/2544
 caller is tmc_alloc_etf_buffer+0x5c/0x60
 CPU: 2 PID: 2544 Comm: perf Not tainted 5.1.0-rc6-147786-g116841e #344
 Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno Development Platform, BIOS EDK II Feb  1 2019
 Call trace:
  dump_backtrace+0x0/0x150
  show_stack+0x14/0x20
  dump_stack+0x9c/0xc4
  debug_smp_processor_id+0x10c/0x110
  tmc_alloc_etf_buffer+0x5c/0x60
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

Use NUMA_NO_NODE hint instead of using the current node for events
not bound to CPUs.

Fixes: 2e499bbc1a929ac ("coresight: tmc: implementing TMC-ETF AUX space API")
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-tmc-etf.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index b89e29c5b39d..23b7ff00af5c 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -377,12 +377,10 @@ static void *tmc_alloc_etf_buffer(struct coresight_device *csdev,
 				  struct perf_event *event, void **pages,
 				  int nr_pages, bool overwrite)
 {
-	int node, cpu = event->cpu;
+	int node;
 	struct cs_buffers *buf;
 
-	if (cpu == -1)
-		cpu = smp_processor_id();
-	node = cpu_to_node(cpu);
+	node = (event->cpu == -1) ? NUMA_NO_NODE : cpu_to_node(event->cpu);
 
 	/* Allocate memory structure for interaction with Perf */
 	buf = kzalloc_node(sizeof(struct cs_buffers), GFP_KERNEL, node);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
