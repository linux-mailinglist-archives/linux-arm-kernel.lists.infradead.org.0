Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E81F3D675
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 21:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ELjVqC2ourlC7AwEHIgKTD1xhRWZY+LcL/ZYYCtceE=; b=uvN10Dy+F0B04U
	gVIgkFt5lVTMSw86Jb3OTlEkpdctltTBk063AnocVDXq0TigkVMu33tw5xHcq2zGvl/4Dx1XJlOPK
	fFR9Jqb1ehlwjNpkZI3sMckHSlW4wKigbDe1fCNxii4oqr/qMm9+2+ql0b6EgWtNSJtDOC8CUiYtt
	8uNFE0gYHqm7bfvfuFTZsq73m9HDFMSt+s3F/baZeUXpAIyhNSJyDJPRQIUjBzMqB65JpO3wbCCJz
	lgaprRcihIeoMLtmk+n3qXUrgPKghPuAy5wjye8ug1cmAMlX8RZY9SMtQIDFGZ6ncJXxDEmFol8r3
	RPJg4PT4FnW+MBoonNTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ham6x-0001s1-8a; Tue, 11 Jun 2019 19:07:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ham34-0005Rz-V0
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 19:03:14 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9C762183E;
 Tue, 11 Jun 2019 19:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560279790;
 bh=1Dv8CzymVwIcmwV7LnpzwdGNkbxGgtqUnw5p71uxSZk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xJcpKlHjOPklJNiAfj+AjS+42sPurfRZDktMdZnwJ6/EPm8MkGyFLtbQwaqq6Yghz
 UXwnlJ+vjAsL8Tn8BniicpMfOeqsUzuZzttG7qn2YDWtMB3HgtkDzjWsCzzxrRUKyz
 2nsWpr4qq2JHPENgYWFSoxueILBmySi9W7Uibodw=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 51/85] perf cs-etm: Linking PE contextID with perf thread
 mechanic
Date: Tue, 11 Jun 2019 15:58:37 -0300
Message-Id: <20190611185911.11645-52-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611185911.11645-1-acme@kernel.org>
References: <20190611185911.11645-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_120311_235647_0F39BE58 
X-CRM114-Status: GOOD (  12.19  )
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

Link contextID packets received from the decoder with the perf tool
thread mechanic so that we know the specifics of the process currently
executing.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Tested-by: Leo Yan <leo.yan@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: coresight@lists.linaro.org
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190524173508.29044-16-mathieu.poirier@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 .../perf/util/cs-etm-decoder/cs-etm-decoder.c | 20 ++++++++++++
 tools/perf/util/cs-etm.c                      | 32 +++++++++++++++----
 tools/perf/util/cs-etm.h                      | 10 ++++++
 3 files changed, 56 insertions(+), 6 deletions(-)

diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
index 87264b79de0e..ce85e52f989c 100644
--- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
+++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
@@ -402,6 +402,24 @@ cs_etm_decoder__buffer_exception_ret(struct cs_etm_packet_queue *queue,
 					     CS_ETM_EXCEPTION_RET);
 }
 
+static ocsd_datapath_resp_t
+cs_etm_decoder__set_tid(struct cs_etm_queue *etmq,
+			const ocsd_generic_trace_elem *elem,
+			const uint8_t trace_chan_id)
+{
+	pid_t tid;
+
+	/* Ignore PE_CONTEXT packets that don't have a valid contextID */
+	if (!elem->context.ctxt_id_valid)
+		return OCSD_RESP_CONT;
+
+	tid =  elem->context.context_id;
+	if (cs_etm__etmq_set_tid(etmq, tid, trace_chan_id))
+		return OCSD_RESP_FATAL_SYS_ERR;
+
+	return OCSD_RESP_CONT;
+}
+
 static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
 				const void *context,
 				const ocsd_trc_index_t indx __maybe_unused,
@@ -440,6 +458,8 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
 							    trace_chan_id);
 		break;
 	case OCSD_GEN_TRC_ELEM_PE_CONTEXT:
