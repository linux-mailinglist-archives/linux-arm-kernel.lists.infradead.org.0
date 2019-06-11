Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 491E03D674
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 21:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hy7PpehCR4/7yrSlav5fFM3nBLF4WKyky4mOwqztVjA=; b=ieqR1/X1PEoqWS
	sBwox4TXDIQgUZBcV7uNisqGz6lCj4IWyV7hTuoYHuf+vTqpVVP01mIOvecEp0HHdy97lAnT2Ow80
	s1UCLaz+jkeyTDdYZdGitnleOC0nlCLZaZUMcDbIeKi+crpeoQalVEu7oiQnbXSwTBKlBXaoMrSxK
	SO33/EXDXwKh9XZC+qH1pvKSGUsqaoAtNmXOO7923gLWVG4kXxirB6zNpvFzSoGsmPlWNNBlJCyFg
	kMrLFfy33RbwwzlccGbykpifup9UtEFSBU4BFJrD1rG9aMi5FfSRRf9u2qEBToHyme/2+sLZUplO9
	uYSiGrSsVii+UA9HLgVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ham6i-0001aA-3Y; Tue, 11 Jun 2019 19:06:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ham30-0005NG-MI
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 19:03:08 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81AF82183F;
 Tue, 11 Jun 2019 19:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560279786;
 bh=+u/3M3IWGpAVeJ/pbzrkXbFp10PWwE63cij1XRjRz8E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nFvZQkKy53uaUZ5nCnviG/ff8M4Uk+pYBbrSusizy44YBaxMC1jLjWbi0Da6S9TXe
 JX6dUYM6q5zWQUe9MgKboLQ4tgRFKUpHq76kesDtpQ9fNQhySSVwBNirXO8RbmUo5g
 tjcF0ibk95cKqap7hwp8vbuRxnznBBioy3Zwa0dU=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 50/85] perf cs-etm: Add support for multiple traceID queues
Date: Tue, 11 Jun 2019 15:58:36 -0300
Message-Id: <20190611185911.11645-51-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611185911.11645-1-acme@kernel.org>
References: <20190611185911.11645-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_120306_816830_50B49173 
X-CRM114-Status: GOOD (  19.74  )
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

When operating in CPU-wide trace mode with a source/sink topology of N:1
packets with multiple traceID will end up in the same cs_etm_queue.  In
order to properly decode packets they need to be split in different
queues, i.e one queue per traceID.

As such add support for multiple traceID per cs_etm_queue by adding a
new cs_etm_traceid_queue every time a new traceID is discovered in the
trace stream.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Tested-by: Leo Yan <leo.yan@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: coresight@lists.linaro.org
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190524173508.29044-15-mathieu.poirier@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/Makefile.config |   3 +
 tools/perf/util/cs-etm.c   | 131 ++++++++++++++++++++++++++++++-------
 2 files changed, 110 insertions(+), 24 deletions(-)

diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
index 85fbcd265351..51dd00f65709 100644
--- a/tools/perf/Makefile.config
+++ b/tools/perf/Makefile.config
@@ -413,6 +413,9 @@ ifdef CORESIGHT
   $(call feature_check,libopencsd)
   ifeq ($(feature-libopencsd), 1)
     CFLAGS += -DHAVE_CSTRACE_SUPPORT $(LIBOPENCSD_CFLAGS)
+    ifeq ($(feature-reallocarray), 0)
+      CFLAGS += -DCOMPAT_NEED_REALLOCARRAY
+    endif
     LDFLAGS += $(LIBOPENCSD_LDFLAGS)
     EXTLIBS += $(OPENCSDLIBS)
     $(call detected,CONFIG_LIBOPENCSD)
diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 2483293266d8..afc2491f9f2a 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -29,6 +29,7 @@
 #include "thread.h"
 #include "thread_map.h"
 #include "thread-stack.h"
+#include <tools/libc_compat.h>
 #include "util.h"
 
 #define MAX_TIMESTAMP (~0ULL)
