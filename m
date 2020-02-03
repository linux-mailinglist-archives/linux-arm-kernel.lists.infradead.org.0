Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811F9150081
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 03:08:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cHw7ScM5lZVcAyj+24oPkUh6sk37H8ktwn3kJBXRDyY=; b=BkoWwjrO8a+970X7l3Lh99tA8R
	q/Tv4aL93a71lIs/AkkbsQbCD7NYbc4LxLeYY72GLNjCYzo4odPjY5o8cVu4O1761Msoa2tkm1VTP
	+A0Ql92L5x7ShLi6uxo+roKpPo6FkA7UPCSc8jzWVHv/hKxynEa4wQY0cPqBCZKp5wB9QK11EKOee
	cbVyq0DI4zye68DMUgNEGRbLqMectl2RBpGsQQMHuKPIb25XTSw7FGaQVrEKK4ic7/Id5weeFHXaC
	CeyFeLCcHwIW0/BzbrwfjaiT/MAcOxz7YY49nTBxk5pFcfgH75pkNOKJNIgXdQQnO54NG8nNO4BGx
	CUBDH5zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyR9s-0005mO-DI; Mon, 03 Feb 2020 02:08:16 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyR9W-0005Xq-RI
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 02:07:56 +0000
Received: by mail-pl1-x643.google.com with SMTP id p11so5206294plq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 18:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OzwMrO1QLAvOkLauztgxisjFtHkDUQkxoW1enJHbnIQ=;
 b=LhHnSZFFZYDt14qiPWg7QZDaTjwAU7mTXzTqAbmNtuCWcM8I6CEb11Ad7OwXsnEKtj
 u38TTRzvx0YER2Iod4MWFShCafa26lqk6hmUv+nGxuMRk/AutXq8zm36Ty3ur3apiVUM
 OhG0amU2WbOVFMVjzDeIIPYV2Trkg5me4Vv5FGF4nZ06aZmgUVi2UMnkG6YtxLNWnhH+
 MbCl08BuFDgRA/VC5oVHnXioX+FvL9O1WYPiR8GCjdgDpm9zAeJLrrb9CK4bmR7vBd/T
 VmOfzZOLuxdb2HDGxT3zi1q+yjxBkVHl5iEDz5zydeLiQVSO5BQ2u1gbKCeQPxI4C8IQ
 /ILw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OzwMrO1QLAvOkLauztgxisjFtHkDUQkxoW1enJHbnIQ=;
 b=GUoBv3n4w6tqW/btHcgdvJ6AhKOcznFhlb15H17W77ss0ecOkjUA3b259DLJQAUX3w
 LSj1vjGf3f4tF4W+/0qi6Nip0ceTZL1xcQQW28821d/1v8KkTuVLrVtZqHw2LtmrNcLV
 At/RW8H2E5h7t50xcTwemoHYqq1HgytmnEeW4sSkrVGx7T1R6jYe5h2694bENMlzX8YI
 ngZoTsPf1t+qcI6yKh4TKAGNVGyRiFUvfv71bTefzloL9Af9Y0N7aUK9xfhUArE4ftiI
 tZHq9HjOp0HyWW8jtU0UmRVwEFmcDBrkPq9TFcaIMr/hR15+wQmK+InAFe0P1yngkFno
 PxYg==
X-Gm-Message-State: APjAAAXVOG+SUxUc0bE/IIXqLEmvc8pO8tcW/xK3et3kmcn+xxqcScJr
 OSE1WN3EDRord9yTFUD+kx8lhg==
X-Google-Smtp-Source: APXvYqz2lxXNsFsQs/ZQTvjbTO4U3hRLhKP8vnQWrSWmmKhTWX7tiT7qlbw3TA9jQOBdUGOHaa13vQ==
X-Received: by 2002:a17:90a:a406:: with SMTP id
 y6mr27764261pjp.115.1580695674111; 
 Sun, 02 Feb 2020 18:07:54 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id z29sm17521201pgc.21.2020.02.02.18.07.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 18:07:53 -0800 (PST)
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
Subject: [PATCH v4 2/5] perf cs-etm: Support thread stack
Date: Mon,  3 Feb 2020 10:07:13 +0800
Message-Id: <20200203020716.31832-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200203020716.31832-1-leo.yan@linaro.org>
References: <20200203020716.31832-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_180754_925303_9BAEB74E 
X-CRM114-Status: GOOD (  13.03  )
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

