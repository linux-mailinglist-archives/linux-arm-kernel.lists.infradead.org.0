Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 912E75D891
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 02:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jca1MAlGoyH6U7+q0zxGTH925GWhvC2ExukTe7OEB6g=; b=PKGbV51bae2CPM
	ZWZHEOvE4TH06BR95ChGUBzc2b0XRrAtLLIoG6s37mg+CSZw7LLkjPNLHbhe0Ubk2enx5GDk34Bmp
	G1Xq+y1fllzKo1kpLSg2YdZTXDaEQGpzW66pIHWp3ztdLWaDqg7xZe7zdHH1fWCS6lEXqxD1/xLYV
	wqB9rkfJRWcVbd4AW/deDoEFPnYNzXJNXCkTHPO/QGupk9IY7bJpFcOBpY2MPj9q2+EwJXqjSHcOF
	tEdAbOesiGVvhkgCb5MePm5Wuxx7RrXlyEV3q5fjlCsUfQP2Wkdl6Np69drjGFKb59UtTbK3YVrn8
	Et6BFGiZHUMT6g8/UsqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSsQ-0005Bj-7u; Wed, 03 Jul 2019 00:11:58 +0000
Received: from mx0a-00190b01.pphosted.com ([2620:100:9001:583::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSrx-00051Q-H0
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 00:11:31 +0000
Received: from pps.filterd (m0050093.ppops.net [127.0.0.1])
 by m0050093.ppops.net-00190b01. (8.16.0.27/8.16.0.27) with SMTP id
 x63075lj032474; Wed, 3 Jul 2019 01:11:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=jan2016.eng;
 bh=dQnGPKV3yYltUgfU2I+Fw3Qje3Qs8IZ53UNxxwHARwA=;
 b=ebhomM77vVDM11MEiu4z/6eNRpizeKNIUe3nNpL36L1ZrENcDzq+p8c1NW8j2q5nHrRN
 uwMN3ZdFGfzITCLytCecvWIxDEN8m1xlZIfgMyhke4FtFswH/9Lg/1xNmaH8Y+CvV+gi
 y/zOtqdu/BC0Ci4APgRUJr5MPCPcG1G9BRAdxhZXsxHbgcFsUn17s0PYHsuv8u3B9+1p
 bmkypYpqpLjRpvEnH6LgXbL8XLXIGcwsh1SFqxmpO9JcL1J9dQyyaKhTfticDYPNzJ1H
 o4bJfQ84+kuPQlyPT18/dIA8i5xTyz7wnGCXSgWcxOX9NYhuV1LSdmBMRYfhZgka0U85 5Q== 
Received: from prod-mail-ppoint3 (prod-mail-ppoint3.akamai.com [96.6.114.86]
 (may be forged))
 by m0050093.ppops.net-00190b01. with ESMTP id 2tg2tkusbn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 03 Jul 2019 01:11:15 +0100
Received: from pps.filterd (prod-mail-ppoint3.akamai.com [127.0.0.1])
 by prod-mail-ppoint3.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x6302MSR021891; Tue, 2 Jul 2019 20:11:14 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.34])
 by prod-mail-ppoint3.akamai.com with ESMTP id 2te3b09eb1-4
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 02 Jul 2019 20:11:13 -0400
Received: from usma1ex-cas4.msg.corp.akamai.com (172.27.123.57) by
 usma1ex-dag1mb4.msg.corp.akamai.com (172.27.123.104) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Tue, 2 Jul 2019 20:10:49 -0400
Received: from igorcastle.kendall.corp.akamai.com (172.29.170.135) by
 usma1ex-cas4.msg.corp.akamai.com (172.27.123.57) with Microsoft SMTP Server
 id 15.0.1473.3 via Frontend Transport; Tue, 2 Jul 2019 17:10:49 -0700
Received: by igorcastle.kendall.corp.akamai.com (Postfix, from userid 29659)
 id A83D461E4A; Tue,  2 Jul 2019 20:10:47 -0400 (EDT)
From: Igor Lubashev <ilubashe@akamai.com>
To: <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 1/3] perf: Add capability-related utilities
Date: Tue, 2 Jul 2019 20:10:03 -0400
Message-ID: <1562112605-6235-2-git-send-email-ilubashe@akamai.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
References: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-02_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907020268
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-02_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907020269
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_171129_834715_48ECCA5A 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9001:583:0:0:0:1 listed in] [list.dnswl.org]
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

