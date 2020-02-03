Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A44A1150085
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 03:09:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RRRO72GtJEehhlDwpaGsUIE0CB3F9+MnVspo3lRT9o0=; b=T7MF3J2RinIjGXbEjCCWOExeZC
	olMFt4X6+oRuirYwzUIr2NZ/qU11ecyjVOocP5GJPK/ivcU/wSEEtAIhYXyh1dmkNmBJ8G9uZYMUC
	GQ+NYkqv89MWf0QRLhwhx5kTXEnmPXfuzlEExDQMqnpi6PR+Kep8gxnlJzC1KF92hOujIJd31IuNb
	Tosh4657L87AkTXM0Pcmugtk5aDu+6+Gvy5ltRlcuOeuyduXejfOlqZznSt9fdJ1Wh/5RQiapvsEb
	y8Zw5pzFmfFj8emsDmMmDSpr7E3WBmqp0sMw/NuZjDEHPffY7mofqHwZVc+2NXddkNbN4spaUdd5F
	mMF1kKCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyRAf-0006b8-DM; Mon, 03 Feb 2020 02:09:05 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyR9u-00062B-2G
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 02:08:19 +0000
Received: by mail-pj1-x1041.google.com with SMTP id dw13so5588168pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 18:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GPbiPKqsfybk4TJ/Ddjt4sC7QShATZuIq5L3KhpJZK4=;
 b=ujZpTeGUmpJQDH+3gYR30Gjm1s5dT4duHB5zkpWarUSFlZ5yCodTYDifAZS+VjnQjD
 /rgkqGFGA79XzDqJqoQiVWoXgbXiVyLxlhJss+z6eW24E52kZ4igeHY4BcSBIKgF8SeJ
 hmO+dPwV/MxbFMGyAZivKIQXDAkpy2dNZcAZHJiwgSxP1x0Tq3vpTcRhsqfjgHzPzCY7
 FamBGbRRb4GZoB1IXaQ6o8qIaIqCCqIFpD8HHUAJfF8oUzDx3qAxxkqWtBcnDYMAq0oC
 zdWrO5eYSVRAYuHHgaa3LplEwuRBYVjb3GXf0ClkalCq3ZfHyIygCj0YV0d1tNjuFTQt
 eYBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GPbiPKqsfybk4TJ/Ddjt4sC7QShATZuIq5L3KhpJZK4=;
 b=EI7amNLqq3UhLfarZpD7Eryycsati3THxOuFbWqQ/LEOLC/Ib/6ZoO/ewXTuXMV0JJ
 336fI37749SWGuGDZGsT5/CqCAJqAgq5hI2yo3i9wHKv+HOMRU3kQ8ZYkELvB7Om3as/
 r/PTCrt40MKygVLK2nYnTLCptdcQBaw5jLkdqH/vfdIFl+dN2uiK/c9Ww/XNYjI2mtfg
 BhmB3X8pUcfolkVlsouKcMxZ6Vn6u1JY95eJwIf1EiPhuQJLBUQYHmqlHBRKewomKcMb
 Ku5hq/Sw6W6MjPCc6Pq1Ep7jij03J7qh4YBnPwPFszw+8FbEy1+JZ7OY5M62yylhciE/
 V3/g==
X-Gm-Message-State: APjAAAUXPl3EwSA70KT9Pl2oxqit0K0OcHSO1uv5rKcwdmMKvNarSPig
 +zSxGSQyVbJhKuAsKPeu2IFvGg==
X-Google-Smtp-Source: APXvYqxc3AdfyGgoc/2ApkJH3zo4OwtIcOVIs/xUH6ZnND0aXXMcJrJ4Uu5OtqimlUBe4cofQ4IkhQ==
X-Received: by 2002:a17:90a:f317:: with SMTP id
 ca23mr16157184pjb.20.1580695697054; 
 Sun, 02 Feb 2020 18:08:17 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id z29sm17521201pgc.21.2020.02.02.18.08.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 18:08:16 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <robert.walker@arm.com>,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v4 5/5] perf cs-etm: Synchronize instruction sample with the
 thread stack
Date: Mon,  3 Feb 2020 10:07:16 +0800
Message-Id: <20200203020716.31832-6-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200203020716.31832-1-leo.yan@linaro.org>
References: <20200203020716.31832-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_180818_127334_81FD8A0D 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 tools/perf/util/cs-etm.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 8f805657658d..410e40ce19f2 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1414,7 +1414,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 	struct cs_etm_packet *tmp;
 	int ret;
 	u8 trace_chan_id = tidq->trace_chan_id;
-	u64 instrs_executed = tidq->packet->instr_count;
+	u64 instrs_executed = tidq->prev_packet->instr_count;
 
 	tidq->period_instructions += instrs_executed;
 
@@ -1505,7 +1505,8 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 			 * instruction)
 			 */
 			addr = cs_etm__instr_addr(etmq, trace_chan_id,
-						  tidq->packet, offset - 1);
+						  tidq->prev_packet,
+						  offset - 1);
 			ret = cs_etm__synth_instruction_sample(
 				etmq, tidq, addr,
 				etm->instructions_sample_period);
@@ -1525,7 +1526,8 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 			 * instruction)
 			 */
 			addr = cs_etm__instr_addr(etmq, trace_chan_id,
-						  tidq->packet, offset - 1);
+						  tidq->prev_packet,
+						  offset - 1);
 			ret = cs_etm__synth_instruction_sample(
 				etmq, tidq, addr,
 				etm->instructions_sample_period);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
