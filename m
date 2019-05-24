Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D6329D45
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9g2aXrSi2Ynk6bA756C7DO8pmg2/CxGMIFibL9ZZ6PE=; b=Sor1zjt3Y9LJAn+d7v2TyhkBKE
	wNMBZo95ArzMMdy8MmJmmQh3AXWbDvMvbgjLNm5K+z/EnjXXMk9ROkqfzwmyzZ3hLGUz35j16XWuQ
	ZCctX4F0R6HwShcfTBB0Q2LJKIUERRqS9CxwqBZ1uhiu7LYpyXPe1SujX9SRwleQnZqt7x3p3jToo
	+xSz+CnHPHqzG/NIONrmN+htOSlskGq5qiwLRk5H7Kk+dcmLJ4VXPCzkGG0p0LM0LR869DrUVeX1g
	0UEw6tA1Y5fsbf9AH3LCcFxoxbShhgvlVRc3E9nyf9DVCX0ZVcTsktxKHUalqxeym2hv5vcfiaY2r
	7toBcEBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE95-0004NT-ME; Fri, 24 May 2019 17:38:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE6N-0001BK-7f
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:41 +0000
Received: by mail-pf1-x444.google.com with SMTP id c6so5718366pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TcueIJVjFnLykFgMSjp27lPW+9DE4r6pPvomdOZtTnM=;
 b=emGCqNKtTJalfThxnAoLwnMgxJmSsue6enOXFLCNWjlsZtwrGnBIVJMadeKoNQxggH
 djSKPPrGCwvGxy2aCIVh8sx8hNZta1DeAjbacL9JnQet4FNEp416lG/WrVdvRqtpo485
 +0YPLNj+i3ylDuMcs3LbeoNJWTGOoP8/E0najIq6f5CbbmAZt0xLiYxX0F0pHTyWtDeV
 8e0+Thv4QsRa2DQAFLhLAGjN20Ng9pZdPENyjYE+leDOKOtyls5iURFjshw2z54gskTX
 yBEW5WLD+6cNN+iZA8ShiaUZaYt2nUni6JbgeZrgDa7mExfMhPY5Hx9HiamfWQLpyVr0
 DhSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TcueIJVjFnLykFgMSjp27lPW+9DE4r6pPvomdOZtTnM=;
 b=AxsbJSDfrQnDb5bE78Xi03xRMc0ZYd/rzHg89jbGdexE/EtWJb10rTB+lZ+eM2bzej
 vqwxChDuzQ2X1PzCkckCecp/5M6FxhKe5KIFeaZ9Y1X/FH0PRzX3kdGkAZ3Yh/0/nVeL
 5rA+tYQLw4kofLx16Mt4g210IMrxUGT/iLnPkUAYcptV/+m3oj/qEzeUgdYSwbMWMREd
 +2WC28B3TCRb0hhv4Naowlb3MDoe4xUFmxsmxegnp1MvjCOCEEgWVyxqaaSOCjFHJ6eP
 ngbkkguXB3KtiavY0rGwP2fUdhBcLzmayjvD+CXR9GIvKxfJzRVABvkZRjVdSqmqAbXp
 WdxQ==
X-Gm-Message-State: APjAAAXYgjbCGDAT+cSPfjep7vXUVRjEvNE+gDGNf+/HhSudI5cWvVc/
 ZLWo53ZL75nktFS1N5O4a1WsPA==
X-Google-Smtp-Source: APXvYqxHjNbZWVIl/SQOOpRaxr1L2IaBP8QpbAZgMAqitb38XJ7an9fSZbOdqxZBXWnIAiLipZW4yg==
X-Received: by 2002:a63:4c1c:: with SMTP id z28mr15815648pga.122.1558719330383; 
 Fri, 24 May 2019 10:35:30 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:29 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 16/17] perf tools: Add notion of time to decoding code
Date: Fri, 24 May 2019 11:35:07 -0600
Message-Id: <20190524173508.29044-17-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103531_948141_50890C5E 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

This patch deals with timestamp packets received from the decoding library
in order to give the front end packet processing loop a handle on the time
instruction conveyed by range packets have been executed at.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../perf/util/cs-etm-decoder/cs-etm-decoder.c | 112 +++++++++++++++++-
 tools/perf/util/cs-etm.c                      |  19 +++
 tools/perf/util/cs-etm.h                      |  17 +++
 3 files changed, 144 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
index ce85e52f989c..33e975c8d11b 100644
--- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
+++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
@@ -269,6 +269,76 @@ cs_etm_decoder__create_etm_packet_printer(struct cs_etm_trace_params *t_params,
 						     trace_config);
 }
 
