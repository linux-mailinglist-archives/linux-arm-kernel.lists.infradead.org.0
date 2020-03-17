Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEAE18907A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 22:34:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whSSSbnTaAMrk5VI/zHiqjctinQ/YWKRw/ufQ5rC7ss=; b=sFXcFmCQAocXCn
	8pGVWojBi8RcTQV98NjRTXo9C2IMJFadf1DUF3oTCcUXerEvlMiKOTgstEWzSopvhi3BPAGvlfR2O
	UPfXvARs+wu5ViHecX87jtpo3AueARb6ZeOrFuT9Mu0svvMfP8nOgKbi5MuX9jS0EkiByhS/zS0Dr
	g6j9qlgQN6iX5ADG0puI4qHqlpb29QGlyPWfwCzjUgC4L6B8ZqiBY1zVUDX43FbNgHmZX09SyRONi
	62NLMNutVBpi3LuP5XaaTEmedhjhORaJjpHk6Q4t4GEhPZDsdWOlLhdZcwhkc+a5CC4Bz0Oci9Z/b
	SnIjCGltGY/tzj0DTNxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEJrA-0002QL-4C; Tue, 17 Mar 2020 21:34:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEJqV-0001xj-JF
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 21:33:57 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D296E20714;
 Tue, 17 Mar 2020 21:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584480834;
 bh=9kx0bjseCZd6aYyxdHYKCohfu23NKwAgTnfR8yH1ZMs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=u7fPlRgy8fG6kNfbZNkH+gRTIhbtjUoSvlZ3GLSoLOqB6sy8p8MsOXe99vVAIBy3e
 jx/RqnxcGWBLwS1ahcqRDhBNaRyo5TmJyp/GiiaOd5wspxjWz/z69Ynfluq6K/sLMU
 OWH+EOprWKokf728V1yXJZdiPuFGO6/l9X5mMhoo=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 12/23] perf cs-etm: Optimize copying last branches
Date: Tue, 17 Mar 2020 18:32:48 -0300
Message-Id: <20200317213259.15494-13-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200317213259.15494-1-acme@kernel.org>
References: <20200317213259.15494-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_143355_683914_33363333 
X-CRM114-Status: GOOD (  12.44  )
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

If an instruction range packet can generate multiple instruction
samples, these samples share the same last branches; it's not necessary
to copy the same last branches repeatedly for these samples within the
same packet.

This patch moves out the last branches copying from function
cs_etm__synth_instruction_sample(), and execute it prior to generating
instruction samples.

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
Link: http://lore.kernel.org/lkml/20200219021811.20067-5-leo.yan@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/cs-etm.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 1ddcc67e13dd..87d9943177bc 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1151,10 +1151,8 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 
 	cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->packet, &sample);
 
-	if (etm->synth_opts.last_branch) {
-		cs_etm__copy_last_branch_rb(etmq, tidq);
+	if (etm->synth_opts.last_branch)
 		sample.branch_stack = tidq->last_branch;
-	}
 
 	if (etm->synth_opts.inject) {
 		ret = cs_etm__inject_event(event, &sample,
@@ -1431,6 +1429,10 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		u64 offset = etm->instructions_sample_period - instrs_prev;
 		u64 addr;
 
+		/* Prepare last branches for instruction sample */
+		if (etm->synth_opts.last_branch)
+			cs_etm__copy_last_branch_rb(etmq, tidq);
+
 		while (tidq->period_instructions >=
 				etm->instructions_sample_period) {
 			/*
@@ -1508,6 +1510,11 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 
 	if (etmq->etm->synth_opts.last_branch &&
 	    tidq->prev_packet->sample_type == CS_ETM_RANGE) {
+		u64 addr;
+
+		/* Prepare last branches for instruction sample */
+		cs_etm__copy_last_branch_rb(etmq, tidq);
+
 		/*
 		 * Generate a last branch event for the branches left in the
 		 * circular buffer at the end of the trace.
@@ -1515,7 +1522,7 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 		 * Use the address of the end of the last reported execution
 		 * range
 		 */
-		u64 addr = cs_etm__last_executed_instr(tidq->prev_packet);
+		addr = cs_etm__last_executed_instr(tidq->prev_packet);
 
 		err = cs_etm__synth_instruction_sample(
 			etmq, tidq, addr,
@@ -1560,11 +1567,16 @@ static int cs_etm__end_block(struct cs_etm_queue *etmq,
 	 */
 	if (etmq->etm->synth_opts.last_branch &&
 	    tidq->prev_packet->sample_type == CS_ETM_RANGE) {
+		u64 addr;
+
+		/* Prepare last branches for instruction sample */
+		cs_etm__copy_last_branch_rb(etmq, tidq);
+
 		/*
 		 * Use the address of the end of the last reported execution
 		 * range.
 		 */
-		u64 addr = cs_etm__last_executed_instr(tidq->prev_packet);
+		addr = cs_etm__last_executed_instr(tidq->prev_packet);
 
 		err = cs_etm__synth_instruction_sample(
 			etmq, tidq, addr,
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
