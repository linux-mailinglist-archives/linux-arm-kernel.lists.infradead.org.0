Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA5E189076
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 22:34:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ieQgxbI4ApOZE9Qz6JMG9+N3l9tfF4/USBDSUcNm0pk=; b=lRTvJ7uZHrLyvK
	zj0uBb5coSFCafdzk/IdBgJPUbjYqrnvQUJwXAeMqLqyumrBUJyviC5S9YoZOMoR3kfPoZFUE2ia3
	OSQNTtuunupVmdEe0AiqMIBxt2t5Nb8IVZyShAppeGVVX3YDkM2GnHg4gPos1YtM9RydfN4JKmuqQ
	+YYo0Y1kPDKEPnQZeDjezpYIhF/1DJhcBw+YFUVq9tCuCaztSIF+dUzl5360v0tpceQNf9f4Yo+nP
	9kMdPOJia9b4jZiU52SQHDUmh1aKvxgKPeEWfrdK2JXfb/JAJFdSs7IBY5UMe/abNlgPSiERc1tpQ
	YR3p7Vc3hkKuj2yApfHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEJqQ-0001mD-7u; Tue, 17 Mar 2020 21:33:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEJqI-0001lZ-IZ
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 21:33:44 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBDB420768;
 Tue, 17 Mar 2020 21:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584480821;
 bh=M3BrxNizDgtvsDigyFidbHiD1UnzC8+C8J4O1HpPPow=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G2MMA1Ph48N9VtHU/5bj5UCz5OSSe/ZOp33LNXj1Mm7lK1ITppKFboY6xiEG4lv5w
 394UwSHNfdq6qdsmw1i/eun/4YFjF2xd8O0M8hyxsR6jnjsEcMSObj/XPL7ZneCKan
 y+ML5SJufvctrXcT9CWyY/cSPrTLf+hbxREbylng=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 09/23] perf cs-etm: Swap packets for instruction samples
Date: Tue, 17 Mar 2020 18:32:45 -0300
Message-Id: <20200317213259.15494-10-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200317213259.15494-1-acme@kernel.org>
References: <20200317213259.15494-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_143342_656360_3EC3CCB4 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>, Clark Williams <williams@redhat.com>,
 coresight ml <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Leo Yan <leo.yan@linaro.org>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Yan <leo.yan@linaro.org>

If use option '--itrace=iNNN' with Arm CoreSight trace data, perf tool
fails inject instruction samples; the root cause is the packets are only
swapped for branch samples and last branches but not for instruction
samples, so the new coming packets cannot be properly handled for only
synthesizing instruction samples.

To fix this issue, this patch refactors the code with a new function
cs_etm__packet_swap() which is used to swap packets and adds the
condition for instruction samples.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Robert Walker <robert.walker@arm.com>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: coresight ml <coresight@lists.linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lore.kernel.org/lkml/20200219021811.20067-2-leo.yan@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/cs-etm.c | 39 +++++++++++++++++++--------------------
 1 file changed, 19 insertions(+), 20 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index b3b3fe3ea345..294b09cfb034 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -363,6 +363,23 @@ struct cs_etm_packet_queue
 	return NULL;
 }
 
+static void cs_etm__packet_swap(struct cs_etm_auxtrace *etm,
+				struct cs_etm_traceid_queue *tidq)
+{
+	struct cs_etm_packet *tmp;
+
+	if (etm->sample_branches || etm->synth_opts.last_branch ||
+	    etm->sample_instructions) {
+		/*
+		 * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
+		 * the next incoming packet.
+		 */
+		tmp = tidq->packet;
+		tidq->packet = tidq->prev_packet;
+		tidq->prev_packet = tmp;
+	}
+}
+
 static void cs_etm__packet_dump(const char *pkt_string)
 {
 	const char *color = PERF_COLOR_BLUE;
@@ -1342,7 +1359,6 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 			  struct cs_etm_traceid_queue *tidq)
 {
 	struct cs_etm_auxtrace *etm = etmq->etm;
-	struct cs_etm_packet *tmp;
 	int ret;
 	u8 trace_chan_id = tidq->trace_chan_id;
 	u64 instrs_executed = tidq->packet->instr_count;
@@ -1406,15 +1422,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		}
 	}
 
-	if (etm->sample_branches || etm->synth_opts.last_branch) {
-		/*
-		 * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
-		 * the next incoming packet.
-		 */
-		tmp = tidq->packet;
-		tidq->packet = tidq->prev_packet;
-		tidq->prev_packet = tmp;
-	}
+	cs_etm__packet_swap(etm, tidq);
 
 	return 0;
 }
@@ -1443,7 +1451,6 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 {
 	int err = 0;
 	struct cs_etm_auxtrace *etm = etmq->etm;
-	struct cs_etm_packet *tmp;
 
 	/* Handle start tracing packet */
 	if (tidq->prev_packet->sample_type == CS_ETM_EMPTY)
@@ -1478,15 +1485,7 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 	}
 
 swap_packet:
-	if (etm->sample_branches || etm->synth_opts.last_branch) {
-		/*
-		 * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
-		 * the next incoming packet.
-		 */
-		tmp = tidq->packet;
-		tidq->packet = tidq->prev_packet;
-		tidq->prev_packet = tmp;
-	}
+	cs_etm__packet_swap(etm, tidq);
 
 	return err;
 }
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
