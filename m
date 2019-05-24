Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3E329D3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BQbr4pCTrm+6RKqhn6vxUfo5lDeIcSeF6//wi+hBhtc=; b=KdjodZTRtZlEjwoXi6zWypuV98
	5UN7L9r8dDAwoN3l7urFbZvqbWmMbHKtQiN/jxEJKdfGwICZe+yF70Y9AuANpoIfaV8OIwCI2DhgO
	ZemzUKo6HDFV5Uc9dMn8nmppzTnPWifzF38uxVEBGBYxPmhhulehToKuovGZIa330fybrz18JQ5Wu
	wIDz8hY296lKvTqFX4e8rUPzuAQxTGrJnZ8v0raynOJQDW80eeG65c5vMXGMD52vUGQnnJvfzMuL1
	uttTFiuiGTNk0eoRWQDb1eP6WaisBZ+5DvYQNf0mBMsNaLHdmXFKOgCcY3Nd+iSNP5s8f8q1a0WOC
	weA2+cmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE8O-0003W2-2W; Fri, 24 May 2019 17:37:36 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE6E-0000xN-VU
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:37 +0000
Received: by mail-pg1-x543.google.com with SMTP id d30so5415286pgm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=rRUHT6Wkk0DrFLANuTkLpa+nJ1yBGRvRL/7DBxuJ6/8=;
 b=NOAjVq7dgoF+1IETcFuY26kCJTNpagGmLET4Rhb51prOseBJpAb+UjxSD/riJ0/e5p
 u/6aoRHeP7JVk/c5nEXWpW+OJ/FFv048ELSrTS9M7MnzzLFApXtU/Eh+24niVYG6VAKK
 zjYagiseYYY2mvdes2j6HvKb8mJwZAyzrfeDV+f0UY4spNh0wTxU9HHdhfwxC5gdTzMq
 WukZot3C07E0Hs5LxCh1JUY3bXTIARkXzQXAOV5y7XrtdQTNpB3vScVZV0jZ4UYilWjK
 hSYXXY+RkVcPW1eQjdA1SOaMIfMPrfZlKM/vIV/bSg0SAOhR5kRQ99INL3bc9Qo7gmg0
 mjWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=rRUHT6Wkk0DrFLANuTkLpa+nJ1yBGRvRL/7DBxuJ6/8=;
 b=CnmxF3BNn+jwIvhiEOKqTkXpoA3QTDX3SQpWH9ObvOwF1p50RqPIBsSCMdpooTgrnE
 Gmb/ftLkeCitNzre5OVd/wgoYRoYtOTYKiAKlBpIut7g/Snl8JJaXlvv9Ipr9x9/K3p5
 Xe5BX5UOTzYNgH9qIEi6NTC3pQXFNtyHe1W49+vwed9C3tks1yRbt90MqD041zf+6fiU
 YyqKEF3zd6b6VRQzT5v5Ywg8vbKwZFd6FeWBmYjPxsWCijrGMdruFX4QQ5ljjFUwq7ZH
 RzIOWxsCMMpyt2HLzNgAAFyIevIxtcDdrRs6aJlhSOVhcytCi76lxnnafbuBulxQYvMl
 AAgg==
X-Gm-Message-State: APjAAAXOYG9xKm2/gLf3AThrgwtNpHadTiexb+hLqfB/Ns/CEVldFQzl
 Yuv87HqgdDlSH5MxUdIoJRMsOA==
X-Google-Smtp-Source: APXvYqxX++JiGJIpEEPt5A3Yq1BhCb3+cgFRYEHyYM7lwbo7UJFmpkKA1hGhKwuYPYH9Cxe8aETl4A==
X-Received: by 2002:a17:90a:fa09:: with SMTP id
 cm9mr10772033pjb.137.1558719321669; 
 Fri, 24 May 2019 10:35:21 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:21 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 09/17] perf tools: Introduce the concept of trace ID queues
Date: Fri, 24 May 2019 11:35:00 -0600
Message-Id: <20190524173508.29044-10-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103523_674806_C2F7BE89 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: suzuki.poulose@arm.com, peterz@infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, leo.yan@linaro.org, namhyung@kernel.org, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an ideal world there is one CPU per cs_etm_queue and as such, one trace
ID per cs_etm_queue.  In the real world CoreSight topologies allow multiple
CPUs to use the same sink, which translates to multiple trace IDs per
cs_etm_queue.

To deal with this a new cs_etm_traceid_queue structure is introduced to
enclose all the information related to a single trace ID, allowing a
cs_etm_queue to handle traces generated by any number of CPUs.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../perf/util/cs-etm-decoder/cs-etm-decoder.c |   4 +-
 tools/perf/util/cs-etm.c                      | 360 +++++++++++-------
 tools/perf/util/cs-etm.h                      |  15 +-
 3 files changed, 234 insertions(+), 145 deletions(-)

diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
index 3ac238e58901..4303d2d00d31 100644
--- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
+++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
@@ -413,8 +413,8 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
 	struct cs_etm_queue *etmq = decoder->data;
 	struct cs_etm_packet_queue *packet_queue;
 
-	/* First get the packet queue */
-	packet_queue = cs_etm__etmq_get_packet_queue(etmq);
+	/* First get the packet queue for this traceID */
+	packet_queue = cs_etm__etmq_get_packet_queue(etmq, trace_chan_id);
 	if (!packet_queue)
 		return OCSD_RESP_FATAL_SYS_ERR;
 
diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 68fec6f019fe..9e8212c74055 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -60,25 +60,30 @@ struct cs_etm_auxtrace {
 	unsigned int pmu_type;
 };
 
+struct cs_etm_traceid_queue {
+	u8 trace_chan_id;
+	u64 period_instructions;
+	size_t last_branch_pos;
+	union perf_event *event_buf;
+	struct branch_stack *last_branch;
+	struct branch_stack *last_branch_rb;
+	struct cs_etm_packet *prev_packet;
+	struct cs_etm_packet *packet;
+	struct cs_etm_packet_queue packet_queue;
+};
+
 struct cs_etm_queue {
 	struct cs_etm_auxtrace *etm;
 	struct thread *thread;
 	struct cs_etm_decoder *decoder;
 	struct auxtrace_buffer *buffer;
-	union perf_event *event_buf;
 	unsigned int queue_nr;
 	pid_t pid, tid;
 	int cpu;
 	u64 offset;
-	u64 period_instructions;
-	struct branch_stack *last_branch;
-	struct branch_stack *last_branch_rb;
-	size_t last_branch_pos;
-	struct cs_etm_packet *prev_packet;
-	struct cs_etm_packet *packet;
 	const unsigned char *buf;
 	size_t buf_len, buf_used;
-	struct cs_etm_packet_queue packet_queue;
+	struct cs_etm_traceid_queue *traceid_queues;
 };
 
 static int cs_etm__update_queues(struct cs_etm_auxtrace *etm);
@@ -150,10 +155,96 @@ static void cs_etm__clear_packet_queue(struct cs_etm_packet_queue *queue)
 	}
 }
 
+static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
+				      struct cs_etm_traceid_queue *tidq,
+				      u8 trace_chan_id)
+{
+	int rc = -ENOMEM;
+	struct cs_etm_auxtrace *etm = etmq->etm;
+
+	cs_etm__clear_packet_queue(&tidq->packet_queue);
+
+	tidq->trace_chan_id = trace_chan_id;
+
+	tidq->packet = zalloc(sizeof(struct cs_etm_packet));
+	if (!tidq->packet)
+		goto out;
+
+	tidq->prev_packet = zalloc(sizeof(struct cs_etm_packet));
+	if (!tidq->prev_packet)
+		goto out_free;
+
+	if (etm->synth_opts.last_branch) {
+		size_t sz = sizeof(struct branch_stack);
+
+		sz += etm->synth_opts.last_branch_sz *
+		      sizeof(struct branch_entry);
+		tidq->last_branch = zalloc(sz);
+		if (!tidq->last_branch)
+			goto out_free;
+		tidq->last_branch_rb = zalloc(sz);
+		if (!tidq->last_branch_rb)
+			goto out_free;
+	}
+
+	tidq->event_buf = malloc(PERF_SAMPLE_MAX_SIZE);
+	if (!tidq->event_buf)
+		goto out_free;
+
+	return 0;
+
+out_free:
+	zfree(&tidq->last_branch_rb);
+	zfree(&tidq->last_branch);
+	zfree(&tidq->prev_packet);
+	zfree(&tidq->packet);
+out:
+	return rc;
+}
+
+static struct cs_etm_traceid_queue
+*cs_etm__etmq_get_traceid_queue(struct cs_etm_queue *etmq, u8 trace_chan_id)
+{
+	struct cs_etm_traceid_queue *tidq;
+	struct cs_etm_auxtrace *etm = etmq->etm;
+
+	if (!etm->timeless_decoding)
+		return NULL;
+
+	tidq = etmq->traceid_queues;
+
+	if (tidq)
+		return tidq;
+
+	tidq = malloc(sizeof(*tidq));
+	if (!tidq)
+		return NULL;
+
+	memset(tidq, 0, sizeof(*tidq));
+
+	if (cs_etm__init_traceid_queue(etmq, tidq, trace_chan_id))
+		goto out_free;
+
+	etmq->traceid_queues = tidq;
+
+	return etmq->traceid_queues;
+
+out_free:
+	free(tidq);
+
+	return NULL;
+}
+
 struct cs_etm_packet_queue
-*cs_etm__etmq_get_packet_queue(struct cs_etm_queue *etmq)
+*cs_etm__etmq_get_packet_queue(struct cs_etm_queue *etmq, u8 trace_chan_id)
 {
-	return &etmq->packet_queue;
+	struct cs_etm_traceid_queue *tidq;
+
+	tidq = cs_etm__etmq_get_traceid_queue(etmq, trace_chan_id);
+	if (tidq)
+		return &tidq->packet_queue;
+
+	return NULL;
 }
 
 static void cs_etm__packet_dump(const char *pkt_string)
