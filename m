Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2689CC90A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 11:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=trwjymbHDFm1gJ9dyW//i7A+Zce4rQKsii2Fn+kNKoU=; b=jbV82jkQ3Agy1wQIp+SZAi6oFx
	+UnDNrF4NHWgtpHMno6FtarXkVGh6qn/+n/QUdQ3BAf3N8zm4sQj9JcqLQe/D/JRda1L0jVMRbdy4
	SqtdFcTzZkee0b9JdrDZuSKql7SqzKp6QfH/QDDnswHJSC2t9amwAXEYVDXnu4CkoJEj6sjEwYrRI
	RQBsLKzpNAVcV4qJ8E4Sr8eKmb4RhSNP1nYg9B6P+zbjICaxRAyzWLYgPSNNZqAC3mcIO+avvuSyI
	Hiy2E5tMH+5fd8Sbk+Z80UhhT1evdYdcFdJetxUpWq+kbRM3EznI8leFnBneyIjhbZ/eCZ9817kBJ
	cYZKayDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGgDY-00058X-4m; Sat, 05 Oct 2019 09:19:12 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGgBb-0003qW-Sz
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 09:17:16 +0000
Received: by mail-qk1-x743.google.com with SMTP id u22so8138058qkk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 02:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MASENXtjvjrGt9RAiM0XMBiZxBBH7YBJCk7GCr7TS68=;
 b=BOZAQaCtY3VPwH+2WpEjt6kSfv/nQ8w6QKgJreO5w8ha6Xch0n3Gz1CSS4U+u65pnF
 qjwyPDVvQd5HttZYsi6omNZiaPcmbInsUs9rDSDwQeDwKbbBAM547VNDrnk+HRFifbRI
 k2idWM85mMwtcLNM/GiWrYbEstXYFyFTGBIp7IPWVnyz2ItuUZdsWfftzgAolt81wQiV
 /zJq4O79Y7ezXfnqwNAG0SHpsI3FvqEh65vnZkG9GRW3B+o2zgFyNJRMKZo7k3Oz1YmV
 KwCc55v63Likpj+nSVG2NPQJmbDLO1HRr1afjRQnfKieML/oAJXkHTjNZOgwuM+5snrV
 UYSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MASENXtjvjrGt9RAiM0XMBiZxBBH7YBJCk7GCr7TS68=;
 b=DpV3GBiS8XgvqRo2c0rklyMmtBs//KsHmtmZixho3e/q2JP6CNQnrW246fi8m5U941
 0lRXiWaD7wikMdrX6wXBBnsEfo6g5wSVe/WVYa6sGRocdlmei6QBTPec2lbZWmxnS7qg
 3qE4JJ6VdbyRKKEH8NzeqFRzHPUEQD4zlonoexbyx2WPT57l626X6GzFFN9NrTQMSzwo
 49DbO0/u4v2elusUnh76H1a9sezuEIz1bAJ7AAr2g6hZmPOVFWa4Fm1rIBIxuszh9JOR
 jhQ5PTAzl0Mw7ZKTsMdb1qpE4DBhrrKlPUjh2i+xYIbRYhtq+ZXMypEbXRxbYSNsZ0cb
 VQOw==
X-Gm-Message-State: APjAAAWbnzik9RCMBnG29DF3fpZIfpz8vG2QR9QhBzbrWy5ymA99IMw0
 qO0cIUBND7SIf5yhjQ9v6LnoUg==
X-Google-Smtp-Source: APXvYqxaCS/RWXRAQ/pUsBVqO66Nz19/Jb4pys6tEihT2HU84dD8DBm86OXU3GYgMtiY+FG+zbI12Q==
X-Received: by 2002:a37:4e48:: with SMTP id c69mr14232654qkb.182.1570267028692; 
 Sat, 05 Oct 2019 02:17:08 -0700 (PDT)
Received: from localhost.localdomain (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id u132sm4384621qka.50.2019.10.05.02.17.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 02:17:08 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>
Subject: [PATCH v3 6/6] perf cs-etm: Synchronize instruction sample with the
 thread stack
Date: Sat,  5 Oct 2019 17:16:14 +0800
Message-Id: <20191005091614.11635-7-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191005091614.11635-1-leo.yan@linaro.org>
References: <20191005091614.11635-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_021712_010551_92581190 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The synthesized flow use 'tidq->packet' for instruction samples; on the
other hand, 'tidp->prev_packet' is used to generate the thread stack and
the branch samples, this results in the instruction samples using one
packet ahead than thread stack and branch samples ('tidp->prev_packet'
vs 'tidq->packet').

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
function info, and so forth.  So the first two lines are:

  perf_event_update_userpage+0x4c  => the sampled instruction
  perf_event_update_userpage+0x48  => the parent function's calling

The child function and parent function both are the same function
perf_event_update_userpage(), but this isn't a recursive function, thus
the sequence for perf_event_update_userpage() calling itself shouldn't
never happen.  This callchain error is caused by the instruction sample
using an ahead packet than the thread stack, the thread stack is deferred
to process the new packet and misses to pop stack if it is just a return
packet.

To fix this issue, we can simply change to use 'tidq->prev_packet' to
generate the instruction samples, this allows the thread stack to push
and pop synchronously with instruction sample.  Finally, the callchain
can be displayed correctly as below:

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
index 56e501cd2f5f..fa969dcb45d2 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1419,7 +1419,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 	struct cs_etm_packet *tmp;
 	int ret;
 	u8 trace_chan_id = tidq->trace_chan_id;
-	u64 instrs_executed = tidq->packet->instr_count;
+	u64 instrs_executed = tidq->prev_packet->instr_count;
 
 	tidq->period_instructions += instrs_executed;
 
@@ -1450,7 +1450,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		 */
 		s64 offset = (instrs_executed - instrs_over - 1);
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
