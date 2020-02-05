Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBE4153664
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 18:25:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/hoK+B9AThOtPNZ/Q4+siWkwT1uQxm7sO+UzZL5qAw4=; b=mXMk+va4qqoIUI
	YTwlz6T01g7As3EPz+BLXYJJeJZjJoGwmib7mTWQSyzAN5r1uQWxkLVijcbDZIBNd+p8hVcY+y0JB
	9t6QFltjtXIRQVo7rbjxM4BDU1CNjIRxt09AaC45XM0YAljknKzyuAjCCyXXcuD4CZc2pYaRFnsqD
	ETc4yNOIjhgps6XmJgMviixWU24nLFGsMASA1FirsJvERKMnuWveO07+bkQIeKJ6FMMxCVEYD/4cI
	ReQWd9xjTtRR/JvRHY3WlO01C+RGCCqEn74mvFmE5R3jfjBpbC4GAJS9ViC06sQd/cvRNMA9kNvPt
	/fqNdEDO34ikIz0kwrYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOQx-000802-9o; Wed, 05 Feb 2020 17:25:51 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOQr-0007zd-3W
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 17:25:47 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 09:25:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,406,1574150400"; d="scan'208";a="404215302"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga005.jf.intel.com with ESMTP; 05 Feb 2020 09:25:43 -0800
Received: from [10.252.5.149] (abudanko-mobl.ccr.corp.intel.com [10.252.5.149])
 by linux.intel.com (Postfix) with ESMTP id 8BCCE5803E3;
 Wed,  5 Feb 2020 09:25:36 -0800 (PST)
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: [PATCH v6 00/10] Introduce CAP_PERFMON to secure system performance
 monitoring and observability
To: James Morris <jmorris@namei.org>, Serge Hallyn <serge@hallyn.com>,
 Stephen Smalley <sds@tycho.nsa.gov>, Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>
Organization: Intel Corp.
Message-ID: <576a6141-36d4-14c0-b395-8d195892b916@linux.intel.com>
Date: Wed, 5 Feb 2020 20:25:34 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_092545_197412_6FDD4E17 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Stephane Eranian <eranian@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Currently access to perf_events, i915_perf and other performance monitoring and
observability subsystems of the kernel is open only for a privileged process [1]
with CAP_SYS_ADMIN capability enabled in the process effective set [2].

This patch set introduces CAP_PERFMON capability designed to secure system
performance monitoring and observability operations so that CAP_PERFMON would
assist CAP_SYS_ADMIN capability in its governing role for performance monitoring
and observability subsystems of the kernel.

CAP_PERFMON intends to harden system security and integrity during performance 
monitoring and observability operations by decreasing attack surface that is 
available to a CAP_SYS_ADMIN privileged process [2]. Providing the access to
performance monitoring and observability operations under CAP_PERFMON capability
singly, without the rest of CAP_SYS_ADMIN credentials, excludes chances to misuse
the credentials and makes the operation more secure. Thus, CAP_PERFMON implements
the principal of least privilege for performance monitoring and observability 
operations (POSIX IEEE 1003.1e: 2.2.2.39 principle of least privilege: A security
design principle that states that a process or program be granted only those
privileges (e.g., capabilities) necessary to accomplish its legitimate function,
and only for the time that such privileges are actually required)

CAP_PERFMON intends to meet the demand to secure system performance monitoring
and observability operations for adoption in security sensitive, restricted,
multiuser production environments (e.g. HPC clusters, cloud and virtual compute
environments), where root or CAP_SYS_ADMIN credentials are not available to mass
users of a system, and securely unblock accessibility of system performance 
monitoring and observability operations beyond root and CAP_SYS_ADMIN use cases.

CAP_PERFMON intends to take over CAP_SYS_ADMIN credentials related to system
performance monitoring and observability operations and balance amount of
CAP_SYS_ADMIN credentials following the recommendations in the capabilities man
page [2] for CAP_SYS_ADMIN: "Note: this capability is overloaded; see Notes to
kernel developers, below." For backward compatibility reasons access to system
performance monitoring and observability subsystems of the kernel remains open
for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN capability usage for
secure system performance monitoring and observability operations is discouraged
with respect to the designed CAP_PERFMON capability.

Possible alternative solution to this system security hardening, capabilities
balancing task of making performance monitoring and observability operations
more secure and accessible could be to use the existing CAP_SYS_PTRACE capability
to govern system performance monitoring and observability subsystems.
However CAP_SYS_PTRACE capability still provides users with more credentials
than are required for secure performance monitoring and observability operations
and this excess is avoided by the designed CAP_PERFMON capability.

Although software running under CAP_PERFMON can not ensure avoidance of related
hardware issues, the software can still mitigate those issues following the
official hardware issues mitigation procedure [3]. The bugs in the software
itself can be fixed following the standard kernel development process [4] to
maintain and harden security of system performance monitoring and observability
operations. Finally, the patch set is shaped in the way that simplifies
backtracking procedure of possible induced issues [5] as much as possible.

The patch set is for tip perf/core repository:
git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip perf/core
sha1: 0cc4bd8f70d1ea2940295f1050508c663fe9eff9

---
Changes in v6:
- avoided noaudit checks in perfmon_capable() to explicitly advertise CAP_PERFMON
  usage thru audit logs to secure system performance monitoring and observability