@@ -327,11 +418,12 @@ static void cs_etm__free_queue(void *priv)
 
 	thread__zput(etmq->thread);
 	cs_etm_decoder__free(etmq->decoder);
-	zfree(&etmq->event_buf);
-	zfree(&etmq->last_branch);
-	zfree(&etmq->last_branch_rb);
-	zfree(&etmq->prev_packet);
-	zfree(&etmq->packet);
+	zfree(&etmq->traceid_queues->event_buf);
+	zfree(&etmq->traceid_queues->last_branch);
+	zfree(&etmq->traceid_queues->last_branch_rb);
+	zfree(&etmq->traceid_queues->prev_packet);
+	zfree(&etmq->traceid_queues->packet);
+	zfree(&etmq->traceid_queues);
 	free(etmq);
 }
 
@@ -443,37 +535,11 @@ static struct cs_etm_queue *cs_etm__alloc_queue(struct cs_etm_auxtrace *etm)
 	struct cs_etm_decoder_params d_params;
 	struct cs_etm_trace_params  *t_params = NULL;
 	struct cs_etm_queue *etmq;
-	size_t szp = sizeof(struct cs_etm_packet);
 
 	etmq = zalloc(sizeof(*etmq));
 	if (!etmq)
 		return NULL;
 
-	etmq->packet = zalloc(szp);
-	if (!etmq->packet)
-		goto out_free;
-
-	etmq->prev_packet = zalloc(szp);
-	if (!etmq->prev_packet)
-		goto out_free;
-
-	if (etm->synth_opts.last_branch) {
-		size_t sz = sizeof(struct branch_stack);
-
-		sz += etm->synth_opts.last_branch_sz *
-		      sizeof(struct branch_entry);
-		etmq->last_branch = zalloc(sz);
-		if (!etmq->last_branch)
-			goto out_free;
-		etmq->last_branch_rb = zalloc(sz);
-		if (!etmq->last_branch_rb)
-			goto out_free;
-	}
-
-	etmq->event_buf = malloc(PERF_SAMPLE_MAX_SIZE);
-	if (!etmq->event_buf)
-		goto out_free;
-
 	/* Use metadata to fill in trace parameters for trace decoder */
 	t_params = zalloc(sizeof(*t_params) * etm->num_cpu);
 
@@ -508,12 +574,6 @@ static struct cs_etm_queue *cs_etm__alloc_queue(struct cs_etm_auxtrace *etm)
 out_free_decoder:
 	cs_etm_decoder__free(etmq->decoder);
 out_free:
-	zfree(&t_params);
-	zfree(&etmq->event_buf);
-	zfree(&etmq->last_branch);
-	zfree(&etmq->last_branch_rb);
-	zfree(&etmq->prev_packet);
-	zfree(&etmq->packet);
 	free(etmq);
 
 	return NULL;
@@ -543,8 +603,6 @@ static int cs_etm__setup_queue(struct cs_etm_auxtrace *etm,
 	etmq->tid = queue->tid;
 	etmq->pid = -1;
 	etmq->offset = 0;
-	etmq->period_instructions = 0;
-	cs_etm__clear_packet_queue(&etmq->packet_queue);
 
 out:
 	return ret;
@@ -577,10 +635,12 @@ static int cs_etm__update_queues(struct cs_etm_auxtrace *etm)
 	return 0;
 }
 
