Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C516160C9F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 09:13:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMqMSRkUIY7uNRiRT78p6UCnCGQ+9/XP0NYGb0Co1cI=; b=P2HqKCPKxD4Tv+
	eIl5CwdsTfHpoNE3FKuPdffQbnykvAa2hjMrnPQ8mrciZDU53kGVkeXqYsXWoBEB3xctTk4GaeiXV
	GEv/iKwl3lEVdeLZFAHSYcqMrwQJUkromjw1gEjW9Zl+ZWvyGORKmnevncbEWDYTyqqrwBBf6YYmR
	LIeOb1AzOpzg4nukcpps41nMKCLGGCrA2kTGuR81GmgXc1Uy1OADJtETS8RwyHAZ54lnp5L1y/amy
	UMENZtI2AzQ/UPlb0mSgPpGFE8ya5BIuQUmmeYp3T1LIoDTqJGpTt7mCutq4JqU94+pT4TGfCXbLi
	nSyfiHq5+Jy5wYb/OrkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bWp-00049W-Dc; Mon, 17 Feb 2020 08:13:19 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bWd-00048z-Rl
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 08:13:09 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Feb 2020 00:13:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,451,1574150400"; d="scan'208";a="382108924"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga004.jf.intel.com with ESMTP; 17 Feb 2020 00:13:06 -0800
Received: from [10.125.252.180] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.180])
 by linux.intel.com (Postfix) with ESMTP id 9AA0A5804A2;
 Mon, 17 Feb 2020 00:13:00 -0800 (PST)
Subject: [PATCH v7 11/12] doc/admin-guide: update perf-security.rst with
 CAP_PERFMON information
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: James Morris <jmorris@namei.org>, Serge Hallyn <serge@hallyn.com>,
 Stephen Smalley <sds@tycho.nsa.gov>, Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Helge Deller <deller@gmx.de>,
 Thomas Gleixner <tglx@linutronix.de>
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
Organization: Intel Corp.
Message-ID: <e035c1d0-801b-d26e-ef6f-6290b594ece4@linux.intel.com>
Date: Mon, 17 Feb 2020 11:12:59 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_001307_947255_2C0F207E 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-man@vger.kernel.org, Andi Kleen <ak@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Update perf-security.rst documentation file with the information
related to usage of CAP_PERFMON capability to secure performance
monitoring and observability operations in system.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
---
 Documentation/admin-guide/perf-security.rst | 65 +++++++++++++--------
 1 file changed, 40 insertions(+), 25 deletions(-)

diff --git a/Documentation/admin-guide/perf-security.rst b/Documentation/admin-guide/perf-security.rst
index 72effa7c23b9..81202d46a1ae 100644
--- a/Documentation/admin-guide/perf-security.rst
+++ b/Documentation/admin-guide/perf-security.rst
@@ -1,6 +1,6 @@
 .. _perf_security:
 
-Perf Events and tool security
+Perf events and tool security
 =============================
 
 Overview
@@ -42,11 +42,11 @@ categories:
 Data that belong to the fourth category can potentially contain
 sensitive process data. If PMUs in some monitoring modes capture values
 of execution context registers or data from process memory then access
-to such monitoring capabilities requires to be ordered and secured
-properly. So, perf_events/Perf performance monitoring is the subject for
-security access control management [5]_ .
+to such monitoring modes requires to be ordered and secured properly.
+So, perf_events performance monitoring and observability operations is
+the subject for security access control management [5]_ .
 
-perf_events/Perf access control
+perf_events access control
 -------------------------------
 
 To perform security checks, the Linux implementation splits processes
@@ -66,11 +66,25 @@ into distinct units, known as capabilities [6]_ , which can be
 independently enabled and disabled on per-thread basis for processes and
 files of unprivileged users.
 
-Unprivileged processes with enabled CAP_SYS_ADMIN capability are treated
+Unprivileged processes with enabled CAP_PERFMON capability are treated
 as privileged processes with respect to perf_events performance