Changes in v5:
- renamed CAP_SYS_PERFMON to CAP_PERFMON
- extended perfmon_capable() with noaudit checks
Changes in v4:
- converted perfmon_capable() into an inline function
- made perf_events kprobes, uprobes, hw breakpoints and namespaces data available
  to CAP_SYS_PERFMON privileged processes
- applied perfmon_capable() to drivers/perf and drivers/oprofile
- extended __cmd_ftrace() with support of CAP_SYS_PERFMON
Changes in v3:
- implemented perfmon_capable() macros aggregating required capabilities checks
Changes in v2:
- made perf_events trace points available to CAP_SYS_PERFMON privileged processes
- made perf_event_paranoid_check() treat CAP_SYS_PERFMON equally to CAP_SYS_ADMIN
- applied CAP_SYS_PERFMON to i915_perf, bpf_trace, powerpc and parisc system
  performance monitoring and observability related subsystems

---
Alexey Budankov (10):
  capabilities: introduce CAP_PERFMON to kernel and user space
  perf/core: open access to the core for CAP_PERFMON privileged process
  perf/core: open access to probes for CAP_PERFMON privileged process
  perf tool: extend Perf tool with CAP_PERFMON capability support
  drm/i915/perf: open access for CAP_PERFMON privileged process
  trace/bpf_trace: open access for CAP_PERFMON privileged process
  powerpc/perf: open access for CAP_PERFMON privileged process
  parisc/perf: open access for CAP_PERFMON privileged process
  drivers/perf: open access for CAP_PERFMON privileged process
  drivers/oprofile: open access for CAP_PERFMON privileged process

 arch/parisc/kernel/perf.c           |  2 +-
 arch/powerpc/perf/imc-pmu.c         |  4 ++--
 drivers/gpu/drm/i915/i915_perf.c    | 13 ++++++-------
 drivers/oprofile/event_buffer.c     |  2 +-
 drivers/perf/arm_spe_pmu.c          |  4 ++--
 include/linux/capability.h          |  4 ++++
 include/linux/perf_event.h          |  6 +++---
 include/uapi/linux/capability.h     |  8 +++++++-
 kernel/events/core.c                |  6 +++---
 kernel/trace/bpf_trace.c            |  2 +-
 security/selinux/include/classmap.h |  4 ++--
 tools/perf/builtin-ftrace.c         |  5 +++--
 tools/perf/design.txt               |  3 ++-
 tools/perf/util/cap.h               |  4 ++++
 tools/perf/util/evsel.c             | 10 +++++-----
 tools/perf/util/util.c              |  1 +
 16 files changed, 47 insertions(+), 31 deletions(-)

---
Testing and validation (Intel Skylake, 8 cores, Fedora 29, 5.5.0-rc3+, x86_64):

libcap library [6], [7], [8] and Perf tool can be used to apply CAP_PERFMON 
capability for secure system performance monitoring and observability beyond the
scope permitted by the system wide perf_event_paranoid kernel setting [9] and
below are the steps for evaluation:

  - patch, build and boot the kernel
  - patch, build Perf tool e.g. to /home/user/perf
  ...
  # git clone git://git.kernel.org/pub/scm/libs/libcap/libcap.git libcap
  # pushd libcap
  # patch libcap/include/uapi/linux/capabilities.h with [PATCH 1]
  # make
  # pushd progs
  # ./setcap "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" /home/user/perf
  # ./setcap -v "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" /home/user/perf
  /home/user/perf: OK
  # ./getcap /home/user/perf
  /home/user/perf = cap_sys_ptrace,cap_syslog,cap_perfmon+ep
  # echo 2 > /proc/sys/kernel/perf_event_paranoid
  # cat /proc/sys/kernel/perf_event_paranoid 
  2
  ...
  $ /home/user/perf top
    ... works as expected ...
  $ cat /proc/`pidof perf`/status
  Name:	perf
  Umask:	0002
  State:	S (sleeping)
  Tgid:	2958
  Ngid:	0
  Pid:	2958
  PPid:	9847
  TracerPid:	0
  Uid:	500	500	500	500
  Gid:	500	500	500	500
  FDSize:	256
  ...
  CapInh:	0000000000000000
  CapPrm:	0000004400080000
  CapEff:	0000004400080000 => 01000100 00000000 00001000 00000000 00000000
                                     cap_perfmon,cap_sys_ptrace,cap_syslog
  CapBnd:	0000007fffffffff
  CapAmb:	0000000000000000
  NoNewPrivs:	0
  Seccomp:	0
  Speculation_Store_Bypass:	thread vulnerable
  Cpus_allowed:	ff
  Cpus_allowed_list:	0-7
  ...

Usage of cap_perfmon effectively avoids unused credentials excess:

- with cap_sys_admin:
  CapEff:	0000007fffffffff => 01111111 11111111 11111111 11111111 11111111

- with cap_perfmon:
  CapEff:	0000004400080000 => 01000100 00000000 00001000 00000000 00000000
                                    38   34               19
                               perfmon   syslog           sys_ptrace

---
[1] https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html
[2] http://man7.org/linux/man-pages/man7/capabilities.7.html
[3] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html
[4] https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
[5] https://www.kernel.org/doc/html/latest/process/management-style.html#decisions
[6] http://man7.org/linux/man-pages/man8/setcap.8.html
[7] https://git.kernel.org/pub/scm/libs/libcap/libcap.git
[8] https://sites.google.com/site/fullycapable/, posix_1003.1e-990310.pdf
[9] http://man7.org/linux/man-pages/man2/perf_event_open.2.html

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
