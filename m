Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDA33D65E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 21:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWGVDp8ANa48akl1TQVGn5t3r/im95sbAwnzUa1EOJw=; b=iI8eL9TFoZKeiQ
	LcjxZhN9w19c3PX/brk6Tc6TrAw+yx03T7gGLYp2wRy/Jx7tXGQwk2muabNOfykMqsOXbg/gu0/Nb
	JsJgU8Tdu94UINIAnB3szRX20cCZoguq88ZYji28BXxOcul7e4ykqEh8bBNOrjW7BdCHg0wYjszx8
	88tKLeNVHc7lGzDDNR52K98/463X4/48ea7S6e8kIbPF0dZYrZ399/6qZNoHh+s8KKsDLIT9dF37K
	+vr8VzrdHDCeU6Ts/ngvkUhQfioUShGcrjf8q0eQ9cYydKrnKyTrB3umB0a0gIUqvDNWP573IouoA
	9sWE1dmW7+HQR0VK7ycQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ham5P-0000Pn-Ka; Tue, 11 Jun 2019 19:05:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ham2k-00058X-Rf
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 19:02:52 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DC760217D6;
 Tue, 11 Jun 2019 19:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560279769;
 bh=0ajeEWj5kL5FMCTtxzGBql20ziWbMwbq/JZumNCct3c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ct+X2nkMHyJmr2I63v+3KoX/2VoBmQZ4lUbjMqTbHB0iXFXuV5DAFRb807M5OG0L5
 RGFnkDzj0Usswof7BTgF2GybozydRXEGhkevJdRejIbgBb7u1vjsMn46BfDHKoM//2
 t6GQAnP1Va2uMdEXbd/4AE5UpxGJRWABMAFIXljE=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 46/85] perf cs-etm: Get rid of unused cpu in struct
 cs_etm_queue
Date: Tue, 11 Jun 2019 15:58:32 -0300
Message-Id: <20190611185911.11645-47-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611185911.11645-1-acme@kernel.org>
References: <20190611185911.11645-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_120251_104842_1421A7B4 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>, Clark Williams <williams@redhat.com>,
 coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Leo Yan <leo.yan@linaro.org>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mathieu Poirier <mathieu.poirier@linaro.org>

Nowadays the synthesize code is using the packet's cpu information,
making cs_etm_queue::cpu useless.  As such simply remove it.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Tested-by: Leo Yan <leo.yan@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: coresight@lists.linaro.org
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190524173508.29044-11-mathieu.poirier@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/cs-etm.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 9e8212c74055..531bbb355ba4 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -79,7 +79,6 @@ struct cs_etm_queue {
 	struct auxtrace_buffer *buffer;
 	unsigned int queue_nr;
 	pid_t pid, tid;
-	int cpu;
 	u64 offset;
 	const unsigned char *buf;
 	size_t buf_len, buf_used;
@@ -599,7 +598,6 @@ static int cs_etm__setup_queue(struct cs_etm_auxtrace *etm,
 	queue->priv = etmq;
 	etmq->etm = etm;
 	etmq->queue_nr = queue_nr;
-	etmq->cpu = queue->cpu;
 	etmq->tid = queue->tid;
 	etmq->pid = -1;
 	etmq->offset = 0;
@@ -831,11 +829,8 @@ static void cs_etm__set_pid_tid_cpu(struct cs_etm_auxtrace *etm,
 		etmq->thread = machine__find_thread(etm->machine, -1,
 						    etmq->tid);
 
-	if (etmq->thread) {
+	if (etmq->thread)
 		etmq->pid = etmq->thread->pid_;
-		if (queue->cpu == -1)
-			etmq->cpu = etmq->thread->cpu;
-	}
 }
 
 static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
