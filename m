Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 151A0E3645
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 17:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O8kkLm8BDzRs7gm7/m7kBR1sJcyTtWsAscFAysJw6+M=; b=FhIoY2cqFz6cb+muK4uIaL9fVP
	7Zm0H4Wz8XbcY+jjrXppaaKWiFhscftqWDmGXBhX0Eowhdn18GB81spAH4VCG6Na1mXKRUAnkwBy4
	d4f7gR6P8eyhSB007oXAp/2pvGjvFYvxpid2i+R0Np/P5wViHuGXPfYaJ5irbRl4oeXOaQuiuXbw6
	AGOBOyFn7bsHlmfXZKJBCQk22bNNOKu5zR9JOh7Y0U//cBL4B32IOZ5pAYxWj8f68vD1rv8I7gO0c
	AvjUa7wCK0boNUA7EwG85aN7143KDif4Z4R+I/UzU76NAaqX1tfOseB/u8UzZtH3da8BYotTzv9/o
	/BLnTPDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNeq9-00033i-Nk; Thu, 24 Oct 2019 15:15:53 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNepb-0002n3-2u
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 15:15:21 +0000
Received: by mail-qk1-x733.google.com with SMTP id 4so23745242qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 08:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gsFY1KIx9iJYif7vQxfbD15FpxrJSPWH13lYc5zzTiA=;
 b=v5d5gNh+F59/fSvage2YJeu0cLoZxiwVNw1QuRHe4NO10ZLCCaNrLlBRYxnrKipV8O
 9dsMfcQkiAkm/EGv0eX/+JbKLsQOmw/2i87u+R25IHXJ9Ndgu85G5rMMc/SkLkXY+E88
 2nae7Dwl4iitpHvYkCNK93GVyA5+502RC86/ymFkr+rryLnLk9WMM6gWRGMWN/RmEMK+
 tZ2hin6ad4yOBa3CcViHDy44CvTS8i8vXZMe1VGeKUpZuauwks8qrcBSLfgMDRdgofpf
 AxNr8rfjDerD1hEOwkLwvGhdNEEgWmHc9LWraLLGWBkk3sMx1kT1v0GHuZfXA2R/v19v
 NeaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gsFY1KIx9iJYif7vQxfbD15FpxrJSPWH13lYc5zzTiA=;
 b=EXuVCFA04/E1fGyU4yanjQxJ87bHwNpXXn2YuiRt4uSA0B9YMhOLiNtb3ilOXLrdZH
 3NPdUQGn4rDurhIxruAqBLAS/I1ZX4Vwc4M8cF0Ztn6NcKkqaofN46O8Hl1ae4o+X8YD
 V+3vFmhEsK61P1fG4XueDSmbH2UemDVR+5TowwX8wTDkHGOxvzk5M6pO5vYPs1dJyMFo
 nGJEnzB8gaRXQ/2IAr9g6uVQ2C31MuA2pHNAcqKRIInQ7Qo23JpXT9VdhfyRpxRt/FaF
 CU24OBLoMIOC1mZYIKVsqBnrNUVw8UusafGOyYXUgfm5U8nd7CuaJppiUbBivCyo/JP1
 SBuA==
X-Gm-Message-State: APjAAAUQd50pmmZ4j2xvpH8j2FnkaOSFdAGJrhVpWDJBosOs/nXfdJB7
 5mbVMk0laNWLCvA6+22aOM9GKQ==
X-Google-Smtp-Source: APXvYqxDzu3MgqaB7/YwKp9MWBfvu+nHAZCMnwTh00EmBEMTyMuyRW969I338LrOuFJuxgxmdK1shA==
X-Received: by 2002:ae9:dd05:: with SMTP id r5mr2054288qkf.252.1571930117698; 
 Thu, 24 Oct 2019 08:15:17 -0700 (PDT)
Received: from localhost.localdomain (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id l5sm4346073qtj.52.2019.10.24.08.15.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:15:17 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>,
 Robert Walker <robert.walker@arm.com>
Subject: [PATCH v1 2/4] perf cs-etm: Correct synthesizing instruction samples
Date: Thu, 24 Oct 2019 23:13:23 +0800
Message-Id: <20191024151325.28623-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024151325.28623-1-leo.yan@linaro.org>
References: <20191024151325.28623-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_081519_172341_3C712994 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:733 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
idea is to divide into three parts for handling coming packet:

- The first part is for synthesizing the first instruction sample, it
  combines the instructions from the tail of previous packet and the
  instructions from the head of the new packet;
- The second part is to simply generate samples with sample period
  aligned;
- The third part is the tail of new packet, the rest instructions will
  be left to next time handling with sequential packet.

Suggested-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 106 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 93 insertions(+), 13 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 8be6d010ae84..8e9eb7583bcd 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1360,23 +1360,103 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		 * TODO: allow period to be defined in cycles and clock time
 		 */
 
-		/* Get number of instructions executed after the sample point */
-		u64 instrs_over = tidq->period_instructions -
-			etm->instructions_sample_period;
+		/*
+		 * Below diagram is used to demonstrate the instruction samples
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
+		 *                      instrs_executed
+		 *
+		 * When the new instruction packet is coming, period
+		 * instructions (Pi) contains the the number of instructions
+		 * executed after the sample point(n).  So for the next sample
+		 * point(n+1), it is combined the two parts instructions, one
+		 * is the tail of the old packet and another is the head of
+		 * the new coming packet.  So we use 'head' variable to cauclate
+		 * the instruction numbers in the new packet for sample(n+1).
+		 *
+		 * For sample(n+2) and sample(n+3), they consume the instruction
+		 * for sample period, so we directly generate samples based on
+		 * the sampe period.
+		 *
+		 * After sample(n+3), there still leave some instructions which
+		 * will be used by later packet; so we use 'instrs_over' to
+		 * track the rest instruction number and its final value
+		 * presents the tail of the packet, it will be assigned to
+		 * 'tidq->period_instructions' for next round calculation.
+		 */
+		u64 head, offset = 0;
+		u64 addr;
 
 		/*
-		 * Calculate the address of the sampled instruction (-1 as
-		 * sample is reported as though instruction has just been
-		 * executed, but PC has not advanced to next instruction)
+		 * 'instrs_over' is the number of instructions executed after
+		 * sample points, initialise it to 'instrs_executed' and will
+		 * decrease it for consumed instructions in every synthesized
+		 * instruction sample.
 		 */
-		u64 offset = (instrs_executed - instrs_over - 1);
-		u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
-					      tidq->packet, offset);
+		u64 instrs_over = instrs_executed;
 
-		ret = cs_etm__synth_instruction_sample(
-			etmq, tidq, addr, etm->instructions_sample_period);
-		if (ret)
-			return ret;
+		/*
+		 * 'head' is the instructions number of the head in the new
+		 * packet, it combines with the tail of previous packet to
+		 * generate a sample.  So 'head' uses the sample period to
+		 * decrease the instruction number introduced by the previous
+		 * packet.
+		 */
+		head = etm->instructions_sample_period -
+				  (tidq->period_instructions - instrs_executed);
+
+		if (head) {
+			offset = head;
+
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
+
+			instrs_over -= head;
+		}
+
+		while (instrs_over >= etm->instructions_sample_period) {
+			offset += etm->instructions_sample_period;
+
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
+
+			instrs_over -= etm->instructions_sample_period;
+		}
 
 		/* Carry remaining instructions into next sample period */
 		tidq->period_instructions = instrs_over;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
