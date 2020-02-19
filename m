Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B6B163A03
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 03:19:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=14vjSqHeGMo/iD2RG3dq6QvWvkCPLibzfwqTqGEV3TM=; b=jyOL53POEKRz9nivojeqpBjxtZ
	slnA7av6OvuDJYztbBWZy1YJt6EUZEwEBD3kSMYALaJxAXtaoZ55Obthh8E+4PrsLjBfb2F2m3Yu8
	GNHiyO9D7v8MlKnHgjW/T1DNBYwNORqaFo7oEwxF/nn4nrxw3qkOG/E6xpRusDEJGHS9ZjBh0sUJa
	eMa93PW0o53usdryRhHpxoRqeWPTntl58XBqQoSWOx4ooS4nqWYqAXZDA4k5PPAqCpUouBYr7R9zA
	SZIeNtJzJmX6jdm6TCdawub2CENlGuuZhEQ91zSNSfMwjx8o42nPhaqIIUK8T3GAZ4Tj9FDevVSXD
	7ig1u24A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Exu-0001G0-O2; Wed, 19 Feb 2020 02:19:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ExL-0000te-Q1
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 02:19:21 +0000
Received: by mail-pl1-x643.google.com with SMTP id e8so8885056plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 18:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8JY5jMUlCYWaE6NwiddTiun6+53F9fAjmLnJNKM4ks4=;
 b=oSN5fybMyY8jO1ur2M9Waav5BHCpghm10+gNMfvX3iPMYuCgKd6Zokwy7eY05UCl7Z
 BxFXeaGrPt/1osy904vjqYC6DIKxzXKFHgbJPE2FkmijWk+kMCj4tZaGCTiohtXYo1BE
 2g1xnGQZl9DpqHYeKZTUy2Vk6gMQgcSToVwzv1cnq21rPZcppDIV43KrPL88dhJgdfmo
 LrIxJNAD+mSBJjn0zzlJSqQy7MzIGM3pUiAaunDRLh4yILkzteOFF+tFoB0Xo/xm+c/D
 4HXYFG1e356D0qXptj0groSi2OkD23LdYK2TaHhvW0eo46Tnaso0rc3qhyBeXdP0VHF7
 uYqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8JY5jMUlCYWaE6NwiddTiun6+53F9fAjmLnJNKM4ks4=;
 b=f2QbOsoJ0g+8o9jrPRMGHVru772SBvi179ycMyoFitkXqmPTf6lx/AkV+bLJbemIV6
 ousKpFdixeR4QS0PNCKZ8qTtcr1MUbqz3o7eGphLAiQanI60LyFfGLVb1stXxNcFfINQ
 SuDWiGVnNrH9va7QW6alrmIniPmq/2Xdxtz5yh1vmkGZ+zoTljO5yptZBPaKuE1//KC9
 +9HXvZDFlaoUBJgivkS0R2x7ughvdsr3JIpyKEShdAiYSP2eo2CDOyDCo6VCleJIbSxM
 nri8yjfC2gjRt5TyPOVFoZbwNn9XN+Wmr42+6FJciPuxuvrhWVRWP/9gd5gJADXixqf4
 A1eQ==
X-Gm-Message-State: APjAAAUbpufVGxeYp+feBVgIoP1A2svXO/0raYRsiLGvvgomWqjtuhUg
 7Zx/ul5CKy6Gn02D1riF7CMZIQ==
X-Google-Smtp-Source: APXvYqxeQb5nu5YwhBkLDsrh7TuiaLfdBdP6z8ArH5UKKvWj3/CSGB+g+xD0YyF9NRX6V9Im+RT1uA==
X-Received: by 2002:a17:90a:8d86:: with SMTP id
 d6mr6263677pjo.119.1582078759193; 
 Tue, 18 Feb 2020 18:19:19 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id q11sm322698pff.111.2020.02.18.18.19.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 18:19:18 -0800 (PST)
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
Subject: [PATCH v5 4/5] perf cs-etm: Optimize copying last branches
Date: Wed, 19 Feb 2020 10:18:10 +0800
Message-Id: <20200219021811.20067-5-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219021811.20067-1-leo.yan@linaro.org>
References: <20200219021811.20067-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_181919_864221_74F70C4C 
X-CRM114-Status: GOOD (  14.95  )
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

If an instruction range packet can generate multiple instruction
samples, these samples share the same last branches; it's not necessary
to copy the same last branches repeatedly for these samples within the
same packet.

This patch moves out the last branches copying from function
cs_etm__synth_instruction_sample(), and execute it prior to generating
instruction samples.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
