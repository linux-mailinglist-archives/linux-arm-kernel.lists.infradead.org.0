Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1EC620AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GMI1JU5cGTDWWXOSDphFLv4v6NW6XA4KkdQFD0WDR/E=; b=Acf6btHMu/BTIqWaM8p6CIcTMA
	EF51KFxNfC/vos6rEp9wcHCBzRXKGfGo4OIRmGMpTLcTZSjnCtzArFAUcV7LW+LAjVLgkj+QbwOA8
	I1MD5cPvidFxxIkhU29gnMfvx4VpkeNvOnMudfs2Mv4ImA0RaTDAFmr8Q6dOGXTFBnNgekKmSPz9e
	tfHK2aBDA3gPmkINKKpJID06snIcRuH6JApKcFujoEXGXdVpJ1XoJ3MmETYZ3sVCNrnV2bnUO+7n5
	aJpalxpUgY/2lG5UzIVvwTr8PrdyMVKzYzK4Fgt48XeukMTTuPM1dFbKiWjcJNghx8qfc5OhovC7k
	tJ9L9Vkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUpZ-0007oN-FP; Mon, 08 Jul 2019 14:41:25 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUof-00079c-9Z
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:40:30 +0000
Received: by mail-ot1-x341.google.com with SMTP id x21so16383181otq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jul 2019 07:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CCSoHq1Uo4IBnCwfeuA+GvIGXoY8z0TTGOk4Tw+sVOA=;
 b=rMnUN1r+KicSBHv/XyAGYU6dbXI3N+TcAG/o+Ydxv13ZCBB0c/O2uu9G4vqrLCytct
 AEKFHYY+SHopfy3uStEBvIMEspHQMmadm9wEmnta9CgMRDdfOnpwGL+PB2/POmpXHUru
 /MlsSUF/JzCed/TIDJCNcEyJODeNFhMRwfZWmGaKDJfrVJgMDTYz0U8MLjvjQGJDDUsK
 kaqgF3izPU2FROV8J+mfY6t97vifqIqb/sJvvFV9+XMLcxYIMSnX9vQhtJdxdxWjDUXJ
 NPnoBwSTkxC7AmqTwW6gwUncSzbtlw0O7Aaaj9ZmAZA8Uczsbth2wNfWlo5oh6QrJWYq
 iW9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CCSoHq1Uo4IBnCwfeuA+GvIGXoY8z0TTGOk4Tw+sVOA=;
 b=BayGZLYo9t67FAU+6jVNK9XqTD5RgxfmH2ltc/4ikNjdbpHV9UbIqr+WopYkfwroiv
 DQZ3pZIWpv/djLqZ+IeE7GxCPtG/cGhoYvoOvZXIt2BX3zRSPLy/wXUQWI58YxRAw6LF
 5vOBH57ryA4Nv+2xtrSBr+69TSNBi4k4Z1WXRvQHdraJr3zsugrfIjWODzsONKzQmjPU
 w7636Bx7MNZ0iCOoQVQBn3Lg/CK5z4Br7+iRrauLC1dlNm6pHRTmFqXGK2HMkgc2PIPq
 0AkvfoYQD2ED7Y0KNNiQlHkEQd7UXWzCtAcJ7sXLD138fdHBiS9ea+WLOzpQy5MMeyot
 ts7A==
X-Gm-Message-State: APjAAAWUVmCfcxKHlHN/LtJKUSz8yqhpGHAX83K0dAqiZxcZSy4b382R
 5RuDq68kKCYP5H7hu5rL0YoT0Q==
X-Google-Smtp-Source: APXvYqy5KuHIa3DLT0x0ETCwurZ9OZctjHOGlUf9bAzAIBS0BmrvEY0SlDNj99jk2L87sMy7YLCtsA==
X-Received: by 2002:a9d:4b88:: with SMTP id k8mr9349423otf.285.1562596827664; 
 Mon, 08 Jul 2019 07:40:27 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id x5sm6386021otb.6.2019.07.08.07.40.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 07:40:26 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Adrian Hunter <adrian.hunter@intel.com>, Andi Kleen <ak@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/4] perf cs-etm: Smatch: Fix potential NULL pointer
 dereference
Date: Mon,  8 Jul 2019 22:39:37 +0800
Message-Id: <20190708143937.7722-5-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708143937.7722-1-leo.yan@linaro.org>
References: <20190708143937.7722-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_074029_434123_0B1E4408 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
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

  tools/perf/util/cs-etm.c:2545
  cs_etm__process_auxtrace_info() error: we previously assumed
  'session->itrace_synth_opts' could be null (see line 2541)

tools/perf/util/cs-etm.c
2541         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
2542                 etm->synth_opts = *session->itrace_synth_opts;
2543         } else {
2544                 itrace_synth_opts__set_default(&etm->synth_opts,
2545                                 session->itrace_synth_opts->default_no_sample);
                                     ^^^^^^^^^^^^^^^^^^^^^^^^^^
2546                 etm->synth_opts.callchain = false;
2547         }

'session->itrace_synth_opts' is impossible to be a NULL pointer in
cs_etm__process_auxtrace_info(), thus this patch removes the NULL
test for 'session->itrace_synth_opts'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/cs-etm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index ad43a6e31827..ab578a06a790 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -2537,7 +2537,7 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
 		return 0;
 	}
 
-	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
+	if (session->itrace_synth_opts->set) {
 		etm->synth_opts = *session->itrace_synth_opts;
 	} else {
 		itrace_synth_opts__set_default(&etm->synth_opts,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
