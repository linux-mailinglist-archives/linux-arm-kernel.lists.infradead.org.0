Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E81163A02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 03:19:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D8ofEM99WaYOXu36HdvOiH9fDLuzoYWLKB7sK5mO0rM=; b=rpBYSoWYMEhcRB3y5doHr+jNpD
	hx+9bOF6cxDm77WvwAqPBXHngbPrTcMRAKJlWA3rz48m9uPQAtjrqEEat6DhEYnJ9GK0K5wyEfIHE
	na7objJ6WH+YUJEgztPXYL1GrDnKw4JKOFLgTq3vsWOB/Q8VwbuMJnyuXqvJ/bCYjJANPJTy164bh
	7z+X62Wfxptdx8M+U5ZPpoIX15afYUjJ11hZHaZPNqTmU4ZKMgU8iHAiEeqUYBrevU11xpX7+kxDt
	fffpkiX/Hx+MffW5g9grq/KyrEFWvkIh5SAnlDjLeloBGRjD+6b+kYjf2XpA82rGxed0xR1yNlNfl
	1JFg7gXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Exg-00012v-2J; Wed, 19 Feb 2020 02:19:40 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ExB-0000jg-1K
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 02:19:11 +0000
Received: by mail-pg1-x541.google.com with SMTP id g3so11785382pgs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 18:19:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8cKL3AaIl+QvmCfSxetleMkVTq/ERHhbraI9D0Gkm8M=;
 b=sjQ11GtGikQZXvFuhOhNnrhatmYa9vJWBy6Ij3jB5XMQQACzeWPZJHSEks3uCD6DyY
 LghQ/zcjcXYk+HifglaT6y4ll2Vxr0kNb8k7LZ8Wk/3G5wM0pBbwB3+JyNtEW3CBsi5E
 mdYKQh5SGy8MxJrMjhhlVYeo/3ndIMr9wYwVbRZlaeXUuU+x/WbMm59GwzYmt6T1fkfG
 D0Z5Gshc0SyZjAp06GNYC06Q703CoqqgioG1LxebO7B2uYRiiq6gAWmFcZkCFHu1U82d
 T/Bt88NGNqwsmLwF5eJfjzKXhjpW6afkE1DO11L49DZ+mnNoMExcFsmfu6y08DvXQ6zS
 IXZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8cKL3AaIl+QvmCfSxetleMkVTq/ERHhbraI9D0Gkm8M=;
 b=YrGcBrPw+S+Ab1iR9z7hRU1CmDP7y6x9A1z8QYVYxBYUMQUt2vKnYfLDQoZtbNqz55
 Pnb2sMUpJR3INNGHfj+iyfwzONCAuHa00OjhvI4vC75m5af7y2xf85LOgeyp5Jk2mlS2
 ORjXXNAWO+gmqHnkxV4s6jD3Imgv2Y/lmKPJdUnbQ+TQnswn9m/Li0jAVVd6vlxRkJ3+
 GK2VheWY8VjuDRASW7zYKN5o9hg4w2uziGe1RgS2kmqa3bnJfFGPDQw8ZNYSsXtAM4RH
 H8edDcyf+QqQOrPzctvtcbHfrKO43i/0SduPK0elRpgsO0nmatazM8FLYE5BrSqlQp0q
 JMGA==
X-Gm-Message-State: APjAAAWZ98Fy8DgffhLbNQNFNhmBVubHwz8I2HVMId12CD95uZwdqaWl
 0QpW1+CmZH6AecSokvSlQ/2oKQ==
X-Google-Smtp-Source: APXvYqxzvmMhk5IEE05litktPeAw8dUrB4n7gLWMbRjUCl2tdzj6GQK+nhBfJaOLUaf/RyL5jJTbRQ==
X-Received: by 2002:aa7:85d3:: with SMTP id z19mr24572288pfn.62.1582078747904; 
 Tue, 18 Feb 2020 18:19:07 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id q11sm322698pff.111.2020.02.18.18.18.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 18:19:07 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <robert.walker@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: [PATCH v5 3/5] perf cs-etm: Correct synthesizing instruction samples
Date: Wed, 19 Feb 2020 10:18:09 +0800
Message-Id: <20200219021811.20067-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219021811.20067-1-leo.yan@linaro.org>
References: <20200219021811.20067-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_181909_119228_43C62351 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

When 'etm->instructions_sample_period' is less than
'tidq->period_instructions', the function cs_etm__sample() cannot handle
this case properly with its logic.

Let's see below flow as an example:

- If we set itrace option '--itrace=i4', then function cs_etm__sample()
  has variables with initialized values:

  tidq->period_instructions = 0
  etm->instructions_sample_period = 4

- When the first packet is coming:

  packet->instr_count = 10; the number of instructions executed in this
  packet is 10, thus update period_instructions as below:

  tidq->period_instructions = 0 + 10 = 10
  instrs_over = 10 - 4 = 6
  offset = 10 - 6 - 1 = 3
  tidq->period_instructions = instrs_over = 6

- When the second packet is coming:

  packet->instr_count = 10; in the second pass, assume 10 instructions
  in the trace sample again:

  tidq->period_instructions = 6 + 10 = 16
  instrs_over = 16 - 4 = 12
  offset = 10 - 12 - 1 = -3  -> the negative value
  tidq->period_instructions = instrs_over = 12

