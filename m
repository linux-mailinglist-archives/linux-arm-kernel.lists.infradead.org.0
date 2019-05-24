Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC0B29D46
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5lWy96wsMxp8TiG7dygPGCCkXnPi1xhUbohv0/8iMSM=; b=Z589/KH2UpPyZqevO39ld6BxD4
	ql2iLRAoFfJ7bct18ymm08vRRLC9MBcHRjHHtc6DbGPDWchcdNls0knc9EUNUUz+P7YYqfN6Gh3q2
	B6KO7oHF3irro9bIadOCPtSGUEC4xypcvIBd0sSKKDn457c+A6S708CDZULrfAZ/5DZdE3ZKJjpeN
	Nuu/ITYXQXPQ0C2W2cwxAq3dVprSCJS9Bv2fyyfXvMS06lUA7ICX4hxwoRsI3h3t9qX2q/sV28PAh
	l95Ym+qFbBp/2aYRnGB9q41F6vLMqn/9tjIHjCtc5WjWrWBcujEZJksQB1CxOVcd272XzC5agsYOY
	4Vpve/Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE9G-0004bz-Cw; Fri, 24 May 2019 17:38:30 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE6M-00019L-Eb
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:40 +0000
Received: by mail-pl1-x643.google.com with SMTP id p15so4442444pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YLacy1WPwP51koJcLQmVsZoOnuNjPchkGCoMeaoSKY0=;
 b=PbMf7J/qOFFHjE14/KNNPvY5OfVNXGAe0ZimeRsh0+rhLDvruXtj++2+flmB2aGIaC
 s9IJ4Q07SsfQ0xgio00zDFvPj04UUUwFfL2LAk3O66Ap8wxFMqF/d3OXCMQpafm0tCHM
 FgZEG9btQkW6KQsNFbFWhBsijEyH9j+cCvnkdNzUOwt83fDO3QC2DTAO1QCt0zZIHQnh
 B3OfDA+GZvx5L3HchUBTZIUHB8wvcq1YktzCW9t5ZDB4awLNqgYxfn1UoET7UMavxAde
 WeaIBdbapBVQriocvrZnP5kONla55nKGETkfkzVPYaGxZkUTkEwl3iv8Qw9/sDpM0E8F
 SOgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YLacy1WPwP51koJcLQmVsZoOnuNjPchkGCoMeaoSKY0=;
 b=ZduX0yc/4iwgV9BhpGIjdo/Eedd56mRJlgCfCwqbsTNl5yfhVbVF9tMg65iELTTHKD
 aI3voJUIa6qp24BNVAONaDosZEtDMAJKLcMTpaZQ/KjiY82astx4cEqYyE5pvdQ4tuFr
 if7d+eChTZptyH3ePPDi5T0GEm0wij7839YpqygW32Bcg6ZMoXfwCOl+J4qBUWaWF+cJ
 otUrjXRB7LOhGdVqc6/+g8uQ6C8BAbt5MxDjWwBkBEb2i7/jPDe5+5K6sBQ27ZngcUsD
 egm0Ar9cMeWEJXH9ZNMqJsCmQuaMjuJehfPchqHroNGzo+n9dSyEGm30zJAE2F1SfnIr
 QJOg==
X-Gm-Message-State: APjAAAWdDUvEH5oGT6ZxFY2FAyyosaQXhmPfhhpj0Riy9PjVYUOWfvF6
 IOKfB++KgzQkRJ4I9krWJuuTJQ==
X-Google-Smtp-Source: APXvYqyEljwtF2aPGLMaaB5XZlYvbtIkfWwLGbfe1U2CTiCp3BNkwG9mfjnNV/YIhKuF/Cj/mAqX1w==
X-Received: by 2002:a17:902:b095:: with SMTP id
 p21mr56107478plr.270.1558719329130; 
 Fri, 24 May 2019 10:35:29 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:28 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 15/17] perf tools: Linking PE contextID with perf thread
 mechanic
Date: Fri, 24 May 2019 11:35:06 -0600
Message-Id: <20190524173508.29044-16-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103531_365176_0626C413 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Link contextID packets received from the decoder with the perf tool thread
mechanic so that we know the specifics of the process currently executing.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
