Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D150A2FD4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 08:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VxsT+bdurTdBuEE20KKA2J7dAiMR+f/qbEgvVembJ7I=; b=Xd9p4DX7xuI10vlzd3X4iRGLIq
	jclpKyklRpaS1QszcVZj87CJM/OAaLGHnES7sCLbFx+Y6S5WBPoclqNv0Qb3n/R+G5X44gMOgpf9b
	3AptM01LcLdfLRydmDUR/VAIVTrM/a8jdtftfM7iaNhn/QCgZaUwTXBR4bZ27dkl9mN3TLQyS3rPB
	5eGx8weRILt7+XObekPcEPgSr6BX2FyB7fHho6bMBIuGt4xiG9inTCo16HpxVzN+tIFiaYzz9IuHm
	+sdJs073OEuSsC0x93A+2sNf4sbot7Qz/wqCyapWhWBJRwuReEPmyrWjL67neN7CGCWjzzAR6jsvw
	o551fDYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aMH-0001uG-Fn; Fri, 30 Aug 2019 06:26:05 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aLE-00007q-3P
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 06:25:01 +0000
Received: by mail-yb1-xb43.google.com with SMTP id m9so2092121ybm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 23:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LW/cyVok2Jx1Gl00HhV8gtiT8RMfRuMvrAfcIARqkHQ=;
 b=anOoup8NEzR708g9QLZe0LlLW1dHoyJlaY4aiva0hYfwdnh/25lhlp6WWCRuVqfDDK
 dJrpirug7Wvl1oNUStKASkVBltOaFvN/8PjGmFx3GMU9ptP/VgRaS673M+3oQyKJZ9g/
 XiG5ZQYvUkV4JsYMChF0y+xq0opTxWZI7lTtP7A8X0jXlG7ymholngnzlPFOc/WIm4D4
 0O63FdN51BBL4rrEewu4y0ErkJ7aSiT/YCl0a68k2bDep7HyagVbrQbPJ7ANfulPycqR
 1fANyvSx1HcIUW4qUqrJrCLufB1EXHolBJ04sAfeSq/+baTPSIxL+C1JlPkZevF1lXkh
 N1ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LW/cyVok2Jx1Gl00HhV8gtiT8RMfRuMvrAfcIARqkHQ=;
 b=WbyiRd2zfH41l5Z/DHTMp49jxB0dRam7juZW0f/8I0yG8ibvvNjMiUWHBIiDcVO3u6
 EeJPE3qncuoZoouphvY4AV1cBohEkW13EAMwHyq5+TlPY5ZeiWsJN4/qcDJk96hD6DWX
 CDGO/yFTAodnmVOlsOcbYixUeeX4Xv8cqA7Ubj8lgck7gFogq0s1+2tcifNP5dX0+zB1
 HkBbA04uQLjDuvxjxE3ghy0kZYe1ord8tZRW2MgfbJDXkxfLJRz9AJwzQspoAJNZetKp
 73LgmleynTGOmyyawtIgp+AbyNNrO4YJgOnxUz4fOKp68nmYF5+J/5JB2t1QS4fz+L74
 ZJow==
X-Gm-Message-State: APjAAAX5BKwaUr+xkzB286lGZWJ8PialAraSA2oT9xtlTtNGQel8T5nr
 yk34JQFs7/jh65SPtkYpGig4rA==
X-Google-Smtp-Source: APXvYqzXKOQ8vLvXYqgVCKUbIIGXmIs/9n9gYZH3CWl6SicBE7b7FoFlpIMNY4eBB8SbvaOW52BQhg==
X-Received: by 2002:a25:2f85:: with SMTP id v127mr9400791ybv.95.1567146299428; 
 Thu, 29 Aug 2019 23:24:59 -0700 (PDT)
Received: from localhost.localdomain (li1320-244.members.linode.com.
 [45.79.221.244])
 by smtp.gmail.com with ESMTPSA id r193sm976784ywe.8.2019.08.29.23.24.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 23:24:58 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <Robert.Walker@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH v1 3/3] perf cs-etm: Correct the packet usage for instruction
 sample
Date: Fri, 30 Aug 2019 14:24:21 +0800
Message-Id: <20190830062421.31275-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830062421.31275-1-leo.yan@linaro.org>
References: <20190830062421.31275-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_232500_357802_19A77A52 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
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

It uses 'tidq->packet' rather than 'tidq->prev_packet' to generate
instruction sample, comparing against the thread stack and the branch
samples which are using the 'tidp->prev_packet', thus this leads the
instruction sample to use one ahead packet than thread stack and branch
samples.

As result, the instruction's call chain can be wrongly displayed as
below:

  main  1579        100      instructions:
  	ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
  	ffff000010214850 perf_event_update_userpage+0x48 ([kernel.kallsyms])
  	ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
  	ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
  	ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
  	ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
  	ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])

In this log, the continuous two lines includes two functions, the up
line contains the child function info and the bottom line contains
its parent function, and so forth.  But if review the first two lines:

  perf_event_update_userpage+0x4c  => the sampled instruction
  perf_event_update_userpage+0x48  => the parent function's calling

The child function and parent function is the same function
perf_event_update_userpage(), but perf_event_update_userpage() isn't
a recursive function, thus this calling sequence shouldn't never happen.
This is caused by the instruction sample using the 'tidq->packet', but
this packet is not handled yet by thread stack, the thread stack is
delayed to handle one return packet for stack popping.

To fix this issue, we can simply to use 'tidq->prev_packet' to generate
the instruction sample, this allows the thread stack to push/pop
properly for instruction sample.  Finally, we can get below result:

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
index ad573d3bd305..0bd2b3c48394 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1414,7 +1414,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 	struct cs_etm_packet *tmp;
 	int ret;
 	u8 trace_chan_id = tidq->trace_chan_id;
-	u64 instrs_executed = tidq->packet->instr_count;
+	u64 instrs_executed = tidq->prev_packet->instr_count;
 
 	tidq->period_instructions += instrs_executed;
 
@@ -1445,7 +1445,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
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
