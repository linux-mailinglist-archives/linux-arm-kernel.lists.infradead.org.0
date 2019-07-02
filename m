Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106C35CDB3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=psVpgLVm8cBf2a0BcVsv8qjbi1iopF3hFK7bAlRNjX0=; b=FM+qGlGRdjMfMy7kikCBTEh31+
	DE8C8MsnZs6va0LOsdQgpbm89KHSFGNLaLFn6ZjAIasYVZxUNimbSrb3QOLsEHtl9DITFk2ssIAyC
	m5aH6IixcO4bKw/3damoYaQjktigWIlXcD6e+J9Kts1qDG1gbsifm4s5FP5GXlP/vF2DkCWGtzL0o
	8peL6+6Oxe+RsRNgMXoGrvoLTwpp8tM5Rcr4Wab1vc+/lYTnBvxnKAVbqZIbc0rMEd3ANCEEjlyDd
	9MblUhaGEqJMEPmvoEVC6Fitp5Lzh1W8CBXPLxwZ/8O3U1pD349nL67uM7oGOeESsj6fh4ZW2+T4e
	wwRbIgeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGAL-0005Er-EY; Tue, 02 Jul 2019 10:37:37 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiG8U-0003xF-Tq
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:35:44 +0000
Received: by mail-oi1-x242.google.com with SMTP id m206so12614718oib.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 03:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=V5qTJJXMX1ZTj5uDhYEBO+OiJyquQwYXAx7tq46WL+E=;
 b=kl6cvJ0zlfJ4KIzgl8/M2GfhjusvmgoE9v0c+xjgfAU4sjiJCtTNEv2yzhWtVB8AI+
 gVbM8Qqsd7hSC9h0YewLPNreo18mQdKFVsH7a/QDGIyl2Bx1MoYHbh/qxkHoMHpiHQQZ
 vGOf5QD+aLwBNctZy/pFQEZGJbP+OIpBoWjVd7U6ksXP+Kq7VHvzUoFQcrbYXG+R4IXC
 T2VkFAs1O1gftEP2gLOO9Rw0MVuxO3GxyeHuurTVufDtKMAqN1fYRoKPEeS15cpCs1uV
 ZLkVdcbR1CFwm0XLj32S+RmS5gWwfsNv0VOqqgjvUahAMaBkQgFnEolKo5Cz/8uEdTmr
 yehA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=V5qTJJXMX1ZTj5uDhYEBO+OiJyquQwYXAx7tq46WL+E=;
 b=ke7gPfxTJnM67xpRJwhwqBJXDQhs7www5q0vaC0AEbNFQ+GN5NuJPLag47k6sYA/tM
 AzBhO1rdsC6+rHhpHQ4BBTFdZsEHuVavHVHcWH23eChisJaQ2aNQw6prVfqq3c34cz6u
 GG+kVNBFRN2P5uBydnKzvEzP3D1a0oJqbYCjNBRwn19bSef8bkUpB1X8pZr9/xRGwZU4
 QAXEVx1ly18tuRY9Bnhv0zMSD11saoSemux4CXmPV7znmgI4gwSH5ExM66vUZO6nyhhJ
 3frekrGL24I3imOV6QgUvp5ZDh0qF01eJtKgFCxrW+VZJZm6hPf3Du2HiaURwkehFc6X
 G+Qg==
X-Gm-Message-State: APjAAAXjw+GN60aP9NCVLiYP7I85og0OPflOI1E3CBTl9+3weS1tRw9D
 44Nt82bSUvWpFGc69SDHg0U+Dg==
X-Google-Smtp-Source: APXvYqz59VS9CDs0uFQjkuuAuV2DBtWVLiGfaY9BCu/0Bna+d2JpT5qQdBt2XFFh/CRMcG2+5UHiYg==
X-Received: by 2002:aca:c5d0:: with SMTP id v199mr2313436oif.144.1562063742299; 
 Tue, 02 Jul 2019 03:35:42 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id 61sm5139805otx.8.2019.07.02.03.35.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 03:35:41 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Andi Kleen <ak@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Davidlohr Bueso <dave@stgolabs.net>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jin Yao <yao.jin@linux.intel.com>, Song Liu <songliubraving@fb.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Changbin Du <changbin.du@intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v1 07/11] perf map: Smatch: Fix potential NULL pointer
 dereference
Date: Tue,  2 Jul 2019 18:34:16 +0800
Message-Id: <20190702103420.27540-8-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702103420.27540-1-leo.yan@linaro.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_033543_185595_B40135AB 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

  tools/perf/util/map.c:479
  map__fprintf_srccode() error: we previously assumed 'state' could be
  null (see line 466)

tools/perf/util/map.c
465         /* Avoid redundant printing */
466         if (state &&
467             state->srcfile &&
468             !strcmp(state->srcfile, srcfile) &&
469             state->line == line) {
470                 free(srcfile);
471                 return 0;
472         }
473
474         srccode = find_sourceline(srcfile, line, &len);
475         if (!srccode)
476                 goto out_free_line;
477
478         ret = fprintf(fp, "|%-8d %.*s", line, len, srccode);
479         state->srcfile = srcfile;
            ^^^^^^^
480         state->line = line;
            ^^^^^^^

This patch validates 'state' pointer before access its elements.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/map.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/tools/perf/util/map.c b/tools/perf/util/map.c
index 6fce983c6115..5f87975d2562 100644
--- a/tools/perf/util/map.c
+++ b/tools/perf/util/map.c
@@ -476,8 +476,11 @@ int map__fprintf_srccode(struct map *map, u64 addr,
 		goto out_free_line;
 
 	ret = fprintf(fp, "|%-8d %.*s", line, len, srccode);
-	state->srcfile = srcfile;
-	state->line = line;
+
+	if (state) {
+		state->srcfile = srcfile;
+		state->line = line;
+	}
 	return ret;
 
 out_free_line:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
