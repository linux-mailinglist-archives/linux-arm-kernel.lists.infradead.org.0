Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C462729D3E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AaFU4cPzWZiNKs/9o9cUzdoLCCVwJjyOWBkWx6PHRKo=; b=qdJRgaEFbFa4p7D/Hhs6j7fvAA
	nXUocWSD1+7Wgbr2SyNa1FZlL3aoBfRNg2aPn66fhtmS138Dx3YXfY47zFdnKwcZh6RldEC7IZu9M
	xV4fR6Bv7FFbK7avW0WIQPA6llhXRYvkpoZWfHSQfxxqkoi4GD2+WaKsaUXmRAp4o4X+ARtYlv7uc
	k84KYESDplEsGC2oGlXXMwrDYkSIVbgoPiaV1juKtjI3e/3Wy5zsh73zruXvNLNKrECeCk0uzgncJ
	hEt2HDrp/tVm5gTNOERDhn3fWdhvk2805h7wWucg0VbRBkQURLwsW1xmTRHZwnIi7si4H1OYVqhor
	HFn1DANw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE8D-0003LR-8Q; Fri, 24 May 2019 17:37:25 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE6H-00013E-Tu
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id v80so5735030pfa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eTGrl1VwMHPMcZROfgPIL9cYLAfm7e1gifTctdhMIag=;
 b=uexRFuRCUMiVTKpuY4H6ZXEoKfbokTfvLGUjC/jwLmemjjK+9N08UN2R450MQzMQFS
 SDYZUWqYuwiEWmCasHAcniqKd8VZ1P9qLod4b26Q3GLCZniJsQc8MPQjnN5JxRgQdtX0
 +BSF0I69lK+hyZyucAN5AmDmmVYB9bGjevMr73ySf1a5aXZPRdECjJHyvinKVAw4AOqQ
 z9D++HcFUhruKpxEn3SksqcIh5wZAf0QWLZRdtKmqPtO5Z5YCA08an7r7P/RqcQI7d5t
 x1Qeaar+Gxem++wi2r0RFocbzTW/ZaEaLfO2QRxBjq9syIms/TNaxDjUyWMA1jDMufq0
 U03Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eTGrl1VwMHPMcZROfgPIL9cYLAfm7e1gifTctdhMIag=;
 b=UWI36Mb//vz9Q6vj/4hS+3yVDIZHj4yc40rt661PZYVjaezOZeh05psvRjGS2sOwhW
 NTkKmMVrl57XIs3O+ugHO+XpL2l6/52C86JczKSnT0VrcpDlpM44GbThQ2gkDZiTi/UR
 9Ay/ulRjsP2p2GY2pmyf1soz7aafg2wunZqNkSlpcLuQFYGyNmmvE5fqC0OEdShbgpQi
 kRWrbpM11pLCHKWBRg3Tc4Y+4fTIgI8Hb/ifb1NG6zZk29FA6wDrLLKNQURaXI6j0Pn2
 IMv6OJa/3qDHZrP/0wjXaz+raNjMQu/DUu/jEXn9x932czrq4kG0H0UYFiNslAFKOGK9
 WtuQ==
X-Gm-Message-State: APjAAAX6rMd1m84SwD0zx8h+lUP7Ufz122yBjeNRYluGDA+xjKYynbRe
 8AmzWYeyjYG74n5rHc6bYk9fvA==
X-Google-Smtp-Source: APXvYqxafBcXyO1ItWy6aoLqqZOafSURtK+DsdQ9+wximkDSKsA3cFE7FLAZvxWK6L4NzpzoVcgJ0w==
X-Received: by 2002:a63:6ac3:: with SMTP id
 f186mr107175814pgc.326.1558719325379; 
 Fri, 24 May 2019 10:35:25 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:24 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 12/17] perf tools: Move tid/pid to traceid_queue
