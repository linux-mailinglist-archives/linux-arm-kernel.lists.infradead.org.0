Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82934A2FD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 08:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RiZnt1yUmb0YJIlzAVUBVCI2XP66oHy+tKQPz7WyoFY=; b=DOu+cccCDMX/IBaqJILMMkhoSg
	7h9dkl4PcEhUwEefUBN8b5VkfyHCIp59PwinLY4bWYpyM5idl4FSEydtGEJKZf9RpCs4WjS8qYX6q
	R0Gw1VXLU/s1vzUTLcZgbe2b6Sy59Zae78WTT7dujt0pNoUitO7mvViGXbTRpG9RTUatbaCOuxmlZ
	cnXrwsFF5IXCkMvUo5GqeV4Qfn7qj0dHHJobsnkwuIRJQXnkYaZeIuNYtKFHyQ3NYecUHjvHdIA1e
	dw7RmhSI1jalvFmxItBfGVtHaImce88k9uDq3FmJaUmavBoVFSyMAWMFrl2PqyyiTFioNRIycyLxI
	s3b+ZbgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aLw-0001al-Ps; Fri, 30 Aug 2019 06:25:44 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aL9-0008VE-Oo
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 06:24:57 +0000
Received: by mail-yb1-xb42.google.com with SMTP id m9so2092063ybm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 23:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ELhnXlXvAFpwCV+V+b16yA2Nld0gK9Jz+4VNmTdBWdw=;
 b=wPf/U6vBDNIDDjJdEeBOmvaat9NvWYI/03e7p7HMz2TC2ZjEYLn5tveASdi7BR+AvA
 uibnvuSe/esgef7sw1I5vAnsW00Xt5qexP5PVQEKjG+YBy/bipVr9GF+qOmUXjwWvIH4
 +NQOJiJcjkNj/PGY9m38pWmhGpi5pg1gNh0m5GcDsHpyQBAc/eWhNB99u1fyWR3uCGax
 Q4oEXrIKdlL+17FlRKeL/DyTkK7kIEYOmkNZzLjmp7FW7fxRziJmV6SxPOfzMw7i5+ts
 mrnyKG47YnoVjyQ0ZKwjJNOOLU0rgdzouLzcJTO0m2hh6YR2L8qWgiV9vBsC5BRKr4O/
 7XDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ELhnXlXvAFpwCV+V+b16yA2Nld0gK9Jz+4VNmTdBWdw=;
 b=aLV/m5X2jnTNYETabKYosjSx4vJ33e30ZiSwPp4UtzGeY044+rjbfmhM6PpqN8bd8c
 I0LkjfxLcCYWncXRLZ/dk4lcAz8lel0u7DrSdjGR/dEHTkLoD6+CaSq4WFPaDZaKSqtJ
 yb0EZXX6hzd58YB5CE1JN+hQEJO7/mLAp+HBoK73ZT1JkO6DlauisXTKqPvWcuaiKtEE
 yvNtE1zGFgaw3hTjmoZy/B6IiXpJIo/A076li6Yo9I74Is8cd4vVAQDa3P3SVsnEnAHK
 1n491h1ojaVOUEfd8h7y3xEcYS8hBgo3rP1V/6M20VGbkdGaBIrSyvSJ9bZ1NReOvm5A
 TCxA==
X-Gm-Message-State: APjAAAWFdjHODfUdvlRlhRGUyuanHubKBEEaJ4JhKaSi1gbgwFYsL/ti
 J1//GlcGnSiFOumqrTSaagwxVkb8dAgbGQ==
X-Google-Smtp-Source: APXvYqyvU5/TZFIK+mjFwUTLF+eCFaZYTSR08qcHNcKCNl2yqbNOf3yvoTXvqjr/RXrksLmAjMn8LQ==
X-Received: by 2002:a25:bb83:: with SMTP id y3mr9736959ybg.345.1567146294119; 
 Thu, 29 Aug 2019 23:24:54 -0700 (PDT)
Received: from localhost.localdomain (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id r193sm976784ywe.8.2019.08.29.23.24.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 23:24:53 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <Robert.Walker@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH v1 2/3] perf cs-etm: Add callchain to instruction sample
Date: Fri, 30 Aug 2019 14:24:20 +0800
Message-Id: <20190830062421.31275-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830062421.31275-1-leo.yan@linaro.org>
References: <20190830062421.31275-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_232456_029342_A48BBCA7 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
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

Firstly, this patch adds support for the thread stack; when every branch
packet is coming we will push or pop the stack based on the sample
flags.

