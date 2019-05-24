Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8739929D25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vh5xFrgAAaFKLTAxFyvuP+VoZ3yWJmhHEJaPktLHTYE=; b=BCxY+4rsUFsqB7OxZ0iZmZ1HUN
	OXmPW+Y6K1FbCx8ClsEjD/qvCBzlzKGETQlz8NAWbOV5uWkIQ5dbEJE+uHCjv30uCOUhV3/9/+Krt
	s8QeLODnOM4NI1d4/jH+QGioVGcWyYQe+hlHUYKfz8WW+tpd6ElYQFOz7W/qkztL4MvnG0p7EkqR9
	Wa4D1gReIYg8jACiUHa0G7I2td0g9l4okv9zHYYaEHmtwJb5ZS4vE+c9xibOyeJ4GrbIOMsn+69P+
	hh6/D5Pvze3mQNfwmeYLV6+FfwKThJLkP9jKQjtNXnbRqlnnbLkhbQxXPciswTdsWD2eSw3eCPHtG
	Rs43+vTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE75-0001p2-Vq; Fri, 24 May 2019 17:36:16 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE67-0000oT-KD
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:18 +0000
Received: by mail-pl1-x641.google.com with SMTP id a5so4427018pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bHfFo/ORpsa03SvyTpjVHtc4WYRwtr5BeZCOvFgzYZo=;
 b=hSBPmd0yHRq5YPvvnYa5Gx0AuXkJSH3B/lf9UvmmoD/BV8lpht4l4I20wq2uLPOEPs
 u7ufCc6pRQ3OIj5ikzw7wj6tCJb8XA05l+3Ag8o3CxvMzdRYsLnd4zvezjzSjKixKYF9
 tCi1s+z/0fQW6n6IyymDffRnqsMm0576GcSIFZko3qMfIcB7H2Yn1EIFnLBxojtntpDI
 up25DcEbYTZjo+CzyW8v3n6/ZyYz/e/SGmtK8MXqs7PkzM0602OyS2k2oNGTq/ntRLDa
 9thUJP0L0kIiwr1tfYWkIzSUvthKBLIhli1z9zahMaCO5znW4HJDhWd/ywN2Z6EnDT0n
 do3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bHfFo/ORpsa03SvyTpjVHtc4WYRwtr5BeZCOvFgzYZo=;
 b=H3epmvIAy6L2TrbWNKIWT5h4BQ9d31BoRGENV4SkO7Sc7kgZ3bISFtLpraf2oIcUVa
 AR+PeCbXj4u8I7a5M5Dpvpeq+f/am6iqfY9QF/aeeCJQO852cl9KmnPsK2wM0+IpYmYZ
 PnY0XSYIXiCxXJ7L9BxYu24kqDF7qJFNHD4zQ7WdMskyIi4z+qc1imR9sFvNP+MGW4wV
 huLoO8GdqEnlyNAWmevK0yCexZKti0HZYiZzhP0hOK9x7CgzJ8rAIpPrdL/p5wq/1ngS
 J1Cj2ErsyZvdOSpI+GYp5a6M9tP8I/J7B6qX3+GAOCrk4Fq0nlZLPOnkMAHiFkWYMwKe
 W0dQ==
X-Gm-Message-State: APjAAAVqNQG33XLjpEJOFB02flb27NFljyE3Rf8ZC+tcgf9ktunfsnqJ
 dxsBU5geJSh9rw5he37njPfEbA==
X-Google-Smtp-Source: APXvYqw3jFqGsxy+JmYpU6cE0TmMJET0MNIbWGdNxRz1i1yMAvwnbNIlpfoAHYWR6fWUT4Gq5Oe/rw==
X-Received: by 2002:a17:902:2e81:: with SMTP id
 r1mr91812796plb.0.1558719314882; 
 Fri, 24 May 2019 10:35:14 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:14 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 04/17] perf tools: Add handling of itrace start events
Date: Fri, 24 May 2019 11:34:55 -0600
Message-Id: <20190524173508.29044-5-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103515_765128_1461D7B7 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Add handling of ITRACE events in order to add the tid/pid of the executing
process to the perf tools machine infrastructure.  This information is
later retrieved when a contextID packet is found in the trace stream.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 tools/perf/util/cs-etm.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index de488b43f440..0742c50fce46 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1657,6 +1657,29 @@ static int cs_etm__process_timeless_queues(struct cs_etm_auxtrace *etm,
 	return 0;
 }
 
+static int cs_etm__process_itrace_start(struct cs_etm_auxtrace *etm,
+					union perf_event *event)
+{
+	struct thread *th;
+
+	if (etm->timeless_decoding)
+		return 0;
+
+	/*
+	 * Add the tid/pid to the log so that we can get a match when
+	 * we get a contextID from the decoder.
+	 */
+	th = machine__findnew_thread(etm->machine,
+				     event->itrace_start.pid,
+				     event->itrace_start.tid);
+	if (!th)
+		return -ENOMEM;
+
+	thread__put(th);
+
+	return 0;
+}
+
 static int cs_etm__process_event(struct perf_session *session,
 				 union perf_event *event,
 				 struct perf_sample *sample,
@@ -1694,6 +1717,9 @@ static int cs_etm__process_event(struct perf_session *session,
 		return cs_etm__process_timeless_queues(etm,
 						       event->fork.tid);
 
+	if (event->header.type == PERF_RECORD_ITRACE_START)
+		return cs_etm__process_itrace_start(etm, event);
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
