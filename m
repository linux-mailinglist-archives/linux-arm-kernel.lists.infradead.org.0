Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C47F11AC1C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:33:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nA4L1MhkJf/3E8EAkdO8JVH4rMWKVKQn+Qit7wIi+pg=; b=d1VDSEFqPiaahT
	VNVs+nPebuePVeNv+a7WSxCbDUYmuM84IpZVTxJnSbNy7hAQV7d3mjN0j2P2VnVNWQDLG1C2B6nZ9
	DtWSxnfZgMAburn9rWXwL5XMUE67rHY5dwSr1x1Y/o/3FX8NZjJ6KqyVI0SaGlUiRg0suek5joOpC
	JxtJ9pgDmAGch3w17+DGYgIKhy3EFnOR9Iz7ynX+v3jIpUf2QQDjrdrVVuFEamTLuPI3NLWHvmO0W
	KemM1NiTv22iWwtwuCa8uE9zAJ0P5jpDwjMCeqcazISTiMVZGszuPb/jsylplvwRgcZ1qTAfWCxKO
	IApoEXPNP1d2CtoLwUpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if27N-0001Ak-Tx; Wed, 11 Dec 2019 13:33:29 +0000
Received: from [179.97.35.50] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if27H-0001Ac-9G; Wed, 11 Dec 2019 13:33:23 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 697A640352; Wed, 11 Dec 2019 10:33:19 -0300 (-03)
Date: Wed, 11 Dec 2019 10:33:19 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: John Garry <john.garry@huawei.com>, Jiri Olsa <jolsa@redhat.com>
Subject: [PATCHES] Fix 'perf top' breakage on architectures not providing
 get_cpuid() Re: perf top for arm64?
Message-ID: <20191211133319.GA15181@kernel.org>
References: <1573045254-39833-1-git-send-email-john.garry@huawei.com>
 <20191106140036.GA6259@kernel.org>
 <418023e7-a50d-cb6f-989f-2e6d114ce5d8@huawei.com>
 <20191210163655.GG14123@krava>
 <952dc484-2739-ee65-f41c-f0198850ab10@huawei.com>
 <20191210170841.GA23357@krava>
 <9a31536b-f266-e305-1107-2f745d0a33e3@huawei.com>
 <20191210195113.GD13965@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210195113.GD13965@kernel.org>
X-Url: http://acmel.wordpress.com
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
Cc: mark.rutland@arm.com, Peter Zijlstra <peterz@infradead.org>,
 linux-kernel@vger.kernel.org, Linuxarm <linuxarm@huawei.com>,
 linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Namhyung Kim <namhyung@kernel.org>, will@kernel.org,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Tue, Dec 10, 2019 at 04:51:13PM -0300, Arnaldo Carvalho de Melo escreveu:
> Em Tue, Dec 10, 2019 at 05:17:56PM +0000, John Garry escreveu:
> > On 10/12/2019 17:08, Jiri Olsa wrote:
> > > On Tue, Dec 10, 2019 at 04:52:52PM +0000, John Garry wrote:
> > > > On 10/12/2019 16:36, Jiri Olsa wrote:
> > > > > On Tue, Dec 10, 2019 at 04:13:49PM +0000, John Garry wrote:
> > > > > > I find to my surprise that "perf top" does not work for arm64:

> > > > > > root@ubuntu:/home/john/linux# tools/perf/perf top
> > > > > > Couldn't read the cpuid for this machine: No such file or directory

> > > > > there was recent change that check on cpuid and quits:
> > > > >     608127f73779 perf top: Initialize perf_env->cpuid, needed by the per arch annotation init routine

> > > > ok, this is new code. I obviously didn't check the git history...

> > > > But, apart from this, there are many other places where get_cpuid() is
> > > > called. I wonder what else we're missing out on, and whether we should still
> > > > add it.

> > > right, I was just wondering how come vendor events are working for you,
> > > but realized we have get_cpuid_str being called in there ;-)

> > > I think we should add it as you have it prepared already,
> > > could you post it with bigger changelog that would explain
> > > where it's being used for arm?

> > ok, I can look to do that.

> > But, as you know, we still need to fix perf top for other architectures
> > affected.

> Right, I need to make that just a pr_debug() message and then check in
> the annotation code when that is needed to see if it is set, if not,
> then show a popup error message and refuse to do whatever annotation
> feature requires that.

> Anyway, your patch should make sense and provide info that the ARM64
> annotation may use now or in the future.

So can you take a look at the two patches below and provide me Acked-by
and/or Reviewed-by and/or Tested-by?