Secondly, based on the thread stack we can synthesize call chain for the
instruction sample, this can be used by itrace option '--itrace=g'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 74 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 73 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 882a0718033d..ad573d3bd305 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -17,6 +17,7 @@
 #include <stdlib.h>
 
 #include "auxtrace.h"
+#include "callchain.h"
 #include "color.h"
 #include "cs-etm.h"
 #include "cs-etm-decoder/cs-etm-decoder.h"
@@ -69,6 +70,7 @@ struct cs_etm_traceid_queue {
 	size_t last_branch_pos;
 	union perf_event *event_buf;
 	struct thread *thread;
+	struct ip_callchain *chain;
 	struct branch_stack *last_branch;
 	struct branch_stack *last_branch_rb;
 	struct cs_etm_packet *prev_packet;
@@ -246,6 +248,16 @@ static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
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
 
@@ -270,6 +282,7 @@ static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
 	zfree(&tidq->last_branch);
 	zfree(&tidq->prev_packet);
 	zfree(&tidq->packet);
+	zfree(&tidq->chain);
 out:
 	return rc;
 }
@@ -541,6 +554,7 @@ static void cs_etm__free_traceid_queues(struct cs_etm_queue *etmq)
 		zfree(&tidq->last_branch_rb);
 		zfree(&tidq->prev_packet);
 		zfree(&tidq->packet);
+		zfree(&tidq->chain);
 		zfree(&tidq);
 
 		/*
@@ -1121,6 +1135,41 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
 			   sample->insn_len, (void *)sample->insn);
 }
 
+static void cs_etm__add_stack_event(struct cs_etm_queue *etmq,
+				    struct cs_etm_traceid_queue *tidq)
+{
+	struct cs_etm_auxtrace *etm = etmq->etm;
+	u8 trace_chan_id = tidq->trace_chan_id;
+	int insn_len;
+	u64 from_ip, to_ip;
+
+	if (etm->synth_opts.callchain || etm->synth_opts.thread_stack) {
+
+		from_ip = cs_etm__last_executed_instr(tidq->prev_packet);
+		to_ip = cs_etm__first_executed_instr(tidq->packet);
+
+		/*
+		 * T32 instruction size might be 32-bit or 16-bit, decide by
+		 * calling cs_etm__t32_instr_size().
+		 */
+		if (tidq->prev_packet->isa == CS_ETM_ISA_T32)
+			insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id,
+							  from_ip);
+		/* Otherwise, A64 and A32 instruction size are always 32-bit. */
+		else
+			insn_len = 4;
+
+		thread_stack__event(tidq->thread, tidq->prev_packet->cpu,
+				    tidq->prev_packet->flags,
+				    from_ip, to_ip, insn_len,
+				    etmq->buffer->buffer_nr);
+	} else {
+		thread_stack__set_trace_nr(tidq->thread,
+					   tidq->prev_packet->cpu,
+					   etmq->buffer->buffer_nr);
+	}
+}
+
 static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 					    struct cs_etm_traceid_queue *tidq,
 					    u64 addr, u64 period)
@@ -1146,6 +1195,14 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 
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
@@ -1329,6 +1386,8 @@ static int cs_etm__synth_events(struct cs_etm_auxtrace *etm,
 		attr.sample_type &= ~(u64)PERF_SAMPLE_ADDR;
 	}
 
+	if (etm->synth_opts.callchain)
+		attr.sample_type |= PERF_SAMPLE_CALLCHAIN;
 	if (etm->synth_opts.last_branch)
 		attr.sample_type |= PERF_SAMPLE_BRANCH_STACK;
 
@@ -1397,6 +1456,9 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		tidq->period_instructions = instrs_over;
 	}
 
+	if (tidq->prev_packet->last_instr_taken_branch)
+		cs_etm__add_stack_event(etmq, tidq);
+
 	if (etm->sample_branches) {
 		bool generate_sample = false;
 
@@ -2596,7 +2658,17 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 	} else {
 		itrace_synth_opts__set_default(&etm->synth_opts,
 				session->itrace_synth_opts->default_no_sample);
-		etm->synth_opts.callchain = false;
+
+		etm->synth_opts.thread_stack =
+				session->itrace_synth_opts->thread_stack;
+	}
+
+	if (etm->synth_opts.callchain && !symbol_conf.use_callchain) {
+		symbol_conf.use_callchain = true;
+		if (callchain_register_param(&callchain_param) < 0) {
+			symbol_conf.use_callchain = false;
+			etm->synth_opts.callchain = false;
+		}
 	}
 
 	err = cs_etm__synth_events(etm, session);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
