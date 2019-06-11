Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7B83D677
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 21:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecQbhyBTVtzkrNFGWLG4DBg57N6d+3Mya1NFa/ikog8=; b=f5QXjmGeBPsQYs
	yUIz1N1C4r2C3yk0Hq2/FPqPnrVFbst8dh3AhIRb9pVtoZA46A5jLH1prkrv7voZmISO0pbRMmJ7K
	Z832D7GWQ1oTWPOuzWhueIQsGwzmKmb9ITJHylUvc8rl3AtM7MUkS6eVS9hNCMsN+55YpLGGL46+g
	/YX816UjAgdfS5wS+Qhf6TH7VZTaYrWR6EAKwv7AjV2aXXn4liCBNBKzilM37LcHwGBxPKyjiKS86
	6oqeiZNzZlLhEayIsYc7A9rKsD6zDqibptuxhX20PPXxx9550U02K/AA8B0it3GorRK686mhnY+G1
	erHLGk7dzovY6PJvvkww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ham7f-0002Sa-BC; Tue, 11 Jun 2019 19:07:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ham3D-0005Yj-8e
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 19:03:22 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 158C121841;
 Tue, 11 Jun 2019 19:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560279798;
 bh=yVVltIFuXXUA/CjtqNSVl1PIh+nqm9yCuBw/vB+EbZo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GHrPCDetFA1S9QvFFOOTqLfEF7wRnON5vp9F8a5C06lgM3idUAugLsX+7yDlphIsU
 I2DnFVQltaCS/prS0n8H874g/FKXHu6E8KyM1/Skl6qn3KAtaBQS4l0THXXt7s0IOQ
 y1kSQvS5HYbexhmWmRdmBK7awgvV9xYWgo1SUhcU=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 53/85] perf cs-etm: Add support for CPU-wide trace scenarios
Date: Tue, 11 Jun 2019 15:58:39 -0300
Message-Id: <20190611185911.11645-54-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611185911.11645-1-acme@kernel.org>
References: <20190611185911.11645-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_120319_530835_D9F2E27D 
X-CRM114-Status: GOOD (  23.66  )
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

Add support for CPU-wide trace scenarios by correlating range packets
with timestamp packets.  That way range packets received on different
ETMQ/traceID channels can be processed and synthesized in chronological
order.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Tested-by: Leo Yan <leo.yan@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: coresight@lists.linaro.org
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190524173508.29044-18-mathieu.poirier@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/cs-etm.c | 254 +++++++++++++++++++++++++++++++++++++--
 1 file changed, 246 insertions(+), 8 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 91496a3a2209..0c7776b51045 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -90,12 +90,26 @@ struct cs_etm_queue {
 };
 
 static int cs_etm__update_queues(struct cs_etm_auxtrace *etm);
+static int cs_etm__process_queues(struct cs_etm_auxtrace *etm);
 static int cs_etm__process_timeless_queues(struct cs_etm_auxtrace *etm,
 					   pid_t tid);
+static int cs_etm__get_data_block(struct cs_etm_queue *etmq);
+static int cs_etm__decode_data_block(struct cs_etm_queue *etmq);
 
 /* PTMs ETMIDR [11:8] set to b0011 */
 #define ETMIDR_PTM_VERSION 0x00000300
 
+/*
+ * A struct auxtrace_heap_item only has a queue_nr and a timestamp to
+ * work with.  One option is to modify to auxtrace_heap_XYZ() API or simply
+ * encode the etm queue number as the upper 16 bit and the channel as
+ * the lower 16 bit.
+ */
+#define TO_CS_QUEUE_NR(queue_nr, trace_id_chan)	\
+		      (queue_nr << 16 | trace_chan_id)
+#define TO_QUEUE_NR(cs_queue_nr) (cs_queue_nr >> 16)
+#define TO_TRACE_CHAN_ID(cs_queue_nr) (cs_queue_nr & 0x0000ffff)
+
 static u32 cs_etm__get_v7_protocol_version(u32 etmidr)
 {
 	etmidr &= ETMIDR_PTM_VERSION;
@@ -147,6 +161,29 @@ void cs_etm__etmq_set_traceid_queue_timestamp(struct cs_etm_queue *etmq,
 	etmq->pending_timestamp = trace_chan_id;
 }
 
+static u64 cs_etm__etmq_get_timestamp(struct cs_etm_queue *etmq,
+				      u8 *trace_chan_id)
+{
+	struct cs_etm_packet_queue *packet_queue;
+
+	if (!etmq->pending_timestamp)
+		return 0;
+
+	if (trace_chan_id)
+		*trace_chan_id = etmq->pending_timestamp;
+
+	packet_queue = cs_etm__etmq_get_packet_queue(etmq,
+						     etmq->pending_timestamp);
+	if (!packet_queue)
+		return 0;
+
+	/* Acknowledge pending status */
+	etmq->pending_timestamp = 0;
+
+	/* See function cs_etm_decoder__do_{hard|soft}_timestamp() */
+	return packet_queue->timestamp;
+}
+
 static void cs_etm__clear_packet_queue(struct cs_etm_packet_queue *queue)
 {
 	int i;
@@ -171,6 +208,20 @@ static void cs_etm__clear_packet_queue(struct cs_etm_packet_queue *queue)
 	}
 }
 
