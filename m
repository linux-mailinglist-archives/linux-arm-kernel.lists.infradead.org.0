Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4773D63A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 21:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNpgbIyOx8/4s6HakxCDcq2VbJuZ2PhIM4a4EbuP+hc=; b=bfaD0UqMXrNVjV
	hrYhWiLUaR8Vtwrs1GM8pBSEUjLr1K7QUBMkTr/xnsEitgg7d88f8zBQNd3anNM5uHutrftxQnWFI
	w3p2WoFv6/qRsNLZ+7vLcx2IjTo0of6T1D9F8QaDO5bnB8VN3xD/BmxRodUFVTaHBYyTWGjfAyWyL
	l8qyPENmZ/mjmgJxqn/GMSvXh9hodVG35VnDj9fiM1elTh+k0K36sjf6ACcMeLKuRYIeUliunYxFm
	xAoTOXW0XHTjhDRONHM2M1tiqBL8u94PpONBtu+zt+uhnf4w1uwrnV0KL9eQGm2gGxFcq13E0Djf4
	aIGOj7QRls4g5kwMW/FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ham3f-0005jC-Ia; Tue, 11 Jun 2019 19:03:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ham2M-0004op-Qa
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 19:02:28 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B81FB2184C;
 Tue, 11 Jun 2019 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560279746;
 bh=K0DpfopyNYA6J2Lj0bP5xdn0OdW8Rb4/ZLP0V22+cvE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wZNjl5ljl0FvmEz49GGKy5uN2g7cuzDB6cKXM28VVkT0q1WciI4Ju/MdQt7sxWgQz
 2z33IsZN/lO0eAbfw3M1GhWJ45tqaPaZJwY6e03QHn9+l3GSu0WI1Qjj2VEh3pycHd
 nrU76SdaJbsMoLIkwq64hLe2AvtzMRliGAmp+QnA=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 41/85] perf cs-etm: Add handling of switch-CPU-wide events
Date: Tue, 11 Jun 2019 15:58:27 -0300
Message-Id: <20190611185911.11645-42-acme@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611185911.11645-1-acme@kernel.org>
References: <20190611185911.11645-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_120226_949817_3A39B596 
X-CRM114-Status: GOOD (  12.34  )
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

Add handling of SWITCH-CPU-WIDE events in order to add the tid/pid of
the incoming process to the perf tools machine infrastructure.  This
information is later retrieved when a contextID packet is found in the
trace stream.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Tested-by: Leo Yan <leo.yan@linaro.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: coresight@lists.linaro.org
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190524173508.29044-6-mathieu.poirier@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/cs-etm.c | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 0742c50fce46..5322dcaaf654 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -1680,6 +1680,42 @@ static int cs_etm__process_itrace_start(struct cs_etm_auxtrace *etm,
 	return 0;
 }
 
+static int cs_etm__process_switch_cpu_wide(struct cs_etm_auxtrace *etm,
+					   union perf_event *event)
+{
+	struct thread *th;
+	bool out = event->header.misc & PERF_RECORD_MISC_SWITCH_OUT;
+
+	/*
+	 * Context switch in per-thread mode are irrelevant since perf
+	 * will start/stop tracing as the process is scheduled.
+	 */
+	if (etm->timeless_decoding)
+		return 0;
+
+	/*
+	 * SWITCH_IN events carry the next process to be switched out while
+	 * SWITCH_OUT events carry the process to be switched in.  As such
+	 * we don't care about IN events.
+	 */
+	if (!out)
+		return 0;
+
+	/*
+	 * Add the tid/pid to the log so that we can get a match when
+	 * we get a contextID from the decoder.
+	 */
+	th = machine__findnew_thread(etm->machine,
+				     event->context_switch.next_prev_pid,
+				     event->context_switch.next_prev_tid);
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
@@ -1719,6 +1755,8 @@ static int cs_etm__process_event(struct perf_session *session,
 
 	if (event->header.type == PERF_RECORD_ITRACE_START)
 		return cs_etm__process_itrace_start(etm, event);
+	else if (event->header.type == PERF_RECORD_SWITCH_CPU_WIDE)
+		return cs_etm__process_switch_cpu_wide(etm, event);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
