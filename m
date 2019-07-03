Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5B45D894
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 02:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6dXUrgBKycj8+Adjnq7xluw+diVZtEtpoa0ul+3rFI=; b=CRGLD6e6l1jphK
	lddIGVC5sP2aLBqDijN8nriidbaE1DsVxQL+bTI3CCkwkfGLxn5n/Uypp7aRowCHVxgfn7AAK4DST
	ztRk71uPiPCXlY+uejltNUuCdUyI9kaR93idGHl+1WnvA5/WDgbtzIkJK904tSAk9lI1j1nfADfVr
	O3obNSpwkKRFLPj4TpurHjFT7uAHwKkBzBHMD0A3andyFAuXeVa7AGLYOWfbZcdFNGUNP/jEMWttW
	ROITAqBE+ZfeeUTJ05bocdFDb35oFI0srSzUtoX7d9wSYngYrjm4aeCwTmMYCaV/dmJfPA0u2II/F
	92EDycXh27E/pq+MnZzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSt5-0005hE-R5; Wed, 03 Jul 2019 00:12:39 +0000
Received: from mx0b-00190b01.pphosted.com ([2620:100:9005:57f::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSsl-0005cr-UE
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 00:12:21 +0000
Received: from pps.filterd (m0050102.ppops.net [127.0.0.1])
 by m0050102.ppops.net-00190b01. (8.16.0.27/8.16.0.27) with SMTP id
 x6306Stb031558; Wed, 3 Jul 2019 01:10:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=jan2016.eng;
 bh=vhdroY72bGDWw4TJQf6mIBF5mLDW5ZnW83laxKxW0O8=;
 b=GI9/HJ/sX4q65adr3ojIlYnaH7gx7z+Ol2AoDu5eGNYHByt9LnkLbniiMaDeL+9m9Nhw
 lmxlKqixFxa00vLIEOQ42tZpkckrTuKUU1zF2hPvoDd24c0DAhivRPrqE72kGeYl9VoL
 1IrXJja+WDpCIhT7xTWIBcM1/vzXqIZzjtS/WJxNlFI7vigBFmM1VLB0q/moIVHhRFMR
 0IimNoPKlBO8WztjzZp2mvLLPY+/zONnUwtQ7NBoJQP30wNcKOo8vlDA4HvDlHZN4MX7
 MqNnmQsxzh5+/sW7Djx8iIFyKDxGg45C6lxmx94s291Ebkp5JvUjxmwAAViVbR8pwt2P 8A== 
Received: from prod-mail-ppoint2 (prod-mail-ppoint2.akamai.com [184.51.33.19]
 (may be forged))
 by m0050102.ppops.net-00190b01. with ESMTP id 2tg8vp231q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 03 Jul 2019 01:10:51 +0100
Received: from pps.filterd (prod-mail-ppoint2.akamai.com [127.0.0.1])
 by prod-mail-ppoint2.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x6302JOx014179; Tue, 2 Jul 2019 20:10:50 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.30])
 by prod-mail-ppoint2.akamai.com with ESMTP id 2te3awrp2k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 02 Jul 2019 20:10:50 -0400
Received: from USMA1EX-CAS2.msg.corp.akamai.com (172.27.123.31) by
 usma1ex-dag1mb1.msg.corp.akamai.com (172.27.123.101) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Tue, 2 Jul 2019 20:10:49 -0400
Received: from igorcastle.kendall.corp.akamai.com (172.29.170.135) by
 USMA1EX-CAS2.msg.corp.akamai.com (172.27.123.31) with Microsoft SMTP Server
 id 15.0.1473.3 via Frontend Transport; Tue, 2 Jul 2019 20:10:49 -0400
Received: by igorcastle.kendall.corp.akamai.com (Postfix, from userid 29659)
 id A68C461E45; Tue,  2 Jul 2019 20:10:47 -0400 (EDT)
From: Igor Lubashev <ilubashe@akamai.com>
To: <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 3/3] perf: Use CAP_SYSLOG with kptr_restrict checks
Date: Tue, 2 Jul 2019 20:10:05 -0400
Message-ID: <1562112605-6235-4-git-send-email-ilubashe@akamai.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
References: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-02_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907020268
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-02_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907020269
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_171220_214427_27349B56 
X-CRM114-Status: GOOD (  15.80  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, James Morris <jmorris@namei.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kernel is using CAP_SYSLOG capcbility instead of uid==0 and euid==0 when
checking kptr_restrict. Make perf do the same.

Also, the kernel is a more restrictive than "no restrictions" in case of
kptr_restrict==0, so add the same logic to perf.

Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
---
 tools/perf/util/symbol.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/symbol.c b/tools/perf/util/symbol.c
index 5cbad55cd99d..fd68dae3f58e 100644
--- a/tools/perf/util/symbol.c
+++ b/tools/perf/util/symbol.c
@@ -4,6 +4,7 @@
 #include <stdlib.h>
 #include <stdio.h>
 #include <string.h>
+#include <linux/capability.h>
 #include <linux/kernel.h>
 #include <linux/mman.h>
 #include <linux/time64.h>
@@ -15,8 +16,10 @@
 #include <inttypes.h>
 #include "annotate.h"
 #include "build-id.h"
+#include "cap.h"
 #include "util.h"
 #include "debug.h"
+#include "event.h"
 #include "machine.h"
 #include "map.h"
 #include "symbol.h"
@@ -889,7 +892,11 @@ bool symbol__restricted_filename(const char *filename,
 {
 	bool restricted = false;
 
-	if (symbol_conf.kptr_restrict) {
+	/* Per kernel/kallsyms.c:
+	 * we also restrict when perf_event_paranoid > 1 w/o CAP_SYSLOG
+	 */
+	if (symbol_conf.kptr_restrict ||
+	    (perf_event_paranoid() > 1 && !perf_cap__capable(CAP_SYSLOG))) {
 		char *r = realpath(filename, NULL);
 
 		if (r != NULL) {
@@ -2100,9 +2107,9 @@ static bool symbol__read_kptr_restrict(void)
 		char line[8];
 
 		if (fgets(line, sizeof(line), fp) != NULL)
-			value = ((geteuid() != 0) || (getuid() != 0)) ?
-					(atoi(line) != 0) :
-					(atoi(line) == 2);
+			value = perf_cap__capable(CAP_SYSLOG) ?
+					(atoi(line) >= 2) :
+					(atoi(line) != 0);
 
 		fclose(fp);
 	}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
