Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED820BB927
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:10:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oVnKe3WTut/+ouAjd0oExQ7amVpLQAsQTETQ3Hd3ics=; b=qeKW9o+6MhMJdE4Xc7gt66sJ4j
	+UPzAxF3ftGWIZQ8ErKlKa5K5oL2hcYngKncfqO/5MzJLhgKIbpdMnjGxOX5jkGPuRCEVXXf9ALFY
	F5H8RT7YVxcBIkocz3It7RP8U+zTIXAAsHpbpjTKxc9bH0yy1eybP77+pD4lMfI735czoGI4wEPoI
	nBnayuNiST4wBA77SOUT9PQ0RikMzuEmWKD9hc/3/rsndBiOEWHC0T6eOSaKLhSoO87NPW9nlsMGE
	PGRPa+Oa2AxaxnXXFtTnKTZ0gnZFkoiyNvzp5qOKPhFO4yxD4cfIGRLcmGHJU50JOqI1uJNd/HaVz
	U2nYjnmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQuS-00010y-7V; Mon, 23 Sep 2019 16:09:56 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQst-0008Hc-Lw
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:08:21 +0000
Received: by mail-pg1-x544.google.com with SMTP id a3so8224911pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 09:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qbgL52JbC3nZvOpwtMEyx7CsWNJZAh5SrAdnx2jzAo8=;
 b=FSOY9rC3vU5FztGsRFEwH7V4vSC9FJwLCLLrXOgsTUDaEwnAmpuq8BbixzXG2ShMOL
 6lLd0syInfmXdqh3Al2QF+TUN79k3rBRUqlhtoX+TSudrnCbPz/q5/W2p5ygqb5kOQhl
 CnUXmSZFkMcg+WAj3b1AFeDWZ6VA5jzu6MW/OwI58N93JXE4xidealql1q8NAYKm6H38
 tUwoNg8zLOr1KT09n5HsSneDQYjLwHoKbwCeHrDbG+J2ibdHNqDaDUTkFSoJWBfWD16c
 +yZQ1VB6Y0h7yY85Pe7mLUYfXy/Q370DvImDh7J1Vb9oh0oN1B8jdJO+sngnP1GgpSbC
 RyMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qbgL52JbC3nZvOpwtMEyx7CsWNJZAh5SrAdnx2jzAo8=;
 b=A9degEsSxiBfg00FSTk4p9i/3QW7CafbckZwldijxKXdUN4lP4AUHFsFziuPdIRni/
 o5QN5cRZr2uBhwP/mjQrwLlxdOnfBNZIGmuO2tbw9+Yr49xSBEvOsfCTlcVnhyvQxFzp
 PXcIijyoeR7sHf4/7QYPj7SrNGck8w50Vykw4bu+8V9n9BVaXCkevzzogaofM0479ubC
 KfcPWzzRBYpO+kP1kRej3XnKsjVNh8BffbJEzJhUfwtoJwqqwAeeyaLc1IPmUXDS06Uc
 6+nAMiA0Dnh8jRrOIuqVlc86CXfv6A162Jhgs2ZUSA8zsppuKHsOvB94l3it356w/xFQ
 dOyA==
X-Gm-Message-State: APjAAAVtB4mjprkQ/M+5aD5ekc6FG/Vno94AugL8Lx7T5j1LGVxtzCsw
 e1WAGI88blF0BlEk7sxH1aQRfg==
X-Google-Smtp-Source: APXvYqybSHGIhV3dLeByo9yn27L1VeNLtWPNru/lozTdZ/6Wmi0V0CdmHJwmlZZT4kwUekU6QL4cIw==
X-Received: by 2002:a62:4e09:: with SMTP id c9mr373088pfb.152.1569254899217;
 Mon, 23 Sep 2019 09:08:19 -0700 (PDT)
Received: from localhost.localdomain ([12.206.46.62])
 by smtp.gmail.com with ESMTPSA id r1sm9880006pgv.70.2019.09.23.09.08.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 09:08:18 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v2 5/5] perf cs-etm: Correct callchain for instruction sample
Date: Tue, 24 Sep 2019 00:07:59 +0800
Message-Id: <20190923160759.14866-6-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190923160759.14866-1-leo.yan@linaro.org>
References: <20190923160759.14866-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_090819_754266_B1CA42DF 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The synthesized flow use 'tidq->packet' for instruction samples,
comparing against the thread stack and the branch samples which are uses
the 'tidp->prev_packet', thus the instruction samples result in using an
packet ahead than thread stack and branch samples.

This leads to an instruction's callchain error as shows in below
example:

  main  1579        100      instructions:
  	ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
  	ffff000010214850 perf_event_update_userpage+0x48 ([kernel.kallsyms])
  	ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
  	ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
  	ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
  	ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
  	ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])

In the callchain log, for the two continuous lines the up line contains
one child function info and the followed line contains the caller
function info, and so forth.  But the first two lines:

  perf_event_update_userpage+0x4c  => the sampled instruction
  perf_event_update_userpage+0x48  => the parent function's calling

The child function and parent function both are the same function
perf_event_update_userpage(), but this isn't a recursive function, thus
the sequence for perf_event_update_userpage() calling itself shouldn't
never happen.  This callchain error is caused by the instruction sample
using an ahead packet than the thread stack, the thread stack is deferred
to process this packet and missed to pop stack if this is a return
packet.

To fix this issue, we can simply change to use 'tidq->prev_packet' to
generate the instruction samples, this allows the thread stack to push
and pop synchronously with instruction sample.  Finally, the callchain
is displayed as below:

  main  1579        100      instructions:
	ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
	ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
	ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
	ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
	ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
	ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index bd09254a7208..3f7edfd15124 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1418,7 +1418,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 	struct cs_etm_packet *tmp;
 	int ret;
 	u8 trace_chan_id = tidq->trace_chan_id;
-	u64 instrs_executed = tidq->packet->instr_count;
+	u64 instrs_executed = tidq->prev_packet->instr_count;
 
 	tidq->period_instructions += instrs_executed;
 
@@ -1449,7 +1449,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		 */
 		u64 offset = (instrs_executed - instrs_over - 1);
 		u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
-					      tidq->packet, offset);
+					      tidq->prev_packet, offset);
 
 		ret = cs_etm__synth_instruction_sample(
 			etmq, tidq, addr, etm->instructions_sample_period);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
