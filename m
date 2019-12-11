Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7E811AE6F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gHWLpNROJXKuELOxi4XuHjyK4SfYdvMw+dnuhJGAF7k=; b=lEYDDIx+DDSeq9
	Q6K/7esPUe0+VSkEWMP9bCXQWFIXjvyQ00FGWHj9nnbU/oBqSgEw8nChBrAun8BGvhxw0EWAp7rGN
	mnhhesu0Oycc1gaqQSqXQHEgsTDnxvrqBRpXRYk/5FzwXVMZozvFeICYon8xWuf4YZXDZVJjraXT7
	76TIl/mW9f1zFnlaGGnazYVihCDI/TtWhqo58nc1wtTGWZyeBYzKvZk9w2WGXq4G8VfSzMJo4+xwa
	SjOy77IasFAna7bE+ynqNU9czvbOD1JAr0RiNuGW8spNDezs+uwI5o9A65NF5OY0kQKA4AFCSCOf1
	85s+UoI9Kc/qjtKoQFUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3OY-0000ev-0R; Wed, 11 Dec 2019 14:55:18 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3OA-0000bQ-Hk
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:54:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576076092;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VKMysQNz3mfKWf0j//V+OPBl+nUoNAG3+S9K2zyK5z4=;
 b=O1oME1MyLNcO4c6q3J9MphhhHHGbt8vjZKUkt5GxG6INbKmRnvwF/EFanHpZSi+thoSZMh
 TPj/OkNF0E2Jh7FZ22ihuEqC7WRRjOhVgwFM4YP9Q/SFUlvO+cXx8F0tXYO+XHEy1SaUvs
 sYP7gPPbP1wVSGn/GTWSgyDjdgYS6m4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-45-SbcqDtOEMA2V9my8zz4x5A-1; Wed, 11 Dec 2019 09:54:46 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C88DE100A172;
 Wed, 11 Dec 2019 14:54:44 +0000 (UTC)
Received: from krava (unknown [10.43.17.106])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 85A7560BE0;
 Wed, 11 Dec 2019 14:54:42 +0000 (UTC)
Date: Wed, 11 Dec 2019 15:54:40 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: [PATCHES] Fix 'perf top' breakage on architectures not providing
 get_cpuid() Re: perf top for arm64?
Message-ID: <20191211145440.GD25474@krava>
References: <1573045254-39833-1-git-send-email-john.garry@huawei.com>
 <20191106140036.GA6259@kernel.org>
 <418023e7-a50d-cb6f-989f-2e6d114ce5d8@huawei.com>
 <20191210163655.GG14123@krava>
 <952dc484-2739-ee65-f41c-f0198850ab10@huawei.com>
 <20191210170841.GA23357@krava>
 <9a31536b-f266-e305-1107-2f745d0a33e3@huawei.com>
 <20191210195113.GD13965@kernel.org>
 <20191211133319.GA15181@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191211133319.GA15181@kernel.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: SbcqDtOEMA2V9my8zz4x5A-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_065454_668173_8C7BC7F3 
X-CRM114-Status: GOOD (  37.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Peter Zijlstra <peterz@infradead.org>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 Linuxarm <linuxarm@huawei.com>, linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Namhyung Kim <namhyung@kernel.org>, will@kernel.org,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 10:33:19AM -0300, Arnaldo Carvalho de Melo wrote:
> Em Tue, Dec 10, 2019 at 04:51:13PM -0300, Arnaldo Carvalho de Melo escreveu:
> > Em Tue, Dec 10, 2019 at 05:17:56PM +0000, John Garry escreveu:
> > > On 10/12/2019 17:08, Jiri Olsa wrote:
> > > > On Tue, Dec 10, 2019 at 04:52:52PM +0000, John Garry wrote:
> > > > > On 10/12/2019 16:36, Jiri Olsa wrote:
> > > > > > On Tue, Dec 10, 2019 at 04:13:49PM +0000, John Garry wrote:
> > > > > > > I find to my surprise that "perf top" does not work for arm64:
> 
> > > > > > > root@ubuntu:/home/john/linux# tools/perf/perf top
> > > > > > > Couldn't read the cpuid for this machine: No such file or directory
> 
> > > > > > there was recent change that check on cpuid and quits:
> > > > > >     608127f73779 perf top: Initialize perf_env->cpuid, needed by the per arch annotation init routine
> 
> > > > > ok, this is new code. I obviously didn't check the git history...
> 
> > > > > But, apart from this, there are many other places where get_cpuid() is
> > > > > called. I wonder what else we're missing out on, and whether we should still
> > > > > add it.
> 
> > > > right, I was just wondering how come vendor events are working for you,
> > > > but realized we have get_cpuid_str being called in there ;-)
> 
> > > > I think we should add it as you have it prepared already,
> > > > could you post it with bigger changelog that would explain
> > > > where it's being used for arm?
> 
> > > ok, I can look to do that.
> 
> > > But, as you know, we still need to fix perf top for other architectures
> > > affected.
> 
> > Right, I need to make that just a pr_debug() message and then check in
> > the annotation code when that is needed to see if it is set, if not,
> > then show a popup error message and refuse to do whatever annotation
> > feature requires that.
> 
> > Anyway, your patch should make sense and provide info that the ARM64
> > annotation may use now or in the future.
> 
> So can you take a look at the two patches below and provide me Acked-by
> and/or Reviewed-by and/or Tested-by?

looks good to me, but don't have arm server at the moment..

Acked-by: Jiri Olsa <jolsa@redhat.com>

