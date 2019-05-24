Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC28629D73
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:49:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vYMWqDiIBGCmOHERYvheS7m9NW+7zpbVwdKOYZ+swjc=; b=Oj6igxFhWMk39OBiQRwgCoIVLr
	XS8H1eprws5dbms/1Gl6wMGzWP+u7KJR1EJn7l90A61b8fEQkrjgo3mcwX2jlaowK/AqSxpGIB9+g
	WdLzQisjXBDqSdRLK8Be17BW4OcIWx2IS/HAvIq3phAtdTzkYcpjgbEcbZh031ShzPeOlFke+X8JN
	JtwPF5vPGxVe8mod1dqJR7jzDkBkEl7wmi38pWrHODbmmU6e8Y1b76gYXGnWO+Aw62VCcvcKM+akr
	CizY/dNuZ7ia1B6ZWlUD6p8YDVaryCZ0uX3LDG3m0enTKX1Qk88efBz8HJR8n43oRi3o5qJF9BgF6
	3jBP9MTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUEJI-0000r0-KI; Fri, 24 May 2019 17:48:52 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE6G-00010w-PW
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:34 +0000
Received: by mail-pl1-x644.google.com with SMTP id r18so4424735pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=J3KXvvmyZI4M9TGLwpGRYcqjyy4iZs8aqIvbJ4YnMAg=;
 b=PxeotkVsdudTZ5DzfbDSWNGHXZFlizeQMtK9EnDTDtk3701NQsI0BL6K8GGLqdOFlS
 lQDesgnT9B211Eosr0u2MEaAt35hY9zdOr4zpF4NH+uI2g+f/Y9zKI/5gpwNWwIYpobi
 LMWB0GKpOp72zMvvLIYvikUZ+24dwfkdyQdxCpINpPbH2XpzpOM8raL5MXpz9nV+kPXu
 f635YZt7ygq+iP2HIRJ5sArUuVi9NsC1R+ko/5r+diZRFgxRl3inS7A76ngKmGyNu6It
 YDSupMpR0bHcKsWNRHIBwbC70u3X3KHAqRtmfOBMi+aP1iae511n5i9/RVoA+nZF7UJR
 Svaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=J3KXvvmyZI4M9TGLwpGRYcqjyy4iZs8aqIvbJ4YnMAg=;
 b=lqLoI2mdj2TQesJPikVMiJpZKeyuYds/ZOmMfxNELRbLHM53d/eA4QKWBDhM3QquH6
 iZP51263778qHpuT2jB2MJEVwGLYD6T1Y83YPZutEYwhClaXdKrZZ2vA2Sxm6QkAarK/
 MFpFeLFiZU/Mzsc0M7umnji4UhPKmXBrmngdU6mUvd0u1ZKc/Tmmvs29TlT5Jyj3HaDI
 nfZHbaXxQbfMLLsmOPDD5s8VlMcwpwDwiu1WfhOg/phuLm0dlhOvYGD2Rmy7cy9Kd2EN
 GPN7XtEgJD/GYwtJTwbUCZEkaQZKzmobHDby2Jo7+oqVn2DQ0eR/CwsGESuW1DD1WztZ
 ng1g==
X-Gm-Message-State: APjAAAUzCg7Tez3gzWTUcxZFQmGGwKCohCyIYnri3vUnykZ1q7JLI9bT
 I+rEmjnzGooCJvQJwPEm5P5hkw==
X-Google-Smtp-Source: APXvYqyW62EDQFZ/4Hvhi7yRBZOFrn0NXEa5XdwU4rEoJMlp697/fythnv78WdXBVyIDViiycykK6Q==
X-Received: by 2002:a17:902:d715:: with SMTP id
 w21mr92505236ply.234.1558719324246; 
 Fri, 24 May 2019 10:35:24 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:23 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 11/17] perf tools: Move thread to traceid_queue
Date: Fri, 24 May 2019 11:35:02 -0600
Message-Id: <20190524173508.29044-12-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103525_389454_68AC014F 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

The thread field of structure cs_etm_queue is CPU dependent and as
such need to be part of the cs_etm_traceid_queue in order to support
CPU-wide trace scenarios.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 tools/perf/util/cs-etm.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 531bbb355ba4..0d51d6d9a594 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -65,6 +65,7 @@ struct cs_etm_traceid_queue {
 	u64 period_instructions;
 	size_t last_branch_pos;
 	union perf_event *event_buf;
+	struct thread *thread;
 	struct branch_stack *last_branch;
 	struct branch_stack *last_branch_rb;
 	struct cs_etm_packet *prev_packet;
@@ -74,7 +75,6 @@ struct cs_etm_traceid_queue {
 
 struct cs_etm_queue {
 	struct cs_etm_auxtrace *etm;
-	struct thread *thread;
 	struct cs_etm_decoder *decoder;
 	struct auxtrace_buffer *buffer;
 	unsigned int queue_nr;
@@ -415,7 +415,7 @@ static void cs_etm__free_queue(void *priv)
 	if (!etmq)
 		return;
 
-	thread__zput(etmq->thread);
+	thread__zput(etmq->traceid_queues->thread);
 	cs_etm_decoder__free(etmq->decoder);
 	zfree(&etmq->traceid_queues->event_buf);
 	zfree(&etmq->traceid_queues->last_branch);
@@ -503,7 +503,7 @@ static u32 cs_etm__mem_access(struct cs_etm_queue *etmq, u64 address,
 	machine = etmq->etm->machine;
 	cpumode = cs_etm__cpu_mode(etmq, address);
 
-	thread = etmq->thread;
+	thread = etmq->traceid_queues->thread;
 	if (!thread) {
 		if (cpumode != PERF_RECORD_MISC_KERNEL)
 			return 0;
@@ -819,18 +819,21 @@ cs_etm__get_trace(struct cs_etm_queue *etmq)
 static void cs_etm__set_pid_tid_cpu(struct cs_etm_auxtrace *etm,
 				    struct auxtrace_queue *queue)
 {
+	struct cs_etm_traceid_queue *tidq;
 	struct cs_etm_queue *etmq = queue->priv;
 
+	tidq = cs_etm__etmq_get_traceid_queue(etmq, CS_ETM_PER_THREAD_TRACEID);
+
 	/* CPU-wide tracing isn't supported yet */
 	if (queue->tid == -1)
 		return;
 
-	if ((!etmq->thread) && (etmq->tid != -1))
-		etmq->thread = machine__find_thread(etm->machine, -1,
+	if ((!tidq->thread) && (etmq->tid != -1))
+		tidq->thread = machine__find_thread(etm->machine, -1,
 						    etmq->tid);
 
-	if (etmq->thread)
-		etmq->pid = etmq->thread->pid_;
+	if (tidq->thread)
+		etmq->pid = tidq->thread->pid_;
 }
 
 static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
