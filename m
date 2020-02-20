Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F401656E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 06:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iHIm+lSnvSKsZYnDz9+6oRLU6uhwfMYe0PHGT7tSFik=; b=ivZ+qcozaOHnRZV2D+qwtTo3OC
	qrCqnorK0QluEoFt80am+mEeCdvSILJkEaPbkaCITKAx01OJAChyljcQGW3fdI6V/KiVOZensIeaK
	Vylp9Hjm0h0jBelQzLXqT68ggcXfyil2mRyHUGsIc3qIG1TAyn1B2MgiQtTSRx8qi7jNeFZ+PrBZb
	4ZZIutqc38laF6hDuj4uVOtlRlsqJwDQAUiwWNO1/rTbqa8HeBlCPjb9kchfxTspgZskh7QuAjuQa
	jqPxVdgzMBG0l4lj3WK/ykgc7xbs2lZ6qp/n66Wu1HJ9QP0LvqJL5o8fVVm8j9UDcdw966uHIRIM/
	zoN4pw5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4eO7-0001vb-US; Thu, 20 Feb 2020 05:28:39 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4eNY-0001fg-PX
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 05:28:06 +0000
Received: by mail-pj1-x1044.google.com with SMTP id e9so379266pjr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 21:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Pg84RLRaY7DJxyDSMPZbGr590RXmwderFKyxMD4qhHs=;
 b=EtbK0CAOmpSbcDPLgIU57J4pbsWiLhgj8PJjJdZUkT36BH423lw50LIBZ6oimhwo7B
 Sjhm6rrzCFDAQPOrbEi+A7hfBFaekC7cvSqEAMqyStPwRunknU0ha98tGQ03tfevo9A+
 r4VTFCl53ETXQjE6gd7Ki9fX1eSQvO5DfTcTkn3YEH/w8SjHHJg/LYjzrDYXjbVFj8HK
 f04gwwD3TNdBl/gSIQhJpnhkay07JdzPRkr9mvDuJCsqZHWjLQW9OW7/2KZ8SGEs7aD0
 apgCLXJrGCbVtX+GUpenNIDBJOvXT2pAJhHSJZitp+SNMesTfr+ypavC1+5PzGtn+suN
 NlHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Pg84RLRaY7DJxyDSMPZbGr590RXmwderFKyxMD4qhHs=;
 b=OS8KWggp8RMMEzlbSgD/SZEvaOXrEUgQXYnd4t0W6nQu3thGpytDc4D0vTgnmq2cGc
 4u3ojm6Ol+fwXXlsQmZX85vHVYG48vPJGEy/Q/L6IDSfxKTX3/uALlegD2gwZIilNg+Y
 FXPn+RT4bOp1m1dPItPJCZAO4R0rCdzvpqE99U/v4Adg5quETahiYGHeVmkg+ZglNR4P
 1ALR5vtJafvrLdQLPGQ/RCwlI7ZkoE97OAjfl7aGQlU9safwt2b0N81uhifvCnNBq57U
 ApxFKgfsMGX1xFGWmEeHQdS+CEsHwlFlU/1MB6VtbVB1VbAzx0HmLDCuctslBGSs0aV7
 gcEA==
X-Gm-Message-State: APjAAAWAUQPDAV0d6fu24XC2hPIHiTbIKoYS+Fzh2b+DCbeaqjFJ5mmV
 zPvJiSAocZYpzBODz3yq1oZVOQ==
