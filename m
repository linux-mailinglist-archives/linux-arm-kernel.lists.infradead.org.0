Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6111656ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 06:29:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FKGhU/DldQ+f/KFFgWpl66LUw53Aqg1p+4zF/Bo1aHc=; b=Ys6hWgHxj6amwQGMxeBXh8rYm0
	Z9XtY0kVvRDMYYwWkQa7OczEO+J2XKuVMcKxS8DhX9k2SiTg8lsSgb3LqV7YDsgFmfvcr5ZryzwSJ
	Sr9BQDgY6aRmi2HG3CQ1jsDQzGC+4sYi6mPgWwIa483fZ5CO6Ku58lduL+Zj72SuxbHIQUTqa5gtO
	g8+L8x3tWn0VaxxSZDzxzcHI3x57nPYt4SzV+FTQTlq/zW5M96kkrxZMxzuAPK447Hjp0R7OvjDAO
	oO6C78JwrANzfeoXiHB2cqSkSF2et4m09zuyP1fj2RtwxOeVKclgdggkbDFTdt0Eq8pbVIQRmVN42
	2tj6E5gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ePF-0003Hb-FI; Thu, 20 Feb 2020 05:29:49 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4eOS-0002WZ-HZ
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 05:29:04 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so1075425plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 21:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=leyno95cobAtAcNQFGrlVZ0utmyIUUJFgDrYtk3rO3A=;
 b=ssb5jO6qvG1aojB3oqYW76CRN/TETCqlTpGBQUhq3KQfF8uaQftqD1BQfIPG8lDkC7
 79WIqFOVmqnqIb0KYR6Meyy4JB40F6kgOkFiLeIBEjhOa/EaOwH1bx49dEsbQM6JY0q2
 tt3CxtpQFRWCgs1YcCf59oV82Sss663tZJhUJfj9sRNSla4Q40sXRW8ewBIWzb4A9l8S
 payzUUOQA52An/Ng3ie75+detcANzNCmgzEH6W+lVqjnbVYpcDzGmNz2fWFq6NGRK9RW
 dWP7qH5y5WRGndesIr5WehhcLQKiYsEVYoP+c1unPljkPoQvRrH4s1IAmG2DLfQ8HaDA
 AJPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=leyno95cobAtAcNQFGrlVZ0utmyIUUJFgDrYtk3rO3A=;
 b=iDht1aiTRzt3jA2CqRfNwPnIfvXbne2RGAVFa+FupsY8sWSux2RUddsciD8gnhJyD3
 SSUIQaG21L/l/uAuixgy4l7vQkMyVsIrkU46zZfuQonMhAjJmAvfWsMIOsqWGNo3GG1n
 kerBje5jngzksR+r7zl4/mop/l0G7P5TRAMQZYdYjwldlbM8mPK9vXZnr+NDODmNxtOK
 aN69tO8A7wR20QXRZL/1GGCmbfL/GtkB42POWxE6Cp+7gJAi7LFTdLtJUHlVctgXsBLG
 oZ+ZNn4vO8ZOWwipvPRkNPidtgmR48IfefFdEBTG9HBz0G6Y6aa6suwJRanlrSfrQjCt
 9dNw==
X-Gm-Message-State: APjAAAXQem3xfGW74sMFey1cdX/Y+G+75/5wjBPQS7GAsihe7qt8E+bS
 7dGv7AJQxKZyWA+v9ogikow5ew==
X-Google-Smtp-Source: APXvYqw+bW5EqKGykBiDWFo04XmcY84U5/oexdvpR3ClTdeonThzRPh5LAsuxd9zv9R1t7JndxijgA==
X-Received: by 2002:a17:90a:2223:: with SMTP id
 c32mr1627110pje.15.1582176539000; 
 Wed, 19 Feb 2020 21:28:59 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id l69sm1535663pgd.1.2020.02.19.21.28.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 21:28:58 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Mike Leach <mike.leach@linaro.org>,
 Robert Walker <robert.walker@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v5 7/9] perf cs-etm: Fixup exception entry for thread stack
