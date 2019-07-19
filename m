Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A216DAA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 06:03:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bs/KbfYDNXthjIDlZbOBxB9eeM8HVrGuMr2XLjhCzJU=; b=m+03UAs4Xp4/vt
	mQPF+fW4h7H1qiE0UpuhQRabuMdnjVHUe+gMQD+wTDDLlAZVSLJS25CP9a0F5ZUGBx4NiMkzpL6jI
	w8TQmgwPDi2DmGIbUWAz/ndJKJYfHMXxxci+q04N7CMENG8OeCIMrjcuFNjEj9M+r7VWhlg2pd2Wd
	7gSF64D+ZFXC3MUTWPt31SD4KkNMpWF41h/t/vwUQmYPT49k8e5snMB9t47MgHZbGoaihAy42Yj/1
	WXcOpUJnTW8MtFUIIckD5J59MerPKjslB3zhFachuKBViBjym6opJK2+RkGey8D27zJQpkGe3ogmZ
	cMfYAfNsrLyQYg5qKe4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoK7Q-0008Hv-79; Fri, 19 Jul 2019 04:03:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoK5A-0006cR-ET
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 04:01:25 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FC2F218BA;
 Fri, 19 Jul 2019 04:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563508879;
 bh=KvJVT3OxbW7ZfxoOeAj1LriJxnXXyQaXFDAw6GDtAw4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ktqjFaQaWmZaDRYTXFVLDw7CKX4EgxcJacJjbJMGO04YuGqzYig5DgYgX0nv///Kl
 zTHEPC/ioVgf3e4vCNIXuKt5vTToTfLUDEEng4vEHhDFAuHv5dxRcNBeR12Pk9rxO9
 Z8HIyVh9ci6y0pEbdi/+CrrZFwHM/oTOV7tJTbSc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 133/171] perf intel-bts: Fix potential NULL
 pointer dereference found by the smatch tool
Date: Thu, 18 Jul 2019 23:56:04 -0400
Message-Id: <20190719035643.14300-133-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719035643.14300-1-sashal@kernel.org>
References: <20190719035643.14300-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_210120_536981_40676576 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Andi Kleen <ak@linux.intel.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leo Yan <leo.yan@linaro.org>

[ Upstream commit 1d481458816d9424c8a05833ce0ebe72194a350e ]

Based on the following report from Smatch, fix the potential NULL
pointer dereference check.

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
intel_bts_process_auxtrace_info(), thus this patch removes the NULL test
for 'session->itrace_synth_opts'.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/20190708143937.7722-3-leo.yan@linaro.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/perf/util/intel-bts.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/intel-bts.c b/tools/perf/util/intel-bts.c
index e32dbffebb2f..625ad3639a7e 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
