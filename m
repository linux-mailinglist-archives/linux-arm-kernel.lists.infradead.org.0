Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB41842F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 05:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5BuYzcXS3s5A92WjYP6rbF2SL5BArEpNg6BPKBml2mY=; b=FXENV0bSnIVSPb
	AiqZZLa0nAvDdbZMOR5rn23LQ9LtfYnJT3h9nloTU2Kx7k8+TkBMQAUkx4S/EhWvrY+pslUBP+azu
	mQliYxNANl2oHJdw1BnThhPhXnFk26pTtNmb97vz0e3QZG5K2QclM9q19wW6ZaFBfvrCVFvZXQqsS
	Xy4wyPFFkCC45A0Bg2FX6yc7L927ycl9+7Z7EkYSrXyJTu6WWXAg+z2jJ7IrOdxzgBy6KQuNj9FmZ
	YiejJb6wRkpoQlvvGEDNZxyNTI5wj5dRD61s4vxYfIRqhnjkBwVjcjRQlAQwDJ9hDOnURsRVTwlnI
	62KzxPWSfyqwW5Z723PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvClS-00052r-75; Wed, 07 Aug 2019 03:37:26 +0000
Received: from mx0b-00190b01.pphosted.com ([2620:100:9005:57f::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvCko-0004Yv-Lz
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 03:36:49 +0000
Received: from pps.filterd (m0050096.ppops.net [127.0.0.1])
 by m0050096.ppops.net-00190b01. (8.16.0.42/8.16.0.42) with SMTP id
 x773VZ0V008716; Wed, 7 Aug 2019 04:36:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=jan2016.eng;
 bh=vffPYkazUX63OOelAC2TpHBENEYOaE8kM+STi98FHrY=;
 b=MbHh8OQZ7vnU2WY4jQW2VAFrFXutzTL7KDzMIVZSDcIl9ooCTNxYs3DjvZ/Bgu0WM2Z6
 3eU/pJUMLfCR8IIbSN9NCKrRlNXR1PL1BJNbtHCnoSebIJI8nJ157Psbzwyjt4C2ZLoT
 c6PnuUJOjwvhW10mUEsM9kEYZF+5QTwBJp6ELlG1gg6wOgYVc+wC+qLmwHC074lE7xKV
 sl/Joan0WwfusMkUnT8lYEw2Fdz0zTNSirFSZUP/G5wEBsFiG0GBqge0lbv8ITbr0/PW
 OaEDcr4gxR/EIY8o7IXM87ITvVK5Ff2SzZGAyQ9oBUjNtg9jOWkkKALCuEdESbMuvwPt JA== 
Received: from prod-mail-ppoint5 (prod-mail-ppoint5.akamai.com [184.51.33.60]
 (may be forged))
 by m0050096.ppops.net-00190b01. with ESMTP id 2u52p8ftgh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 07 Aug 2019 04:36:33 +0100
Received: from pps.filterd (prod-mail-ppoint5.akamai.com [127.0.0.1])
 by prod-mail-ppoint5.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x773WhWs032205; Tue, 6 Aug 2019 20:36:32 -0700
Received: from email.msg.corp.akamai.com ([172.27.123.57])
 by prod-mail-ppoint5.akamai.com with ESMTP id 2u5888ebjv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 06 Aug 2019 20:36:32 -0700
Received: from USMA1EX-DAG1MB5.msg.corp.akamai.com (172.27.123.105) by
 usma1ex-dag3mb4.msg.corp.akamai.com (172.27.123.56) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Tue, 6 Aug 2019 23:36:31 -0400
Received: from usma1ex-cas5.msg.corp.akamai.com (172.27.123.53) by
 usma1ex-dag1mb5.msg.corp.akamai.com (172.27.123.105) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Tue, 6 Aug 2019 23:36:31 -0400
Received: from igorcastle.kendall.corp.akamai.com (172.29.170.135) by
 usma1ex-cas5.msg.corp.akamai.com (172.27.123.53) with Microsoft SMTP Server
 id 15.0.1473.3 via Frontend Transport; Tue, 6 Aug 2019 20:36:25 -0700
Received: by igorcastle.kendall.corp.akamai.com (Postfix, from userid 29659)
 id 0E51561D78; Tue,  6 Aug 2019 23:36:23 -0400 (EDT)
From: Igor Lubashev <ilubashe@akamai.com>
To: <linux-kernel@vger.kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, Alexey Budankov
 <alexey.budankov@linux.intel.com>
Subject: [PATCH v2 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
Date: Tue, 6 Aug 2019 23:35:56 -0400
Message-ID: <f739900dede057b83a6e6ac5dee5fffb67f16e97.1565146171.git.ilubashe@akamai.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565146171.git.ilubashe@akamai.com>
References: <cover.1565146171.git.ilubashe@akamai.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-07_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908070034
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-07_01:2019-08-05,2019-08-07 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 priorityscore=1501
 adultscore=0 lowpriorityscore=0 mlxscore=0 spamscore=0 mlxlogscore=999
 malwarescore=0 impostorscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1906280000
 definitions=main-1908070034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_203646_836323_8A779300 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9005:57f:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Kernel is using CAP_SYSLOG capability instead of uid==0 and euid==0 when
checking kptr_restrict. Make perf do the same.

Also, the kernel is a more restrictive than "no restrictions" in case of
kptr_restrict==0, so add the same logic to perf.

Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
---
 tools/perf/util/symbol.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/symbol.c b/tools/perf/util/symbol.c
index 173f3378aaa0..046271103499 100644
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
@@ -890,7 +893,11 @@ bool symbol__restricted_filename(const char *filename,
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
@@ -2190,9 +2197,9 @@ static bool symbol__read_kptr_restrict(void)
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