thanks,
jirka

> 
> 
> From 53c6cde6a71a1a9283763bd2e938b229b50c2cd5 Mon Sep 17 00:00:00 2001
> From: Arnaldo Carvalho de Melo <acme@redhat.com>
> Date: Wed, 11 Dec 2019 10:09:24 -0300
> Subject: [PATCH 1/2] perf arch: Make the default get_cpuid() return compatible
>  error
> 
> Some of the functions calling get_cpuid() propagate back the error it
> returns, and all are using errno (positive) values, make the weak
> default get_cpuid() function return ENOSYS to be consistent and to allow
> checking if this is an arch not providing this function or if a provided
> one is having trouble getting the cpuid, to decide if the warning should
> be provided to the user or just a debug message should be emitted.
> 
> Cc: Adrian Hunter <adrian.hunter@intel.com>
> Cc: Jiri Olsa <jolsa@kernel.org>
> Cc: John Garry <john.garry@huawei.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> Cc: Will Deacon <will@kernel.org>
> Link: https://lkml.kernel.org/n/tip-lxwjr0cd2eggzx04a780ffrv@git.kernel.org
> Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
> ---
>  tools/perf/util/header.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tools/perf/util/header.c b/tools/perf/util/header.c
> index becc2d109423..4d39a75551a0 100644
> --- a/tools/perf/util/header.c
> +++ b/tools/perf/util/header.c
> @@ -850,7 +850,7 @@ int __weak strcmp_cpuid_str(const char *mapcpuid, const char *cpuid)
>   */
>  int __weak get_cpuid(char *buffer __maybe_unused, size_t sz __maybe_unused)
>  {
> -	return -1;
> +	return ENOSYS; /* Not implemented */
>  }
>  
>  static int write_cpuid(struct feat_fd *ff,
> -- 
> 2.21.0
> 
> From c6c6a3e2eb6982e37294abcac389effd298cf730 Mon Sep 17 00:00:00 2001
> From: Arnaldo Carvalho de Melo <acme@redhat.com>
> Date: Wed, 11 Dec 2019 10:21:59 -0300
> Subject: [PATCH 2/2] perf top: Do not bail out when perf_env__read_cpuid()
>  returns ENOSYS
> 
> 'perf top' stopped working on hw architectures that do not provide a
> get_cpuid() implementation and thus fallback to the weak get_cpuid()
> default function.
> 
> This is done because at annotation time we may need it in the arch
> specific annotation init routine, but that is only being used by arches
> that do provide a get_cpuid() implementation:
> 
>   $ find tools/  -name "*.[ch]" | xargs grep 'evlist->env'
>   tools/perf/builtin-top.c:	top.evlist->env = &perf_env;
>   tools/perf/util/evsel.c:		return evsel->evlist->env;
>   tools/perf/util/s390-cpumsf.c:	sf->machine_type = s390_cpumsf_get_type(session->evlist->env->cpuid);
>   tools/perf/util/header.c:	session->evlist->env = &header->env;
>   tools/perf/util/sample-raw.c:	const char *arch_pf = perf_env__arch(evlist->env);
>   $
> 
>   $ find tools/perf/arch  -name "*.[ch]" | xargs grep -w get_cpuid
>   tools/perf/arch/x86/util/auxtrace.c:	ret = get_cpuid(buffer, sizeof(buffer));
>   tools/perf/arch/x86/util/header.c:get_cpuid(char *buffer, size_t sz)
>   tools/perf/arch/powerpc/util/header.c:get_cpuid(char *buffer, size_t sz)
>   tools/perf/arch/s390/util/header.c: * Implementation of get_cpuid().
>   tools/perf/arch/s390/util/header.c:int get_cpuid(char *buffer, size_t sz)
>   tools/perf/arch/s390/util/header.c:	if (buf && get_cpuid(buf, 128))
>   $
> 
> For 'report' or 'script', i.e. tools working on perf.data files, that is
> setup while reading the header, its just top that needs to explicitely
> read it at tool start.
> 
> Reported-by: John Garry <john.garry@huawei.com>
> Analysed-by: Jiri Olsa <jolsa@kernel.org>
> Cc: Adrian Hunter <adrian.hunter@intel.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> Cc: Will Deacon <will@kernel.org>
> Link: https://lkml.kernel.org/n/tip-lxwjr0cd2eggzx04a780ffrv@git.kernel.org
> Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
> ---
>  tools/perf/builtin-top.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/tools/perf/builtin-top.c b/tools/perf/builtin-top.c
> index dc80044bc46f..795e353de095 100644
> --- a/tools/perf/builtin-top.c
> +++ b/tools/perf/builtin-top.c
> @@ -1568,9 +1568,13 @@ int cmd_top(int argc, const char **argv)
>  	 */
>  	status = perf_env__read_cpuid(&perf_env);
>  	if (status) {
> -		pr_err("Couldn't read the cpuid for this machine: %s\n",
> -		       str_error_r(errno, errbuf, sizeof(errbuf)));
> -		goto out_delete_evlist;
> +		/*
> +		 * Some arches do not provide a get_cpuid(), so just use pr_debug, otherwise
> +		 * warn the user explicitely.
> +		 */
> +		eprintf(status == ENOSYS ? 1 : 0, verbose,
> +			"Couldn't read the cpuid for this machine: %s\n",
> +			str_error_r(errno, errbuf, sizeof(errbuf)));
>  	}
>  	top.evlist->env = &perf_env;
>  
> -- 
> 2.21.0
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