Date: Fri, 24 May 2019 11:35:03 -0600
Message-Id: <20190524173508.29044-13-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103527_013578_0EDB2CE9 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: suzuki.poulose@arm.com, peterz@infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, leo.yan@linaro.org, namhyung@kernel.org, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The tid/pid fields of structure cs_etm_queue are CPU dependent and as
such need to be part of the cs_etm_traceid_queue in order to support
CPU-wide trace scenarios.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 tools/perf/util/cs-etm.c | 44 ++++++++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 18 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 0d51d6d9a594..7e3b4d10f5c4 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -62,6 +62,7 @@ struct cs_etm_auxtrace {
 
 struct cs_etm_traceid_queue {
 	u8 trace_chan_id;
+	pid_t pid, tid;
 	u64 period_instructions;
 	size_t last_branch_pos;
 	union perf_event *event_buf;
@@ -78,7 +79,6 @@ struct cs_etm_queue {
 	struct cs_etm_decoder *decoder;
 	struct auxtrace_buffer *buffer;
 	unsigned int queue_nr;
-	pid_t pid, tid;
 	u64 offset;
 	const unsigned char *buf;
 	size_t buf_len, buf_used;
@@ -159,10 +159,14 @@ static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
 				      u8 trace_chan_id)
 {
 	int rc = -ENOMEM;
+	struct auxtrace_queue *queue;
 	struct cs_etm_auxtrace *etm = etmq->etm;
 
 	cs_etm__clear_packet_queue(&tidq->packet_queue);
 
+	queue = &etmq->etm->queues.queue_array[etmq->queue_nr];
+	tidq->tid = queue->tid;
+	tidq->pid = -1;
 	tidq->trace_chan_id = trace_chan_id;
 
 	tidq->packet = zalloc(sizeof(struct cs_etm_packet));
@@ -598,8 +602,6 @@ static int cs_etm__setup_queue(struct cs_etm_auxtrace *etm,
 	queue->priv = etmq;
 	etmq->etm = etm;
 	etmq->queue_nr = queue_nr;
-	etmq->tid = queue->tid;
-	etmq->pid = -1;
 	etmq->offset = 0;
 
 out:
@@ -817,23 +819,19 @@ cs_etm__get_trace(struct cs_etm_queue *etmq)
 }
 
 static void cs_etm__set_pid_tid_cpu(struct cs_etm_auxtrace *etm,
-				    struct auxtrace_queue *queue)
+				    struct auxtrace_queue *queue,
+				    struct cs_etm_traceid_queue *tidq)
 {
-	struct cs_etm_traceid_queue *tidq;
-	struct cs_etm_queue *etmq = queue->priv;
-
-	tidq = cs_etm__etmq_get_traceid_queue(etmq, CS_ETM_PER_THREAD_TRACEID);
-
 	/* CPU-wide tracing isn't supported yet */
 	if (queue->tid == -1)
 		return;
 
-	if ((!tidq->thread) && (etmq->tid != -1))
+	if ((!tidq->thread) && (tidq->tid != -1))
 		tidq->thread = machine__find_thread(etm->machine, -1,
-						    etmq->tid);
+						    tidq->tid);
 
 	if (tidq->thread)
-		etmq->pid = tidq->thread->pid_;
+		tidq->pid = tidq->thread->pid_;
 }
 
 static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
@@ -850,8 +848,8 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
 	event->sample.header.size = sizeof(struct perf_event_header);
 
 	sample.ip = addr;
-	sample.pid = etmq->pid;
-	sample.tid = etmq->tid;
+	sample.pid = tidq->pid;
+	sample.tid = tidq->tid;
 	sample.id = etmq->etm->instructions_id;
 	sample.stream_id = etmq->etm->instructions_id;
 	sample.period = period;
@@ -909,8 +907,8 @@ static int cs_etm__synth_branch_sample(struct cs_etm_queue *etmq,
 	event->sample.header.size = sizeof(struct perf_event_header);
 
 	sample.ip = ip;
-	sample.pid = etmq->pid;
-	sample.tid = etmq->tid;
+	sample.pid = tidq->pid;
+	sample.tid = tidq->tid;
 	sample.addr = cs_etm__first_executed_instr(tidq->packet);
 	sample.id = etmq->etm->branches_id;
 	sample.stream_id = etmq->etm->branches_id;
@@ -1758,9 +1756,19 @@ static int cs_etm__process_timeless_queues(struct cs_etm_auxtrace *etm,
 	for (i = 0; i < queues->nr_queues; i++) {
 		struct auxtrace_queue *queue = &etm->queues.queue_array[i];
 		struct cs_etm_queue *etmq = queue->priv;
+		struct cs_etm_traceid_queue *tidq;
+
+		if (!etmq)
+			continue;
+
+		tidq = cs_etm__etmq_get_traceid_queue(etmq,
+						CS_ETM_PER_THREAD_TRACEID);
+
+		if (!tidq)
+			continue;
 
-		if (etmq && ((tid == -1) || (etmq->tid == tid))) {
-			cs_etm__set_pid_tid_cpu(etm, queue);
+		if ((tid == -1) || (tidq->tid == tid)) {
+			cs_etm__set_pid_tid_cpu(etm, queue, tidq);
 			cs_etm__run_decoder(etmq);
 		}
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
