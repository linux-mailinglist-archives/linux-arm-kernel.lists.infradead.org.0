Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF223150065
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 02:53:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oShqczHk0TREV+xWH7Jm6jM1VDZ3SXqSD0JlTAN6AMQ=; b=JfjKCWrxWuVPlt3pXonJ++3+Sj
	jhKFJslrdIoVmmMC+P6KjqoDFLCBIOi2uGU19vV/5F2E/CLpSJ6YtO4N6e8SXl402AHIDbqKJqLFO
	EeEMuD9C+KiJbKediYONoaj18qIgeNbJZa3NqRL2v9Xl54/495ld4SzWjXAWDKc+JsyHy2ff0dvpA
	QDACHsiRrlLT72GNxKI0A+/OglS68PK1k5HAekbFAqMxIzmZdidl7NV8x65S1xT99jiH++L7M6LGP
	JUOd+9WyoeW5omiKFN/0Osl8jYTcxDHXVwBDIx8WTvaZrx4s/f4x3RYA6E6y4P6JExrjwp8zd2dcJ
	aHFDVKOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyQvi-0000Cd-1J; Mon, 03 Feb 2020 01:53:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyQvB-0008GO-Fw
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 01:53:07 +0000
Received: by mail-pf1-x441.google.com with SMTP id n7so6720931pfn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 17:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ovSiMu6eDg8baSn4QabjoCI5Td3xLx7krHbZCycw6hU=;
 b=eO3E7ihUXPiMjX8jGUakX3FEHjLd2ZMiVPSuyOuH5f9C5BIMM76Prjrie2GEQAeQzr
 zfWwdrs8YnD4mEdB9cDpPd3bwTDSmwm6lZjin8ULJ94omHChZLlFTdFOWqYlmebYpdHz
 vG768/8ONU5r1nsx01y3DfoStJ5nrpL+2fK4hEpWITgM0lCIygkPh65bcTMkRhaSnYkY
 cH8FtUcSyTQzCoE1CZkPhDQvnWMk0F3uSEI1Q7S6HK/sq5C2zRfqO/0BpLI8CSak73Nl
 kqMjxtdvzzr5HTbttXtdNrUJ3bAkeb+u2jnmnxH9KkmSTVU4+V69aejkzAjMhFAlDqdt
 CIsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ovSiMu6eDg8baSn4QabjoCI5Td3xLx7krHbZCycw6hU=;
 b=A+Lp3JofHlzvsoFHMiGHjzMjNAuSWqZqXozMRRL0XJ88kGwG8n3Ss7r6YqjLBwygJa
 21+IgwSPON7qzadE8gRqPSZ6/QDxSe70bmfojljbpxqNhcBT+VKg9II7Pets91o1tekx
 7SG/Oa5J1At3lbw2iDv8MyNYL/JeOhiTZ3Q7p+e+x+OYE1Ww03tRb5Qu/X95KBlNirCu
 KRJ2RGHlR5WvpACxFUQJrGzP2g8bTlwpLoDm6mAwHjxW0aPLr/Y7SXXcjLVu7RkALRcQ
 iFoArwSV8XiGdzLLAiqOqyAcxx1ViJ+1b0hXNZ/n76GQkw9HZlDKbhYGNOWoITHb8TgS
 xJYg==
X-Gm-Message-State: APjAAAUnC/ofmNUeMg9wjZmOkymmXC1fLeaNkhdFBss4gGkKyO0x2oxL
 Ut4ZV+8vyFWQMsWd2U70KXtRzQ==
X-Google-Smtp-Source: APXvYqxlO9/tml5cbTSe/F/G4LZUuePd8W1y1ke8p1Q3ox/374edCW1lA0+O9W0i9RosVX44mEj7bQ==
X-Received: by 2002:a63:fe43:: with SMTP id x3mr23657136pgj.119.1580694784305; 
 Sun, 02 Feb 2020 17:53:04 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id y38sm17348308pgk.33.2020.02.02.17.52.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 17:53:03 -0800 (PST)
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
Subject: [PATCH v3 4/5] perf cs-etm: Optimize copying last branches
Date: Mon,  3 Feb 2020 09:52:02 +0800
Message-Id: <20200203015203.27882-5-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200203015203.27882-1-leo.yan@linaro.org>
References: <20200203015203.27882-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_175305_545503_AAEEAC2D 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

If an instruction range packet can generate multiple instruction
samples, these samples share the same last branches; it's not necessary
to copy the same last branches repeatedly for these samples within the
same packet.

This patch moves out the last branches copying from function
cs_etm__synth_instruction_sample(), and execute it prior to generating
instruction samples.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index c5a05f728eac..dbddf1eec2be 100644
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
@@ -1407,6 +1405,10 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
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
@@ -1587,11 +1594,16 @@ static int cs_etm__end_block(struct cs_etm_queue *etmq,
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
