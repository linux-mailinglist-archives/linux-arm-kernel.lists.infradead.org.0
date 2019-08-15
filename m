Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CD08E657
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FwozIXzBY+xE/gt673WRlnsH4pBSAfXnUX3pJtnu4vw=; b=jK3
	46FHtkIQjK9qEHUWfHYTbSsJL19LHvdFbIudoPogqrQXY+DYS7tvFU2iYW4C0h+KLxWyschdOTX4Y
	v1L7AcPLt557e9Alj7RS3fP3vOH+ZTeNXoQgoEl1dkUYwBV7RRAp6ffki9jUvLr3HPC3EBwafVCUL
	3DPZ7ZLB6qeJKywte5MrP24cUHyQ40beRXXtf0h1HJ2WLFo4Jl/OD+EaY2bsnHQJiMgP7aYwwSSW4
	6TsdyET7t50vRMIYCIG9GP3eUv89Ts7LktYpLdD8KknuwXTT1tRiws+qCAzEBHJvZ1bwuCyH8z5c0
	jAo/t9ZvxaEpBW9pmx9sfsPZ7TK2A6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyB9V-0008Un-L6; Thu, 15 Aug 2019 08:30:33 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyB9I-0008R8-OS
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:30:22 +0000
Received: by mail-pf1-x442.google.com with SMTP id d85so1030733pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 01:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=+667Tp6aRb+fNZrEkEuQBATyuYVr9DkCsoqrznJa5gI=;
 b=E4+0ImEEmPUTDK4fbSUSMUuBr6/4JC/FSu2THIDBKuiY0uw4dfY0PcLLac2NKV4fdL
 Lu1s/lkKD6MbnYfJbTSSjBaxItiA+hRYtey95pRKPsZFxiDVxCF+8bajbx72J0ES0vBX
 pw2uYBoIHgnFvVUqdEeY+QSlr0JVcAWvI0ZUCVn5QLLkqpMUIu0b0qmLyTkVxEgnKLNs
 5n1am8WziPrOPbM3o96E1pU2e62cCZawGs89rgQNOoSHQi3RHy5j6Nn1ZLXeSZQGMgw9
 n7VCHaPMlt545E535ERJLwEchIyLatWHMEwcKBg9P6MYEwMGt073PlwjDm5xDeuIKQCz
 4DNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+667Tp6aRb+fNZrEkEuQBATyuYVr9DkCsoqrznJa5gI=;
 b=E7IHHAjnqoQywUpkniVAOtdKbfBJVdHZyfENoTvNUQRo96ikTQZlJZwD7e1YW3xy5w
 ivCZYpjDPIL3lJoRztmnF4WSust23qbIPk1ty1hPQdEpW98ojBof2q2GZJac60mZc+JF
 QrWm81LE8NlqOfczRK8zoOgNuyKUyjSJQoxYijdYWczrL8ZJKeQOrfdjN+jrYiCXF0TY
 TtDKmwgsmgiggFDij390t12MnMrtMvTR6lC2opPAwsgT5rHtzisA2RZvGzlX2idfJATd
 8bpbiVhDqzBjOOWKt0U9y4nOTSC4UfHU/dBSIUAY3qmRSdFJIzR55B2LFPfkHwIp/xZi
 im8A==
X-Gm-Message-State: APjAAAVutYb9Q06an61byRgOUfRuuqbsyLzPbUze6ASWLc1WB7b5tIer
 lVS5Djqv70ls+HKFdOJJBdJOtg==
X-Google-Smtp-Source: APXvYqwEan4dWW0vagWBHt1IU/UkTTnvsCHImQm26AyFYF184BYwU6WZnfEB7b72g23UQobubOoXHA==
X-Received: by 2002:a65:690f:: with SMTP id s15mr2562324pgq.432.1565857819808; 
 Thu, 15 Aug 2019 01:30:19 -0700 (PDT)
Received: from localhost.localdomain (li456-16.members.linode.com.
 [50.116.10.16])
 by smtp.gmail.com with ESMTPSA id 1sm2217413pfx.56.2019.08.15.01.30.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 01:30:19 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] perf cs-etm: Support sample flags 'insn' and 'insnlen'