-static inline void cs_etm__copy_last_branch_rb(struct cs_etm_queue *etmq)
+static inline
+void cs_etm__copy_last_branch_rb(struct cs_etm_queue *etmq,
+				 struct cs_etm_traceid_queue *tidq)
 {
-	struct branch_stack *bs_src = etmq->last_branch_rb;
-	struct branch_stack *bs_dst = etmq->last_branch;
+	struct branch_stack *bs_src = tidq->last_branch_rb;
+	struct branch_stack *bs_dst = tidq->last_branch;
 	size_t nr = 0;
 
 	/*
@@ -600,9 +660,9 @@ static inline void cs_etm__copy_last_branch_rb(struct cs_etm_queue *etmq)
 	 * two steps.  First, copy the branches from the most recently inserted
 	 * branch ->last_branch_pos until the end of bs_src->entries buffer.
 	 */
-	nr = etmq->etm->synth_opts.last_branch_sz - etmq->last_branch_pos;
+	nr = etmq->etm->synth_opts.last_branch_sz - tidq->last_branch_pos;
 	memcpy(&bs_dst->entries[0],
-	       &bs_src->entries[etmq->last_branch_pos],
+	       &bs_src->entries[tidq->last_branch_pos],
 	       sizeof(struct branch_entry) * nr);
 
 	/*
@@ -615,14 +675,15 @@ static inline void cs_etm__copy_last_branch_rb(struct cs_etm_queue *etmq)
 	if (bs_src->nr >= etmq->etm->synth_opts.last_branch_sz) {
 		memcpy(&bs_dst->entries[nr],
 		       &bs_src->entries[0],
-		       sizeof(struct branch_entry) * etmq->last_branch_pos);
+		       sizeof(struct branch_entry) * tidq->last_branch_pos);
 	}
 }
 
-static inline void cs_etm__reset_last_branch_rb(struct cs_etm_queue *etmq)
+static inline
+void cs_etm__reset_last_branch_rb(struct cs_etm_traceid_queue *tidq)
 {
-	etmq->last_branch_pos = 0;
-	etmq->last_branch_rb->nr = 0;
+	tidq->last_branch_pos = 0;
+	tidq->last_branch_rb->nr = 0;
 }
 
 static inline int cs_etm__t32_instr_size(struct cs_etm_queue *etmq,
@@ -675,9 +736,10 @@ static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
 	return packet->start_addr + offset * 4;
 }
 
-static void cs_etm__update_last_branch_rb(struct cs_etm_queue *etmq)
+static void cs_etm__update_last_branch_rb(struct cs_etm_queue *etmq,
+					  struct cs_etm_traceid_queue *tidq)
 {
-	struct branch_stack *bs = etmq->last_branch_rb;
+	struct branch_stack *bs = tidq->last_branch_rb;
 	struct branch_entry *be;
 
 	/*
@@ -686,14 +748,14 @@ static void cs_etm__update_last_branch_rb(struct cs_etm_queue *etmq)
 	 * buffer down.  After writing the first element of the stack, move the
 	 * insert position back to the end of the buffer.
 	 */
-	if (!etmq->last_branch_pos)
-		etmq->last_branch_pos = etmq->etm->synth_opts.last_branch_sz;
+	if (!tidq->last_branch_pos)
+		tidq->last_branch_pos = etmq->etm->synth_opts.last_branch_sz;
 
-	etmq->last_branch_pos -= 1;
+	tidq->last_branch_pos -= 1;
 
-	be       = &bs->entries[etmq->last_branch_pos];
-	be->from = cs_etm__last_executed_instr(etmq->prev_packet);
-	be->to	 = cs_etm__first_executed_instr(etmq->packet);
+	be       = &bs->entries[tidq->last_branch_pos];
+	be->from = cs_etm__last_executed_instr(tidq->prev_packet);
+	be->to	 = cs_etm__first_executed_instr(tidq->packet);
 	/* No support for mispredict */
 	be->flags.mispred = 0;
 	be->flags.predicted = 1;
@@ -777,11 +839,12 @@ static void cs_etm__set_pid_tid_cpu(struct cs_etm_auxtrace *etm,
 }
 
 static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
+					    struct cs_etm_traceid_queue *tidq,
 					    u64 addr, u64 period)
 {
 	int ret = 0;
 	struct cs_etm_auxtrace *etm = etmq->etm;
-	union perf_event *event = etmq->event_buf;
+	union perf_event *event = tidq->event_buf;
 	struct perf_sample sample = {.ip = 0,};
 
 	event->sample.header.type = PERF_RECORD_SAMPLE;
@@ -794,14 +857,14 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 	sample.id = etmq->etm->instructions_id;
 	sample.stream_id = etmq->etm->instructions_id;
 	sample.period = period;
-	sample.cpu = etmq->packet->cpu;
-	sample.flags = etmq->prev_packet->flags;
+	sample.cpu = tidq->packet->cpu;
+	sample.flags = tidq->prev_packet->flags;
 	sample.insn_len = 1;
 	sample.cpumode = event->sample.header.misc;
 
 	if (etm->synth_opts.last_branch) {
-		cs_etm__copy_last_branch_rb(etmq);
-		sample.branch_stack = etmq->last_branch;
+		cs_etm__copy_last_branch_rb(etmq, tidq);
+		sample.branch_stack = tidq->last_branch;
 	}
 
 	if (etm->synth_opts.inject) {
@@ -819,7 +882,7 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 			ret);
 
 	if (etm->synth_opts.last_branch)
-		cs_etm__reset_last_branch_rb(etmq);
+		cs_etm__reset_last_branch_rb(tidq);
 
 	return ret;
 }
@@ -828,19 +891,20 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
  * The cs etm packet encodes an instruction range between a branch target
  * and the next taken branch. Generate sample accordingly.
  */
