Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FF86C3A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 01:49:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8TItIap370VrqQ1hQMIMiYD92vHNj9vI95CreEY8T0=; b=GKMR37Xw7KsMt7
	dG+ZuOuRPV0rU1mSkc71o419HhohYvqehWLr3VVzQyelCxO5qRq7P2wxV13itnqJN472OWAbov6G8
	g0CiVrGWTMDNfL8ZlSpeH4P6HTdity5sZvQicCGWv79x88Wj8qcru2iiSQHtTy7JFqXb15OiisjD1
	Zb8ym085FVKcwgWaMRaEGNJcwOcDvoAflR9J9Omw3i0TnHUsykpT2O80Z1qh5pRZVL13EA584Fe7T
	tvxA12aeuLt1fOeg22olkS4DLDXKNamcFbxwfG4VsLwAprGDZqolHByJ3D7oXuuOBGYwJvtF/uyvt
	zkX/6P/8IPbRQPBxerPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hntfS-0002HC-QN; Wed, 17 Jul 2019 23:49:02 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hntfC-0002H1-JB
 for linux-arm-kernel@bombadil.infradead.org; Wed, 17 Jul 2019 23:48:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zMchTV0CYGbg84sqbUscTEiGoh4ZNOfQBOF6+rYvMvM=; b=HzWHUqJ1pKz2bkWC5O/zM36Jp
 OFhpe7KvgDl3UrCgBLbqZSN9s0hrdEG/dTNxhaOEIEFraWfxFfRczZMSZpyZnbl9kp4U/VxLMpEi7
 JNo9DvTNe0J+1VcatKm8JpkKDZtOgvZV7IJnaxUqIVJU5vWeS+1JXwl2Tvue7JaYAME+cwJHpqUxe
 PeTpYqO705fZZEDieO1BGINygxtoCfYliWBWwOeET5e3QrrcQRaNB4ijRKeGe8wOM8DVnQ/PH1ZCX
 3afsZ9MDsR3HQeRhXcAOFnqxsIz34eZSjwxd4Dk+0GXLzJYR+o2u8E+zG5ZocVZxsBn8hhWkestLK
 HE8ieTs/Q==;
Received: from [179.97.35.11] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hntfA-0006tI-P9; Wed, 17 Jul 2019 23:48:45 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 4BD6C40340; Wed, 17 Jul 2019 20:48:43 -0300 (-03)
Date: Wed, 17 Jul 2019 20:48:43 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Igor Lubashev <ilubashe@akamai.com>
Subject: Re: [PATCH 1/3] perf: Add capability-related utilities
Message-ID: <20190717234843.GK3624@kernel.org>
References: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
 <1562112605-6235-2-git-send-email-ilubashe@akamai.com>
 <20190716084643.GA22317@krava> <20190717210551.GI3624@kernel.org>
 <20190717234652.GJ3624@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717234652.GJ3624@kernel.org>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.0 (2019-05-25)
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
 Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, Jul 17, 2019 at 08:46:52PM -0300, Arnaldo Carvalho de Melo escreveu:
> I'll do it if there is any difficulty, just not right now as I'm busy
> and want to get a pull req out of the door.

Also please find the first patch fixed up wrt a conflict with the
pythong binding, please use it instead as that is what applies to my
current perf/core branch.

It has the ack from Alexey and one I think Jiri would provide, judging
from his positive tone to the patches :)

- Arnaldo

commit 8048a0884a3f98bae2434d141711d72382b784b0
Author: Igor Lubashev <ilubashe@akamai.com>
Date:   Wed Jul 17 20:39:03 2019 -0300

    perf tools: Add capability-related utilities
    
    Add utilities to help checking capabilities of the running process.
    Make perf link with libcap.
    
    Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
    Acked-by: Alexey Budankov <alexey.budankov@linux.intel.com>
    Acked-by: Jiri Olsa <jolsa@kernel.org>
    CC: Alexander Shishkin <alexander.shishkin@linux.intel.com>
    Cc: James Morris <jmorris@namei.org>
    Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
    Cc: Namhyung Kim <namhyung@kernel.org>
    Cc: Peter Zijlstra <peterz@infradead.org>
    Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
    Link: https://lkml.kernel.org/r/1562112605-6235-2-git-send-email-ilubashe@akamai.com
    Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>

diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
index 89ac5a1f1550..b9cf084f32d7 100644
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
index 14f812bb07a7..61ed1a3005d4 100644
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
index 1f1da6082806..b4128f72f2e8 100644
--- a/tools/perf/util/event.h
+++ b/tools/perf/util/event.h
@@ -851,6 +851,7 @@ void  cpu_map_data__synthesize(struct cpu_map_data *data, struct cpu_map *map,
 void event_attr_init(struct perf_event_attr *attr);
 
 int perf_event_paranoid(void);
+bool perf_event_paranoid_check(int max_level);
 
 extern int sysctl_perf_event_max_stack;
 extern int sysctl_perf_event_max_contexts_per_stack;
diff --git a/tools/perf/util/python-ext-sources b/tools/perf/util/python-ext-sources
index ceb8afdf9a89..afba10684b65 100644
--- a/tools/perf/util/python-ext-sources
+++ b/tools/perf/util/python-ext-sources
@@ -9,6 +9,7 @@ util/python.c
 ../lib/ctype.c
 util/evlist.c
 util/evsel.c
+util/cap.c
 util/cpumap.c
 util/memswap.c
 util/mmap.c
diff --git a/tools/perf/util/util.c b/tools/perf/util/util.c
index a61535cf1bca..4f0da8a03697 100644
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
 
@@ -443,6 +445,13 @@ int perf_event_paranoid(void)
 
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
