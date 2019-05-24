Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A2129D29
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G6OTU2K0j3et6vLlhNKuqya6Gr8lE2viOMbdn7t98nQ=; b=Zl12ln8i+FKuWtWaaR/5FNjLVb
	eqHRqc5z11Rcmn6L87hQ5yogq4oEWJ9uHM9jJgYkS2qxltgfzfqaSNMYCCcKwNrsfcvBUpdeoq1B8
	EU0d/P2qMDVugbp+5uCUce8jTRHjNnGjeuTN7FzFcELMC9TCOWhXHWWN2l8lQcobyZ6dtb3yJjveb
	UFSMWyOka5XtPeGRoy0XvTPZ/7brewE6YzpvEPTRnL6BfmwJhMbsj4jHLQa4p/CW8VX0Xdm8rUoKZ
	zSCnHO59WADx3oukVV1JSJPm2ygUHdiLRonKLO5NEKtrhXo+JJqBXy6ADPSaTtOY7tHQtfiGjZ1lL
	anpFawmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE7I-00024U-6D; Fri, 24 May 2019 17:36:28 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE68-0000pP-LN
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:20 +0000
Received: by mail-pg1-x541.google.com with SMTP id h17so5434733pgv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jTlQzYqrjzzW1MYnyuDkipJisTZbubvkU14bVoe0t14=;
 b=MC93AIIpGvqvxr8KRwqE/rWvPO816+lg1ETrCvK8D6sHxJvYJ7kjPT01pyAH/9YLHW
 rKBhBxiBcCRxSMwlhyztMxeq546Q44yGeKEORvrc/Z1TcGFvOlAwvRLLfqhNc8bSnfrM
 IBDJWi+NIUGrO2UtFv9kqJiTeF32OiaBBsmmFhiUjd5PkXdHYmEjRE6G+RJ8mjJQLnCP
 142m+uRG7sJQcCztbeuvD4QrM7baoBZOVVq7YYf88ndLv1TsuRyouvxttcIK8BWn6Vtj
 Vtsea2KMHWfQPN7Hzv+8Y0oC1WGILNqZcTcekCR6Bo1vJ3hC1zi5d5X5XL1O4rQN2ywf
 OPzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jTlQzYqrjzzW1MYnyuDkipJisTZbubvkU14bVoe0t14=;
 b=DUcLlwcyv8W7MkZ1j75J7byhIh8E3EAGlnn30Tr1WUFTrh4gzxWLmiQSYRi8l+GIRd
 6GfVV6ci4HukIQ4GktjwedSQrLR2OPARc2mPoxzjLKdimTDCsAPmPZSA9Hor7WHA94hY
 U0XFNdSQQrhIpkdkwwSgbPjsn20qgeTnGH66Mfaj/JGogpNXeMzf65RDevbW8xNYwcY8
 YfaP7yK2UGxwBTsjm3xaD2EPYPL2t3SoYqHBgSAfSBj1Q0au8/TdieI0RxH7+53VdCix
 EbMR1q1AHEQh9NVQnnZeD5FBcW6ubY/1YdCDizUP5coyep4Pjza1nIIrbMNFB1aFvCtx
 P/aQ==
X-Gm-Message-State: APjAAAX/Mqhk6gYwhPBdVbmE5o7Y7RhToYQ+rqKhRGfu1PAMK6uBXjqK
 tdocHsKldlt4xPzk0VZ6ExM8HQ==
X-Google-Smtp-Source: APXvYqzaqJ7TrV3X6jpeNwx5Rrn55gZe2XCC7/rB2jq8eJJMyNiIIb9qunK7UjUXrP/aeNGx+CLx3w==
X-Received: by 2002:a65:494a:: with SMTP id q10mr12264479pgs.201.1558719316187; 
 Fri, 24 May 2019 10:35:16 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:15 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 05/17] perf tools: Add handling of switch-CPU-wide events
Date: Fri, 24 May 2019 11:34:56 -0600
Message-Id: <20190524173508.29044-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103516_949137_B1E85E66 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Add handling of SWITCH-CPU-WIDE events in order to add the tid/pid of the
incoming process to the perf tools machine infrastructure.  This
information is later retrieved when a contextID packet is found in the
trace stream.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
