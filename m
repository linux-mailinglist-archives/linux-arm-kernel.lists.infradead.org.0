Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FF229D44
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GVYew/CCffiTMtnCkIfnsb4e60PucN/A/xgwlNKHlAw=; b=B5uCJZMlBtBuu8dpfy1KBRu4dU
	v7y1MxFGh/aOalaoAZAIo6jHiLpr8QcXcUZKnsBoYKse8GU7lAwNb6ELrfJn7rm4Tcslc5V6tUy36
	ysTmt3KcxGWv2ubbWnW/v5J14exMbwFON4o0AyrfhIcbCR3wkhm9sX4stiwzJcmrks9LvWSNOIIYS
	02ZkHP37GXUQzKrZydU6dFHUNwRUsM95LU77fZryhTPaqNVJj1gnHfumikWIBOJ2JbeXFs+rAzIzM
	zP+GZ7XP1SiwnL0v2PigL4i3sjTdzA+9AMrWA83keaKt7uiAraEmyjL6PkUM5F2cses/2d0PLw7//
	kQqyFfYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE8t-00049u-VE; Fri, 24 May 2019 17:38:07 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE6O-0001DH-AV
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:41 +0000
Received: by mail-pl1-x641.google.com with SMTP id p15so4442477pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kCvwFMGwRnGuZeRHJ6YgvFt4aJih6OXfy9LKk/iBWu0=;
 b=YQ7y26+fKhvVQjSu+oATI8VWV5sKICSnn1gYagomwkRM5EM0xTvt8dx8FFsnXt6Cx2
 vH8qWqmfDGIoJyZGTapGgbLNAqw1RfOQjPKsNiKLjMG73JIX+nXuiZvZ7vOQbyQHrRrl
 Yhw82DHWeUyC76mE51BiQZQIbs0q0UMapGnOz26tR07jh/cXlOqbXwblPRN4agvY/z06
 Gwg18gWvOMVt8Zl5tcflXwtXYwgRBgWwsUJKFQXMkKc945syyTd9RY8eumUxwTRAYcUv
 bD5aW0olejWezjqDFzxIxsDb9h4CPR/WVb9PpfWGRSGZHrBFkyNt8gV0iNSGQfP4S114
 AWBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kCvwFMGwRnGuZeRHJ6YgvFt4aJih6OXfy9LKk/iBWu0=;
 b=p6dMIwceg8Bl8T9Guw1vCNiWV5+7vMPgpFTnK+xZ5pI2Od6N/a8jpsCGCT61UugKCd
 xDRnjdkbLYkTjGKOiVQQ9nbrO2h4GtTnexUZkgnhL0aiSkwfE9+HQ1OwGpZXD57hcrrK
 0MFm0q3rYQJCan7PIArAotuBzmZeRySpu8MCQBNENmSqEkayWtfQwjiStxqEjh2qf+5c
 ehiCtwbsfyFrNGzjEJmkT1HmILzrPysXF/b3JdI7jfHt7KeIdQIq0aMgSk4dRq/fS+o1
 8vaXvdfvW8/T/AVfROe/Zb9ZZSINcrC7Iv0MeUra9DpxoZD1BHlEaZmq5VJOAsoIk+J5
 miZg==
X-Gm-Message-State: APjAAAVz8whuzc88n1fv4E6fzrYY7u1sCq3dsMdop0NNiuq8Ieyhfn8W
 cdRFb9LKqHVbVoL4Jpmsl+U32Q==
X-Google-Smtp-Source: APXvYqyKPSUnuJg5c0insoJuvlBmJpdkLIKlpZQvESO04xz5Cp17cMymp0bMSMynDYh3YALA1WLQOg==
X-Received: by 2002:a17:902:bf4a:: with SMTP id
 u10mr3881439pls.56.1558719331612; 
 Fri, 24 May 2019 10:35:31 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:31 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 17/17] perf tools: Add support for CPU-wide trace scenarios
Date: Fri, 24 May 2019 11:35:08 -0600
Message-Id: <20190524173508.29044-18-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103533_219722_D7278CFD 
X-CRM114-Status: GOOD (  24.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Add support for CPU-wide trace scenarios by correlating range packets
with timestamp packets.  That way range packets received on different
ETMQ/traceID channels can be processed and synthesized in chronological
order.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