Add utilities to help checking capabilities of the running process.
Make perf link with libcap.

Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
---
 tools/perf/Makefile.config         |  2 +-
 tools/perf/util/Build              |  1 +
 tools/perf/util/cap.c              | 24 ++++++++++++++++++++++++
 tools/perf/util/cap.h              | 10 ++++++++++
 tools/perf/util/event.h            |  1 +
 tools/perf/util/python-ext-sources |  1 +
 tools/perf/util/util.c             |  9 +++++++++
 7 files changed, 47 insertions(+), 1 deletion(-)
 create mode 100644 tools/perf/util/cap.c
 create mode 100644 tools/perf/util/cap.h

diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
index 85fbcd265351..21470a50ed39 100644
--- a/tools/perf/Makefile.config
+++ b/tools/perf/Makefile.config
@@ -259,7 +259,7 @@ CXXFLAGS += -Wno-strict-aliasing
 # adding assembler files missing the .GNU-stack linker note.
 LDFLAGS += -Wl,-z,noexecstack
 
-EXTLIBS = -lpthread -lrt -lm -ldl
+EXTLIBS = -lpthread -lrt -lm -ldl -lcap
 
 ifeq ($(FEATURES_DUMP),)
 include $(srctree)/tools/build/Makefile.feature
diff --git a/tools/perf/util/Build b/tools/perf/util/Build
index 6d5bbc8b589b..9cc6e9b34ebd 100644
--- a/tools/perf/util/Build
+++ b/tools/perf/util/Build
@@ -1,6 +1,7 @@
 perf-y += annotate.o
 perf-y += block-range.o
 perf-y += build-id.o
+perf-y += cap.o
 perf-y += config.o
 perf-y += ctype.o
 perf-y += db-export.o
diff --git a/tools/perf/util/cap.c b/tools/perf/util/cap.c
new file mode 100644
index 000000000000..c42ea32663cf
--- /dev/null
+++ b/tools/perf/util/cap.c
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Capability utilities
+ */
+#include "cap.h"
+#include <stdbool.h>
+#include <sys/capability.h>
+
+bool perf_cap__capable(cap_value_t cap)
+{
+	cap_flag_value_t val;
+	cap_t caps = cap_get_proc();
+
+	if (!caps)
+		return false;
+
+	if (cap_get_flag(caps, cap, CAP_EFFECTIVE, &val) != 0)
+		val = CAP_CLEAR;
+
+	if (cap_free(caps) != 0)
+		return false;
+
+	return val == CAP_SET;
+}
diff --git a/tools/perf/util/cap.h b/tools/perf/util/cap.h
new file mode 100644
index 000000000000..5521de78b228
--- /dev/null
+++ b/tools/perf/util/cap.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __PERF_CAP_H
+#define __PERF_CAP_H
+
+#include <stdbool.h>
+#include <sys/capability.h>
+
+bool perf_cap__capable(cap_value_t cap);
+
+#endif /* __PERF_CAP_H */
diff --git a/tools/perf/util/event.h b/tools/perf/util/event.h
index 9e999550f247..013d9e28fcac 100644
--- a/tools/perf/util/event.h
+++ b/tools/perf/util/event.h
@@ -849,6 +849,7 @@ void  cpu_map_data__synthesize(struct cpu_map_data *data, struct cpu_map *map,
 void event_attr_init(struct perf_event_attr *attr);
 
 int perf_event_paranoid(void);
+bool perf_event_paranoid_check(int max_level);
 
 extern int sysctl_perf_event_max_stack;
 extern int sysctl_perf_event_max_contexts_per_stack;
diff --git a/tools/perf/util/python-ext-sources b/tools/perf/util/python-ext-sources
index 7aa0ea64544e..4545eaf018b5 100644
--- a/tools/perf/util/python-ext-sources
+++ b/tools/perf/util/python-ext-sources
@@ -6,6 +6,7 @@
 #
 
 util/python.c
+util/cap.c
 util/ctype.c
 util/evlist.c
 util/evsel.c
diff --git a/tools/perf/util/util.c b/tools/perf/util/util.c
index d388f80d8703..cde538ec727d 100644
--- a/tools/perf/util/util.c
+++ b/tools/perf/util/util.c
@@ -16,10 +16,12 @@
 #include <string.h>
 #include <errno.h>
 #include <limits.h>
+#include <linux/capability.h>
 #include <linux/kernel.h>
 #include <linux/log2.h>
 #include <linux/time64.h>
 #include <unistd.h>
+#include "cap.h"
 #include "strlist.h"
 #include "string2.h"
 
@@ -456,6 +458,13 @@ int perf_event_paranoid(void)
 
 	return value;
 }
+
+bool perf_event_paranoid_check(int max_level)
+{
+	return perf_cap__capable(CAP_SYS_ADMIN) ||
+			perf_event_paranoid() <= max_level;
+}
+
 static int
 fetch_ubuntu_kernel_version(unsigned int *puint)
 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
