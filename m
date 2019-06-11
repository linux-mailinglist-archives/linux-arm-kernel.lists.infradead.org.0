Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6C83D66D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 21:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3kEKddLgysWXbEYlEerzGCybFrfBlWnyLJ4lCu8t9iw=; b=Vg383nSD0e+aBh
	4KnrRS96DUF7kNig/87Wo1T3V2kxAz/svQWMXm8McOYbjDAj6V6DonfuZipJXb2lQ6GfbeaxZw0cB
	ieWNGYeyBsVXVsW8/uiWevRvdnIETzGQC3j77Pgys7jJXSwLOL0/nBl5/6bZBvUux1Gv7n+OzA2lr
	Mxw2Vp4pWiT+4TSdsn3pzDH/fByAezfBmAQk/+ZGY7Cy88XrH9ocGTzJ90ryn9BZ1UyrlXdmm5GJ0
	HexefZrw/u2SX2WTCrdE2zboqKp5Fpd92vLPRJqtUxhAJRtNPrqFOQv+bo6fINfQ2SqOL9WoxBcgQ
	Vx1kDI4fWunQhc1stjsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ham5n-0000hW-7n; Tue, 11 Jun 2019 19:05:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ham2o-0005Cf-0h
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 19:02:55 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0EAE22183E;
 Tue, 11 Jun 2019 19:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560279773;
 bh=22JvqhMRFadlku1d18uzDdaZ+nanOpO9WyNtz0V2N0o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=v9Q8vqfS6dvj1JpborORWGI2Xcu0YKv0IK6kPZ+NJBkxtkPBpC5dJclYkEolnuCSr
 AW5lmGtgpeHGrTEF9H7sjl1sjmimnMni6kfYop1djPAR7nyIWEg/KbEFj8dPBAQ/BK
 joH5DS1CIpHTl1jK3vUj+kKvrAliq/diDf1B89UY=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 47/85] perf cs-etm: Move thread to traceid_queue
Date: Tue, 11 Jun 2019 15:58:33 -0300
Message-Id: <20190611185911.11645-48-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611185911.11645-1-acme@kernel.org>
References: <20190611185911.11645-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_120254_139987_20DD150A 
X-CRM114-Status: GOOD (  10.90  )
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

The thread field of structure cs_etm_queue is CPU dependent and as such
need to be part of the cs_etm_traceid_queue in order to support CPU-wide
trace scenarios.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Tested-by: Leo Yan <leo.yan@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: coresight@lists.linaro.org
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190524173508.29044-12-mathieu.poirier@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/cs-etm.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 531bbb355ba4..0d51d6d9a594 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -65,6 +65,7 @@ struct cs_etm_traceid_queue {
 	u64 period_instructions;
 	size_t last_branch_pos;
 	union perf_event *event_buf;
+	struct thread *thread;
 	struct branch_stack *last_branch;
 	struct branch_stack *last_branch_rb;
 	struct cs_etm_packet *prev_packet;
@@ -74,7 +75,6 @@ struct cs_etm_traceid_queue {
 
 struct cs_etm_queue {
 	struct cs_etm_auxtrace *etm;
-	struct thread *thread;
 	struct cs_etm_decoder *decoder;
 	struct auxtrace_buffer *buffer;
 	unsigned int queue_nr;
@@ -415,7 +415,7 @@ static void cs_etm__free_queue(void *priv)
 	if (!etmq)
 		return;
 
-	thread__zput(etmq->thread);
+	thread__zput(etmq->traceid_queues->thread);
 	cs_etm_decoder__free(etmq->decoder);
 	zfree(&etmq->traceid_queues->event_buf);
 	zfree(&etmq->traceid_queues->last_branch);
@@ -503,7 +503,7 @@ static u32 cs_etm__mem_access(struct cs_etm_queue *etmq, u64 address,
 	machine = etmq->etm->machine;
 	cpumode = cs_etm__cpu_mode(etmq, address);
 
-	thread = etmq->thread;
+	thread = etmq->traceid_queues->thread;
 	if (!thread) {
 		if (cpumode != PERF_RECORD_MISC_KERNEL)
 			return 0;
@@ -819,18 +819,21 @@ cs_etm__get_trace(struct cs_etm_queue *etmq)
 static void cs_etm__set_pid_tid_cpu(struct cs_etm_auxtrace *etm,
 				    struct auxtrace_queue *queue)
 {
+	struct cs_etm_traceid_queue *tidq;
 	struct cs_etm_queue *etmq = queue->priv;
 
+	tidq = cs_etm__etmq_get_traceid_queue(etmq, CS_ETM_PER_THREAD_TRACEID);
+
 	/* CPU-wide tracing isn't supported yet */
 	if (queue->tid == -1)
 		return;
 
-	if ((!etmq->thread) && (etmq->tid != -1))
-		etmq->thread = machine__find_thread(etm->machine, -1,
+	if ((!tidq->thread) && (etmq->tid != -1))
+		tidq->thread = machine__find_thread(etm->machine, -1,
 						    etmq->tid);
 
-	if (etmq->thread)
-		etmq->pid = etmq->thread->pid_;
+	if (tidq->thread)
+		etmq->pid = tidq->thread->pid_;
 }
 
 static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
