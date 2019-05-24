Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3010629D3C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YRqBAfwSeWH40xYiXT4YDQKFAyZnYe19TzzEVhzuuAo=; b=jgV5FAnKIpUGvCGL1isq3ziVpq
	ztoJC+ekiRinRr1FL/TA2cM/I3TRZekEus66DuTSD+vMTP5pYkCYQ9LdCvS/mey2rLdlZFVl5gO4e
	LavzezzqETg6S6kQo7D6rna6JZGVBItmWL/AJ4eqbYEhxhgbYg1ffsXc2OD/aOuqDnyJG3PEA0WoC
	+uo/azp3OH5Ws0YDqCV9+rXpFOJxAY7LpLexIu+0oJkLq9TKknWQfH7OufvUYiwwELbXjw4U6OcTM
	1Z8jJ4x0HDmIf7YDsN8A8XOi0e+AY/Lh4az2Um4y1q1ozvu6MsMvGOMA+xUfdo08A5rvCG41zx+t6
	P+5Hfm7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE7o-0002mU-MG; Fri, 24 May 2019 17:37:00 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE6F-0000yg-Ef
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:28 +0000
Received: by mail-pl1-x642.google.com with SMTP id gn7so4417568plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lhIIAcqMYF91fEeMtO+5Bx5waRYhYv5nfW6t1irEE4g=;
 b=wYww6fnnhGNHiIplyjMggWqEHnKDZ+6g2AFzNWB7CAYKb806lbqsb66g3Q+Qj2l1CG
 lxE5Ksd6Y3XuyIUrUpdb55Kgd3V5G/aGpuK7YPCslS/ZdGzm4xYgJKSwpzOYdlTZDeSp
 k/LzzsHlxhqtfyofe6xlIefGjoStrQZWfDJAeW3BrTS6xz4H+J9bnGmfgSnqvjiIlIQP
 1ci587Bb+g/X7SOGH/zbxj0A3N8F86Bz/X/04Pt0HqFWHuIW2qCm1iRuEhks1DTZiZ5Z
 WO7+GylOXqZ/z2TnIzuyxqhOU57gRjrvXsacYHyxtOFpCT81KwmN2he9haaLsX3ighkx
 43mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lhIIAcqMYF91fEeMtO+5Bx5waRYhYv5nfW6t1irEE4g=;
 b=fxi0+MMP2gyANNyga1ZGegoyYoKAfMOV81FxcSDL6QM3y0yg25BD6N/NYWjorlPdLU
 XTUzdUQtdNyFew/R3nz9eMPy3W3fILxKM5OF2P1uS4KzTCzFCywoI4RYMBh1yb8Z/+G/
 UnqrB3WCOVDG0JiZaeiLWXW/iNjBUrdy6hXNnV36lE9zhkPMTksSTbOJ2bfxhLdlE5Gg
 F9e1HI6taAtugFL7Z0yzqrtdlYEGKeLw8vVilU1VtiuvcJ3whMJS3A5bcNPQSx55xlWQ
 EX+pw5MD0VHZQxye7Rwx7gwb39lit60PuFoQ7CkGRqTDBhujx5E9uJoat0KYe/5px/CV
 eAnA==
X-Gm-Message-State: APjAAAX1OkV5jC2w1fCnNkpBIzGko1B3Tw5b6hb2kOJuKbpUQyjiJIBa
 Gdp3w0ZjHtmNha68lQPxJfXMzA==
X-Google-Smtp-Source: APXvYqyJaO7Ehk/11VJkm7Wix7uH3ModKau5JGUwCUtFF5mM6tOmErjXDCFZY4kfx/RlT3+xst+M5g==
X-Received: by 2002:a17:902:ca:: with SMTP id a68mr83329085pla.7.1558719322941; 
 Fri, 24 May 2019 10:35:22 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:22 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 10/17] perf tools: Get rid of unused cpu in struct
 cs_etm_queue
Date: Fri, 24 May 2019 11:35:01 -0600
Message-Id: <20190524173508.29044-11-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103524_108442_52B13938 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Nowadays the synthesize code is using the packet's cpu information, making
cs_etm_queue::cpu useless.  As such simply remove it.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
