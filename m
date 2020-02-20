Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849F61656E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 06:29:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FjVsCDG5tkkg+dIcfR2QQSrJquO6HPmPEGhPSJPaOJ4=; b=XZpvz9Epk5wC3zdwP8L/ExbK6o
	HQW+8eqqdynpY7Fp1ka0xTAsG/ijdj2RrxZ3bDzCgu45IAj6E4GX2ITKk9s3tzAZO3q0YZHBCSxbx
	sViv7ySErspoXW45dob15iVSE1ZmmLcfTelR/mEgJNrkmgiYXJObOj5xp1WWNSOuyYYGTyYuXDKEb
	8a9swHVJx94b9ORd1qLkN/RmFc1TDPUE8/nDy/OQX7RrLEoSqMvJXeuQt/fDv65fiwqC75yQD3LZB
	FUkDr7mRuf+dt7LzCgUi9vcyYa21j6lz0oywr1bcENfDC3mq83DQwtLUCoXOji9chB/Gp40FoyZcP
	rHV6unDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4eOb-0002VR-SX; Thu, 20 Feb 2020 05:29:09 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4eNu-0001zO-86
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 05:28:28 +0000
Received: by mail-pf1-x444.google.com with SMTP id b185so1318416pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 21:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=k8d4kmIccAidADFe+MdrG7ylohXu5nRgFPNyr4D4gnE=;
 b=B4R6/j6TkXEcNb0cGsNW/UtwR61rs/DnLFsdw6EqYmbnBzbQJJ7s9M0FY67z5uwYgA
 p31L6Gh121GL+N+2fBiynbasV3w/nXAUn30xYWWT6fKF4T5lQ+gD1pvCgDGCfey4edKn
 a0duIjYt+ZWPsMoEs+Mx776KNj+zmZIIuFK8YnarRbuXhPo6JeJB12rOFqRJBcjpEthU
 fhb7A3AZc4gxSz9gECh2zgp0ntAZcQU6Q99x5Hv7AsMIx/DnpIpl6soRAx8EEjJ0IH/c
 tfVl4jrZHNM8uwIwjmbdLb3oMUfkQ5w0XoVko4PfteOhpEGZlmvMoLbfIRR7ajCSW3yf
 JqOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=k8d4kmIccAidADFe+MdrG7ylohXu5nRgFPNyr4D4gnE=;
 b=dxbcwnHJdx7NZoC2eI+iUBA9qIdd09hj+6I7dAzyA0awRuclPo1cceI07cD/9++BNC
 XdfZDxCWNmINElVMYCBVF2v5jTvG714TA4cdLDfLaXB8E+NlYSSG3Fwwc2zpB0mBOXXw
 +DQvBCGWcXsxsoJDOhTnEn8bCjZKhKiflgM0Bw8b+qbtWNzoehlRteXvOucvJnVirnQQ
 OtWe/8VureWK9NadbaTWYLKo/snnAeSDbNdnYpYBS+yVne+BJq2PzOSRIFAS9z0Rp45s
 1Pzi4uTJ7CRNd1x6b2CDuf9pdeK7Jq32LsHuno9mIqxnhSvPdiae9L7ROO82cBGJISwU
 nKjA==
X-Gm-Message-State: APjAAAU/TlgX5voARQYFtDJTWSMtXN6YxjcuZiI3oxhB7KJsAPjmJKT2
 T2pgoWBUFJRovYzpXBvFazxPFA==
X-Google-Smtp-Source: APXvYqwIVRZqP4ZuGnM9wjkZvs/dywF7Z5InBLQvdw5dIrKQub2KF8eGlCVr4GWpYML1MDb82Xak8Q==
X-Received: by 2002:a65:6454:: with SMTP id s20mr32221795pgv.386.1582176505177; 
 Wed, 19 Feb 2020 21:28:25 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id l69sm1535663pgd.1.2020.02.19.21.28.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 21:28:24 -0800 (PST)
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
Subject: [PATCH v5 4/9] perf cs-etm: Support thread stack
Date: Thu, 20 Feb 2020 13:26:56 +0800
Message-Id: <20200220052701.7754-5-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200220052701.7754-1-leo.yan@linaro.org>
References: <20200220052701.7754-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_212826_338028_5A422811 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
index f3ba2cfb634f..08ca919aa2b1 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1138,6 +1138,45 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
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
@@ -1382,6 +1421,9 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 	    tidq->prev_packet->last_instr_taken_branch)
 		cs_etm__update_last_branch_rb(etmq, tidq);
 
+	if (tidq->prev_packet->last_instr_taken_branch)
+		cs_etm__add_stack_event(etmq, tidq);
+
 	if (etm->sample_instructions &&
 	    tidq->period_instructions >= etm->instructions_sample_period) {
 		/*
@@ -2730,6 +2772,8 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
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
