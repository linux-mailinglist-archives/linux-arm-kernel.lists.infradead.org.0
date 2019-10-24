Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E01E3647
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 17:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zRFJCHVyOXnEqwoyFevhDFyjk/l/aR1p9Etw6pNMi3I=; b=t7At4HHX+yiSZo7eKNp45ebbAt
	rdHc3/YjaUC6NLF23LQt7YIRp79qvsMkJ9Cd39LWVqgkkL9/QnX6DY3ZAZskGmFDGz8H/iNZJl0Zz
	lzAF81+rHB8G72yNBZ9whT7nssVk537MEUvIVpJ4QqEW8GqUEZAH/wCbEIkrpCx22GJOO0rwK2/PG
	6xUODBUJfxbHZ+LFtQTQgqo6/cmhVaRNpYZpiMmtsFkHxs6M9HSwY1YyrhLdNnMXScJnjUFWvtHCi
	7Bq6Yvo44JNEF94SZxIgbmdDE0PN7Re1RB1UDsE7nLhNUXHmJ4/O5rosXKMqOFZ9e47iUx7jv5bJR
	4jCxu6cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNeqK-0003IG-S2; Thu, 24 Oct 2019 15:16:04 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNepk-0002u4-8Y
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 15:15:29 +0000
Received: by mail-qt1-x841.google.com with SMTP id c17so35373740qtn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 08:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2+8OeCtlRuFQGQZkXW2FoUzBMjUDZlZhy5R5fOMQGeQ=;
 b=PSwpr/P52oXDPu2DuTOP4dcsZcERIOhjHhdwDQRNfFRrpF9TIL5cZxYpBlX/M4zdD9
 jccri2mOi3BLErYUJevgdsA74Ah0X2U1frueLyhrrZabUK9phjly8F7t+pIjD8qcJmGF
 r/8MuRsNVFxl1KfFSZI0HltGPoDsxO5xYzBk86XXz1xKEM/Qtg5Wm+sfGO0/f2ZsbfND
 D6YmUNYR9E2kolYMEcOddXAhqesSb0Fej+dqgdPaR/7ytC2+bjyTM6PAfaxaRbtOqnaP
 VeXJ7ztGmGd3lVaIMe58/MGoiQqJtukk+kgriL/7A8vhUVkkM75AAg7ZB6WGcaV4MKjP
 nZrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2+8OeCtlRuFQGQZkXW2FoUzBMjUDZlZhy5R5fOMQGeQ=;
 b=Wv5heSVsCMiotqUB3jl5VMhqZh2XFvQVtp6Dob6z1IofD6ZtbcQ9wdWZj4CKCVXxSt
 b5HROTA3dtnERCYc1aJEG0Z3Cjx35iE1RcuRDZyuyL+kMukpC1bhm6h33c5lSAVw4Xxv
 UmESqsULcRbXC0TmhOz/eGFGjvc2RhOOAv1DZJ8U7G5OlijBxglSwY/YTiu5POZryGV1
 QrUp9xkjc2BU37tHAbiP0kQArJlYnyhocaL8whUnF+IVnRP5/XILn8P8SfPrCWHlMO19
 yLjFxsJezw11JFnt0BaBoS0C2xdjp/hNUG5DrQbEma9zKoHXzrxSOZnDsMmn1/O7Ts7N
 xoUw==
X-Gm-Message-State: APjAAAXpjgw8YUnoLWQY1UgMU4sZK2Kup+ChGC0qyYHBctzrj7mPYMGF
 WWWEsp+OUAVSSlIdNmrpKw8Z9Q==
X-Google-Smtp-Source: APXvYqwQ6KBz4sS0PRZ22lkCUee3uDjw8e66CKmbsWmea6h8xYNFQE8bF2jhT1Ce/ZksIWxqDZgHrA==
X-Received: by 2002:ac8:5343:: with SMTP id d3mr4659044qto.157.1571930126807; 
 Thu, 24 Oct 2019 08:15:26 -0700 (PDT)
Received: from localhost.localdomain (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id l5sm4346073qtj.52.2019.10.24.08.15.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 08:15:26 -0700 (PDT)
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
Subject: [PATCH v1 3/4] perf cs-etm: Optimize copying last branches
Date: Thu, 24 Oct 2019 23:13:24 +0800
Message-Id: <20191024151325.28623-4-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024151325.28623-1-leo.yan@linaro.org>
References: <20191024151325.28623-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_081528_336936_97065E15 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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

If an instruction range packet can generate multiple instruction
samples, these samples share the same last branches; it's not necessary
to copy the same last branches repeatedly for these samples within the
same packet.

This patch moves out the last branches copying from function
cs_etm__synth_instruction_sample(), and execute it once prior to
generating instruction samples.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 8e9eb7583bcd..d9a857abaca8 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1134,10 +1134,8 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 
 	cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->packet, &sample);
 
-	if (etm->synth_opts.last_branch) {
-		cs_etm__copy_last_branch_rb(etmq, tidq);
+	if (etm->synth_opts.last_branch)
 		sample.branch_stack = tidq->last_branch;
-	}
 
 	if (etm->synth_opts.inject) {
 		ret = cs_etm__inject_event(event, &sample,
@@ -1408,6 +1406,10 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		 */
 		u64 instrs_over = instrs_executed;
 
+		/* Prepare last branches for instruction sample */
+		if (etm->synth_opts.last_branch)
+			cs_etm__copy_last_branch_rb(etmq, tidq);
+
 		/*
 		 * 'head' is the instructions number of the head in the new
 		 * packet, it combines with the tail of previous packet to
@@ -1526,6 +1528,11 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 
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
@@ -1533,7 +1540,7 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 		 * Use the address of the end of the last reported execution
 		 * range
 		 */
-		u64 addr = cs_etm__last_executed_instr(tidq->prev_packet);
+		addr = cs_etm__last_executed_instr(tidq->prev_packet);
 
 		err = cs_etm__synth_instruction_sample(
 			etmq, tidq, addr,
@@ -1586,11 +1593,16 @@ static int cs_etm__end_block(struct cs_etm_queue *etmq,
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
