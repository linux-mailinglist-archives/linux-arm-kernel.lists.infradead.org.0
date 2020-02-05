Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9350E1536A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 18:33:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGG7aUThp35PiMELxpsBtzpP8eoT+wiTlRpvIstyCCQ=; b=LjT7HDqLOhp38W
	aaL6UHSOSLWelm1X9ddHxYUWPUjmS1XZ8cd0ae6MIvvGNVRRFpEF3lob4KjknbQq+ofV893LHxnfS
	5Srf4znB01Jt7FCYO3vHBXkTdfokN36gVkGLseIlmZsDzK7N30WcfwEIoE3zGHICXAQgB0elI1yhi
	awd+pH4DypdA3+dVkx+C3v3PB78fK1r/w6CjNEaSJboZQc35sBo+yRlqwkwkJPEZ8+2s7agOrfWvL
	iUp50cFFMymisxe4JhX2fBj5dcVjigocnA8+H0VKAyRjmDU2d0uoH4zqHl+smakR6LUNy13bu6jee
	WFyffxcLLTQw7OLgvjMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOY8-0002xN-3p; Wed, 05 Feb 2020 17:33:16 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOY1-0002wt-0v
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 17:33:10 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 09:32:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,406,1574150400"; d="scan'208";a="431937450"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga006.fm.intel.com with ESMTP; 05 Feb 2020 09:32:57 -0800
Received: from [10.252.5.149] (abudanko-mobl.ccr.corp.intel.com [10.252.5.149])
 by linux.intel.com (Postfix) with ESMTP id 82DA45802BC;
 Wed,  5 Feb 2020 09:32:50 -0800 (PST)
Subject: [PATCH v6 04/10] perf tool: extend Perf tool with CAP_PERFMON
 capability support
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: James Morris <jmorris@namei.org>, Serge Hallyn <serge@hallyn.com>,
 Stephen Smalley <sds@tycho.nsa.gov>, Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>
References: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
Organization: Intel Corp.
Message-ID: <9a01132d-5f3d-78fb-7723-2f29a6db6efe@linux.intel.com>
Date: Wed, 5 Feb 2020 20:32:49 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_093309_138155_1970B67D 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andi Kleen <ak@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Thomas Gleixner <tglx@linutronix.de>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Extend error messages to mention CAP_PERFMON capability as an option
to substitute CAP_SYS_ADMIN capability for secure system performance
monitoring and observability operations. Make perf_event_paranoid_check()
and __cmd_ftrace() to be aware of CAP_PERFMON capability.

CAP_PERFMON implements the principal of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 
principle of least privilege: A security design principle that states 
that a process or program be granted only those privileges (e.g., 
capabilities) necessary to accomplish its legitimate function, and only 
for the time that such privileges are actually required)

For backward compatibility reasons access to perf_events subsystem remains
open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for
secure perf_events monitoring is discouraged with respect to CAP_PERFMON
capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
---
 tools/perf/builtin-ftrace.c |  5 +++--
 tools/perf/design.txt       |  3 ++-
 tools/perf/util/cap.h       |  4 ++++
 tools/perf/util/evsel.c     | 10 +++++-----
 tools/perf/util/util.c      |  1 +
 5 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/tools/perf/builtin-ftrace.c b/tools/perf/builtin-ftrace.c
index d5adc417a4ca..55eda54240fb 100644
--- a/tools/perf/builtin-ftrace.c
+++ b/tools/perf/builtin-ftrace.c
@@ -284,10 +284,11 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
 		.events = POLLIN,
 	};
 
-	if (!perf_cap__capable(CAP_SYS_ADMIN)) {
+	if (!(perf_cap__capable(CAP_PERFMON) ||
+	      perf_cap__capable(CAP_SYS_ADMIN))) {
 		pr_err("ftrace only works for %s!\n",
 #ifdef HAVE_LIBCAP_SUPPORT
-		"users with the SYS_ADMIN capability"
+		"users with the CAP_PERFMON or CAP_SYS_ADMIN capability"
 #else
 		"root"
 #endif
diff --git a/tools/perf/design.txt b/tools/perf/design.txt
index 0453ba26cdbd..a42fab308ff6 100644
--- a/tools/perf/design.txt
+++ b/tools/perf/design.txt
@@ -258,7 +258,8 @@ gets schedule to. Per task counters can be created by any user, for
 their own tasks.
 
 A 'pid == -1' and 'cpu == x' counter is a per CPU counter that counts
-all events on CPU-x. Per CPU counters need CAP_SYS_ADMIN privilege.
+all events on CPU-x. Per CPU counters need CAP_PERFMON or CAP_SYS_ADMIN
+privilege.
 
 The 'flags' parameter is currently unused and must be zero.
 
diff --git a/tools/perf/util/cap.h b/tools/perf/util/cap.h
index 051dc590ceee..ae52878c0b2e 100644
--- a/tools/perf/util/cap.h
+++ b/tools/perf/util/cap.h
@@ -29,4 +29,8 @@ static inline bool perf_cap__capable(int cap __maybe_unused)
 #define CAP_SYSLOG	34
 #endif
 
+#ifndef CAP_PERFMON
+#define CAP_PERFMON	38
+#endif
+
 #endif /* __PERF_CAP_H */
diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index a69e64236120..a35f17723dd3 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -2491,14 +2491,14 @@ int perf_evsel__open_strerror(struct evsel *evsel, struct target *target,
 		 "You may not have permission to collect %sstats.\n\n"
 		 "Consider tweaking /proc/sys/kernel/perf_event_paranoid,\n"
 		 "which controls use of the performance events system by\n"
-		 "unprivileged users (without CAP_SYS_ADMIN).\n\n"
+		 "unprivileged users (without CAP_PERFMON or CAP_SYS_ADMIN).\n\n"
 		 "The current value is %d:\n\n"
 		 "  -1: Allow use of (almost) all events by all users\n"
 		 "      Ignore mlock limit after perf_event_mlock_kb without CAP_IPC_LOCK\n"
-		 ">= 0: Disallow ftrace function tracepoint by users without CAP_SYS_ADMIN\n"
-		 "      Disallow raw tracepoint access by users without CAP_SYS_ADMIN\n"
-		 ">= 1: Disallow CPU event access by users without CAP_SYS_ADMIN\n"
-		 ">= 2: Disallow kernel profiling by users without CAP_SYS_ADMIN\n\n"
+		 ">= 0: Disallow ftrace function tracepoint by users without CAP_PERFMON or CAP_SYS_ADMIN\n"
+		 "      Disallow raw tracepoint access by users without CAP_SYS_PERFMON or CAP_SYS_ADMIN\n"
+		 ">= 1: Disallow CPU event access by users without CAP_PERFMON or CAP_SYS_ADMIN\n"
+		 ">= 2: Disallow kernel profiling by users without CAP_PERFMON or CAP_SYS_ADMIN\n\n"
 		 "To make this setting permanent, edit /etc/sysctl.conf too, e.g.:\n\n"
 		 "	kernel.perf_event_paranoid = -1\n" ,
 				 target->system_wide ? "system-wide " : "",
diff --git a/tools/perf/util/util.c b/tools/perf/util/util.c
index 969ae560dad9..51cf3071db74 100644
--- a/tools/perf/util/util.c
+++ b/tools/perf/util/util.c
@@ -272,6 +272,7 @@ int perf_event_paranoid(void)
 bool perf_event_paranoid_check(int max_level)
 {
 	return perf_cap__capable(CAP_SYS_ADMIN) ||
+			perf_cap__capable(CAP_PERFMON) ||
 			perf_event_paranoid() <= max_level;
 }
 
-- 
2.20.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
