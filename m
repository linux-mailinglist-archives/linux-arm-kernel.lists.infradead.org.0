Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C6D1C38B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 13:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lBRCq4qT3ZPBIcPt8smcwXs00izjRpdRU98JgufFa5Y=; b=OYcXWESwM8dFA+NXHsW5GZPRt4
	UEuV2SUCo3ucssTgL1r0eXqj+2RMaI88GDQfaHPtCPVu57Mj8mO5zuQl4p9P9bKcwFFuD3jtPLjne
	QJZWQTrw/mu+c8m3CW7U9tlzogP1lLcJ7StV7b4PzTuYmZUmF37kFjTcJr4jQgSXzdTZGn/F4dBur
	9GQ7ux3iXahxO1w4suiMUtkNTCqDMmoqtHmbm/kulBe0TkahebuxN3HXU1HM+Uh6laQcmK2eZkACo
	qdqa/lLjGibQES/KRfg1O83/rzxaXHQjOlmc03R9HCIsGJn8JVkTVM7m0Um/mpbVaKMnO8/bOzRmJ
	1vmeZlaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZiq-0003MO-N4; Mon, 04 May 2020 11:57:20 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZiT-0003Bw-Rs
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 11:56:59 +0000
Received: by mail-pg1-x542.google.com with SMTP id a4so1756555pgc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 04:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GCkhMjfnwBk0DNtUvJnARIqnihIjNoY60OBXaVN6s44=;
 b=md07E1CuUsuUSQQMN/4IJ4nZT8WijPeiNCpSFsuRpPwN4y3/HZvfMyKcJe1lSXq0SQ
 bmlt7w6z2PiQOMlZdWIj9HAXDPKK1h1aYT/joqcDRfwlLT6oDfFgeotmNBII2lRJ0GDb
 7npJtXt3OLyZS8T+eZTqWfF68z4yYTMGfmA2nsFKqK+MZ6uOPswX9AFCGtzfH68ikDT5
 kn3ML0MBh+BIxsKw67MLOVmlhAkj6qOLpQRBSrWla+TO4HGTngoq6T/ubGHt0HdBMVF9
 d6j8JmVw1QPOiAzkvbw8+jgOxEAulb4yC424vph/EQsJqRtgGu3tBrH4ABP3UQTthd85
 rqHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GCkhMjfnwBk0DNtUvJnARIqnihIjNoY60OBXaVN6s44=;
 b=mcwbWyIe0rXtokBR/jsqeByA1pmWURWtCveaGJ6bw/njjou0g473dU0gGEqJaa+Y2d
 nBi0LiHswjl1Dbr0Vf8qlhW6G21ix767UipEajf4paURU329Faixe0ACGk6dh8FmkBC+
 O/gkii9xKtsWmFc0H5XphUIJWUAoNHQ+wvIla80mY+YcUG0DEFW6NzJDUKgiNqSwFJ86
 iW4UuaghGVEqkfodrmoEHoaezZ5+6nSRw9w8qRWNmUfVYP6wzVhJjVUA0NJ4aNgtFmqV
 5D7zOa02o6RNosLsOSf+IHQbMF8sI/loeXPHd72afiuRI5ZL0l5EhEZplJutEhJNWAhV
 g8hA==
X-Gm-Message-State: AGi0PubgeElOABOBGc9uQyqhXV4AQFZNKX5gucMq7IwCAXbPZwVaTMB3
 w3dLjZevYiWnIoFkz8v27kWpGQ==
X-Google-Smtp-Source: APiQypLKu/ejHfK8I6XBtbu5HYNXbBwOtfDFEt4290Z9II+sB0mpmFr0y8OYJrwU8ylZ9X8J9/Bi9Q==
X-Received: by 2002:a63:9216:: with SMTP id o22mr15980158pgd.304.1588593416518; 
 Mon, 04 May 2020 04:56:56 -0700 (PDT)
Received: from localhost ([2400:8904::f03c:91ff:fe8a:bbe4])
 by smtp.gmail.com with ESMTPSA id n23sm6777105pjq.18.2020.05.04.04.56.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 04 May 2020 04:56:56 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 James Clark <james.clark@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Al Grant <al.grant@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH v7 2/3] perf auxtrace: Add four itrace options
Date: Mon,  4 May 2020 19:56:24 +0800
Message-Id: <20200504115625.12589-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200504115625.12589-1-leo.yan@linaro.org>
References: <20200504115625.12589-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_045657_925019_C48C234C 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2400:8904:0:0:f03c:91ff:fe8a:bbe4 listed in] [zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index 850113ab3e19..9d614071a267 100644
--- a/tools/perf/util/auxtrace.c
+++ b/tools/perf/util/auxtrace.c
@@ -1330,6 +1330,11 @@ void itrace_synth_opts__set_default(struct itrace_synth_opts *synth_opts,
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
@@ -1490,6 +1495,18 @@ int itrace_parse_synth_opts(const struct option *opt, const char *str,
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
