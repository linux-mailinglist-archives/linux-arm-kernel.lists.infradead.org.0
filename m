Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224C884F02
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emLSvKp14R3Xlbwd9lVxHtpsApZSQUZzSMpNWjhsLZk=; b=XIBG7tajMaPqVt
	yt2voZtLwJNm7oQz2DlgDwzkUQi/gRa2E9gJ9XibkekfQAllqdd+35IOXHhaD4Wn8c9Yylra3EDAk
	C8dyEKKwMzPGoxDxJGzHFp0wA8AZEkp5oKf7UYUzmxUc0Wtq300jQwdDOzjfj5in/25/GW+7hxDnT
	3KaojRs17WKmAWkEyku7OwqXKqmShQzJLubDlbOSoUk7CGSerzJAUnHoe+LZlwsJIgwgT7SSC8iSZ
	FhiCXRN3JT9shcjwwZ+vUjNw+aCLhylPTXPRGLr95Mrb+1kGdVSJnr8RTCPc22f+m3pged2vsqrs+
	9qIVS+6w24KnN/o2NJ4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNBf-0001VG-KO; Wed, 07 Aug 2019 14:45:11 +0000
Received: from mx0b-00190b01.pphosted.com ([2620:100:9005:57f::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNBQ-0001Tq-4M
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:44:57 +0000
Received: from pps.filterd (m0122330.ppops.net [127.0.0.1])
 by mx0b-00190b01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x77EfxLS005168; Wed, 7 Aug 2019 15:44:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=jan2016.eng;
 bh=Vagb6QmnbXVI1op31baqpLQ8s4lzl7qHp9Urb7sEl8U=;
 b=SY7adnyKax20V22NMXzHqPBPOMvsku8G4XA1bJTV2YgWHSD5Wx6DwzE+rnVeaz98vVE6
 x7CqCf0sfuOjBPD/kTcr/6VM5OHhrj9zrtVdvV2vp/KBOwcaC6lub5lZZxx45Mf5cqV8
 hF2e7yegeuz7H19gbC+rd8ayZy5FJdP2aJcy8yVIjE/nwyjUVO9upcOD8FbD49I9sZxT
 NQfAB9QOpOZeggGXJebsSRGq1TT6IDEC3aMNMx5qP5SzPJv+F6r/OQZfmmGR//v1HXU2
 ccj5AeVZMgGI6/R9w3INJIGElW3YfD75nMrXo7WD8hwCBLEOVt72xCmTx6kc4HgYU8PT +g== 
Received: from prod-mail-ppoint8 (prod-mail-ppoint8.akamai.com [96.6.114.122]
 (may be forged))
 by mx0b-00190b01.pphosted.com with ESMTP id 2u51wv175d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 07 Aug 2019 15:44:43 +0100
Received: from pps.filterd (prod-mail-ppoint8.akamai.com [127.0.0.1])
 by prod-mail-ppoint8.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x77EWhDO031450; Wed, 7 Aug 2019 10:44:43 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.53])
 by prod-mail-ppoint8.akamai.com with ESMTP id 2u55kvc76c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 07 Aug 2019 10:44:42 -0400
Received: from USMA1EX-CAS3.msg.corp.akamai.com (172.27.123.32) by
 usma1ex-dag1mb4.msg.corp.akamai.com (172.27.123.104) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Wed, 7 Aug 2019 10:44:41 -0400
Received: from igorcastle.kendall.corp.akamai.com (172.29.170.135) by
 USMA1EX-CAS3.msg.corp.akamai.com (172.27.123.32) with Microsoft SMTP Server
 id 15.0.1473.3 via Frontend Transport; Wed, 7 Aug 2019 10:44:41 -0400
Received: by igorcastle.kendall.corp.akamai.com (Postfix, from userid 29659)
 id 8A70461D6C; Wed,  7 Aug 2019 10:44:39 -0400 (EDT)
From: Igor Lubashev <ilubashe@akamai.com>
To: <linux-kernel@vger.kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, Alexey Budankov
 <alexey.budankov@linux.intel.com>
Subject: [PATCH v3 4/4] perf: Use CAP_SYS_ADMIN instead of euid==0 with ftrace
Date: Wed, 7 Aug 2019 10:44:17 -0400
Message-ID: <bd8763b72ed4d58d0b42d44fbc7eb474d32e53a3.1565188228.git.ilubashe@akamai.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565188228.git.ilubashe@akamai.com>
References: <cover.1565188228.git.ilubashe@akamai.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-07_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908070155
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-07_03:2019-08-07,2019-08-07 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 bulkscore=0
 mlxlogscore=999 priorityscore=1501 adultscore=0 lowpriorityscore=0
 mlxscore=0 spamscore=0 phishscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1908070157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_074456_468614_7408937C 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9005:57f:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kernel requires CAP_SYS_ADMIN instead of euid==0 to mount debugfs for ftrace.
Make perf do the same.

Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
---
 tools/perf/builtin-ftrace.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/tools/perf/builtin-ftrace.c b/tools/perf/builtin-ftrace.c
index ae1466aa3b26..d09eac8a6d57 100644
--- a/tools/perf/builtin-ftrace.c
+++ b/tools/perf/builtin-ftrace.c
@@ -13,6 +13,7 @@
 #include <signal.h>
 #include <fcntl.h>
 #include <poll.h>
+#include <linux/capability.h>
 
 #include "debug.h"
 #include <subcmd/parse-options.h>
@@ -21,6 +22,7 @@
 #include "target.h"
 #include "cpumap.h"
 #include "thread_map.h"
+#include "util/cap.h"
 #include "util/config.h"
 
 
@@ -281,7 +283,7 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
 		.events = POLLIN,
 	};
 
-	if (geteuid() != 0) {
+	if (!perf_cap__capable(CAP_SYS_ADMIN)) {
 		pr_err("ftrace only works for root!\n");
 		return -1;
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