-monitoring and bypass *scope* permissions checks in the kernel.
-
-Unprivileged processes using perf_events system call API is also subject
+monitoring and observability operations, thus, bypass *scope* permissions
+checks in the kernel. CAP_PERFMON implements the principal of least
+privilege [13]_ (POSIX 1003.1e: 2.2.2.39) for performance monitoring and
+observability operations in the kernel and provides secure approach to
+perfomance monitoring and observability in the system.
+
+For backward compatibility reasons access to perf_events monitoring and
+observability operations is also open for CAP_SYS_ADMIN privileged
+processes but CAP_SYS_ADMIN usage for secure monitoring and observability
+use cases is discouraged with respect to CAP_PERFMON capability.
+If system audit records [14]_ for a process using perf_events system call
+API contain denial records of acquiring both CAP_PERFMON and CAP_SYS_ADMIN
+capabilities then providing the process with CAP_PERFMON capability singly
+is recommended as the preferred secure approach to resolve double access
+denial logging related to usage of performance monitoring and observability.
+
+Unprivileged processes using perf_events system call are also subject
 for PTRACE_MODE_READ_REALCREDS ptrace access mode check [7]_ , whose
 outcome determines whether monitoring is permitted. So unprivileged
 processes provided with CAP_SYS_PTRACE capability are effectively
@@ -82,14 +96,14 @@ performance analysis of monitored processes or a system. For example,
 CAP_SYSLOG capability permits reading kernel space memory addresses from
 /proc/kallsyms file.
 
-perf_events/Perf privileged users
+Privileged Perf users groups
 ---------------------------------
 
 Mechanisms of capabilities, privileged capability-dumb files [6]_ and
-file system ACLs [10]_ can be used to create a dedicated group of
-perf_events/Perf privileged users who are permitted to execute
-performance monitoring without scope limits. The following steps can be
-taken to create such a group of privileged Perf users.
+file system ACLs [10]_ can be used to create dedicated groups of
+privileged Perf users who are permitted to execute performance monitoring
+and observability without scope limits. The following steps can be
+taken to create such groups of privileged Perf users.
 
 1. Create perf_users group of privileged Perf users, assign perf_users
    group to Perf tool executable and limit access to the executable for
@@ -108,30 +122,30 @@ taken to create such a group of privileged Perf users.
    -rwxr-x---  2 root perf_users  11M Oct 19 15:12 perf
 
 2. Assign the required capabilities to the Perf tool executable file and
-   enable members of perf_users group with performance monitoring
+   enable members of perf_users group with monitoring and observability
    privileges [6]_ :
 
 ::
 
-   # setcap "cap_sys_admin,cap_sys_ptrace,cap_syslog=ep" perf
-   # setcap -v "cap_sys_admin,cap_sys_ptrace,cap_syslog=ep" perf
+   # setcap "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
+   # setcap -v "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" perf
    perf: OK
    # getcap perf
-   perf = cap_sys_ptrace,cap_sys_admin,cap_syslog+ep
+   perf = cap_sys_ptrace,cap_syslog,cap_perfmon+ep
 
 As a result, members of perf_users group are capable of conducting
-performance monitoring by using functionality of the configured Perf
-tool executable that, when executes, passes perf_events subsystem scope
-checks.
+performance monitoring and observability by using functionality of the
+configured Perf tool executable that, when executes, passes perf_events
+subsystem scope checks.
 
 This specific access control management is only available to superuser
 or root running processes with CAP_SETPCAP, CAP_SETFCAP [6]_
 capabilities.
 
-perf_events/Perf unprivileged users
+Unprivileged users
 -----------------------------------
 
-perf_events/Perf *scope* and *access* control for unprivileged processes
+perf_events *scope* and *access* control for unprivileged processes
 is governed by perf_event_paranoid [2]_ setting:
 
 -1:
@@ -166,7 +180,7 @@ is governed by perf_event_paranoid [2]_ setting:
      perf_event_mlock_kb locking limit is imposed but ignored for
      unprivileged processes with CAP_IPC_LOCK capability.
 
-perf_events/Perf resource control
+Resource control
 ---------------------------------
 
 Open file descriptors
@@ -227,4 +241,5 @@ Bibliography
 .. [10] `<http://man7.org/linux/man-pages/man5/acl.5.html>`_
 .. [11] `<http://man7.org/linux/man-pages/man2/getrlimit.2.html>`_
 .. [12] `<http://man7.org/linux/man-pages/man5/limits.conf.5.html>`_
-
+.. [13] `<https://sites.google.com/site/fullycapable>`_
+.. [14] `<http://man7.org/linux/man-pages/man8/auditd.8.html>`_
-- 
2.20.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
