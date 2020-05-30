Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 641071E9127
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 14:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cHbuXYOdkk20QjfVbt5LMVqBIcWKJ1N30xVat6Z8eH4=; b=XkECpHWF905rqlX5VXq+uzfv/y
	tkNH/TYPxkOqWucHEI7L215K+aQVHcyG+5VnpFl579Wvypa7+LfhjOcs70c8PLPmsHQtHTLbuOzgC
	oSflsJZTQiqDxlenZxLTLPfcpalZ78gDZh8iBAu1S3+DeFRIIcmactOF6kIQmH5hEp4kfkwzBz12D
	qQcEVMur0tB6WE92w3cT+Qg4APyoexVwmPvX4H/zxdfrKnRgYKfQha+61pc4+6HCNAddaRMuMcS2a
	Ql535N6N+E92qEmQ93FyiFdyJUKSfHb5m8BleumUIX3UHuGLqaxYA0B/ZL1/4qLXt4GQaYX5kyF6r
	sd+0DPfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf0Yf-0002Wl-HL; Sat, 30 May 2020 12:25:49 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf0Y3-000168-8G
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 12:25:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id o6so1253982pgh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 May 2020 05:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2YAFqNJjM105ApHhyQ1ANOO4+Lj2OnO6M0CgdOM00k4=;
 b=lPVjazEL/C1Cd2lvIvspSqQM++WeYGU1wkOposcZvqLiQDPoquXcXnp5n2nsRTPxpG
 sRvt83txZA86zsCCygRLpPayPNhq8iE11fP6gZPNdpf8ecnR8XYcLHca8Nsc7W2TqTrD
 JPTYK2EwnW6g47QxBZ5MKcIT/035l5ZyGnU3l0E6Y9ROQLJ6AuhT6gcQ0/6994PVOh0r
 +3en0bhqUNn0IruXrXO9BptRHrvszxX4RO85fKxPARZbzoFeDcpub7YARSd8aObJncpD
 RBU0ljvX35RmiRVovz0u1PsFAHt4WJf4gYyNHbFOv9cKxQ43LCesosFUQdAnWdJuh9ND
 IWhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2YAFqNJjM105ApHhyQ1ANOO4+Lj2OnO6M0CgdOM00k4=;
 b=m1oaFHuJWieGucknnSdwO/p3AjNChFWrMOBQ4pAbacq39EVELpfFRnI00e8Q9QAnJh
 geOmVZzn+AqUoZwSHSCOT9dZCR74k/lqsLw3coPfK5iAD4uXZSLo13H22EgXbDa2kKUi
 zRvk9BrCJXOkq/hXkE7ENngf7uNjefUU8FDKkNttcKmwES+RU8x9E8O2TxToDClMjTG1
 ANXicThu2sV+ZclxrQ3Nu8arvEhBvpEK1jhXOrCNo7oNycmwlod1nB+koDn9Eb+hSA0b
 KJKVZAWD9EozKOLn8WLpjVmIE259pDOdIPCXlOU1ZjFkv3P5Vmji2wZAkD0xm/p6Wit9
 C0og==
X-Gm-Message-State: AOAM5307Vn1jeqE5HjHq+7aATDoDCRTDUvXnaA6Dx6pUQxUnzV9RKCx/
 D+X/2e6ACXBElJRS3mfqr4aDDA==
X-Google-Smtp-Source: ABdhPJzLsOODlGIDSzfmFqLDTQ+HvzalQIwF5Ia4d1Vs22DqNV6mIqALU+edPyhhEBFnReEJp3MaGw==
X-Received: by 2002:a62:a504:: with SMTP id v4mr12479227pfm.117.1590841509772; 
 Sat, 30 May 2020 05:25:09 -0700 (PDT)
Received: from localhost ([2400:8904::f03c:91ff:fe8a:bbe4])
 by smtp.gmail.com with ESMTPSA id w73sm10134096pfd.113.2020.05.30.05.25.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 30 May 2020 05:25:09 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Will Deacon <will@kernel.org>, James Clark <james.clark@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Andi Kleen <ak@linux.intel.com>,
 Jin Yao <yao.jin@linux.intel.com>, Ian Rogers <irogers@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH v8 2/3] perf auxtrace: Add four itrace options
Date: Sat, 30 May 2020 20:24:41 +0800
Message-Id: <20200530122442.490-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200530122442.490-1-leo.yan@linaro.org>
References: <20200530122442.490-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_052511_899734_A14350DE 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tan Xiaojun <tanxiaojun@huawei.com>, Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tan Xiaojun <tanxiaojun@huawei.com>

This patch is to add four options to synthesize events which are
described as below:

 'f': synthesize first level cache events
 'm': synthesize last level cache events
 't': synthesize TLB events
 'a': synthesize remote access events

This four options will be used by ARM SPE as their first consumer.

Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
Signed-off-by: James Clark <james.clark@arm.com>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
Tested-by: James Clark <james.clark@arm.com>
---
 tools/perf/Documentation/itrace.txt |  6 +++++-
 tools/perf/util/auxtrace.c          | 17 +++++++++++++++++
 tools/perf/util/auxtrace.h          | 15 ++++++++++++++-
 3 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/tools/perf/Documentation/itrace.txt b/tools/perf/Documentation/itrace.txt