From 53c6cde6a71a1a9283763bd2e938b229b50c2cd5 Mon Sep 17 00:00:00 2001
From: Arnaldo Carvalho de Melo <acme@redhat.com>
Date: Wed, 11 Dec 2019 10:09:24 -0300
Subject: [PATCH 1/2] perf arch: Make the default get_cpuid() return compatible
 error

Some of the functions calling get_cpuid() propagate back the error it
returns, and all are using errno (positive) values, make the weak
default get_cpuid() function return ENOSYS to be consistent and to allow
checking if this is an arch not providing this function or if a provided
one is having trouble getting the cpuid, to decide if the warning should
be provided to the user or just a debug message should be emitted.

Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Jiri Olsa <jolsa@kernel.org>
Cc: John Garry <john.garry@huawei.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Will Deacon <will@kernel.org>
Link: https://lkml.kernel.org/n/tip-lxwjr0cd2eggzx04a780ffrv@git.kernel.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/util/header.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/perf/util/header.c b/tools/perf/util/header.c
index becc2d109423..4d39a75551a0 100644
--- a/tools/perf/util/header.c
+++ b/tools/perf/util/header.c
@@ -850,7 +850,7 @@ int __weak strcmp_cpuid_str(const char *mapcpuid, const char *cpuid)
  */
 int __weak get_cpuid(char *buffer __maybe_unused, size_t sz __maybe_unused)
 {
-	return -1;
+	return ENOSYS; /* Not implemented */
 }
 
 static int write_cpuid(struct feat_fd *ff,
-- 
2.21.0

From c6c6a3e2eb6982e37294abcac389effd298cf730 Mon Sep 17 00:00:00 2001
From: Arnaldo Carvalho de Melo <acme@redhat.com>
Date: Wed, 11 Dec 2019 10:21:59 -0300
Subject: [PATCH 2/2] perf top: Do not bail out when perf_env__read_cpuid()
 returns ENOSYS

'perf top' stopped working on hw architectures that do not provide a
get_cpuid() implementation and thus fallback to the weak get_cpuid()
default function.

This is done because at annotation time we may need it in the arch
specific annotation init routine, but that is only being used by arches
that do provide a get_cpuid() implementation:

  $ find tools/  -name "*.[ch]" | xargs grep 'evlist->env'
  tools/perf/builtin-top.c:	top.evlist->env = &perf_env;
  tools/perf/util/evsel.c:		return evsel->evlist->env;
  tools/perf/util/s390-cpumsf.c:	sf->machine_type = s390_cpumsf_get_type(session->evlist->env->cpuid);
  tools/perf/util/header.c:	session->evlist->env = &header->env;
  tools/perf/util/sample-raw.c:	const char *arch_pf = perf_env__arch(evlist->env);
  $

  $ find tools/perf/arch  -name "*.[ch]" | xargs grep -w get_cpuid
  tools/perf/arch/x86/util/auxtrace.c:	ret = get_cpuid(buffer, sizeof(buffer));
  tools/perf/arch/x86/util/header.c:get_cpuid(char *buffer, size_t sz)
  tools/perf/arch/powerpc/util/header.c:get_cpuid(char *buffer, size_t sz)
  tools/perf/arch/s390/util/header.c: * Implementation of get_cpuid().
  tools/perf/arch/s390/util/header.c:int get_cpuid(char *buffer, size_t sz)
  tools/perf/arch/s390/util/header.c:	if (buf && get_cpuid(buf, 128))
  $

For 'report' or 'script', i.e. tools working on perf.data files, that is
setup while reading the header, its just top that needs to explicitely
read it at tool start.

Reported-by: John Garry <john.garry@huawei.com>
Analysed-by: Jiri Olsa <jolsa@kernel.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Will Deacon <will@kernel.org>
Link: https://lkml.kernel.org/n/tip-lxwjr0cd2eggzx04a780ffrv@git.kernel.org
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/builtin-top.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/tools/perf/builtin-top.c b/tools/perf/builtin-top.c
index dc80044bc46f..795e353de095 100644
--- a/tools/perf/builtin-top.c
+++ b/tools/perf/builtin-top.c
@@ -1568,9 +1568,13 @@ int cmd_top(int argc, const char **argv)
 	 */
 	status = perf_env__read_cpuid(&perf_env);
 	if (status) {
-		pr_err("Couldn't read the cpuid for this machine: %s\n",
-		       str_error_r(errno, errbuf, sizeof(errbuf)));
-		goto out_delete_evlist;
+		/*
+		 * Some arches do not provide a get_cpuid(), so just use pr_debug, otherwise
+		 * warn the user explicitely.
+		 */
+		eprintf(status == ENOSYS ? 1 : 0, verbose,
+			"Couldn't read the cpuid for this machine: %s\n",
+			str_error_r(errno, errbuf, sizeof(errbuf)));
 	}
 	top.evlist->env = &perf_env;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