@@ -82,7 +83,9 @@ struct cs_etm_queue {
 	u64 offset;
 	const unsigned char *buf;
 	size_t buf_len, buf_used;
-	struct cs_etm_traceid_queue *traceid_queues;
+	/* Conversion between traceID and index in traceid_queues array */
+	struct intlist *traceid_queues_list;
+	struct cs_etm_traceid_queue **traceid_queues;
 };
 
 static int cs_etm__update_queues(struct cs_etm_auxtrace *etm);
@@ -208,31 +211,71 @@ static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
 static struct cs_etm_traceid_queue
 *cs_etm__etmq_get_traceid_queue(struct cs_etm_queue *etmq, u8 trace_chan_id)
 {
-	struct cs_etm_traceid_queue *tidq;
+	int idx;
+	struct int_node *inode;
+	struct intlist *traceid_queues_list;
+	struct cs_etm_traceid_queue *tidq, **traceid_queues;
 	struct cs_etm_auxtrace *etm = etmq->etm;
 
-	if (!etm->timeless_decoding)
-		return NULL;
+	if (etm->timeless_decoding)
+		trace_chan_id = CS_ETM_PER_THREAD_TRACEID;
 
-	tidq = etmq->traceid_queues;
+	traceid_queues_list = etmq->traceid_queues_list;
 
-	if (tidq)
-		return tidq;
+	/*
+	 * Check if the traceid_queue exist for this traceID by looking
+	 * in the queue list.
+	 */
+	inode = intlist__find(traceid_queues_list, trace_chan_id);
+	if (inode) {
+		idx = (int)(intptr_t)inode->priv;
+		return etmq->traceid_queues[idx];
+	}
 
+	/* We couldn't find a traceid_queue for this traceID, allocate one */
 	tidq = malloc(sizeof(*tidq));
 	if (!tidq)
 		return NULL;
 
 	memset(tidq, 0, sizeof(*tidq));
 
+	/* Get a valid index for the new traceid_queue */
+	idx = intlist__nr_entries(traceid_queues_list);
+	/* Memory for the inode is free'ed in cs_etm_free_traceid_queues () */
+	inode = intlist__findnew(traceid_queues_list, trace_chan_id);
+	if (!inode)
+		goto out_free;
+
+	/* Associate this traceID with this index */
+	inode->priv = (void *)(intptr_t)idx;
+
 	if (cs_etm__init_traceid_queue(etmq, tidq, trace_chan_id))
 		goto out_free;
 
-	etmq->traceid_queues = tidq;
+	/* Grow the traceid_queues array by one unit */
+	traceid_queues = etmq->traceid_queues;
+	traceid_queues = reallocarray(traceid_queues,
+				      idx + 1,
+				      sizeof(*traceid_queues));
+
+	/*
+	 * On failure reallocarray() returns NULL and the original block of
+	 * memory is left untouched.
+	 */
+	if (!traceid_queues)
+		goto out_free;
+
+	traceid_queues[idx] = tidq;
+	etmq->traceid_queues = traceid_queues;
 
-	return etmq->traceid_queues;
+	return etmq->traceid_queues[idx];
 
 out_free:
+	/*
+	 * Function intlist__remove() removes the inode from the list
+	 * and delete the memory associated to it.
+	 */
+	intlist__remove(traceid_queues_list, inode);
 	free(tidq);
 
 	return NULL;
@@ -412,6 +455,44 @@ static int cs_etm__flush_events(struct perf_session *session,
 	return cs_etm__process_timeless_queues(etm, -1);
 }
 
+static void cs_etm__free_traceid_queues(struct cs_etm_queue *etmq)
+{
+	int idx;
+	uintptr_t priv;
+	struct int_node *inode, *tmp;
+	struct cs_etm_traceid_queue *tidq;
+	struct intlist *traceid_queues_list = etmq->traceid_queues_list;
+
+	intlist__for_each_entry_safe(inode, tmp, traceid_queues_list) {
+		priv = (uintptr_t)inode->priv;
+		idx = priv;
+
+		/* Free this traceid_queue from the array */
+		tidq = etmq->traceid_queues[idx];
+		thread__zput(tidq->thread);
+		zfree(&tidq->event_buf);
+		zfree(&tidq->last_branch);
+		zfree(&tidq->last_branch_rb);
+		zfree(&tidq->prev_packet);
+		zfree(&tidq->packet);
+		zfree(&tidq);
+
+		/*
+		 * Function intlist__remove() removes the inode from the list
+		 * and delete the memory associated to it.
+		 */
+		intlist__remove(traceid_queues_list, inode);
+	}
+
+	/* Then the RB tree itself */
+	intlist__delete(traceid_queues_list);
+	etmq->traceid_queues_list = NULL;
+
+	/* finally free the traceid_queues array */
+	free(etmq->traceid_queues);
+	etmq->traceid_queues = NULL;
+}
+
 static void cs_etm__free_queue(void *priv)
 {
 	struct cs_etm_queue *etmq = priv;
@@ -419,14 +500,8 @@ static void cs_etm__free_queue(void *priv)
 	if (!etmq)
 		return;
 
-	thread__zput(etmq->traceid_queues->thread);
 	cs_etm_decoder__free(etmq->decoder);
-	zfree(&etmq->traceid_queues->event_buf);
-	zfree(&etmq->traceid_queues->last_branch);
-	zfree(&etmq->traceid_queues->last_branch_rb);
-	zfree(&etmq->traceid_queues->prev_packet);
-	zfree(&etmq->traceid_queues->packet);
-	zfree(&etmq->traceid_queues);
+	cs_etm__free_traceid_queues(etmq);
 	free(etmq);
 }
 
@@ -497,19 +572,21 @@ static u32 cs_etm__mem_access(struct cs_etm_queue *etmq, u8 trace_chan_id,
 	u8  cpumode;
 	u64 offset;
 	int len;
-	struct	 thread *thread;
-	struct	 machine *machine;
-	struct	 addr_location al;
-
-	(void)trace_chan_id;
+	struct thread *thread;
+	struct machine *machine;
+	struct addr_location al;
+	struct cs_etm_traceid_queue *tidq;
 
 	if (!etmq)
 		return 0;
 
 	machine = etmq->etm->machine;
 	cpumode = cs_etm__cpu_mode(etmq, address);
+	tidq = cs_etm__etmq_get_traceid_queue(etmq, trace_chan_id);
+	if (!tidq)
+		return 0;
 
-	thread = etmq->traceid_queues->thread;
+	thread = tidq->thread;
 	if (!thread) {
 		if (cpumode != PERF_RECORD_MISC_KERNEL)
 			return 0;
@@ -545,6 +622,10 @@ static struct cs_etm_queue *cs_etm__alloc_queue(struct cs_etm_auxtrace *etm)
 	if (!etmq)
 		return NULL;
 
+	etmq->traceid_queues_list = intlist__new(NULL);
+	if (!etmq->traceid_queues_list)
+		goto out_free;
+
 	/* Use metadata to fill in trace parameters for trace decoder */
 	t_params = zalloc(sizeof(*t_params) * etm->num_cpu);
 
@@ -579,6 +660,7 @@ static struct cs_etm_queue *cs_etm__alloc_queue(struct cs_etm_auxtrace *etm)
 out_free_decoder:
 	cs_etm_decoder__free(etmq->decoder);
 out_free:
+	intlist__delete(etmq->traceid_queues_list);
 	free(etmq);
 
 	return NULL;
@@ -1280,8 +1362,9 @@ static bool cs_etm__is_svc_instr(struct cs_etm_queue *etmq, u8 trace_chan_id,
 				 struct cs_etm_packet *packet,
 				 u64 end_addr)
 {
-	u16 instr16;
-	u32 instr32;
+	/* Initialise to keep compiler happy */
+	u16 instr16 = 0;
+	u32 instr32 = 0;
 	u64 addr;
 
 	switch (packet->isa) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
