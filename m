Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B281C571D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=30OSdP5a1k0FesylwtzdjJoXluHp7YQrtcojv1YYegE=; b=JsP
	9Dw6KI9JCqQbRYgDU4ErbS7pmKnyXdgtxHrxuVO0yGPz/9t5eeamVKLhUOuwzPDcJdnBDmf/UIwOB
	TbOdE8qIBMcy0NS4rb48SCb9WvJr53epkuJJLyT1/5AXxLeGxpMva6IyEfpgpNdpNqc5yvaKC1ucE
	w34a7wGyhCLjAzDO//agPnuToa+FgCSr62/HFdRlvoKRROVTIa6xsNYc+wQzJw7pz3WgW/giI1iEw
	/5Yyb26xtvpatPg7gIsxcqYVvpB9o75cvWKDZNRkfCw/Wce8pv6nbTDy7Hvm3tys67PAI6gfL3Fe+
	KIISvyzCmOagCWzcwS4I4Ood3JZsyOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxl6-0008Iz-JP; Tue, 05 May 2020 13:37:16 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxky-0008I1-8f
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:37:09 +0000
Received: by mail-pl1-x641.google.com with SMTP id t16so827044plo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 06:37:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=6DxkBtXBsRjhDSSt5bpda9bBdLdSPYMqKL2JOYrqLyA=;
 b=FmIiMP1UrVnSztbbKw3HZJ10u19Ocye85lgZ/wBOpNCZsYUgKIQ5IWz+LRho31l73D
 jHOBgcVl9Nc87EibSBZOJFrq3n1E/QHgRkDvqVnRWG7OOOkvMb3MCPpVEHyphy4Iorzz
 6tSO4qSudgq2nOR1/RWngDiZ6tyHbq1uqf3T4qZK/W7uH+/mvfmFkX7ul4qro4vjefFa
 vzao3OIUv0QV5W3Ine1fo2PCRLO3nC2pUtx3SSxV4gsSf4OGq6ReWTBPoojl2sbEhNL5
 ovfiDalwxNI3iw1OQSkN2vaSk7tQpNx24HnWwqvVs8kMHG8RXdIB006F1ULBjam+gTZq
 gHhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6DxkBtXBsRjhDSSt5bpda9bBdLdSPYMqKL2JOYrqLyA=;
 b=S39GlOivdC0bgzYfe6P/EmeaRGyNG778WN8c4E9HpJhdkXdVC2y0iAt7RCphOMxzbN
 HP9+EruOMIwo8KNorSOp4CnbE1utjSFDsaKQ6luE3OSZXbeTgND8uDDJjvkeqyuR70Te
 atIj8TVs4gWDPypgCWDMxOUEdES0hgfwDXPFsRl4OyukzalYc3O8HfJa31dt0/Uf9/yS
 +/IjOZ7bhAbj6aPF2ndYMBN67Qd49jwA/dhZfIv/yTfg88oBy+j90wjE6WY3DVBvqSec
 KwXqFqQcSVjTocZeENoj+y94A0lFAFoBlgtm77/u/0+PCulHwdcvE+U8Y9F+Jmny1AyN
 lEMQ==
X-Gm-Message-State: AGi0PuYp7l5luiCdwjQA/eLMITB9xfH1s10Er52CiQCSafX/u0U95dKi
 vNfrgpwD3avBQNZNghs0WlHJlyY/W0U=
X-Google-Smtp-Source: APiQypKk5N1JogeWsMMibegsVTghCE8uN86ssgVDs3UVsbQlfg5lphbt3V+rSFAO2pEmg+JafdyVfg==
X-Received: by 2002:a17:902:fe06:: with SMTP id
 g6mr3272478plj.105.1588685826838; 
 Tue, 05 May 2020 06:37:06 -0700 (PDT)
Received: from localhost ([2400:8904::f03c:91ff:fe8a:bbe4])
 by smtp.gmail.com with ESMTPSA id j5sm1561737pgi.5.2020.05.05.06.37.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 05 May 2020 06:37:06 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Tor Jeremiassen <tor@ti.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] perf cs-etm: Move defined of traceid_list
Date: Tue,  5 May 2020 21:36:42 +0800
Message-Id: <20200505133642.4756-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_063708_310501_C1C4234F 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2400:8904:0:0:f03c:91ff:fe8a:bbe4 listed in] [zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The variable 'traceid_list' is defined in the header file cs-etm.h,
if multiple C files include cs-etm.h the compiler might complaint for
multiple definition of 'traceid_list'.

To fix multiple definition error, move the definition of 'traceid_list'
into cs-etm.c.

Fixes: cd8bfd8c973e ("perf tools: Add processing of coresight metadata")
Reported-by: Thomas Backlund <tmb@mageia.org>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Mike Leach <mike.leach@linaro.org>
Tested-by: Mike Leach <mike.leach@linaro.org>
Tested-by: Thomas Backlund <tmb@mageia.org>
---
 tools/perf/util/cs-etm.c | 3 +++
 tools/perf/util/cs-etm.h | 3 ---
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
index 62d2f9b9ce1b..381d9708e9bd 100644
--- a/tools/perf/util/cs-etm.c
+++ b/tools/perf/util/cs-etm.c
@@ -94,6 +94,9 @@ struct cs_etm_queue {
 	struct cs_etm_traceid_queue **traceid_queues;
 };
 
+/* RB tree for quick conversion between traceID and metadata pointers */
+static struct intlist *traceid_list;
+
 static int cs_etm__update_queues(struct cs_etm_auxtrace *etm);
 static int cs_etm__process_queues(struct cs_etm_auxtrace *etm);
 static int cs_etm__process_timeless_queues(struct cs_etm_auxtrace *etm,
diff --git a/tools/perf/util/cs-etm.h b/tools/perf/util/cs-etm.h
index 650ecc2a6349..4ad925d6d799 100644
--- a/tools/perf/util/cs-etm.h
+++ b/tools/perf/util/cs-etm.h
@@ -114,9 +114,6 @@ enum cs_etm_isa {
 	CS_ETM_ISA_T32,
 };
 
-/* RB tree for quick conversion between traceID and metadata pointers */
-struct intlist *traceid_list;
-
 struct cs_etm_queue;
 
 struct cs_etm_packet {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
