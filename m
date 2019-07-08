Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 424C5620A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fzoUqTd/94JiElQKimJXtfMkarIyQid2GLaswgJaBV8=; b=RkHzcriQAN3q3m6zfsBATLG2c8
	TDJMiHhcUXAXJUyLp82VCOZRm3UC9piGntCWQr/Yj2VS6n0n85a0a0gH9XIfUl4VLJ2AZpWhL+lwD
	Fq7LACrp5xhsMecQWZDVfboeSl2fTnxOFvxr8NZaydnZDh+hBXs4q98XCkuahZuNMtL5B7EgP2apj
	kqs8+rhzScFwVPHE4jhTJzyl4O8r+MSIUfCgKe7RhbHCuYXrZa5xpE6ICYoR4P6G35CCSownMPWs6
	U/i75fvAkO5NWeAX7MjFKDTHwa0HKm/+H7bLwtegiqwji/gOo5FPouaRUD8uTANkXIg9QOwTeo2/D
	qeUzjKIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUp1-0007HT-Hi; Mon, 08 Jul 2019 14:40:51 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUoP-0006rf-2m
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:40:14 +0000
Received: by mail-ot1-x343.google.com with SMTP id r21so981599otq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 07:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iIj/D2uFckhktV/1D81+BNHiSe7rGxGISfmtPBSrlSM=;
 b=C+MArnBQMr2fem13xnS9J64lNmtz6x3eb264CDVGZm7lK3pxHAy8901qu3ZTI2HIS6
 7K9WLnI/UgnLLE1IK0Nh+pHlhLXmB4gPUEqugQmc+xsgLxMQ0G8jeB+9KL1O/cfTMvXt
 erNEljQYc3VzgMUZRXI+YJ1J59KILFnMJ3P2X1PNJo3Nx/w2yYFWGaccpDUTST0tS3yU
 mXnMUWw1nnC/DFX/QkIj/wO9Sc2SGyy6oYCYidmXzXXV4Z+KDev9igsREiqaE5fOpfx0
 DwfbUepPKKEmN0tnUtPOleWgPURufqT8O7xB3E3KtQGRrDjQ3fFnI4EDjpeLJ4WO90dI
 zo/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iIj/D2uFckhktV/1D81+BNHiSe7rGxGISfmtPBSrlSM=;
 b=qfhsKBQEzBwd2hCy2OEqAoksAIqShGYUkAM+0lwiRAYKO6Ktqb1688nyC2bLWyXlsb
 OOtFR0H0oqaNFCzYfUomOZDdxIyq7RPJYm7RgPEXPewcGUWBV+k4HWH+D7QwrVR67HyL
 xMdPOPPW0bk/2lhl0r6vGK0FTK6sW6mNQoKqHGP0/VBKvFrC4JF+YAe8ZYTSxSAakXN5
 yYh81LaAyTl18tcWe8sn0T53oY7h9g9j2NwmXxHfhQIZ0FXQ3UW2k5/e1maiATQAgmn6
 OHEcUyXVOvxSHp+Q0vI47o/IVbZtviIxPPWZ8sdo+1oexMQwA8ZWBC1WHq7FsIEBbFbP
 08NA==
X-Gm-Message-State: APjAAAVRpewlI4rExk9nILAdO00lAt52fowD4cF9q9HJ2h4KZaTZm4aY
 Me8OUFwNAC+GCDjHvAfHCE5XuQ==
X-Google-Smtp-Source: APXvYqyCIgpXl9aMrnWlPCMuhtjBzNRKlFd2j+pNfi8a5y8SglLuLFVH3QGHkoz8B9mgc19PYS+Iiw==
X-Received: by 2002:a05:6830:18a:: with SMTP id
 q10mr15142642ota.114.1562596812197; 
 Mon, 08 Jul 2019 07:40:12 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id x5sm6386021otb.6.2019.07.08.07.40.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 07:40:11 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Andi Kleen <ak@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/4] perf intel-bts: Smatch: Fix potential NULL pointer
 dereference
Date: Mon,  8 Jul 2019 22:39:35 +0800
Message-Id: <20190708143937.7722-3-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708143937.7722-1-leo.yan@linaro.org>
References: <20190708143937.7722-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_074013_170411_374F1A49 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Based on the following report from Smatch, fix the potential
NULL pointer dereference check.

  tools/perf/util/intel-bts.c:898
  intel_bts_process_auxtrace_info() error: we previously assumed
  'session->itrace_synth_opts' could be null (see line 894)

  tools/perf/util/intel-bts.c:899
  intel_bts_process_auxtrace_info() warn: variable dereferenced before
  check 'session->itrace_synth_opts' (see line 898)

tools/perf/util/intel-bts.c
894         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
895                 bts->synth_opts = *session->itrace_synth_opts;
896         } else {
897                 itrace_synth_opts__set_default(&bts->synth_opts,
898                                 session->itrace_synth_opts->default_no_sample);
                                    ^^^^^^^^^^^^^^^^^^^^^^^^^^
899                 if (session->itrace_synth_opts)
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^
900                         bts->synth_opts.thread_stack =
901                                 session->itrace_synth_opts->thread_stack;
902         }

'session->itrace_synth_opts' is impossible to be a NULL pointer in
intel_bts_process_auxtrace_info(), thus this patch removes the NULL
test for 'session->itrace_synth_opts'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/intel-bts.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/intel-bts.c b/tools/perf/util/intel-bts.c
index 5a21bcdb8ef7..5560e95afdda 100644
--- a/tools/perf/util/intel-bts.c
+++ b/tools/perf/util/intel-bts.c
@@ -891,13 +891,12 @@ int intel_bts_process_auxtrace_info(union perf_event *event,
 	if (dump_trace)
 		return 0;
 
-	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
+	if (session->itrace_synth_opts->set) {
 		bts->synth_opts = *session->itrace_synth_opts;
 	} else {
 		itrace_synth_opts__set_default(&bts->synth_opts,
 				session->itrace_synth_opts->default_no_sample);
-		if (session->itrace_synth_opts)
-			bts->synth_opts.thread_stack =
+		bts->synth_opts.thread_stack =
 				session->itrace_synth_opts->thread_stack;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
