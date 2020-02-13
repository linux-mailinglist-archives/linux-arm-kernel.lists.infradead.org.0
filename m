Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A6B15BBE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:43:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CwcRMYdEZFD6k2Ctj3vwi7EcJW1tjBNJ2aFoBMEkJbI=; b=Kc71mmNcSHJax4O4+5iPdwhkz/
	31fwdlUc2vJ3ORzZn6ByenVq04ySb2vvrmqk8R6RtHl94Cngf20I+SJRDaHyoQMxZIl3jeUFyvaqh
	RS8tY5m5vNgw9z7U5h+fHafgIWYVtyhmUj2G1E/oNU4iSIss7XCXLTe6GeeAuIKzm4oSkMMWf71B/
	aV3uCtyPSkMdpBs3l5DIGuqxy7q371mDqGG/kKxm8pyFT3liTR9m0VI/HjNo+jIyEBVqLs5H1Gyof
	nVcELFCKeEFqkGweoMXbXk+EUsnwHV1C37w5sKf5R4N8bhhfAqZdAYafaC3gEInJSXM6ybHCt3vcs
	xlJn9uyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2B1U-0007Qh-GC; Thu, 13 Feb 2020 09:43:04 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2B19-0007Gb-1X
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:42:44 +0000
Received: by mail-pl1-x642.google.com with SMTP id e8so2121389plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 01:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=G6IPm5U0/N32JfuJRrXFpT4+8WxS2iUn3t7D8Wj9RWY=;
 b=vrNgUqWPxNjcbcprI69cNxpFGDoNlqSdIUfnpnFCC1Z+cnY1e70ej8SOS8MyZU1iUu
 Foyb6kugSrVv9KNVBrdGT+IR49tDjT63OdH1PVsbdb8eaJZzpwdVvO2LUkxHjjMEWfYg
 ZfC0+UdGGiaKJwebfefg71mPJ2whj5CFNxWU0Zx7NEh6kAwNrVsvvhky53G9uGNGvHYl
 yh4g1tiGbTFJnbzGFg1DsE9xEfqMzWCN2BFgXkbH0Yla2SkezfnvY4mggLN4uEjtMlJU
 deL11fXjY/a4OVGq1zdDrramCjTp7bNYT6tV4N68F7XmWRRCkOSPxyqeGVApT3TYZGSE
 IdiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=G6IPm5U0/N32JfuJRrXFpT4+8WxS2iUn3t7D8Wj9RWY=;
 b=LJnXp2nIemaDfT0xNNzb64g+jG10C3+33XXjagVyh84iZrKz1hmmSCvNLvzolB05bW
 KWboB4/B6nXx5r9iwxfvaVgzUcpyOBmaueooTv07n9aIVtAUYSA4VjguLk5ZuD5BQI5K
 uefIe5z/a5yy1AM6AGQsXcbc5345wMMZtiaUwUvCMIqYZ8741dZpDmj+m8yllNRc35QH
 bdjkaPz1buSFrUUvBtsVUDDt57Bhe/2vaUBqL7IoNtcrj9qMJszyKiEMHik49CB6Z8x7
 dVVOKK0qynvrAjY6bfeMclXsgJt9gWFwdx/Zy+xup4/0/DpTop/Sb4+Y96YXePSw5vj/
 qJBw==
X-Gm-Message-State: APjAAAVqcIqr7uIx+5l8jWhmjJmY8FJOnpLgzlug1Jj5K5HTvzo6JXyr
 O5ij7D11vNIudqNWsqm+QJkWbQ==
X-Google-Smtp-Source: APXvYqyXs+FQTEb/MYdpAWnSqLxOY3Lricf+P1+wCsYF6j9aOQspLE4mAeq2ZT3Mu7FTAD0FpT3RAg==
X-Received: by 2002:a17:902:2e:: with SMTP id
 43mr12872821pla.326.1581586961690; 
 Thu, 13 Feb 2020 01:42:41 -0800 (PST)
Received: from localhost.localdomain (li1441-214.members.linode.com.
 [45.118.134.214])
 by smtp.gmail.com with ESMTPSA id 3sm2310277pfi.13.2020.02.13.01.42.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 01:42:41 -0800 (PST)
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
Subject: [PATCH v4 1/5] perf cs-etm: Swap packets for instruction samples
Date: Thu, 13 Feb 2020 17:42:00 +0800
Message-Id: <20200213094204.2568-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200213094204.2568-1-leo.yan@linaro.org>
References: <20200213094204.2568-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_014243_121670_7769B10B 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