index 271484754fee..e817179c5027 100644
--- a/tools/perf/Documentation/itrace.txt
+++ b/tools/perf/Documentation/itrace.txt
@@ -1,5 +1,5 @@
 		i	synthesize instructions events
-		b	synthesize branches events
+		b	synthesize branches events (branch misses for Arm SPE)
 		c	synthesize branches events (calls only)
 		r	synthesize branches events (returns only)
 		x	synthesize transactions events
@@ -9,6 +9,10 @@
 			of aux-output (refer to perf record)
 		e	synthesize error events
 		d	create a debug log
+		f	synthesize first level cache events
+		m	synthesize last level cache events
+		t	synthesize TLB events
+		a	synthesize remote access events
 		g	synthesize a call chain (use with i or x)
 		G	synthesize a call chain on existing event records
 		l	synthesize last branch entries (use with i or x)
diff --git a/tools/perf/util/auxtrace.c b/tools/perf/util/auxtrace.c
index 8cf7d405ee67..fe76a056a179 100644
--- a/tools/perf/util/auxtrace.c
+++ b/tools/perf/util/auxtrace.c
@@ -1331,6 +1331,11 @@ void itrace_synth_opts__set_default(struct itrace_synth_opts *synth_opts,
 	synth_opts->pwr_events = true;
 	synth_opts->other_events = true;
 	synth_opts->errors = true;
+	synth_opts->flc = true;
+	synth_opts->llc = true;
+	synth_opts->tlb = true;
+	synth_opts->remote_access = true;
+
 	if (no_sample) {
 		synth_opts->period_type = PERF_ITRACE_PERIOD_INSTRUCTIONS;
 		synth_opts->period = 1;
@@ -1491,6 +1496,18 @@ int itrace_parse_synth_opts(const struct option *opt, const char *str,
 				goto out_err;
 			p = endptr;
 			break;
+		case 'f':
+			synth_opts->flc = true;
+			break;
+		case 'm':
+			synth_opts->llc = true;
+			break;
+		case 't':
+			synth_opts->tlb = true;
+			break;
+		case 'a':
+			synth_opts->remote_access = true;
+			break;
 		case ' ':
 		case ',':
 			break;
diff --git a/tools/perf/util/auxtrace.h b/tools/perf/util/auxtrace.h
index 0220a2e86c16..142ccf7d34df 100644
--- a/tools/perf/util/auxtrace.h
+++ b/tools/perf/util/auxtrace.h
@@ -63,6 +63,7 @@ enum itrace_period_type {
  *          because 'perf inject' will write it out
  * @instructions: whether to synthesize 'instructions' events
  * @branches: whether to synthesize 'branches' events
+ *            (branch misses only for Arm SPE)
  * @transactions: whether to synthesize events for transactions
  * @ptwrites: whether to synthesize events for ptwrites
  * @pwr_events: whether to synthesize power events
@@ -78,6 +79,10 @@ enum itrace_period_type {
  * @thread_stack: feed branches to the thread_stack
  * @last_branch: add branch context to 'instruction' events
  * @add_last_branch: add branch context to existing event records
+ * @flc: whether to synthesize first level cache events
+ * @llc: whether to synthesize last level cache events
+ * @tlb: whether to synthesize TLB events
+ * @remote_access: whether to synthesize remote access events
  * @callchain_sz: maximum callchain size
  * @last_branch_sz: branch context size
  * @period: 'instructions' events period
@@ -107,6 +112,10 @@ struct itrace_synth_opts {
 	bool			thread_stack;
 	bool			last_branch;
 	bool			add_last_branch;
+	bool			flc;
+	bool			llc;
+	bool			tlb;
+	bool			remote_access;
 	unsigned int		callchain_sz;
 	unsigned int		last_branch_sz;
 	unsigned long long	period;
@@ -596,7 +605,7 @@ bool auxtrace__evsel_is_auxtrace(struct perf_session *session,
 
 #define ITRACE_HELP \
 "				i:	    		synthesize instructions events\n"		\
-"				b:	    		synthesize branches events\n"		\
+"				b:	    		synthesize branches events (branch misses for Arm SPE)\n" \
 "				c:	    		synthesize branches events (calls only)\n"	\
 "				r:	    		synthesize branches events (returns only)\n" \
 "				x:	    		synthesize transactions events\n"		\
@@ -604,6 +613,10 @@ bool auxtrace__evsel_is_auxtrace(struct perf_session *session,
 "				p:	    		synthesize power events\n"			\
 "				e:	    		synthesize error events\n"			\
 "				d:	    		create a debug log\n"			\
+"				f:	    		synthesize first level cache events\n" \
+"				m:	    		synthesize last level cache events\n" \
+"				t:	    		synthesize TLB events\n" \
+"				a:	    		synthesize remote access events\n" \
 "				g[len]:     		synthesize a call chain (use with i or x)\n" \
 "				l[len]:     		synthesize last branch entries (use with i or x)\n" \
 "				sNUMBER:    		skip initial number of events\n"		\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