+		resp = cs_etm_decoder__set_tid(etmq, elem, trace_chan_id);
+		break;
 	case OCSD_GEN_TRC_ELEM_ADDR_NACC:
 	case OCSD_GEN_TRC_ELEM_TIMESTAMP:
 	case OCSD_GEN_TRC_ELEM_CYCLE_COUNT:
diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index afc2491f9f2a..17adf554b679 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -907,13 +907,8 @@ cs_etm__get_trace(struct cs_etm_queue *etmq)
 }
 
 static void cs_etm__set_pid_tid_cpu(struct cs_etm_auxtrace *etm,
-				    struct auxtrace_queue *queue,
 				    struct cs_etm_traceid_queue *tidq)
 {
-	/* CPU-wide tracing isn't supported yet */
-	if (queue->tid == -1)
-		return;
-
 	if ((!tidq->thread) && (tidq->tid != -1))
 		tidq->thread = machine__find_thread(etm->machine, -1,
 						    tidq->tid);
@@ -922,6 +917,31 @@ static void cs_etm__set_pid_tid_cpu(struct cs_etm_auxtrace *etm,
 		tidq->pid = tidq->thread->pid_;
 }
 
+int cs_etm__etmq_set_tid(struct cs_etm_queue *etmq,
+			 pid_t tid, u8 trace_chan_id)
+{
+	int cpu, err = -EINVAL;
+	struct cs_etm_auxtrace *etm = etmq->etm;
+	struct cs_etm_traceid_queue *tidq;
+
+	tidq = cs_etm__etmq_get_traceid_queue(etmq, trace_chan_id);
+	if (!tidq)
+		return err;
+
+	if (cs_etm__get_cpu(trace_chan_id, &cpu) < 0)
+		return err;
+
+	err = machine__set_current_tid(etm->machine, cpu, tid, tid);
+	if (err)
+		return err;
+
+	tidq->tid = tid;
+	thread__zput(tidq->thread);
+
+	cs_etm__set_pid_tid_cpu(etm, tidq);
+	return 0;
+}
+
 static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 					    struct cs_etm_traceid_queue *tidq,
 					    u64 addr, u64 period)
@@ -1866,7 +1886,7 @@ static int cs_etm__process_timeless_queues(struct cs_etm_auxtrace *etm,
 			continue;
 
 		if ((tid == -1) || (tidq->tid == tid)) {
-			cs_etm__set_pid_tid_cpu(etm, queue, tidq);
+			cs_etm__set_pid_tid_cpu(etm, tidq);
 			cs_etm__run_decoder(etmq);
 		}
 	}
diff --git a/tools/perf/util/cs-etm.h b/tools/perf/util/cs-etm.h
index f16082d37ab5..b2a7628620bf 100644
--- a/tools/perf/util/cs-etm.h
+++ b/tools/perf/util/cs-etm.h
@@ -181,6 +181,8 @@ struct cs_etm_packet_queue {
 int cs_etm__process_auxtrace_info(union perf_event *event,
 				  struct perf_session *session);
 int cs_etm__get_cpu(u8 trace_chan_id, int *cpu);
+int cs_etm__etmq_set_tid(struct cs_etm_queue *etmq,
+			 pid_t tid, u8 trace_chan_id);
 struct cs_etm_packet_queue
 *cs_etm__etmq_get_packet_queue(struct cs_etm_queue *etmq, u8 trace_chan_id);
 #else
@@ -197,6 +199,14 @@ static inline int cs_etm__get_cpu(u8 trace_chan_id __maybe_unused,
 	return -1;
 }
 
+static inline int cs_etm__etmq_set_tid(
+				struct cs_etm_queue *etmq __maybe_unused,
+				pid_t tid __maybe_unused,
+				u8 trace_chan_id __maybe_unused)
+{
+	return -1;
+}
+
 static inline struct cs_etm_packet_queue *cs_etm__etmq_get_packet_queue(
 				struct cs_etm_queue *etmq __maybe_unused,
 				u8 trace_chan_id __maybe_unused)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