X-Google-Smtp-Source: APXvYqxAqy48qOzwRndX7scgkAgyTyIDpfAXWYVGedHG10XKIQ8TuGqlP4Smxj6nM85lF99funOyRw==
X-Received: by 2002:a17:902:9a09:: with SMTP id
 v9mr28636473plp.341.1582176482715; 
 Wed, 19 Feb 2020 21:28:02 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id l69sm1535663pgd.1.2020.02.19.21.27.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 21:28:02 -0800 (PST)
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
Subject: [PATCH v5 2/9] perf cs-etm: Reflect branch prior to exception
Date: Thu, 20 Feb 2020 13:26:54 +0800
Message-Id: <20200220052701.7754-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200220052701.7754-1-leo.yan@linaro.org>
References: <20200220052701.7754-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_212804_923317_82DBCE96 
X-CRM114-Status: GOOD (  26.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

When a branch instruction is to be executed, if the branch target
address is not mapped into the virtual address space, this branch
instruction will trigger an exception with data abort.  For this case,
CoreSight decoding flow cannot reflect the complete branch flow prior
to exception, and leads the user space addresses inconsistency before
and after the exception handling.

Let's see the detailed explanation for the issue with an example:

  Packet 0: range packet
            start_addr=0xffffad8018a4     end_addr=0xffffad8018ec
  Packet 1: exception packet
            start_addr=0xffffad8018a4     end_addr=0xffffad801910
  Packet 2: range packet
            start_addr=0xffff800010081c00 end_addr=0xffff800010081c18

There have three packets are coming; from packet 0 to packet 1,
CPU tries to branch from 0xffffad8018ec-4 to 0xffffad801910, accessing
the address 0xffffad801910 causes the data abort, so this branch is not
taken and an exception is triggered and jump to 0xffff800010081c00 in
packet 2.

When handle this sequence, it misses a range packet for the branch
between 0xffffad8018ec-4 and 0xffffad801910, so Perf tool cannot
generate a branch sample for it and this might introduce confusion for
the addresses before and after exception handling, since we can see the
exception return address is 0xffffad801910, which is not a sequential
value for the address 0xffffad8018ec-4 before exception was taken.

  0xffffad8018ec-4 -> 0xffff800010081c00: exception is taken ...
  ... exception return back -> 0xffffad801910

To fix this issue, firstly we need to decide which conditions can be
used to distinguish that a branch triggers an exception.  So below
conditions are used to make decision:

  - Check if the exception is a trap by comparing the specific sample
    flag for the exception packet;
  - The exception packet's end address is not same with its previous
    range packet's end address, which implies a branch triggering the
    exception and the branch target address is contained in the
    exception packet's end address.

This patch changes the exception packet to a 'fake' range packet; this
allows to generate an extra branch sample for the branch instruction
prior to the exception (between 0xffffad8018ec-4 and 0xffffad801910).
So finally can get below samples:

  0xffffad8018ec-4 -> 0xffffad801910: branch
  0xffffad801910 -> 0xffff800010081c00: exception is taken ...
  ... exception return back -> 0xffffad801910

Note, this 'fake' range packet will add an extra recording for last
branch array and change the thread stack pushing and popping (if later
supported).  But since 'fake' range packet's instruction length is set
to zero, it doesn't introduce any change for instruction samples.

Before:

  # perf script -F,+flags

             main  3258          1          branches:   int                      ffffad8018e8 dl_main+0x820 (/usr/lib/aarch64-linux-gnu/ld-2.28.so) => ffff800010081c00 vectors+0x400 ([kernel.kallsyms])
             main  3258          1          branches:   jmp                  ffff800010081c20 vectors+0x420 ([kernel.kallsyms]) => ffff800010082bc0 el0_sync+0x0 ([kernel.kallsyms])
             main  3258          1          branches:   jcc                  ffff800010082c8c el0_sync+0xcc ([kernel.kallsyms]) => ffff800010082ca0 el0_sync+0xe0 ([kernel.kallsyms])
             main  3258          1          branches:   jmp                  ffff800010082ca0 el0_sync+0xe0 ([kernel.kallsyms]) => ffff800010082ccc el0_sync+0x10c ([kernel.kallsyms])
             [...]
             main  3258          1          branches:   jcc                  ffff800010083574 finish_ret_to_user+0x34 ([kernel.kallsyms]) => ffff800010083580 finish_ret_to_user+0x40 ([kernel.kallsyms])
             main  3258          1          branches:   jmp                  ffff800010083580 finish_ret_to_user+0x40 ([kernel.kallsyms]) => ffff800010083598 finish_ret_to_user+0x58 ([kernel.kallsyms])
             main  3258          1          branches:   jmp                  ffff800010083598 finish_ret_to_user+0x58 ([kernel.kallsyms]) => ffff8000100835c4 finish_ret_to_user+0x84 ([kernel.kallsyms])
             main  3258          1          branches:   iret                 ffff800010083610 finish_ret_to_user+0xd0 ([kernel.kallsyms]) =>     ffffad801910 dl_main+0x848 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

After:

  # perf script -F,+flags

             main  3258          1          branches:   jmp                      ffffad8018e8 dl_main+0x820 (/usr/lib/aarch64-linux-gnu/ld-2.28.so) =>     ffffad801910 dl_main+0x848 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)
             main  3258          1          branches:   int                      ffffad801910 dl_main+0x848 (/usr/lib/aarch64-linux-gnu/ld-2.28.so) => ffff800010081c00 vectors+0x400 ([kernel.kallsyms])
             main  3258          1          branches:   jmp                  ffff800010081c20 vectors+0x420 ([kernel.kallsyms]) => ffff800010082bc0 el0_sync+0x0 ([kernel.kallsyms])
             main  3258          1          branches:   jcc                  ffff800010082c8c el0_sync+0xcc ([kernel.kallsyms]) => ffff800010082ca0 el0_sync+0xe0 ([kernel.kallsyms])
             main  3258          1          branches:   jmp                  ffff800010082ca0 el0_sync+0xe0 ([kernel.kallsyms]) => ffff800010082ccc el0_sync+0x10c ([kernel.kallsyms])
             [...]
             main  3258          1          branches:   jcc                  ffff800010083574 finish_ret_to_user+0x34 ([kernel.kallsyms]) => ffff800010083580 finish_ret_to_user+0x40 ([kernel.kallsyms])
             main  3258          1          branches:   jmp                  ffff800010083580 finish_ret_to_user+0x40 ([kernel.kallsyms]) => ffff800010083598 finish_ret_to_user+0x58 ([kernel.kallsyms])
             main  3258          1          branches:   jmp                  ffff800010083598 finish_ret_to_user+0x58 ([kernel.kallsyms]) => ffff8000100835c4 finish_ret_to_user+0x84 ([kernel.kallsyms])
             main  3258          1          branches:   iret                 ffff800010083610 finish_ret_to_user+0xd0 ([kernel.kallsyms]) =>     ffffad801910 dl_main+0x848 (/usr/lib/aarch64-linux-gnu/ld-2.28.so)

