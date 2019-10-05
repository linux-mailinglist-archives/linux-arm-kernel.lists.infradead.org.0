Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F448CC907
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 11:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xpI4AmKEPTaBf+ubyMFKDTCSIz01Y6YF8SiFng7Y+hw=; b=MyheofEgaxBWWZy1XXaijg6z0e
	0hQjUP128vlKuZa4fCpcc3yaYExHq9ZkdrVPqfCwrHGQZS/QZnNtBpmtbTsZezesVgXWyCdPYH/Wj
	gStWjf2xXv1+qaXnV/68G3sUx3goEzHbSMEMJwVYkbIv04EqxaEPIOkS/aePlc9vBTdObXiOi03Pq
	fHlmtYSW97Lh6A3GNIXGipd0ntepb9kVLY3FR+ts7vH2Ongfin89AyTt2+9X6xVq87i/H7fDR4WrC
	kp+POkRAyKEdZOQH0C1zlF3pjQew42TkWorsk2f6L+2u5SDcb0qEVlHfmVPAUmecN0f75sxhvfLf5
	xpRjwAJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGgDI-0004tO-4K; Sat, 05 Oct 2019 09:18:56 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGgBU-0003ma-O8
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 09:17:06 +0000
Received: by mail-qt1-x843.google.com with SMTP id r5so12215569qtd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 02:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vKe+RbONBbtsSEscZalEdBXt7OSCg1h7S1CJqx/C4I8=;
 b=Lm4kUtl9jA8j3ivLXcwP7K8BKLshypBI7RUHI3Xnzp7uCFEVJ3bgfDM7PRxQ2xRR1A
 V7kogDQ8J4+eAxu7HQnZr/qR/ksOvQx1SbfHz/seX56uN8psAmwiUNzX1L37RZEcECWP
 f+Xgbx030dGDRJIlBHVcsUUOCQFp3wp7uL1JG4hvgHgCp/CcQ1O7DjLD6YjjYwsz52CM
 sl3ILW23Qzqv/9LygkMFvn2N98i7cfWmhCY9qfgA56jTK6qdReAn7tZai08jasMpKUqh
 zHYeB9WQJlMFiz7EGV8RybsYir+NRZlUH25ythvFOq5FltlsayVh7HetjDT4momcDcKI
 BTpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vKe+RbONBbtsSEscZalEdBXt7OSCg1h7S1CJqx/C4I8=;
 b=snnK3ff03g6NzbyFti+bz27ONOT9KTvSoS9ht9jyMAnPiswQjiO+41YU2zxX3BfIno
 IO0th8eCYq2+OJxbt9KU/Enp/CdbGK0nhIXZrrU1Who+zDw6F114yoqb6eyL/Wa5WW31
 plJKZafUaEjzS/WZTkYSLlQssGBHvzL8Eqk307lBwczWneAbQBf8j62f7r8k+V7hbyMw
 yNWea1wp+vWtj1u2vW4axuKL+1xDwTCstNrtoDP+lxg+z8b2XcfBAYVkh6imhS6dYs+S
 uWeSA+PeH4TuCgeFIvOWPUAFEmVNjnTZ0Ozua5Jm8KRZ+Gwm9W7wpU4z+gDOi8XxS92f
 zpbQ==
X-Gm-Message-State: APjAAAXgM7WO4jDkU5C/+V3xe+z0cCuWRQmuDmxc8o/ZfsHiPQsHgvE9
 fp1hkqG762SHeydwj/St6HIfAA==
X-Google-Smtp-Source: APXvYqyghCbl+VoAKS9IVvXDx7Qo2EfpbHroZiX/FM55XG4RbaMy0lHp6ghG3/CwfDEB9F4V2RIV0A==
X-Received: by 2002:aed:22cc:: with SMTP id q12mr20936122qtc.232.1570267023107; 
 Sat, 05 Oct 2019 02:17:03 -0700 (PDT)
Received: from localhost.localdomain (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id u132sm4384621qka.50.2019.10.05.02.16.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 02:17:02 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>
Subject: [PATCH v3 5/6] perf cs-etm: Support callchain for instruction sample
Date: Sat,  5 Oct 2019 17:16:13 +0800
Message-Id: <20191005091614.11635-6-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191005091614.11635-1-leo.yan@linaro.org>
References: <20191005091614.11635-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_021704_968290_1103C530 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now CoreSight has supported the thread stack; based on the thread stack
we can synthesize call chain for the instruction sample; the call chain
can be injected by option '--itrace=g'.

Before:

  # perf script --itrace=g16l64i100
            main  1579        100      instructions:  ffff0000102137f0 group_sched_in+0xb0 ([kernel.kallsyms])
            main  1579        100      instructions:  ffff000010213b78 flexible_sched_in+0xf0 ([kernel.kallsyms])
            main  1579        100      instructions:  ffff0000102135ac event_sched_in.isra.57+0x74 ([kernel.kallsyms])
            main  1579        100      instructions:  ffff000010219344 perf_swevent_add+0x6c ([kernel.kallsyms])
            main  1579        100      instructions:  ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
  [...]

After:

  # perf script --itrace=g16l64i100

  main  1579        100      instructions:
          ffff000010213b78 flexible_sched_in+0xf0 ([kernel.kallsyms])
          ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])

  main  1579        100      instructions:
          ffff0000102135ac event_sched_in.isra.57+0x74 ([kernel.kallsyms])
          ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
          ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
          ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])

  main  1579        100      instructions:
          ffff000010219344 perf_swevent_add+0x6c ([kernel.kallsyms])
          ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
          ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
          ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
          ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
  [...]

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 35 +++++++++++++++++++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 4b42f9c9bd34..56e501cd2f5f 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -17,6 +17,7 @@
 #include <stdlib.h>
 
 #include "auxtrace.h"
