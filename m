Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5812BCC903
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 11:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=66dg0Jo7pQfzuEM9DgZ3bJuaO1BS8gmyY/6OQp6B9u0=; b=GagTs3+hJraWxYLBr8rfXoksLK
	YxnMDGSnhizRzSpLwWS5BDdSZ3Szh1L6HRpozFDHt2SBFAlfbF6GJKtZNK1w85/AfcqlyPJ2Ey/XE
	h2QghOCcofEHhIaNyIn+lTs9uf2VVbax12rgipUJRnOV1TWwdkpHw+BUexp2SnMAifwO7aZn6McCI
	gDBfGGeV+IufLhMKOuRM52AhjHClTAVKDdLM1khlWWDJtnHd+ZmoVduNIsnCz9jDvDM7VXBCcKTnE
	Qr46JxtKLSVw/8Sbr9bPbM2sKkUOYFWp1gYIM2W2kdi4sA0YuUB19yfeOt0HA2czgBxrQhFQg6JqG
	plgyViwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGgCX-0004Ho-O6; Sat, 05 Oct 2019 09:18:09 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGgBI-0003eK-VS
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 09:16:54 +0000
Received: by mail-qk1-x744.google.com with SMTP id z67so8132600qkb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 02:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Cvyd7SHkhsAyUTNzK4HPFdW4gJjTTlJOoIIwpnVpIng=;
 b=z5vT+rgzkZPqTKKCurUgvEv1ooynkUFR/AQMCq+v6/Osi48scL/33NZN1iGSeO2Dj3
 Pn4NTON6EroCgzngDc0FbriOnT+uSNYaa4TspMk58PI+BwMXS/IlTmsMs9AVwlYlzOUS
 7QNaXX953LvpWa6PJqJvz51Nkn4cedIaP/S46Ho9LEIe3D+udB47yY3yCdh2NvnWn8UL
 YbScIKTKICmyHa26J/VoJ/dVo4Bh3OlCsj7im2WOhQYw1isOR6/Oorsd55zCZfEoplsr
 ebEQ/sej2qOtSm9rzHqxoEUhNf1+vsQEPwlfFWi+tp4cR2tXID58ShYh2kMFyovTesBR
 eS5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Cvyd7SHkhsAyUTNzK4HPFdW4gJjTTlJOoIIwpnVpIng=;
 b=nyke6GmgOATXt7soNh57k+vOvz73KFhNdmMQHs3chPZyGxyxhIB4amesHT+qCBiCeH
 zNwtk7yE9SHFDmclw8umJ3aS6H75NLwnrJ54X+/rsZbNfxAknMEpRGanTCvo4rYPVuaP
 GA01bxgvfnpGQGa89oWTzg8H3eoePLsU0+YWURGXldY6zxTUeI9zqPbB4QnjfXGUGeKQ
 /KTOqrWF17rDsbPYbb3NRmfRRf0aAfnlgCJB8GThe1xzipLzu+z66lTLQPRDs1gKamPp
 oKjOBEJeF96Z6GGhxxV801GipXOh1rXMMkXG9L3KOEh8+Ydp5BO59qJfUAakvYrbh5nM
 4P6Q==
X-Gm-Message-State: APjAAAVdp3d4YGyzGJDMP20sGYrhJVfuyJkL+EoUdfo0cOcaxO6cnGEj
 2+nrhOvEfFB5Q4evPESy5rl6Bw==
X-Google-Smtp-Source: APXvYqxbrf2Ugxqv9P2QRTP6avgLIX8PiUCRNZeHQvtGRWDEvqDY9WaJDEVj3B8Kx7aE6qTo8gwsCg==
X-Received: by 2002:ae9:f215:: with SMTP id m21mr14508170qkg.47.1570267011921; 
 Sat, 05 Oct 2019 02:16:51 -0700 (PDT)
Received: from localhost.localdomain (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id u132sm4384621qka.50.2019.10.05.02.16.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 02:16:51 -0700 (PDT)
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
Subject: [PATCH v3 3/6] perf cs-etm: Support thread stack
Date: Sat,  5 Oct 2019 17:16:11 +0800
Message-Id: <20191005091614.11635-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191005091614.11635-1-leo.yan@linaro.org>
References: <20191005091614.11635-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_021653_092647_01AFFB94 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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
index 58ceba7b91d5..780abbfd1833 100644
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
+				    etmq->buffer->buffer_nr);
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
+					   etmq->buffer->buffer_nr);
+	}
+}
+
 static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 					    struct cs_etm_traceid_queue *tidq,
 					    u64 addr, u64 period)
@@ -1393,6 +1432,9 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		tidq->period_instructions = instrs_over;
 	}
 
+	if (tidq->prev_packet->last_instr_taken_branch)
+		cs_etm__add_stack_event(etmq, tidq);
+
 	if (etm->sample_branches) {
 		bool generate_sample = false;
 
@@ -2593,6 +2635,8 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
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