Suggested-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 .../perf/util/cs-etm-decoder/cs-etm-decoder.c |  1 +
 tools/perf/util/cs-etm.c                      | 66 ++++++++++++++++++-
 2 files changed, 65 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
index cd92a99eb89d..f1f66d883391 100644
--- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
+++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
@@ -482,6 +482,7 @@ cs_etm_decoder__buffer_exception(struct cs_etm_packet_queue *queue,
 
 	packet = &queue->packet_buffer[queue->tail];
 	packet->exception_number = elem->exception_number;
+	packet->end_addr = elem->en_addr;
 
 	return ret;
 }
diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 48932a7a933f..7cf30b5e0e20 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1477,8 +1477,11 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 	return 0;
 }
 
-static int cs_etm__exception(struct cs_etm_traceid_queue *tidq)
+static int cs_etm__exception(struct cs_etm_queue *etmq,
+			     struct cs_etm_traceid_queue *tidq)
 {
+	u32 flags;
+
 	/*
 	 * Usually the exception packet follows a range packet, if it's not the
 	 * case, directly bail out.
@@ -1486,6 +1489,65 @@ static int cs_etm__exception(struct cs_etm_traceid_queue *tidq)
 	if (tidq->prev_packet->sample_type != CS_ETM_RANGE)
 		return 0;
 
+	/*
+	 * If the exception is a trap and its end_addr is not same with its
+	 * previous range packet's end_addr, this implies the exception is
+	 * triggered by a branch and the exception packet's end_addr is the
+	 * branch target address from the previous range packet.
+	 *
+	 * Below is an example with three packets:
+	 *   Packet 0: range packet
+	 *             start_addr=0xffffad8018a4     end_addr=0xffffad8018ec
+	 *   Packet 1: exception packet
+	 *             start_addr=0xffffad8018a4     end_addr=0xffffad801910
+	 *   Packet 2: range packet
+	 *             start_addr=0xffff800010081c00 end_addr=0xffff800010081c18
+	 *
+	 * CPU tries to branch from 0xffffad8018ec-4 (packet 0) to
+	 * 0xffffad801910 (packet 1), accessing the address 0xffffad801910
+	 * causes data abort, so the branch is not taken and an exception is
+	 * triggered and jump to 0xffff800010081c00 (packet 2).
+	 *
+	 * For this case, it misses a range packet for the branch between
+	 * 0xffffad8018ec-4 and 0xffffad801910, so perf tool cannot generate
+	 * branch sample and introduces confusion for exception return parsing:
+	 *
+	 *   0xffffad8018ec-4 -> 0xffff800010081c00: exception is taken
+	 *   ... exception return back ... -> 0xffffad801910
+	 *
+	 * To fix this issue, the exception packet is changed to a 'fake'
+	 * range packet.  This can allow to generate a branch sample between
+	 * 0xffffad8018ec-4 and 0xffffad801910.  Finally get below samples:
+	 *
+	 *   0xffffad8018ec-4 -> 0xffffad801910: branch
+	 *   0xffffad801910 -> 0xffff800010081c00: exception is taken
+	 *   ... exception return back ... -> 0xffffad801910
+	 */
+
+	/* Use flags to check if the exception is trap */
+	flags = PERF_IP_FLAG_BRANCH | PERF_IP_FLAG_CALL |
+		PERF_IP_FLAG_INTERRUPT;
+
+	if (tidq->packet->sample_type == CS_ETM_EXCEPTION &&
+	    tidq->packet->flags == flags &&
+	    tidq->packet->end_addr != tidq->prev_packet->end_addr) {
+		/*
+		 * Change the exception packet to a range packet, so can reflect
+		 * branch from prev_packet::end_addr-4 to packet::start_addr;
+		 *
+		 * This branch is not taken yet, so set its instruction count
+		 * to zero.  Set 'last_instr_taken_branch' to true, so allow
+		 * it to generate samples with its seqential range packet.
+		 */
+		tidq->packet->sample_type = CS_ETM_RANGE;
+		tidq->packet->start_addr = tidq->packet->end_addr;
+		tidq->packet->instr_count = 0;
+		tidq->packet->last_instr_taken_branch = true;
+
+		/* Generate sample with the previous range packet */
+		return cs_etm__sample(etmq, tidq);
+	}
+
 	/*
 	 * When the exception packet is inserted, whether the last instruction
 	 * in previous range packet is taken branch or not, we need to force
@@ -2045,7 +2107,7 @@ static int cs_etm__process_traceid_queue(struct cs_etm_queue *etmq,
 			 * make sure the previous instruction
 			 * range packet to be handled properly.
 			 */
-			cs_etm__exception(tidq);
+			cs_etm__exception(etmq, tidq);
 			break;
 		case CS_ETM_DISCONTINUITY:
 			/*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