+static void cs_etm__clear_all_packet_queues(struct cs_etm_queue *etmq)
+{
+	int idx;
+	struct int_node *inode;
+	struct cs_etm_traceid_queue *tidq;
+	struct intlist *traceid_queues_list = etmq->traceid_queues_list;
+
+	intlist__for_each_entry(inode, traceid_queues_list) {
+		idx = (int)(intptr_t)inode->priv;
+		tidq = etmq->traceid_queues[idx];
+		cs_etm__clear_packet_queue(&tidq->packet_queue);
+	}
+}
+
 static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
 				      struct cs_etm_traceid_queue *tidq,
 				      u8 trace_chan_id)
@@ -458,15 +509,15 @@ static int cs_etm__flush_events(struct perf_session *session,
 	if (!tool->ordered_events)
 		return -EINVAL;
 
-	if (!etm->timeless_decoding)
-		return -EINVAL;
-
 	ret = cs_etm__update_queues(etm);
 
 	if (ret < 0)
 		return ret;
 
-	return cs_etm__process_timeless_queues(etm, -1);
+	if (etm->timeless_decoding)
+		return cs_etm__process_timeless_queues(etm, -1);
+
+	return cs_etm__process_queues(etm);
 }
 
 static void cs_etm__free_traceid_queues(struct cs_etm_queue *etmq)