Date: Thu, 20 Feb 2020 13:26:59 +0800
Message-Id: <20200220052701.7754-8-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200220052701.7754-1-leo.yan@linaro.org>
References: <20200220052701.7754-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_212900_599677_2EFF5018 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

In theory when an exception is taken, the thread stack is pushed with an
expected return address (ret_addr): from_ip + insn_len; and later when
the exception returns back, it compares the return address (from the new
packet's to_ip) with the ret_addr in the of thread stack, if have the
same values then the thread stack will be popped.

When a branch instruction's target address triggers an exception, the
thread stack's ret_addr is the branch target address plus instruction
length for exception entry; but this branch instruction is not taken,
the exception return address is the branch target address, thus the
thread stack's ret_addr cannot match with the exception return address,
so the thread stack cannot pop properly.

This patch fixes up the ret_addr at the exception entry, when it detects
the exception is triggered by a branch target address, it sets
'insn_len' to zero.  This allows the thread stack can pop properly when
return from exception.

Before:

  # perf script --itrace=g16l64i100

  main  3258        100      instructions:
          ffff800010082c1c el0_sync+0x5c ([kernel.kallsyms])
              ffffad816a14 memcpy+0x4 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800820 _dl_start_final+0x48 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800b00 _dl_start+0x200 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800048 _start+0x8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800044 _start+0x4 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

The issues in the output:
memcpy+0x4 => The function call memcpy() causes exception; it's return
              address should be memcpy+0x0.
_start+0x4 => The thread stack is not popped correctly, this is a stale
              data which is left in the previous exception flow.

After:

  # perf script --itrace=g16l64i100

  main  3258        100      instructions:
          ffff800010082c1c el0_sync+0x5c ([kernel.kallsyms])
              ffffad816a10 memcpy+0x0 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800820 _dl_start_final+0x48 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800b00 _dl_start+0x200 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
              ffffad800048 _start+0x8 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index d9c22c145307..4800daf0dc3d 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1160,6 +1160,7 @@ static void cs_etm__add_stack_event(struct cs_etm_queue *etmq,
 	u8 trace_chan_id = tidq->trace_chan_id;
 	int insn_len;
 	u64 from_ip, to_ip;
+	u32 flags;
 
 	if (etm->synth_opts.callchain || etm->synth_opts.thread_stack) {
 		from_ip = cs_etm__last_executed_instr(tidq->prev_packet);
@@ -1168,6 +1169,27 @@ static void cs_etm__add_stack_event(struct cs_etm_queue *etmq,
 		insn_len = cs_etm__instr_size(etmq, trace_chan_id,
 					      tidq->prev_packet->isa, from_ip);
 
+		/*
+		 * Fixup the exception entry.
+		 *
+		 * If the packet's start_addr is same with its end_addr, this
+		 * packet was altered from a exception packet to a range packet;
+		 * the detailed info is described in cs_etm__exception(), which
+		 * is used to handle the case for a branch instruction is not
+		 * taken but the branch triggers an exception.
+		 *
+		 * In this case, fixup 'insn_len' to zero so that allow the
+		 * thread stack's return address can match with the exception
+		 * return address, finally can pop up thread stack properly when
+		 * return from exception.
+		 */
+		flags = PERF_IP_FLAG_BRANCH | PERF_IP_FLAG_CALL |
+			PERF_IP_FLAG_INTERRUPT;
+		if (tidq->prev_packet->flags == flags &&
+		    tidq->prev_packet->start_addr ==
+		    tidq->prev_packet->end_addr)
+			insn_len = 0;
+
 		/*
 		 * Create thread stacks by keeping track of calls and returns;
 		 * any call pushes thread stack, return pops the stack, and
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
