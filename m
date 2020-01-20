Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D4F142936
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 12:25:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdeAbE/YycSYNiSoYAKZsMDpHyXzCgHkFi0iU5ocfhg=; b=Qv8bfJYahFUuoD
	yifSOEq6lPEL6YUjXeYbGG0ngdDan88kveYzfHxKM5PyF8PqJTiADe0aXyktEzn9F+hC4XbcJCym7
	+FS7yYnyVwXyhfdjYnh3Y9PBwtmemeQz//cRXylWIqiFLAfyzSJqUqKiHpJSJm8Z9w4CucbpE61cn
	AKJBXUfUjaXZLEwM4aaZD9/gx7M5EiPvVSbCXp52wIdBUBWTUwcN5Z6g7FU32+C2jCGYe81S89u73
	Pz42D8O5ChettOjpSiMujQZD34+wRS51DRnfShX7TT9f/ydBBMWqzsPUttpaK6x5pLYbHMFA0f9vE
	Fv67a0p5iIE3LmlS33mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVBO-000303-Ap; Mon, 20 Jan 2020 11:25:26 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVAn-0001Z1-Rp
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 11:24:54 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 03:24:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,341,1574150400"; d="scan'208";a="228356605"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga006.jf.intel.com with ESMTP; 20 Jan 2020 03:24:48 -0800
Received: from [10.125.252.193] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.193])
 by linux.intel.com (Postfix) with ESMTP id D0AB55803C5;
 Mon, 20 Jan 2020 03:24:40 -0800 (PST)
Subject: [PATCH v5 02/10] perf/core: open access to the core for CAP_PERFMON
 privileged process
From: Alexey Budankov <alexey.budankov@linux.intel.com>
To: Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>, Will Deacon <will.deacon@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Robert Richter <rric@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>
References: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
Organization: Intel Corp.
Message-ID: <11240db3-a8a0-f925-e905-bfc9dc544646@linux.intel.com>
Date: Mon, 20 Jan 2020 14:24:39 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <0548c832-7f4b-dc4c-8883-3f2b6d351a08@linux.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_032449_942051_B7A5C5BF 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: Song Liu <songliubraving@fb.com>, Andi Kleen <ak@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Open access to monitoring of kernel code, system, tracepoints and namespaces
data for a CAP_PERFMON privileged process. For backward compatibility
reasons access to perf_events subsystem remains open for CAP_SYS_ADMIN
privileged processes but CAP_SYS_ADMIN usage for secure perf_events
monitoring is discouraged with respect to CAP_PERFMON capability.
Providing the access under CAP_PERFMON capability singly, without the rest
of CAP_SYS_ADMIN credentials, excludes chances to misuse the credentials
and makes operation more secure.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
---
 include/linux/perf_event.h | 6 +++---
 kernel/events/core.c       | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h
index 6d4c22aee384..730469babcc2 100644
--- a/include/linux/perf_event.h
+++ b/include/linux/perf_event.h
@@ -1285,7 +1285,7 @@ static inline int perf_is_paranoid(void)
 
 static inline int perf_allow_kernel(struct perf_event_attr *attr)
 {
-	if (sysctl_perf_event_paranoid > 1 && !capable(CAP_SYS_ADMIN))
+	if (sysctl_perf_event_paranoid > 1 && !perfmon_capable())
 		return -EACCES;
 
 	return security_perf_event_open(attr, PERF_SECURITY_KERNEL);
@@ -1293,7 +1293,7 @@ static inline int perf_allow_kernel(struct perf_event_attr *attr)
 
 static inline int perf_allow_cpu(struct perf_event_attr *attr)
 {
-	if (sysctl_perf_event_paranoid > 0 && !capable(CAP_SYS_ADMIN))
+	if (sysctl_perf_event_paranoid > 0 && !perfmon_capable())
 		return -EACCES;
 
 	return security_perf_event_open(attr, PERF_SECURITY_CPU);
@@ -1301,7 +1301,7 @@ static inline int perf_allow_cpu(struct perf_event_attr *attr)
 
 static inline int perf_allow_tracepoint(struct perf_event_attr *attr)
 {
-	if (sysctl_perf_event_paranoid > -1 && !capable(CAP_SYS_ADMIN))
+	if (sysctl_perf_event_paranoid > -1 && !perfmon_capable())
 		return -EPERM;
 
 	return security_perf_event_open(attr, PERF_SECURITY_TRACEPOINT);
diff --git a/kernel/events/core.c b/kernel/events/core.c
index a1f8bde19b56..b1fcbbe24849 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -11186,7 +11186,7 @@ SYSCALL_DEFINE5(perf_event_open,
 	}
 
 	if (attr.namespaces) {
-		if (!capable(CAP_SYS_ADMIN))
+		if (!perfmon_capable())
 			return -EACCES;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
