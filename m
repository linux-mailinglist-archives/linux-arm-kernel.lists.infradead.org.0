Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DAB1639FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 03:19:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=stvkN45GjG+0c5z5nfuqSom66Firrs7xHpRfi0QCs1g=; b=M2n5S0kxOGvYL9JosXUT80LBS8
	cSD41t9QGIwZ1f5+1yWYPw5quUhoSbZc+GnPHfc6f6hCdULLQ8hl+oX12tTJJHxCh0O9mZCYxikgi
	+FhJzJaBnnmoZn9EQM/iJIm4TMbM6K4ST8awatDWCjQhppPMpcdReAqBY7nIr6KVtkF2Ycd3L1xIR
	4swFRu4nlxjknrp2M5es28JzoN3IWkz5FXxOjD+/xE4xnt6oUmxShinR4VA7z6hn9yvrvHwiz1IdS
	BHol/II8EhySvcME5JI8y1JMnsRd8AjRNWXLqDqzuTgmxNB0CTL/ctNv3oiIvwL4rCuEyZYo0bI/+
	I5QWMvcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ex8-0000TT-7k; Wed, 19 Feb 2020 02:19:06 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Ewn-0000NQ-PR
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 02:18:47 +0000
Received: by mail-pl1-x641.google.com with SMTP id c23so8896313plz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 18:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HCei443+woU3d+4WFpgaBHBCXtW7EVH0nzt1yj3zjH4=;
 b=qPHAUt/Qv05p/vp1UY+On7Y1+0zpI+56l4XvY0X6HovroNJTO/UN0Wo8hWOSt2aYBP
 81bp0JEwCCknAREh4lEU3rf6jhCs7q5JMRsfgSJr725g35H+eJwcqmLFtsSeWJTidN/H
 s3JYwmrFEQSXnkrHc0DpPDbNSdH3bF4o8HxakP5D+feZdIbm36Z+jU0DfBznHzyHi0Tn
 73Axzgj9lknUuk/j+oeNgMv1HtqUIMNBajxEsusKEKEsrSbyHNVAnjR4IvhhKtI6n6xM
 r9NegZd1gP4bDJ3cK0QDDRVUf9E71IUSXzdt9nRGImfvxVU+RX6nYIudHaakRpz1bT1K
 6nhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HCei443+woU3d+4WFpgaBHBCXtW7EVH0nzt1yj3zjH4=;
 b=aJ9vlqS5EUKdOd56ikpRc7A534So6uscv8Mt7YXWgYg/jVn63262NyRxJySON281dA
 VEcZwiuDgb1P2XbTcsIWGacR4QO7X2vDeRWU3zviJQwk5mkCLSug9t9eHyiIEDux8q3m
 esAC4tPq+uLSnacDPDA6vnTwkS1IAConv6MVgofKzzEy/1f7h3eXnW85WH1qLwboFkxA
 N1wnpLnz079y1EILBar6Q/3vGyBTqpU3H0U3seZQXvMypTeMK4oQ25mGouwA2de9YC5i
 CCEbd5dOPZYg4xK1IyTY3v8iI0ai6SWftW1w5cquV0GEYKa7jHYkO6sp2t3aZJJGVDe5
 2OHA==
X-Gm-Message-State: APjAAAXY3V5qtcgtY4ypvZUpz/SBmNhdVijGTKnmmVWalnSDZeuKJcNN
 ksKL7XC3JJqHa2JtjBeKxj046w==
X-Google-Smtp-Source: APXvYqxmQ/J85EL9NXtjtE9q/6aOEoSr+QIuagctzT/TN68j9pNNr0W7dZ+vImvAs1AhkrENqn3SVg==
X-Received: by 2002:a17:902:9f83:: with SMTP id
 g3mr23820348plq.101.1582078725013; 
 Tue, 18 Feb 2020 18:18:45 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id q11sm322698pff.111.2020.02.18.18.18.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 18:18:44 -0800 (PST)
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
Subject: [PATCH v5 1/5] perf cs-etm: Swap packets for instruction samples
Date: Wed, 19 Feb 2020 10:18:07 +0800
Message-Id: <20200219021811.20067-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219021811.20067-1-leo.yan@linaro.org>
References: <20200219021811.20067-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_181845_855956_448A2F5E 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

If use option '--itrace=iNNN' with Arm CoreSight trace data, perf tool
fails inject instruction samples; the root cause is the packets are
only swapped for branch samples and last branches but not for
instruction samples, so the new coming packets cannot be properly
handled for only synthesizing instruction samples.

To fix this issue, this patch refactors the code with a new function
cs_etm__packet_swap() which is used to swap packets and adds the
condition for instruction samples.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 tools/perf/util/cs-etm.c | 39 +++++++++++++++++++--------------------
 1 file changed, 19 insertions(+), 20 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 5471045ebf5c..84f30c2de185 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -363,6 +363,23 @@ struct cs_etm_packet_queue
 	return NULL;
 }
 
+static void cs_etm__packet_swap(struct cs_etm_auxtrace *etm,
+				struct cs_etm_traceid_queue *tidq)
+{
+	struct cs_etm_packet *tmp;
+
+	if (etm->sample_branches || etm->synth_opts.last_branch ||
+	    etm->sample_instructions) {
+		/*
+		 * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
+		 * the next incoming packet.
+		 */
+		tmp = tidq->packet;
+		tidq->packet = tidq->prev_packet;
+		tidq->prev_packet = tmp;
+	}
+}
+
 static void cs_etm__packet_dump(const char *pkt_string)
 {
 	const char *color = PERF_COLOR_BLUE;
@@ -1340,7 +1357,6 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 			  struct cs_etm_traceid_queue *tidq)
 {
 	struct cs_etm_auxtrace *etm = etmq->etm;
-	struct cs_etm_packet *tmp;
 	int ret;
 	u8 trace_chan_id = tidq->trace_chan_id;
 	u64 instrs_executed = tidq->packet->instr_count;
@@ -1404,15 +1420,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
 		}
 	}
 
-	if (etm->sample_branches || etm->synth_opts.last_branch) {
-		/*
-		 * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
-		 * the next incoming packet.
-		 */
-		tmp = tidq->packet;
-		tidq->packet = tidq->prev_packet;
-		tidq->prev_packet = tmp;
-	}
+	cs_etm__packet_swap(etm, tidq);
 
 	return 0;
 }
@@ -1441,7 +1449,6 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 {
 	int err = 0;
 	struct cs_etm_auxtrace *etm = etmq->etm;
-	struct cs_etm_packet *tmp;
 
 	/* Handle start tracing packet */
 	if (tidq->prev_packet->sample_type == CS_ETM_EMPTY)
@@ -1476,15 +1483,7 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
 	}
 
 swap_packet:
-	if (etm->sample_branches || etm->synth_opts.last_branch) {
-		/*
-		 * Swap PACKET with PREV_PACKET: PACKET becomes PREV_PACKET for
-		 * the next incoming packet.
-		 */
-		tmp = tidq->packet;
-		tidq->packet = tidq->prev_packet;
-		tidq->prev_packet = tmp;
-	}
+	cs_etm__packet_swap(etm, tidq);
 
 	return err;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