-static int cs_etm__synth_branch_sample(struct cs_etm_queue *etmq)
+static int cs_etm__synth_branch_sample(struct cs_etm_queue *etmq,
+				       struct cs_etm_traceid_queue *tidq)
 {
 	int ret = 0;
 	struct cs_etm_auxtrace *etm = etmq->etm;
 	struct perf_sample sample = {.ip = 0,};
-	union perf_event *event = etmq->event_buf;
+	union perf_event *event = tidq->event_buf;
 	struct dummy_branch_stack {
 		u64			nr;
 		struct branch_entry	entries;
 	} dummy_bs;
 	u64 ip;
 
-	ip = cs_etm__last_executed_instr(etmq->prev_packet);
+	ip = cs_etm__last_executed_instr(tidq->prev_packet);
 
 	event->sample.header.type = PERF_RECORD_SAMPLE;
 	event->sample.header.misc = cs_etm__cpu_mode(etmq, ip);
@@ -849,12 +913,12 @@ static int cs_etm__synth_branch_sample(struct cs_etm_queue *etmq)
 	sample.ip = ip;
 	sample.pid = etmq->pid;
 	sample.tid = etmq->tid;
-	sample.addr = cs_etm__first_executed_instr(etmq->packet);
+	sample.addr = cs_etm__first_executed_instr(tidq->packet);
 	sample.id = etmq->etm->branches_id;
 	sample.stream_id = etmq->etm->branches_id;
 	sample.period = 1;
-	sample.cpu = etmq->packet->cpu;
-	sample.flags = etmq->prev_packet->flags;
+	sample.cpu = tidq->packet->cpu;
+	sample.flags = tidq->prev_packet->flags;
 	sample.cpumode = event->sample.header.misc;
 
 	/*
@@ -997,33 +1061,34 @@ static int cs_etm__synth_events(struct cs_etm_auxtrace *etm,
 	return 0;
 }
 
-static int cs_etm__sample(struct cs_etm_queue *etmq)
+static int cs_etm__sample(struct cs_etm_queue *etmq,
+			  struct cs_etm_traceid_queue *tidq)
 {
 	struct cs_etm_auxtrace *etm = etmq->etm;
 	struct cs_etm_packet *tmp;
 	int ret;
-	u64 instrs_executed = etmq->packet->instr_count;
+	u64 instrs_executed = tidq->packet->instr_count;
 
-	etmq->period_instructions += instrs_executed;
+	tidq->period_instructions += instrs_executed;
 
 	/*
 	 * Record a branch when the last instruction in
 	 * PREV_PACKET is a branch.
 	 */
 	if (etm->synth_opts.last_branch &&
-	    etmq->prev_packet->sample_type == CS_ETM_RANGE &&
-	    etmq->prev_packet->last_instr_taken_branch)
-		cs_etm__update_last_branch_rb(etmq);
+	    tidq->prev_packet->sample_type == CS_ETM_RANGE &&
+	    tidq->prev_packet->last_instr_taken_branch)
+		cs_etm__update_last_branch_rb(etmq, tidq);
 
 	if (etm->sample_instructions &&
-	    etmq->period_instructions >= etm->instructions_sample_period) {
+	    tidq->period_instructions >= etm->instructions_sample_period) {
 		/*
 		 * Emit instruction sample periodically
 		 * TODO: allow period to be defined in cycles and clock time
 		 */
 
 		/* Get number of instructions executed after the sample point */
-		u64 instrs_over = etmq->period_instructions -
+		u64 instrs_over = tidq->period_instructions -
 			etm->instructions_sample_period;
 
 		/*
@@ -1032,31 +1097,31 @@ static int cs_etm__sample(struct cs_etm_queue *etmq)
 		 * executed, but PC has not advanced to next instruction)
 		 */
 		u64 offset = (instrs_executed - instrs_over - 1);
-		u64 addr = cs_etm__instr_addr(etmq, etmq->packet, offset);
+		u64 addr = cs_etm__instr_addr(etmq, tidq->packet, offset);
 
 		ret = cs_etm__synth_instruction_sample(
-			etmq, addr, etm->instructions_sample_period);
+			etmq, tidq, addr, etm->instructions_sample_period);
 		if (ret)
 			return ret;
 
 		/* Carry remaining instructions into next sample period */
-		etmq->period_instructions = instrs_over;
+		tidq->period_instructions = instrs_over;
 	}
 
 	if (etm->sample_branches) {
 		bool generate_sample = false;
 
 		/* Generate sample for tracing on packet */
-		if (etmq->prev_packet->sample_type == CS_ETM_DISCONTINUITY)
+		if (tidq->prev_packet->sample_type == CS_ETM_DISCONTINUITY)
 			generate_sample = true;
 
 		/* Generate sample for branch taken packet */
-		if (etmq->prev_packet->sample_type == CS_ETM_RANGE &&
-		    etmq->prev_packet->last_instr_taken_branch)
+		if (tidq->prev_packet->sample_type == CS_ETM_RANGE &&
+		    tidq->prev_packet->last_instr_taken_branch)
 			generate_sample = true;
 
 		if (generate_sample) {
-			ret = cs_etm__synth_branch_sample(etmq);
+			ret = cs_etm__synth_branch_sample(etmq, tidq);
 			if (ret)
 				return ret;
 		}
@@ -1067,15 +1132,15 @@ static int cs_etm__sample(struct cs_etm_queue *etmq)
 		 * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
 		 * the next incoming packet.
 		 */
-		tmp = etmq->packet;
-		etmq->packet = etmq->prev_packet;
-		etmq->prev_packet = tmp;
+		tmp = tidq->packet;
+		tidq->packet = tidq->prev_packet;
+		tidq->prev_packet = tmp;
 	}
 
 	return 0;
 }
 
