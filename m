Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D23463D670
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 21:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ys3vgNkNsFPxuct7X4aQxeZZriqmqcSxZxyCzEootaE=; b=FRiUWUbXLlv0lB
	NOMn6/srb4/t5ChTP7SaLoKdSu9QcQzFMTef8bgaEt5WNrl+vsB4ch2jn7Ovp+KnnEHzRHjvsQHN2
	/VWdPDun/bZpZwFnJEIyU8jp9JkKq0/qDTgSTmoK3BdMEz0oXXVLodEOpHqarL7km7oGi8snwNLQC
	vtCbHTRWf9R5cyIe9R0KKQGZ6VtEGJM1MFxFamPxpCTu4KYqwpP4v5JJ/gWT013wm4UBo5v0rJK8W
	cy6Ovc4+nPTel1ogXs75tAJvkceGvhyC6rbrROb8w4/ZH761Gu4L3E/wn9kZtBhAmZZiaR+Pw7kwV
	5XrnFEI50l4KRAwWlq9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ham65-0000xH-GE; Tue, 11 Jun 2019 19:06:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ham2s-0005GY-6F
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 19:03:01 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 368AC2184B;
 Tue, 11 Jun 2019 19:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560279777;
 bh=B6Q4bDYKlyzC/S0jqBgL7/O6Uc7TYaH3j4vbbLJ6NSQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aXic+bdSHOMGjIYFN/r4KPMK3VzPGSh1eICxTh4TG5ObcEJF87uQ3682s8/hx4yZX
 MJDjJjmBnOICGE49hz3nObsScRHZktlMRhpBUbovtMeEMzInL7ECSqqWdRzT4PK9iH
 4aFVbamTDJo4ar0Bgav145a9h0NkID42NVEUaSZw=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 48/85] perf cs-etm: Move tid/pid to traceid_queue
Date: Tue, 11 Jun 2019 15:58:34 -0300
Message-Id: <20190611185911.11645-49-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611185911.11645-1-acme@kernel.org>
References: <20190611185911.11645-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_120258_447120_DD531BB5 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>, Clark Williams <williams@redhat.com>,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Leo Yan <leo.yan@linaro.org>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mathieu Poirier <mathieu.poirier@linaro.org>

The tid/pid fields of structure cs_etm_queue are CPU dependent and as
such need to be part of the cs_etm_traceid_queue in order to support
CPU-wide trace scenarios.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Tested-by: Leo Yan <leo.yan@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: coresight@lists.linaro.org
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190524173508.29044-13-mathieu.poirier@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/cs-etm.c | 44 ++++++++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 18 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 0d51d6d9a594..7e3b4d10f5c4 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -62,6 +62,7 @@ struct cs_etm_auxtrace {
 
 struct cs_etm_traceid_queue {
 	u8 trace_chan_id;
+	pid_t pid, tid;
 	u64 period_instructions;
 	size_t last_branch_pos;
 	union perf_event *event_buf;
@@ -78,7 +79,6 @@ struct cs_etm_queue {
 	struct cs_etm_decoder *decoder;
 	struct auxtrace_buffer *buffer;
 	unsigned int queue_nr;
-	pid_t pid, tid;
 	u64 offset;
 	const unsigned char *buf;
 	size_t buf_len, buf_used;
@@ -159,10 +159,14 @@ static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
 				      u8 trace_chan_id)
 {
 	int rc = -ENOMEM;
+	struct auxtrace_queue *queue;
 	struct cs_etm_auxtrace *etm = etmq->etm;
 
 	cs_etm__clear_packet_queue(&tidq->packet_queue);
 
+	queue = &etmq->etm->queues.queue_array[etmq->queue_nr];
+	tidq->tid = queue->tid;
+	tidq->pid = -1;
 	tidq->trace_chan_id = trace_chan_id;
 
 	tidq->packet = zalloc(sizeof(struct cs_etm_packet));
@@ -598,8 +602,6 @@ static int cs_etm__setup_queue(struct cs_etm_auxtrace *etm,
 	queue->priv = etmq;
 	etmq->etm = etm;
 	etmq->queue_nr = queue_nr;
-	etmq->tid = queue->tid;
-	etmq->pid = -1;
 	etmq->offset = 0;
 
 out:
@@ -817,23 +819,19 @@ cs_etm__get_trace(struct cs_etm_queue *etmq)
 }
 
 static void cs_etm__set_pid_tid_cpu(struct cs_etm_auxtrace *etm,
-				    struct auxtrace_queue *queue)
+				    struct auxtrace_queue *queue,
+				    struct cs_etm_traceid_queue *tidq)
 {
-	struct cs_etm_traceid_queue *tidq;
-	struct cs_etm_queue *etmq = queue->priv;
-
-	tidq = cs_etm__etmq_get_traceid_queue(etmq, CS_ETM_PER_THREAD_TRACEID);
-
 	/* CPU-wide tracing isn't supported yet */
 	if (queue->tid == -1)
 		return;
 
-	if ((!tidq->thread) && (etmq->tid != -1))
+	if ((!tidq->thread) && (tidq->tid != -1))
 		tidq->thread = machine__find_thread(etm->machine, -1,
-						    etmq->tid);
+						    tidq->tid);
 
 	if (tidq->thread)
-		etmq->pid = tidq->thread->pid_;
+		tidq->pid = tidq->thread->pid_;
 }
 
 static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
@@ -850,8 +848,8 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 	event->sample.header.size = sizeof(struct perf_event_header);
 
 	sample.ip = addr;
-	sample.pid = etmq->pid;
-	sample.tid = etmq->tid;
+	sample.pid = tidq->pid;
+	sample.tid = tidq->tid;
 	sample.id = etmq->etm->instructions_id;
 	sample.stream_id = etmq->etm->instructions_id;
 	sample.period = period;
@@ -909,8 +907,8 @@ static int cs_etm__synth_branch_sample(struct cs_etm_queue *etmq,
 	event->sample.header.size = sizeof(struct perf_event_header);
 
 	sample.ip = ip;
-	sample.pid = etmq->pid;
-	sample.tid = etmq->tid;
+	sample.pid = tidq->pid;
+	sample.tid = tidq->tid;
 	sample.addr = cs_etm__first_executed_instr(tidq->packet);
 	sample.id = etmq->etm->branches_id;
 	sample.stream_id = etmq->etm->branches_id;
@@ -1758,9 +1756,19 @@ static int cs_etm__process_timeless_queues(struct cs_etm_auxtrace *etm,
 	for (i = 0; i < queues->nr_queues; i++) {
 		struct auxtrace_queue *queue = &etm->queues.queue_array[i];
 		struct cs_etm_queue *etmq = queue->priv;
+		struct cs_etm_traceid_queue *tidq;
+
+		if (!etmq)
+			continue;
+
+		tidq = cs_etm__etmq_get_traceid_queue(etmq,
+						CS_ETM_PER_THREAD_TRACEID);
+
+		if (!tidq)
+			continue;
 
-		if (etmq && ((tid == -1) || (etmq->tid == tid))) {
-			cs_etm__set_pid_tid_cpu(etm, queue);
+		if ((tid == -1) || (tidq->tid == tid)) {
+			cs_etm__set_pid_tid_cpu(etm, queue, tidq);
 			cs_etm__run_decoder(etmq);
 		}
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
