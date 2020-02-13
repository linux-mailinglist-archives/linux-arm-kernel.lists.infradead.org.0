Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6319A15BBF0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:44:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BvnepCb9No+GGQDrHKmqEETJMXF8QHobcIDtbsKOhDQ=; b=cTLEg+nrWZnPCEQPmQ8zbV9wr/
	m2X1ItaG6Wv6ThHHbVfXG9jJYUwcFShEZdy7B/m6m8sPoFQRdK5omtJWNC+92axqLDxx77OTSveSt
	7qc+rjxdtVrkcsb7BSRkMatUgZBcGgSK3IgEoSmgjqdpMSvb34eq2zvvI7fk6Le00lnCwVIxqkxpf
	BiXj2TXeHbAfQp7sOWxhmgz7/i25T4h0s9Y4B9slTKeRLoU2TaGm2FUwldW2mEN5rkZGpkFiMfDNf
	joIZ9qVzEN/Aetqgm21uM3aio+93kV4M4Cv0EnjNDmH5brLbDTWiyme0fuWlCqLQzy7ulxq5tw0z0
	xqDccKvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2B2d-0008Qi-91; Thu, 13 Feb 2020 09:44:15 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2B1i-0007qk-FE
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:43:20 +0000
Received: by mail-pl1-x643.google.com with SMTP id p11so2120290plq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 01:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OCgHNqEUlfiCJzRowkU7/269i7iDkpUPlf4f9JcwX54=;
 b=kkzyE0jY2khCQPlvgDr0BgfcRujUSFX5dZAjHWoqtnTf9tfmslHRD5+kx3P4lpHdWh
 9fwqsBbM3K+5y5HDae6Jy51sKEujHwtg2xm4CAMWS5IZ78Z45RuKrV1B1MRQ6FqoSItf
 mCfj5b+XGm1FILjyvmo3A27/eRmji2hPDkOwoodBTX3tmnLDNexmL9/pWVNrgXwtLYqr
 dBe19jEFJ0WLUb2lqOndNZ0wQ/xQvZl+SN0IeH64jFjzBy2vr6NIOb0ZCdkUskpylLCd
 4NYWTKYwc5SuOsDTmyviRsazg3r5n/mdpVz9ratijaWBvc8HdeXw4Ymbo2jMwCt1FSdC
 cJpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OCgHNqEUlfiCJzRowkU7/269i7iDkpUPlf4f9JcwX54=;
 b=UsXt3yOG+yESn5m1lyB4XTdNXlNf7ISkN57kCTdixVcE4ZFgxUcEdfDWWf9cUZZ+z8
 qfpCw1LFkkO+T9L+Xb5oU9mpIGXAANEQ6N0gQKe8oHNngIb/I1XCG0LASi0l5ei/Dade
 qN4DHly3iisWxBAlCadouMkr/cIt1eLYW9QHv+GAwhmaQa6xtZ/xaaFhz99yXT7VsgjN
 0YU91gU+ya8Dlde/Jx1ShThCgotx8IRMzoYXFIQMY8oxhnZsicgbYksWxebVIuZ68ets
 Bh0FJjsPvHpSIXCoSY3FXGlp45DXlDqakjgO0zT6PS6+voftOniZerjcrR8rdl/611K1
 jpAw==
X-Gm-Message-State: APjAAAVUvJeRNUeJHJbJRs0r4M7BPiTaIC7wXsRAq5IiUizjmlZsNzH8
 U1EFiJk69JS8M+PfDoNkm8SuAQ==
X-Google-Smtp-Source: APXvYqwCp1hlwy3D4RlHAsd+fjx0K1n5HsAJI0nZqpBGkJFX1H6FN1yb1EvqiP8lf9+tVSh7+VIt4w==
X-Received: by 2002:a17:902:bd88:: with SMTP id
 q8mr26284888pls.13.1581586997887; 
 Thu, 13 Feb 2020 01:43:17 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id 3sm2310277pfi.13.2020.02.13.01.43.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 01:43:17 -0800 (PST)
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
Subject: [PATCH v4 4/5] perf cs-etm: Optimize copying last branches
Date: Thu, 13 Feb 2020 17:42:03 +0800
Message-Id: <20200213094204.2568-5-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200213094204.2568-1-leo.yan@linaro.org>
References: <20200213094204.2568-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_014318_523681_BF5D1649 
X-CRM114-Status: GOOD (  14.29  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

If an instruction range packet can generate multiple instruction
samples, these samples share the same last branches; it's not necessary
to copy the same last branches repeatedly for these samples within the
same packet.

This patch moves out the last branches copying from function
cs_etm__synth_instruction_sample(), and execute it prior to generating
instruction samples.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
---
 tools/perf/util/cs-etm.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 4b7d6c36ce3c..aa4b6d060ebb 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1151,10 +1151,8 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 
 	cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->packet, &sample);
 
-	if (etm->synth_opts.last_branch) {
-		cs_etm__copy_last_branch_rb(etmq, tidq);
+	if (etm->synth_opts.last_branch)
 		sample.branch_stack = tidq->last_branch;
-	}
 
 	if (etm->synth_opts.inject) {
 		ret = cs_etm__inject_event(event, &sample,
@@ -1429,6 +1427,10 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		u64 offset = etm->instructions_sample_period - instrs_prev;
 		u64 addr;
 
+		/* Prepare last branches for instruction sample */
+		if (etm->synth_opts.last_branch)
+			cs_etm__copy_last_branch_rb(etmq, tidq);
+
 		while (tidq->period_instructions >=
 				etm->instructions_sample_period) {
 			/*
@@ -1506,6 +1508,11 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 
 	if (etmq->etm->synth_opts.last_branch &&
 	    tidq->prev_packet->sample_type == CS_ETM_RANGE) {
+		u64 addr;
+
+		/* Prepare last branches for instruction sample */
+		cs_etm__copy_last_branch_rb(etmq, tidq);
+
 		/*
 		 * Generate a last branch event for the branches left in the
 		 * circular buffer at the end of the trace.
@@ -1513,7 +1520,7 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 		 * Use the address of the end of the last reported execution
 		 * range
 		 */
-		u64 addr = cs_etm__last_executed_instr(tidq->prev_packet);
+		addr = cs_etm__last_executed_instr(tidq->prev_packet);
 
 		err = cs_etm__synth_instruction_sample(
 			etmq, tidq, addr,
@@ -1558,11 +1565,16 @@ static int cs_etm__end_block(struct cs_etm_queue *etmq,
 	 */
 	if (etmq->etm->synth_opts.last_branch &&
 	    tidq->prev_packet->sample_type == CS_ETM_RANGE) {
+		u64 addr;
+
+		/* Prepare last branches for instruction sample */
+		cs_etm__copy_last_branch_rb(etmq, tidq);
+
 		/*
 		 * Use the address of the end of the last reported execution
 		 * range.
 		 */
-		u64 addr = cs_etm__last_executed_instr(tidq->prev_packet);
+		addr = cs_etm__last_executed_instr(tidq->prev_packet);
 
 		err = cs_etm__synth_instruction_sample(
 			etmq, tidq, addr,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
