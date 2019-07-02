Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2BB5CDAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rxBUA5rYrfcykkM2Ak0ylqbLvJt00UZJr+yHKhgFz0s=; b=m6nfNrGwTDTrOCNSR1bdafUDjO
	KdZCEjBSOAa7/N7LIjvPs9ijHdCsoSsTJq4qyXJxaim9ZNwxnmMzRo+0sPSYQ8lsC06gO6PTFod0N
	1i+6SSRwmpgBJF79mJqlUaQdov+LT7mcgxvTuk7e6l3ByjtYXqnsT7fzVPKPeEkHVE93EI+4K8qw+
	1Ow6wNhW0H248l7imJ/MDaFkkN3CWfAP1Ww54Xku4Yo8wZnrw4zkYR0jKl+ecDvTVnRIhDBe2hQ2H
	3c/MQhF+fggvXh9DYDZhsxSPVWP9WEapToQYuR/OxiUcg6hgJ/DHJqE9T0dk11KJHc6gGVuvppKiI
	q+KZz6JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiG9K-0004Q1-F0; Tue, 02 Jul 2019 10:36:34 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiG87-0003dy-0q
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 10:35:20 +0000
Received: by mail-ot1-x344.google.com with SMTP id l15so16640982otn.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 03:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ntf4e24cY15lCTdagT3iS0+VMjBOYWf7Iw92R3PEKUw=;
 b=BFh3rrWH1Q7vw8K9KiTKC5WaEVtLH0hxOlQ8lYb+DxjHbhrG8G/LElcvUvV9Z5bMjY
 PvFP3WCg4pEAT++5wHCFpR6vuJg14wqFr8xkqfLzZtDJAbaIKzIL7uG+cj1GqzhMO2oz
 lWopsH2r9uZgOt0L6Hl1QCAUtH7Cy7js2lqRCrJnKKpRi0tuHwlSYpEodH9GQE/iUnc2
 FTPTtbK8H85AKdlBWYas0YUdufWuQAxbJ10khbih9MAd2Fmr+Mu5q6+8HCD70UpIv4LS
 kxPqAejefCAGovMeEGJzkcsjEhjSPfW3Vd90Z4GpmBWL3WYYkgjneF7Yov6E3seeRjaq
 gy1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ntf4e24cY15lCTdagT3iS0+VMjBOYWf7Iw92R3PEKUw=;
 b=i4BVRhUeuj4dzS+xtVpXH7jWI3OQ0IknvysrAYxXI0b1oyEIyJZ2GGF5FhTItlY4py
 Df3f079owwNvs3CKOP4C8Xk9LHj9rATEkvxKe4/Qmgbw5vujH/HoQk8mdE78bMNZ7sAo
 VppHXtU2I4xqDE2KZK22PB6svudKlioT6JK1Rwk2K10n61boQioY36fxZb+TBmOL2HLi
 a1Z1ahkBVcdySO8kAPG5UKMxzri5jJ2YvuCbeCVC/Mya1SJ/2gQ4Il3euVtiA6b4qu40
 yBPGvpUqHrbDgQ5hxUU1bMhdTftji01baCrrxLusB1M8p47KY88ZPc/cIXl4AMcs71NU
 k/cw==
X-Gm-Message-State: APjAAAVsIF3Vqd+S2WeEXt73mlSeDEBC/8c5nCTdXeAVYcqOAbSJZ75L
 rF9vgjtyKYF/BanZ39brYdAmLg==
X-Google-Smtp-Source: APXvYqw3zAInzH4cTXbdXL/Li2f0QnMXGWwp1X9151d8/cPhARYLEWYsz7hEiShYCg/05pNO094M+Q==
X-Received: by 2002:a9d:6853:: with SMTP id c19mr1570455oto.213.1562063718005; 
 Tue, 02 Jul 2019 03:35:18 -0700 (PDT)
Received: from localhost.localdomain (li964-79.members.linode.com.
 [45.33.10.79])
 by smtp.gmail.com with ESMTPSA id 61sm5139805otx.8.2019.07.02.03.35.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 03:35:17 -0700 (PDT)
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
Subject: [PATCH v1 04/11] perf annotate: Smatch: Fix dereferencing freed memory
Date: Tue,  2 Jul 2019 18:34:13 +0800
Message-Id: <20190702103420.27540-5-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190702103420.27540-1-leo.yan@linaro.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_033519_462935_011A1CD4 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
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
dereferencing freed memory check.

  tools/perf/util/annotate.c:1125
  disasm_line__parse() error: dereferencing freed memory 'namep'

tools/perf/util/annotate.c
1100 static int disasm_line__parse(char *line, const char **namep, char **rawp)
1101 {
1102         char tmp, *name = ltrim(line);

[...]

1114         *namep = strdup(name);
1115
1116         if (*namep == NULL)
1117                 goto out_free_name;

[...]

1124 out_free_name:
1125         free((void *)namep);
                          ^^^^^
1126         *namep = NULL;
             ^^^^^^
1127         return -1;
1128 }

If strdup() fails to allocate memory space for *namep, we don't need to
free memory with pointer 'namep', which is resident in data structure
disasm_line::ins::name; and *namep is NULL pointer for this failure, so
it's pointless to assign NULL to *namep again.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/annotate.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/annotate.c b/tools/perf/util/annotate.c
index c8ce13419d9b..b8dfcfe08bb1 100644
--- a/tools/perf/util/annotate.c
+++ b/tools/perf/util/annotate.c
@@ -1113,16 +1113,14 @@ static int disasm_line__parse(char *line, const char **namep, char **rawp)
 	*namep = strdup(name);
 
 	if (*namep == NULL)
-		goto out_free_name;
+		goto out;
 
 	(*rawp)[0] = tmp;
 	*rawp = ltrim(*rawp);
 
 	return 0;
 
-out_free_name:
-	free((void *)namep);
-	*namep = NULL;
+out:
 	return -1;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