-static int cs_etm__exception(struct cs_etm_queue *etmq)
+static int cs_etm__exception(struct cs_etm_traceid_queue *tidq)
 {
 	/*
 	 * When the exception packet is inserted, whether the last instruction
@@ -1088,24 +1153,25 @@ static int cs_etm__exception(struct cs_etm_queue *etmq)
 	 * swap PACKET with PREV_PACKET.  This keeps PREV_PACKET to be useful
 	 * for generating instruction and branch samples.
 	 */
-	if (etmq->prev_packet->sample_type == CS_ETM_RANGE)
-		etmq->prev_packet->last_instr_taken_branch = true;
+	if (tidq->prev_packet->sample_type == CS_ETM_RANGE)
+		tidq->prev_packet->last_instr_taken_branch = true;
 
 	return 0;
 }
 
-static int cs_etm__flush(struct cs_etm_queue *etmq)
+static int cs_etm__flush(struct cs_etm_queue *etmq,
+			 struct cs_etm_traceid_queue *tidq)
 {
 	int err = 0;
 	struct cs_etm_auxtrace *etm = etmq->etm;
 	struct cs_etm_packet *tmp;
 
 	/* Handle start tracing packet */
-	if (etmq->prev_packet->sample_type == CS_ETM_EMPTY)
+	if (tidq->prev_packet->sample_type == CS_ETM_EMPTY)
 		goto swap_packet;
 
 	if (etmq->etm->synth_opts.last_branch &&
-	    etmq->prev_packet->sample_type == CS_ETM_RANGE) {
+	    tidq->prev_packet->sample_type == CS_ETM_RANGE) {
 		/*
 		 * Generate a last branch event for the branches left in the
 		 * circular buffer at the end of the trace.
@@ -1113,21 +1179,21 @@ static int cs_etm__flush(struct cs_etm_queue *etmq)
 		 * Use the address of the end of the last reported execution
 		 * range
 		 */
-		u64 addr = cs_etm__last_executed_instr(etmq->prev_packet);
+		u64 addr = cs_etm__last_executed_instr(tidq->prev_packet);
 
 		err = cs_etm__synth_instruction_sample(
-			etmq, addr,
-			etmq->period_instructions);
+			etmq, tidq, addr,
+			tidq->period_instructions);
 		if (err)
 			return err;
 
-		etmq->period_instructions = 0;
+		tidq->period_instructions = 0;
 
 	}
 
 	if (etm->sample_branches &&
-	    etmq->prev_packet->sample_type == CS_ETM_RANGE) {
-		err = cs_etm__synth_branch_sample(etmq);
+	    tidq->prev_packet->sample_type == CS_ETM_RANGE) {
+		err = cs_etm__synth_branch_sample(etmq, tidq);
 		if (err)
 			return err;
 	}
@@ -1138,15 +1204,16 @@ static int cs_etm__flush(struct cs_etm_queue *etmq)
 		 * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
 		 * the next incoming packet.
 		 */
-		tmp = etmq->packet;
-		etmq->packet = etmq->prev_packet;
-		etmq->prev_packet = tmp;
+		tmp = tidq->packet;
+		tidq->packet = tidq->prev_packet;
+		tidq->prev_packet = tmp;
 	}
 
 	return err;
 }
 
-static int cs_etm__end_block(struct cs_etm_queue *etmq)
+static int cs_etm__end_block(struct cs_etm_queue *etmq,
+			     struct cs_etm_traceid_queue *tidq)
 {
 	int err;
 
@@ -1160,20 +1227,20 @@ static int cs_etm__end_block(struct cs_etm_queue *etmq)
 	 * the trace.
 	 */
 	if (etmq->etm->synth_opts.last_branch &&
-	    etmq->prev_packet->sample_type == CS_ETM_RANGE) {
+	    tidq->prev_packet->sample_type == CS_ETM_RANGE) {
 		/*
 		 * Use the address of the end of the last reported execution
 		 * range.
 		 */
-		u64 addr = cs_etm__last_executed_instr(etmq->prev_packet);
+		u64 addr = cs_etm__last_executed_instr(tidq->prev_packet);
 
 		err = cs_etm__synth_instruction_sample(
-			etmq, addr,
-			etmq->period_instructions);
+			etmq, tidq, addr,
+			tidq->period_instructions);
 		if (err)
 			return err;
 
-		etmq->period_instructions = 0;
+		tidq->period_instructions = 0;
 	}
 
 	return 0;
@@ -1272,10 +1339,11 @@ static bool cs_etm__is_svc_instr(struct cs_etm_queue *etmq,
 	return false;
 }
 