@@ -685,6 +736,9 @@ static int cs_etm__setup_queue(struct cs_etm_auxtrace *etm,
 			       unsigned int queue_nr)
 {
 	int ret = 0;
+	unsigned int cs_queue_nr;
+	u8 trace_chan_id;
+	u64 timestamp;
 	struct cs_etm_queue *etmq = queue->priv;
 
 	if (list_empty(&queue->head) || etmq)
@@ -702,6 +756,67 @@ static int cs_etm__setup_queue(struct cs_etm_auxtrace *etm,
 	etmq->queue_nr = queue_nr;
 	etmq->offset = 0;
 
+	if (etm->timeless_decoding)
+		goto out;
+
+	/*
+	 * We are under a CPU-wide trace scenario.  As such we need to know
+	 * when the code that generated the traces started to execute so that
+	 * it can be correlated with execution on other CPUs.  So we get a
+	 * handle on the beginning of traces and decode until we find a
+	 * timestamp.  The timestamp is then added to the auxtrace min heap
+	 * in order to know what nibble (of all the etmqs) to decode first.
+	 */
+	while (1) {
+		/*
+		 * Fetch an aux_buffer from this etmq.  Bail if no more
+		 * blocks or an error has been encountered.
+		 */
+		ret = cs_etm__get_data_block(etmq);
+		if (ret <= 0)
+			goto out;
+
+		/*
+		 * Run decoder on the trace block.  The decoder will stop when
+		 * encountering a timestamp, a full packet queue or the end of
+		 * trace for that block.
+		 */
+		ret = cs_etm__decode_data_block(etmq);
+		if (ret)
+			goto out;
+
+		/*
+		 * Function cs_etm_decoder__do_{hard|soft}_timestamp() does all
+		 * the timestamp calculation for us.
+		 */
+		timestamp = cs_etm__etmq_get_timestamp(etmq, &trace_chan_id);
+
+		/* We found a timestamp, no need to continue. */
+		if (timestamp)
+			break;
+
+		/*
+		 * We didn't find a timestamp so empty all the traceid packet
+		 * queues before looking for another timestamp packet, either
+		 * in the current data block or a new one.  Packets that were
+		 * just decoded are useless since no timestamp has been
+		 * associated with them.  As such simply discard them.
+		 */
+		cs_etm__clear_all_packet_queues(etmq);
+	}
+
+	/*
+	 * We have a timestamp.  Add it to the min heap to reflect when
+	 * instructions conveyed by the range packets of this traceID queue
+	 * started to execute.  Once the same has been done for all the traceID
+	 * queues of each etmq, redenring and decoding can start in
+	 * chronological order.
+	 *
+	 * Note that packets decoded above are still in the traceID's packet
+	 * queue and will be processed in cs_etm__process_queues().
+	 */
+	cs_queue_nr = TO_CS_QUEUE_NR(queue_nr, trace_id_chan);
+	ret = auxtrace_heap__add(&etm->heap, cs_queue_nr, timestamp);
 out:
 	return ret;
 }
@@ -1846,6 +1961,28 @@ static int cs_etm__process_traceid_queue(struct cs_etm_queue *etmq,
 	return ret;
 }
 
+static void cs_etm__clear_all_traceid_queues(struct cs_etm_queue *etmq)
+{
+	int idx;
+	struct int_node *inode;
+	struct cs_etm_traceid_queue *tidq;
+	struct intlist *traceid_queues_list = etmq->traceid_queues_list;
+
+	intlist__for_each_entry(inode, traceid_queues_list) {
+		idx = (int)(intptr_t)inode->priv;
+		tidq = etmq->traceid_queues[idx];
+
+		/* Ignore return value */
+		cs_etm__process_traceid_queue(etmq, tidq);
+
+		/*
+		 * Generate an instruction sample with the remaining
+		 * branchstack entries.
+		 */
+		cs_etm__flush(etmq, tidq);
+	}
+}
+
 static int cs_etm__run_decoder(struct cs_etm_queue *etmq)
 {
 	int err = 0;
@@ -1913,6 +2050,105 @@ static int cs_etm__process_timeless_queues(struct cs_etm_auxtrace *etm,
 	return 0;
 }
 
+static int cs_etm__process_queues(struct cs_etm_auxtrace *etm)
+{
+	int ret = 0;
+	unsigned int cs_queue_nr, queue_nr;
+	u8 trace_chan_id;
+	u64 timestamp;
+	struct auxtrace_queue *queue;
+	struct cs_etm_queue *etmq;
+	struct cs_etm_traceid_queue *tidq;
+
+	while (1) {
+		if (!etm->heap.heap_cnt)
+			goto out;
+
+		/* Take the entry at the top of the min heap */
+		cs_queue_nr = etm->heap.heap_array[0].queue_nr;
+		queue_nr = TO_QUEUE_NR(cs_queue_nr);
+		trace_chan_id = TO_TRACE_CHAN_ID(cs_queue_nr);
+		queue = &etm->queues.queue_array[queue_nr];
+		etmq = queue->priv;
+
+		/*
+		 * Remove the top entry from the heap since we are about
+		 * to process it.
+		 */
+		auxtrace_heap__pop(&etm->heap);
+
+		tidq  = cs_etm__etmq_get_traceid_queue(etmq, trace_chan_id);
+		if (!tidq) {
+			/*
+			 * No traceID queue has been allocated for this traceID,
+			 * which means something somewhere went very wrong.  No
+			 * other choice than simply exit.
+			 */
+			ret = -EINVAL;
+			goto out;
+		}
+
+		/*
+		 * Packets associated with this timestamp are already in
+		 * the etmq's traceID queue, so process them.
+		 */
+		ret = cs_etm__process_traceid_queue(etmq, tidq);
+		if (ret < 0)
+			goto out;
+
+		/*
+		 * Packets for this timestamp have been processed, time to
+		 * move on to the next timestamp, fetching a new auxtrace_buffer
+		 * if need be.
+		 */
+refetch:
+		ret = cs_etm__get_data_block(etmq);
+		if (ret < 0)
+			goto out;
+
+		/*
+		 * No more auxtrace_buffers to process in this etmq, simply
+		 * move on to another entry in the auxtrace_heap.
+		 */
+		if (!ret)
+			continue;
+
+		ret = cs_etm__decode_data_block(etmq);
+		if (ret)
+			goto out;
+
+		timestamp = cs_etm__etmq_get_timestamp(etmq, &trace_chan_id);
+
+		if (!timestamp) {
+			/*
+			 * Function cs_etm__decode_data_block() returns when
+			 * there is no more traces to decode in the current
+			 * auxtrace_buffer OR when a timestamp has been
+			 * encountered on any of the traceID queues.  Since we
+			 * did not get a timestamp, there is no more traces to
+			 * process in this auxtrace_buffer.  As such empty and
+			 * flush all traceID queues.
+			 */
+			cs_etm__clear_all_traceid_queues(etmq);
+
+			/* Fetch another auxtrace_buffer for this etmq */
+			goto refetch;
+		}
+
+		/*
+		 * Add to the min heap the timestamp for packets that have
+		 * just been decoded.  They will be processed and synthesized
+		 * during the next call to cs_etm__process_traceid_queue() for
+		 * this queue/traceID.
+		 */
+		cs_queue_nr = TO_CS_QUEUE_NR(queue_nr, trace_chan_id);
+		ret = auxtrace_heap__add(&etm->heap, cs_queue_nr, timestamp);
+	}
+
+out:
+	return ret;
+}
+
 static int cs_etm__process_itrace_start(struct cs_etm_auxtrace *etm,
 					union perf_event *event)
 {
@@ -1991,9 +2227,6 @@ static int cs_etm__process_event(struct perf_session *session,
 		return -EINVAL;
 	}
 
-	if (!etm->timeless_decoding)
-		return -EINVAL;
-
 	if (sample->time && (sample->time != (u64) -1))
 		timestamp = sample->time;
 	else
@@ -2005,7 +2238,8 @@ static int cs_etm__process_event(struct perf_session *session,
 			return err;
 	}
 
-	if (event->header.type == PERF_RECORD_EXIT)
+	if (etm->timeless_decoding &&
+	    event->header.type == PERF_RECORD_EXIT)
 		return cs_etm__process_timeless_queues(etm,
 						       event->fork.tid);
 
@@ -2014,6 +2248,10 @@ static int cs_etm__process_event(struct perf_session *session,
 	else if (event->header.type == PERF_RECORD_SWITCH_CPU_WIDE)
 		return cs_etm__process_switch_cpu_wide(etm, event);
 
+	if (!etm->timeless_decoding &&
+	    event->header.type == PERF_RECORD_AUX)
+		return cs_etm__process_queues(etm);
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
