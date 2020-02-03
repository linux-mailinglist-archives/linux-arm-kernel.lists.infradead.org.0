Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6B9150084
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 03:08:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fs3BrVJe6zQqiqmOv5DaMHJ9y0wBMUgVolvQExN4KcM=; b=X7qeFA17/Rqjl1/myjowRF8Qjh
	zr9MGZucYSrStDKn8hjOJyQWLab8WTm49onvYJM56UV46kjCeDijxyBi4WeiYaK4e6OzcA4OvYNqP
	ojnQ0vYp6ov2rlYLYGFWYtbKJpD+kdsJokVdhM1AxKSmJCxnoqlWS1NcTCeH5ctFYL5a+Z7v+6FOS
	CcW3YMUjH84jkKN2hXbNqr2rM7ypA5MUK9mLxIfLJxT4+9ky1Dku3GfgpJapG9IXU6t3Hyz3G1bUY
	dJxHOv0qVMPM4dQYm5eDockHAcBYghiTV6Py7y6jiZ6KQTG+kM9fzFG91ogCo19kDwxYNW9JgdVkY
	i8Mj0kTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyRAL-0006H9-FD; Mon, 03 Feb 2020 02:08:45 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyR9m-0005sz-I6
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 02:08:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id y5so6695551pfb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 18:08:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zLBjuDshYyKGh29JrHXXA2RwDnDnZ6HsXu4YPesaNrg=;
 b=UL8rKCDZGk+zegMWKjyJtACT3K8kOy1pdAvhJdEIwOzmwX/39OQknYQ/fko0L0H6bq
 VxJRKcShD/OZ6Y6JTNGivaUlZGep0VhWRB+MqH8PpKIemtUVtEx0nz90k7lSEjS0K6X3
 TWcCYXgxTdnXaQdNEx68oQQCM4UJ2DATrM6Rp4Pk0IBIy1ALsYRpVrQF6yTP2zpGpdzv
 ZxH42Afv/rPNeOgosWgqSjYpDPhI8h81IQJ+iu7P3l4wEXAmD4wbcZMX8IU6F51dAv0u
 g/IxzuPnKJrIR3AxDnxk9AFzHgaztyGc/wPNbmNprXVP7JJKSfLpusgREiScUAL8nz2d
 IqxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zLBjuDshYyKGh29JrHXXA2RwDnDnZ6HsXu4YPesaNrg=;
 b=oxi+kpa7jTYYDf2RJZ13EViUTR7938RQxAjwllwx39jubS4HboqL2Ml/Z6O1aJCWLI
 gC/lso9wOu/wHnGX0Fd0lmJRi93pltBhjeoZwejjelsBwLbPwTJB12XjmC3Djag0HYKa
 p3npqOgxxuNPVnISfBJ3BConQ2kNMBFvYi6iohqxPNPTYZbOdDSL3z/DCRpqqDjc6DkS
 NSHXr/AWE5ageW0+exxJLX0BMayi68Aas99owXRuWWp5l8YY7ZdNUtMZYJvVz9eukrEk
 7fEjw9MjzMJeEF8IAAeu27dvJziOKphnRYWp+lW5Q4QLBto2IjpTUTrD1Khu6jnWvQhM
 4okg==
X-Gm-Message-State: APjAAAXljn2ulxIqJqUKk01LVMXGqvxcp+iAbOF7/4T0G/YpPUbJ1q66
 ZDpDo/RmH7QEED4TCFMxoKIchQ==
X-Google-Smtp-Source: APXvYqw2Ye52QXrHtjtwWigL5rnaQVrweMI9RHuDrOefS0T6F8vVwdD5YsgCGq4XwL6sNDYNa4Bmww==
X-Received: by 2002:a63:7419:: with SMTP id p25mr6552388pgc.430.1580695689643; 
 Sun, 02 Feb 2020 18:08:09 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id z29sm17521201pgc.21.2020.02.02.18.08.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 18:08:09 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <robert.walker@arm.com>,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v4 4/5] perf cs-etm: Support callchain for instruction sample
Date: Mon,  3 Feb 2020 10:07:15 +0800
Message-Id: <20200203020716.31832-5-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200203020716.31832-1-leo.yan@linaro.org>
References: <20200203020716.31832-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_180810_665406_EF66DCD2 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index 617facef24cc..8f805657658d 100644
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
 
@@ -273,6 +285,7 @@ static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
 out_free:
 	zfree(&tidq->last_branch_rb);
 	zfree(&tidq->last_branch);
+	zfree(&tidq->chain);
 	zfree(&tidq->prev_packet);
 	zfree(&tidq->packet);
 out:
@@ -544,6 +557,7 @@ static void cs_etm__free_traceid_queues(struct cs_etm_queue *etmq)
 		zfree(&tidq->event_buf);
 		zfree(&tidq->last_branch);
 		zfree(&tidq->last_branch_rb);
+		zfree(&tidq->chain);
 		zfree(&tidq->prev_packet);
 		zfree(&tidq->packet);
 		zfree(&tidq);
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
 	if (etm->synth_opts.last_branch)
 		sample.branch_stack = tidq->last_branch;
 
@@ -1364,6 +1386,8 @@ static int cs_etm__synth_events(struct cs_etm_auxtrace *etm,
 		attr.sample_type &= ~(u64)PERF_SAMPLE_ADDR;
 	}
 
+	if (etm->synth_opts.callchain)
+		attr.sample_type |= PERF_SAMPLE_CALLCHAIN;
 	if (etm->synth_opts.last_branch)
 		attr.sample_type |= PERF_SAMPLE_BRANCH_STACK;
 
@@ -2733,7 +2757,6 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 	} else {
 		itrace_synth_opts__set_default(&etm->synth_opts,
 				session->itrace_synth_opts->default_no_sample);
-		etm->synth_opts.callchain = false;
 		etm->synth_opts.thread_stack =
 				session->itrace_synth_opts->thread_stack;
 	}
@@ -2745,6 +2768,14 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
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