Date: Thu, 15 Aug 2019 16:28:54 +0800
Message-Id: <20190815082854.18191-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_013020_811228_FAF88959 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Robert Walker <robert.walker@arm.com>, Mike Leach <mike.leach@linaro.org>,
 coresight@lists.linaro.org, Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The synthetic branch and instruction samples are missed to set
instruction related info, thus perf tool fails to display samples with
flags '-F,+insn,+insnlen'.

CoreSight trace decoder has provided sufficient information to decide
the instruction size based on the isa type: A64/A32 instruction are
32-bit size, but one exception is the T32 instruction size, which might
be 32-bit or 16-bit.

This patch handles for these cases and it reads the instruction values
from DSO file; thus can support flags '-F,+insn,+insnlen'.

Before:

  # perf script -F,insn,insnlen,ip,sym
                0 [unknown] ilen: 0
     ffff97174044 _start ilen: 0
     ffff97174938 _dl_start ilen: 0
     ffff97174938 _dl_start ilen: 0
     ffff97174938 _dl_start ilen: 0
     ffff97174938 _dl_start ilen: 0
     ffff97174938 _dl_start ilen: 0
     ffff97174938 _dl_start ilen: 0
     ffff97174938 _dl_start ilen: 0
     ffff97174938 _dl_start ilen: 0

  [...]

After:

  # perf script -F,insn,insnlen,ip,sym
                0 [unknown] ilen: 0
     ffff97174044 _start ilen: 4 insn: 2f 02 00 94
     ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
     ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
     ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
     ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
     ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
     ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
     ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
     ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54

  [...]

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: Mike Leach <mike.leach@linaro.org>
Cc: Robert Walker <robert.walker@arm.com>
Cc: coresight@lists.linaro.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 35 ++++++++++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index ed6f7fd5b90b..b3a5daaf1a8f 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1076,6 +1076,35 @@ bool cs_etm__etmq_is_timeless(struct cs_etm_queue *etmq)
 	return !!etmq->etm->timeless_decoding;
 }
 
+static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
+			      u64 trace_chan_id,
+			      const struct cs_etm_packet *packet,
+			      struct perf_sample *sample)
+{
+	/*
+	 * It's pointless to read instructions for the CS_ETM_DISCONTINUITY
+	 * packet, so directly bail out with 'insn_len' = 0.
+	 */
+	if (packet->sample_type == CS_ETM_DISCONTINUITY) {
+		sample->insn_len = 0;
+		return;
+	}
+
+	/*
+	 * T32 instruction size might be 32-bit or 16-bit, decide by calling
+	 * cs_etm__t32_instr_size().
+	 */
+	if (packet->isa == CS_ETM_ISA_T32)
+		sample->insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id,
+							  sample->ip);
+	/* Otherwise, A64 and A32 instruction size are always 32-bit. */
+	else
+		sample->insn_len = 4;
+
+	cs_etm__mem_access(etmq, trace_chan_id, sample->ip,
+			   sample->insn_len, (void *)sample->insn);
+}
+
 static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 					    struct cs_etm_traceid_queue *tidq,
 					    u64 addr, u64 period)
@@ -1097,9 +1126,10 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 	sample.period = period;
 	sample.cpu = tidq->packet->cpu;
 	sample.flags = tidq->prev_packet->flags;
-	sample.insn_len = 1;
 	sample.cpumode = event->sample.header.misc;
 
+	cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->packet, &sample);
+
 	if (etm->synth_opts.last_branch) {
 		cs_etm__copy_last_branch_rb(etmq, tidq);
 		sample.branch_stack = tidq->last_branch;
@@ -1159,6 +1189,9 @@ static int cs_etm__synth_branch_sample(struct cs_etm_queue *etmq,
 	sample.flags = tidq->prev_packet->flags;
 	sample.cpumode = event->sample.header.misc;
 
+	cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->prev_packet,
+			  &sample);
+
 	/*
 	 * perf report cannot handle events without a branch stack
 	 */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