Since Arm CoreSight doesn't support thread stack, the decoding cannot
display symbols with indented spaces to reflect the stack depth.

This patch adds support thread stack for Arm CoreSight, this allows
'perf script' to display properly for option '-F,+callindent'.

Before:

  # perf script -F,+callindent
            main  2808          1          branches: coresight_test1                      ffff8634f5c8 coresight_test1+0x3c (/root/coresight_test/libcstest.so)
            main  2808          1          branches: printf@plt                           aaaaba8d37ec main+0x28 (/root/coresight_test/main)
            main  2808          1          branches: printf@plt                           aaaaba8d36bc printf@plt+0xc (/root/coresight_test/main)
            main  2808          1          branches: _init                                aaaaba8d3650 _init+0x30 (/root/coresight_test/main)
            main  2808          1          branches: _dl_fixup                            ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.so)
            main  2808          1          branches: _dl_lookup_symbol_x                  ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
  [...]

After:

  # perf script -F,+callindent
            main  2808          1          branches:                 coresight_test1                                      ffff8634f5c8 coresight_test1+0x3c (/root/coresight_test/libcstest.so)
            main  2808          1          branches:                 printf@plt                                           aaaaba8d37ec main+0x28 (/root/coresight_test/main)
            main  2808          1          branches:                     printf@plt                                       aaaaba8d36bc printf@plt+0xc (/root/coresight_test/main)
            main  2808          1          branches:                     _init                                            aaaaba8d3650 _init+0x30 (/root/coresight_test/main)
            main  2808          1          branches:                     _dl_fixup                                        ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.s
            main  2808          1          branches:                         _dl_lookup_symbol_x                          ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
  [...]

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 44 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index cb6fcc2acca0..4d289ecf49e2 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1117,6 +1117,45 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
 			   sample->insn_len, (void *)sample->insn);
 }
 
+static void cs_etm__add_stack_event(struct cs_etm_queue *etmq,
+				    struct cs_etm_traceid_queue *tidq)
+{
+	struct cs_etm_auxtrace *etm = etmq->etm;
+	u8 trace_chan_id = tidq->trace_chan_id;
+	int insn_len;
+	u64 from_ip, to_ip;
+
+	if (etm->synth_opts.thread_stack) {
+		from_ip = cs_etm__last_executed_instr(tidq->prev_packet);
+		to_ip = cs_etm__first_executed_instr(tidq->packet);
+
+		insn_len = cs_etm__instr_size(etmq, trace_chan_id,
+					      tidq->prev_packet->isa, from_ip);
+
+		/*
+		 * Create thread stacks by keeping track of calls and returns;
+		 * any call pushes thread stack, return pops the stack, and
+		 * flush stack when the trace is discontinuous.
+		 */
+		thread_stack__event(tidq->thread, tidq->prev_packet->cpu,
+				    tidq->prev_packet->flags,
+				    from_ip, to_ip, insn_len,
+				    etmq->buffer->buffer_nr + 1);
+	} else {
+		/*
+		 * The thread stack can be output via thread_stack__process();
+		 * thus the detailed information about paired calls and returns
+		 * will be facilitated by Python script for the db-export.
+		 *
+		 * Need to set trace buffer number and flush thread stack if the
+		 * trace buffer number has been alternate.
+		 */
+		thread_stack__set_trace_nr(tidq->thread,
+					   tidq->prev_packet->cpu,
+					   etmq->buffer->buffer_nr + 1);
+	}
+}
+
 static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 					    struct cs_etm_traceid_queue *tidq,
 					    u64 addr, u64 period)
@@ -1471,6 +1510,9 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		tidq->period_instructions = instrs_over;
 	}
 
+	if (tidq->prev_packet->last_instr_taken_branch)
+		cs_etm__add_stack_event(etmq, tidq);
+
 	if (etm->sample_branches) {
 		bool generate_sample = false;
 
@@ -2687,6 +2729,8 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 		itrace_synth_opts__set_default(&etm->synth_opts,
 				session->itrace_synth_opts->default_no_sample);
 		etm->synth_opts.callchain = false;
+		etm->synth_opts.thread_stack =
+				session->itrace_synth_opts->thread_stack;
 	}
 
 	err = cs_etm__synth_events(etm, session);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