-static bool cs_etm__is_syscall(struct cs_etm_queue *etmq, u64 magic)
+static bool cs_etm__is_syscall(struct cs_etm_queue *etmq,
+			       struct cs_etm_traceid_queue *tidq, u64 magic)
 {
-	struct cs_etm_packet *packet = etmq->packet;
-	struct cs_etm_packet *prev_packet = etmq->prev_packet;
+	struct cs_etm_packet *packet = tidq->packet;
+	struct cs_etm_packet *prev_packet = tidq->prev_packet;
 
 	if (magic == __perf_cs_etmv3_magic)
 		if (packet->exception_number == CS_ETMV3_EXC_SVC)
@@ -1296,9 +1364,10 @@ static bool cs_etm__is_syscall(struct cs_etm_queue *etmq, u64 magic)
 	return false;
 }
 
-static bool cs_etm__is_async_exception(struct cs_etm_queue *etmq, u64 magic)
+static bool cs_etm__is_async_exception(struct cs_etm_traceid_queue *tidq,
+				       u64 magic)
 {
-	struct cs_etm_packet *packet = etmq->packet;
+	struct cs_etm_packet *packet = tidq->packet;
 
 	if (magic == __perf_cs_etmv3_magic)
 		if (packet->exception_number == CS_ETMV3_EXC_DEBUG_HALT ||
@@ -1321,10 +1390,12 @@ static bool cs_etm__is_async_exception(struct cs_etm_queue *etmq, u64 magic)
 	return false;
 }
 
-static bool cs_etm__is_sync_exception(struct cs_etm_queue *etmq, u64 magic)
+static bool cs_etm__is_sync_exception(struct cs_etm_queue *etmq,
+				      struct cs_etm_traceid_queue *tidq,
+				      u64 magic)
 {
-	struct cs_etm_packet *packet = etmq->packet;
-	struct cs_etm_packet *prev_packet = etmq->prev_packet;
+	struct cs_etm_packet *packet = tidq->packet;
+	struct cs_etm_packet *prev_packet = tidq->prev_packet;
 
 	if (magic == __perf_cs_etmv3_magic)
 		if (packet->exception_number == CS_ETMV3_EXC_SMC ||
@@ -1367,10 +1438,11 @@ static bool cs_etm__is_sync_exception(struct cs_etm_queue *etmq, u64 magic)
 	return false;
 }
 
-static int cs_etm__set_sample_flags(struct cs_etm_queue *etmq)
+static int cs_etm__set_sample_flags(struct cs_etm_queue *etmq,
+				    struct cs_etm_traceid_queue *tidq)
 {
-	struct cs_etm_packet *packet = etmq->packet;
-	struct cs_etm_packet *prev_packet = etmq->prev_packet;
+	struct cs_etm_packet *packet = tidq->packet;
+	struct cs_etm_packet *prev_packet = tidq->prev_packet;
 	u64 magic;
 	int ret;
 
@@ -1472,7 +1544,7 @@ static int cs_etm__set_sample_flags(struct cs_etm_queue *etmq)
 			return ret;
 
 		/* The exception is for system call. */
-		if (cs_etm__is_syscall(etmq, magic))
+		if (cs_etm__is_syscall(etmq, tidq, magic))
 			packet->flags = PERF_IP_FLAG_BRANCH |
 					PERF_IP_FLAG_CALL |
 					PERF_IP_FLAG_SYSCALLRET;
@@ -1480,7 +1552,7 @@ static int cs_etm__set_sample_flags(struct cs_etm_queue *etmq)
 		 * The exceptions are triggered by external signals from bus,
 		 * interrupt controller, debug module, PE reset or halt.
 		 */
-		else if (cs_etm__is_async_exception(etmq, magic))
+		else if (cs_etm__is_async_exception(tidq, magic))
 			packet->flags = PERF_IP_FLAG_BRANCH |
 					PERF_IP_FLAG_CALL |
 					PERF_IP_FLAG_ASYNC |
@@ -1489,7 +1561,7 @@ static int cs_etm__set_sample_flags(struct cs_etm_queue *etmq)
 		 * Otherwise, exception is caused by trap, instruction &
 		 * data fault, or alignment errors.
 		 */
-		else if (cs_etm__is_sync_exception(etmq, magic))
+		else if (cs_etm__is_sync_exception(etmq, tidq, magic))
 			packet->flags = PERF_IP_FLAG_BRANCH |
 					PERF_IP_FLAG_CALL |
 					PERF_IP_FLAG_INTERRUPT;
@@ -1571,17 +1643,18 @@ static int cs_etm__decode_data_block(struct cs_etm_queue *etmq)
 	return ret;
 }
 
-static int cs_etm__process_decoder_queue(struct cs_etm_queue *etmq)
+static int cs_etm__process_traceid_queue(struct cs_etm_queue *etmq,
+					 struct cs_etm_traceid_queue *tidq)
 {
 	int ret;
 	struct cs_etm_packet_queue *packet_queue;
 
-	packet_queue = cs_etm__etmq_get_packet_queue(etmq);
+	packet_queue = &tidq->packet_queue;
 
 	/* Process each packet in this chunk */
 	while (1) {
 		ret = cs_etm_decoder__get_packet(packet_queue,
-						 etmq->packet);
+						 tidq->packet);
 		if (ret <= 0)
 			/*
 			 * Stop processing this chunk on
@@ -1596,18 +1669,18 @@ static int cs_etm__process_decoder_queue(struct cs_etm_queue *etmq)
 		 * prior to switch() statement to use address
 		 * information before packets swapping.
 		 */
-		ret = cs_etm__set_sample_flags(etmq);
+		ret = cs_etm__set_sample_flags(etmq, tidq);
 		if (ret < 0)
 			break;
 
-		switch (etmq->packet->sample_type) {
+		switch (tidq->packet->sample_type) {
 		case CS_ETM_RANGE:
 			/*
 			 * If the packet contains an instruction
 			 * range, generate instruction sequence
 			 * events.
 			 */
-			cs_etm__sample(etmq);
+			cs_etm__sample(etmq, tidq);
 			break;
 		case CS_ETM_EXCEPTION:
 		case CS_ETM_EXCEPTION_RET:
@@ -1616,14 +1689,14 @@ static int cs_etm__process_decoder_queue(struct cs_etm_queue *etmq)
 			 * make sure the previous instruction
 			 * range packet to be handled properly.
 			 */
-			cs_etm__exception(etmq);
+			cs_etm__exception(tidq);
 			break;
 		case CS_ETM_DISCONTINUITY:
 			/*
 			 * Discontinuity in trace, flush
 			 * previous branch stack
 			 */
-			cs_etm__flush(etmq);
+			cs_etm__flush(etmq, tidq);
 			break;
 		case CS_ETM_EMPTY:
 			/*
@@ -1643,6 +1716,11 @@ static int cs_etm__process_decoder_queue(struct cs_etm_queue *etmq)
 static int cs_etm__run_decoder(struct cs_etm_queue *etmq)
 {
 	int err = 0;
+	struct cs_etm_traceid_queue *tidq;
+
+	tidq = cs_etm__etmq_get_traceid_queue(etmq, CS_ETM_PER_THREAD_TRACEID);
+	if (!tidq)
+		return -EINVAL;
 
 	/* Go through each buffer in the queue and decode them one by one */
 	while (1) {
@@ -1661,13 +1739,13 @@ static int cs_etm__run_decoder(struct cs_etm_queue *etmq)
 			 * an error occurs other than hoping the next one will
 			 * be better.
 			 */
-			err = cs_etm__process_decoder_queue(etmq);
+			err = cs_etm__process_traceid_queue(etmq, tidq);
 
 		} while (etmq->buf_len);
 
 		if (err == 0)
 			/* Flush any remaining branch stack entries */
-			err = cs_etm__end_block(etmq);
+			err = cs_etm__end_block(etmq, tidq);
 	}
 
 	return err;
diff --git a/tools/perf/util/cs-etm.h b/tools/perf/util/cs-etm.h
index 75385e2fd283..f16082d37ab5 100644
--- a/tools/perf/util/cs-etm.h
+++ b/tools/perf/util/cs-etm.h
@@ -136,6 +136,16 @@ struct cs_etm_packet {
 
 #define CS_ETM_PACKET_MAX_BUFFER 1024
 
+/*
+ * When working with per-thread scenarios the process under trace can
+ * be scheduled on any CPU and as such, more than one traceID may be
+ * associated with the same process.  Since a traceID of '0' is illegal
+ * as per the CoreSight architecture, use that specific value to
+ * identify the queue where all packets (with any traceID) are
+ * aggregated.
+ */
+#define CS_ETM_PER_THREAD_TRACEID 0
+
 struct cs_etm_packet_queue {
 	u32 packet_count;
 	u32 head;
@@ -172,7 +182,7 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 				  struct perf_session *session);
 int cs_etm__get_cpu(u8 trace_chan_id, int *cpu);
 struct cs_etm_packet_queue
-*cs_etm__etmq_get_packet_queue(struct cs_etm_queue *etmq);
+*cs_etm__etmq_get_packet_queue(struct cs_etm_queue *etmq, u8 trace_chan_id);
 #else
 static inline int
 cs_etm__process_auxtrace_info(union perf_event *event __maybe_unused,
@@ -188,7 +198,8 @@ static inline int cs_etm__get_cpu(u8 trace_chan_id __maybe_unused,
 }
 
 static inline struct cs_etm_packet_queue *cs_etm__etmq_get_packet_queue(
-				struct cs_etm_queue *etmq __maybe_unused)
+				struct cs_etm_queue *etmq __maybe_unused,
+				u8 trace_chan_id __maybe_unused)
 {
 	return NULL;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