+static ocsd_datapath_resp_t
+cs_etm_decoder__do_soft_timestamp(struct cs_etm_queue *etmq,
+				  struct cs_etm_packet_queue *packet_queue,
+				  const uint8_t trace_chan_id)
+{
+	/* No timestamp packet has been received, nothing to do */
+	if (!packet_queue->timestamp)
+		return OCSD_RESP_CONT;
+
+	packet_queue->timestamp = packet_queue->next_timestamp;
+
+	/* Estimate the timestamp for the next range packet */
+	packet_queue->next_timestamp += packet_queue->instr_count;
+	packet_queue->instr_count = 0;
+
+	/* Tell the front end which traceid_queue needs attention */
+	cs_etm__etmq_set_traceid_queue_timestamp(etmq, trace_chan_id);
+
+	return OCSD_RESP_WAIT;
+}
+
+static ocsd_datapath_resp_t
+cs_etm_decoder__do_hard_timestamp(struct cs_etm_queue *etmq,
+				  const ocsd_generic_trace_elem *elem,
+				  const uint8_t trace_chan_id)
+{
+	struct cs_etm_packet_queue *packet_queue;
+
+	/* First get the packet queue for this traceID */
+	packet_queue = cs_etm__etmq_get_packet_queue(etmq, trace_chan_id);
+	if (!packet_queue)
+		return OCSD_RESP_FATAL_SYS_ERR;
+
+	/*
+	 * We've seen a timestamp packet before - simply record the new value.
+	 * Function do_soft_timestamp() will report the value to the front end,
+	 * hence asking the decoder to keep decoding rather than stopping.
+	 */
+	if (packet_queue->timestamp) {
+		packet_queue->next_timestamp = elem->timestamp;
+		return OCSD_RESP_CONT;
+	}
+
+	/*
+	 * This is the first timestamp we've seen since the beginning of traces
+	 * or a discontinuity.  Since timestamps packets are generated *after*
+	 * range packets have been generated, we need to estimate the time at
+	 * which instructions started by substracting the number of instructions
+	 * executed to the timestamp.
+	 */
+	packet_queue->timestamp = elem->timestamp -
+						packet_queue->instr_count;
+	packet_queue->next_timestamp = elem->timestamp;
+	packet_queue->instr_count = 0;
+
+	/* Tell the front end which traceid_queue needs attention */
+	cs_etm__etmq_set_traceid_queue_timestamp(etmq, trace_chan_id);
+
+	/* Halt processing until we are being told to proceed */
+	return OCSD_RESP_WAIT;
+}
+
+static void
+cs_etm_decoder__reset_timestamp(struct cs_etm_packet_queue *packet_queue)
+{
+	packet_queue->timestamp = 0;
+	packet_queue->next_timestamp = 0;
+	packet_queue->instr_count = 0;
+}
+
 static ocsd_datapath_resp_t
 cs_etm_decoder__buffer_packet(struct cs_etm_packet_queue *packet_queue,
 			      const u8 trace_chan_id,
@@ -310,7 +380,8 @@ cs_etm_decoder__buffer_packet(struct cs_etm_packet_queue *packet_queue,
 }
 
 static ocsd_datapath_resp_t
-cs_etm_decoder__buffer_range(struct cs_etm_packet_queue *packet_queue,
+cs_etm_decoder__buffer_range(struct cs_etm_queue *etmq,
+			     struct cs_etm_packet_queue *packet_queue,
 			     const ocsd_generic_trace_elem *elem,
 			     const uint8_t trace_chan_id)
 {
@@ -365,6 +436,23 @@ cs_etm_decoder__buffer_range(struct cs_etm_packet_queue *packet_queue,
 
 	packet->last_instr_size = elem->last_instr_sz;
 
+	/* per-thread scenario, no need to generate a timestamp */
+	if (cs_etm__etmq_is_timeless(etmq))
+		goto out;
+
+	/*
+	 * The packet queue is full and we haven't seen a timestamp (had we
+	 * seen one the packet queue wouldn't be full).  Let the front end
+	 * deal with it.
+	 */
+	if (ret == OCSD_RESP_WAIT)
+		goto out;
+
+	packet_queue->instr_count += elem->num_instr_range;
+	/* Tell the front end we have a new timestamp to process */
+	ret = cs_etm_decoder__do_soft_timestamp(etmq, packet_queue,
+						trace_chan_id);
+out:
 	return ret;
 }
 
@@ -372,6 +460,11 @@ static ocsd_datapath_resp_t
 cs_etm_decoder__buffer_discontinuity(struct cs_etm_packet_queue *queue,
 				     const uint8_t trace_chan_id)
 {
+	/*
+	 * Something happened and who knows when we'll get new traces so
+	 * reset time statistics.
+	 */
+	cs_etm_decoder__reset_timestamp(queue);
 	return cs_etm_decoder__buffer_packet(queue, trace_chan_id,
 					     CS_ETM_DISCONTINUITY);
 }
@@ -404,6 +497,7 @@ cs_etm_decoder__buffer_exception_ret(struct cs_etm_packet_queue *queue,
 
 static ocsd_datapath_resp_t
 cs_etm_decoder__set_tid(struct cs_etm_queue *etmq,
+			struct cs_etm_packet_queue *packet_queue,
 			const ocsd_generic_trace_elem *elem,
 			const uint8_t trace_chan_id)
 {
@@ -417,6 +511,12 @@ cs_etm_decoder__set_tid(struct cs_etm_queue *etmq,
 	if (cs_etm__etmq_set_tid(etmq, tid, trace_chan_id))
 		return OCSD_RESP_FATAL_SYS_ERR;
 
+	/*
+	 * A timestamp is generated after a PE_CONTEXT element so make sure
+	 * to rely on that coming one.
+	 */
+	cs_etm_decoder__reset_timestamp(packet_queue);
+
 	return OCSD_RESP_CONT;
 }
 
@@ -446,7 +546,7 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
 							    trace_chan_id);
 		break;
 	case OCSD_GEN_TRC_ELEM_INSTR_RANGE:
-		resp = cs_etm_decoder__buffer_range(packet_queue, elem,
+		resp = cs_etm_decoder__buffer_range(etmq, packet_queue, elem,
 						    trace_chan_id);
 		break;
 	case OCSD_GEN_TRC_ELEM_EXCEPTION:
@@ -457,11 +557,15 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
 		resp = cs_etm_decoder__buffer_exception_ret(packet_queue,
 							    trace_chan_id);
 		break;
+	case OCSD_GEN_TRC_ELEM_TIMESTAMP:
+		resp = cs_etm_decoder__do_hard_timestamp(etmq, elem,
+							 trace_chan_id);
+		break;
 	case OCSD_GEN_TRC_ELEM_PE_CONTEXT:
-		resp = cs_etm_decoder__set_tid(etmq, elem, trace_chan_id);
+		resp = cs_etm_decoder__set_tid(etmq, packet_queue,
+					       elem, trace_chan_id);
 		break;
 	case OCSD_GEN_TRC_ELEM_ADDR_NACC:
-	case OCSD_GEN_TRC_ELEM_TIMESTAMP:
 	case OCSD_GEN_TRC_ELEM_CYCLE_COUNT:
 	case OCSD_GEN_TRC_ELEM_ADDR_UNKNOWN:
 	case OCSD_GEN_TRC_ELEM_EVENT:
diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 17adf554b679..91496a3a2209 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -80,6 +80,7 @@ struct cs_etm_queue {
 	struct cs_etm_decoder *decoder;
 	struct auxtrace_buffer *buffer;
 	unsigned int queue_nr;
+	u8 pending_timestamp;
 	u64 offset;
 	const unsigned char *buf;
 	size_t buf_len, buf_used;
@@ -133,6 +134,19 @@ int cs_etm__get_cpu(u8 trace_chan_id, int *cpu)
 	return 0;
 }
 
+void cs_etm__etmq_set_traceid_queue_timestamp(struct cs_etm_queue *etmq,
+					      u8 trace_chan_id)
+{
+	/*
+	 * Wnen a timestamp packet is encountered the backend code
+	 * is stopped so that the front end has time to process packets
+	 * that were accumulated in the traceID queue.  Since there can
+	 * be more than one channel per cs_etm_queue, we need to specify
+	 * what traceID queue needs servicing.
+	 */
+	etmq->pending_timestamp = trace_chan_id;
+}
+
 static void cs_etm__clear_packet_queue(struct cs_etm_packet_queue *queue)
 {
 	int i;
@@ -942,6 +956,11 @@ int cs_etm__etmq_set_tid(struct cs_etm_queue *etmq,
 	return 0;
 }
 
+bool cs_etm__etmq_is_timeless(struct cs_etm_queue *etmq)
+{
+	return !!etmq->etm->timeless_decoding;
+}
+
 static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 					    struct cs_etm_traceid_queue *tidq,
 					    u64 addr, u64 period)
diff --git a/tools/perf/util/cs-etm.h b/tools/perf/util/cs-etm.h
index b2a7628620bf..33b57e748c3d 100644
--- a/tools/perf/util/cs-etm.h
+++ b/tools/perf/util/cs-etm.h
@@ -150,6 +150,9 @@ struct cs_etm_packet_queue {
 	u32 packet_count;
 	u32 head;
 	u32 tail;
+	u32 instr_count;
+	u64 timestamp;
+	u64 next_timestamp;
 	struct cs_etm_packet packet_buffer[CS_ETM_PACKET_MAX_BUFFER];
 };
 
@@ -183,6 +186,9 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 int cs_etm__get_cpu(u8 trace_chan_id, int *cpu);
 int cs_etm__etmq_set_tid(struct cs_etm_queue *etmq,
 			 pid_t tid, u8 trace_chan_id);
+bool cs_etm__etmq_is_timeless(struct cs_etm_queue *etmq);
+void cs_etm__etmq_set_traceid_queue_timestamp(struct cs_etm_queue *etmq,
+					      u8 trace_chan_id);
 struct cs_etm_packet_queue
 *cs_etm__etmq_get_packet_queue(struct cs_etm_queue *etmq, u8 trace_chan_id);
 #else
@@ -207,6 +213,17 @@ static inline int cs_etm__etmq_set_tid(
 	return -1;
 }
 
+static inline bool cs_etm__etmq_is_timeless(
+				struct cs_etm_queue *etmq __maybe_unused)
+{
+	/* What else to return? */
+	return true;
+}
+
+static inline void cs_etm__etmq_set_traceid_queue_timestamp(
+				struct cs_etm_queue *etmq __maybe_unused,
+				u8 trace_chan_id __maybe_unused) {}
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