So after handle these two packets, there have below issues:

The first issue is that cs_etm__instr_addr() returns the address within
the current trace sample of the instruction related to offset, so the
offset is supposed to be always unsigned value.  But in fact, function
cs_etm__sample() might calculate a negative offset value (in handling
the second packet, the offset is -3) and pass to cs_etm__instr_addr()
with u64 type with a big positive integer.

The second issue is it only synthesizes 2 samples for sample period = 4.
In theory, every packet has 10 instructions so the two packets have
total 20 instructions, 20 instructions should generate 5 samples
(4 x 5 = 20).  This is because cs_etm__sample() only calls once
cs_etm__synth_instruction_sample() to generate instruction sample per
range packet.

This patch fixes the logic in function cs_etm__sample(); the basic
idea for handling coming packet is:

- To synthesize the first instruction sample, it combines the left
  instructions from the previous packet and the head of the new
  packet; then generate continuous samples with sample period;
- At the tail of the new packet, if it has the rest instructions,
  these instructions will be left for the sequential sample.

Suggested-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 tools/perf/util/cs-etm.c | 87 ++++++++++++++++++++++++++++++++--------
 1 file changed, 70 insertions(+), 17 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index b2f31390126a..4b7d6c36ce3c 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1356,9 +1356,12 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 	struct cs_etm_auxtrace *etm = etmq->etm;
 	int ret;
 	u8 trace_chan_id = tidq->trace_chan_id;
-	u64 instrs_executed = tidq->packet->instr_count;
+	u64 instrs_prev;
 
-	tidq->period_instructions += instrs_executed;
+	/* Get instructions remainder from previous packet */
+	instrs_prev = tidq->period_instructions;
+
+	tidq->period_instructions += tidq->packet->instr_count;
 
 	/*
 	 * Record a branch when the last instruction in
@@ -1376,26 +1379,76 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		 * TODO: allow period to be defined in cycles and clock time
 		 */
 
-		/* Get number of instructions executed after the sample point */
-		u64 instrs_over = tidq->period_instructions -
-			etm->instructions_sample_period;
+		/*
+		 * Below diagram demonstrates the instruction samples
+		 * generation flows:
+		 *
+		 *    Instrs     Instrs       Instrs       Instrs
+		 *   Sample(n)  Sample(n+1)  Sample(n+2)  Sample(n+3)
+		 *    |            |            |            |
+		 *    V            V            V            V
+		 *   --------------------------------------------------
+		 *            ^                                  ^
+		 *            |                                  |
+		 *         Period                             Period
+		 *    instructions(Pi)                   instructions(Pi')
+		 *
+		 *            |                                  |
+		 *            \---------------- -----------------/
+		 *                             V
+		 *                 tidq->packet->instr_count
+		 *
+		 * Instrs Sample(n...) are the synthesised samples occurring
+		 * every etm->instructions_sample_period instructions - as
+		 * defined on the perf command line.  Sample(n) is being the
+		 * last sample before the current etm packet, n+1 to n+3
+		 * samples are generated from the current etm packet.
+		 *
+		 * tidq->packet->instr_count represents the number of
+		 * instructions in the current etm packet.
+		 *
+		 * Period instructions (Pi) contains the the number of
+		 * instructions executed after the sample point(n) from the
+		 * previous etm packet.  This will always be less than
+		 * etm->instructions_sample_period.
+		 *
+		 * When generate new samples, it combines with two parts
+		 * instructions, one is the tail of the old packet and another
+		 * is the head of the new coming packet, to generate
+		 * sample(n+1); sample(n+2) and sample(n+3) consume the
+		 * instructions with sample period.  After sample(n+3), the rest
+		 * instructions will be used by later packet and it is assigned
+		 * to tidq->period_instructions for next round calculation.
+		 */
 
 		/*
-		 * Calculate the address of the sampled instruction (-1 as
-		 * sample is reported as though instruction has just been
-		 * executed, but PC has not advanced to next instruction)
+		 * Get the initial offset into the current packet instructions;
+		 * entry conditions ensure that instrs_prev is less than
+		 * etm->instructions_sample_period.
 		 */
-		u64 offset = (instrs_executed - instrs_over - 1);
-		u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
-					      tidq->packet, offset);
+		u64 offset = etm->instructions_sample_period - instrs_prev;
+		u64 addr;
 
-		ret = cs_etm__synth_instruction_sample(
-			etmq, tidq, addr, etm->instructions_sample_period);
-		if (ret)
-			return ret;
+		while (tidq->period_instructions >=
+				etm->instructions_sample_period) {
+			/*
+			 * Calculate the address of the sampled instruction (-1
+			 * as sample is reported as though instruction has just
+			 * been executed, but PC has not advanced to next
+			 * instruction)
+			 */
+			addr = cs_etm__instr_addr(etmq, trace_chan_id,
+						  tidq->packet, offset - 1);
+			ret = cs_etm__synth_instruction_sample(
+				etmq, tidq, addr,
+				etm->instructions_sample_period);
+			if (ret)
+				return ret;
 
-		/* Carry remaining instructions into next sample period */
-		tidq->period_instructions = instrs_over;
+			offset += etm->instructions_sample_period;
+			tidq->period_instructions -=
+				etm->instructions_sample_period;
+		}
 	}
 
 	if (etm->sample_branches) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