+#include "callchain.h"
 #include "color.h"
 #include "cs-etm.h"
 #include "cs-etm-decoder/cs-etm-decoder.h"
@@ -74,6 +75,7 @@ struct cs_etm_traceid_queue {
 	size_t last_branch_pos;
 	union perf_event *event_buf;
 	struct thread *thread;
+	struct ip_callchain *chain;
 	struct branch_stack *last_branch;
 	struct branch_stack *last_branch_rb;
 	struct cs_etm_packet *prev_packet;
@@ -251,6 +253,16 @@ static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
 	if (!tidq->prev_packet)
 		goto out_free;
 
+	if (etm->synth_opts.callchain) {
+		size_t sz = sizeof(struct ip_callchain);
+
+		/* Add 1 to callchain_sz for callchain context */
+		sz += (etm->synth_opts.callchain_sz + 1) * sizeof(u64);
+		tidq->chain = zalloc(sz);
+		if (!tidq->chain)
+			goto out_free;
+	}
+
 	if (etm->synth_opts.last_branch) {
 		size_t sz = sizeof(struct branch_stack);
 
@@ -275,6 +287,7 @@ static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
 	zfree(&tidq->last_branch);
 	zfree(&tidq->prev_packet);
 	zfree(&tidq->packet);
+	zfree(&tidq->chain);
 out:
 	return rc;
 }
@@ -546,6 +559,7 @@ static void cs_etm__free_traceid_queues(struct cs_etm_queue *etmq)
 		zfree(&tidq->last_branch_rb);
 		zfree(&tidq->prev_packet);
 		zfree(&tidq->packet);
+		zfree(&tidq->chain);
 		zfree(&tidq);
 
 		/*
@@ -1126,7 +1140,7 @@ static void cs_etm__add_stack_event(struct cs_etm_queue *etmq,
 	int insn_len;
 	u64 from_ip, to_ip;
 
-	if (etm->synth_opts.thread_stack) {
+	if (etm->synth_opts.callchain || etm->synth_opts.thread_stack) {
 		from_ip = cs_etm__last_executed_instr(tidq->prev_packet);
 		to_ip = cs_etm__first_executed_instr(tidq->packet);
 
@@ -1182,6 +1196,14 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 
 	cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->packet, &sample);
 
+	if (etm->synth_opts.callchain) {
+		thread_stack__sample(tidq->thread, tidq->packet->cpu,
+				     tidq->chain,
+				     etm->synth_opts.callchain_sz + 1,
+				     sample.ip, etm->kernel_start);
+		sample.callchain = tidq->chain;
+	}
+
 	if (etm->synth_opts.last_branch) {
 		cs_etm__copy_last_branch_rb(etmq, tidq);
 		sample.branch_stack = tidq->last_branch;
@@ -1369,6 +1391,8 @@ static int cs_etm__synth_events(struct cs_etm_auxtrace *etm,
 		attr.sample_type &= ~(u64)PERF_SAMPLE_ADDR;
 	}
 
+	if (etm->synth_opts.callchain)
+		attr.sample_type |= PERF_SAMPLE_CALLCHAIN;
 	if (etm->synth_opts.last_branch)
 		attr.sample_type |= PERF_SAMPLE_BRANCH_STACK;
 
@@ -2639,7 +2663,6 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 	} else {
 		itrace_synth_opts__set_default(&etm->synth_opts,
 				session->itrace_synth_opts->default_no_sample);
-		etm->synth_opts.callchain = false;
 		etm->synth_opts.thread_stack =
 				session->itrace_synth_opts->thread_stack;
 	}
@@ -2651,6 +2674,14 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 		etm->branches_filter |= PERF_IP_FLAG_RETURN |
 					PERF_IP_FLAG_TRACE_BEGIN;
 
+	if (etm->synth_opts.callchain && !symbol_conf.use_callchain) {
+		symbol_conf.use_callchain = true;
+		if (callchain_register_param(&callchain_param) < 0) {
+			symbol_conf.use_callchain = false;
+			etm->synth_opts.callchain = false;
+		}
+	}
+
 	err = cs_etm__synth_events(etm, session);
 	if (err)
 		goto err_delete_thread;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
