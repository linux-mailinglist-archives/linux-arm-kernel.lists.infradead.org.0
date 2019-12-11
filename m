Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA86E11B114
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:28:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Py03iwBNB21lhRwjo0EYhUdbZpYjuYZkVCUrnrHUFhM=; b=OAwENfRSRSnvu2
	dqnDX8otnClGm7pWBNrT6/Z03VRX4Za76INTk4K5Z9+SUAot5bBygxeKWCYvn4MzszwYYY9rWXFAf
	W73bQ3H31Sb7oQeSm3V1KjHlTtjxbRZqH4SKjjIT8V4AOKqJSRwSHPuTHHhC771PADEPosdHgkvkE
	7w+FNbgQTle0Dfr/er9y+rs13/KGSWSBgF7uda2XtLfG3Opxxxzstibu0Ywhg4LTkIyCrAkd0tFWy
	BROOKX9zUhiXz+0+esu8786dvAVhmgflPBfYhKKdSnz6kIGnK3sBOsSXQiZRMCgTn1s0BwgTVTFM/
	34bEnE68s8WoQ/1A6sCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3ub-0004zG-73; Wed, 11 Dec 2019 15:28:25 +0000
Received: from [179.97.35.50] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3uI-0004ne-RN; Wed, 11 Dec 2019 15:28:07 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 8E6D640352; Wed, 11 Dec 2019 12:28:04 -0300 (-03)
Date: Wed, 11 Dec 2019 12:28:04 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHES] Fix 'perf top' breakage on architectures not providing
 get_cpuid() Re: perf top for arm64?
Message-ID: <20191211152804.GD15181@kernel.org>
References: <1573045254-39833-1-git-send-email-john.garry@huawei.com>
 <20191106140036.GA6259@kernel.org>
 <418023e7-a50d-cb6f-989f-2e6d114ce5d8@huawei.com>
 <20191210163655.GG14123@krava>
 <952dc484-2739-ee65-f41c-f0198850ab10@huawei.com>
 <20191210170841.GA23357@krava>
 <9a31536b-f266-e305-1107-2f745d0a33e3@huawei.com>
 <20191210195113.GD13965@kernel.org>
 <20191211133319.GA15181@kernel.org>
 <20191211144643.GC35097@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211144643.GC35097@lakrids.cambridge.arm.com>
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
Cc: Peter Zijlstra <peterz@infradead.org>, will@kernel.org,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 Linuxarm <linuxarm@huawei.com>, linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, Dec 11, 2019 at 02:46:43PM +0000, Mark Rutland escreveu:
> On Wed, Dec 11, 2019 at 10:33:19AM -0300, Arnaldo Carvalho de Melo wrote:
> > So can you take a look at the two patches below and provide me Acked-by
> > and/or Reviewed-by and/or Tested-by?
> 
> I just gave this a spin. With vanilla v5.5-rc1 perf top behaves as John
> reported, and with these applied atop perf works as expected:
> 
> Tested-by: Mark Rutland <mark.rutland@arm.com>
> 
> >From scaning the code, the only other user of get_cpuid() that ends up
> giving up is perf kvm, but AFAICT that never supported arm64, so that
> looks sound to me:
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks guys, added all the tags, appreciated, I also added this:

Fixes: 608127f73779 ("perf top: Initialize perf_env->cpuid, needed by the per arch annotation init routine")

Thanks Jiri for pointing to it.

- Arnaldo
 
> Thanks,
> Mark.
> 
> > From 53c6cde6a71a1a9283763bd2e938b229b50c2cd5 Mon Sep 17 00:00:00 2001
> > From: Arnaldo Carvalho de Melo <acme@redhat.com>
> > Date: Wed, 11 Dec 2019 10:09:24 -0300
> > Subject: [PATCH 1/2] perf arch: Make the default get_cpuid() return compatible
> >  error
> > 
> > Some of the functions calling get_cpuid() propagate back the error it
> > returns, and all are using errno (positive) values, make the weak
> > default get_cpuid() function return ENOSYS to be consistent and to allow
> > checking if this is an arch not providing this function or if a provided
> > one is having trouble getting the cpuid, to decide if the warning should
> > be provided to the user or just a debug message should be emitted.
> > 
> > Cc: Adrian Hunter <adrian.hunter@intel.com>
> > Cc: Jiri Olsa <jolsa@kernel.org>
> > Cc: John Garry <john.garry@huawei.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Namhyung Kim <namhyung@kernel.org>
> > Cc: Will Deacon <will@kernel.org>
> > Link: https://lkml.kernel.org/n/tip-lxwjr0cd2eggzx04a780ffrv@git.kernel.org
> > Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
> > ---
> >  tools/perf/util/header.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/tools/perf/util/header.c b/tools/perf/util/header.c
> > index becc2d109423..4d39a75551a0 100644
> > --- a/tools/perf/util/header.c
> > +++ b/tools/perf/util/header.c
> > @@ -850,7 +850,7 @@ int __weak strcmp_cpuid_str(const char *mapcpuid, const char *cpuid)
> >   */
> >  int __weak get_cpuid(char *buffer __maybe_unused, size_t sz __maybe_unused)
> >  {
> > -	return -1;
> > +	return ENOSYS; /* Not implemented */
> >  }
> >  
> >  static int write_cpuid(struct feat_fd *ff,
> > -- 
> > 2.21.0
> > 
> > From c6c6a3e2eb6982e37294abcac389effd298cf730 Mon Sep 17 00:00:00 2001
> > From: Arnaldo Carvalho de Melo <acme@redhat.com>
> > Date: Wed, 11 Dec 2019 10:21:59 -0300
> > Subject: [PATCH 2/2] perf top: Do not bail out when perf_env__read_cpuid()
> >  returns ENOSYS
> > 
> > 'perf top' stopped working on hw architectures that do not provide a
> > get_cpuid() implementation and thus fallback to the weak get_cpuid()
> > default function.
> > 
> > This is done because at annotation time we may need it in the arch
> > specific annotation init routine, but that is only being used by arches
> > that do provide a get_cpuid() implementation:
> > 
> >   $ find tools/  -name "*.[ch]" | xargs grep 'evlist->env'
> >   tools/perf/builtin-top.c:	top.evlist->env = &perf_env;
> >   tools/perf/util/evsel.c:		return evsel->evlist->env;
> >   tools/perf/util/s390-cpumsf.c:	sf->machine_type = s390_cpumsf_get_type(session->evlist->env->cpuid);
> >   tools/perf/util/header.c:	session->evlist->env = &header->env;
> >   tools/perf/util/sample-raw.c:	const char *arch_pf = perf_env__arch(evlist->env);
> >   $
> > 
> >   $ find tools/perf/arch  -name "*.[ch]" | xargs grep -w get_cpuid
> >   tools/perf/arch/x86/util/auxtrace.c:	ret = get_cpuid(buffer, sizeof(buffer));
> >   tools/perf/arch/x86/util/header.c:get_cpuid(char *buffer, size_t sz)
> >   tools/perf/arch/powerpc/util/header.c:get_cpuid(char *buffer, size_t sz)
> >   tools/perf/arch/s390/util/header.c: * Implementation of get_cpuid().
> >   tools/perf/arch/s390/util/header.c:int get_cpuid(char *buffer, size_t sz)
> >   tools/perf/arch/s390/util/header.c:	if (buf && get_cpuid(buf, 128))
> >   $
> > 
> > For 'report' or 'script', i.e. tools working on perf.data files, that is
> > setup while reading the header, its just top that needs to explicitely
> > read it at tool start.
> > 
> > Reported-by: John Garry <john.garry@huawei.com>
> > Analysed-by: Jiri Olsa <jolsa@kernel.org>
> > Cc: Adrian Hunter <adrian.hunter@intel.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Namhyung Kim <namhyung@kernel.org>
> > Cc: Will Deacon <will@kernel.org>
> > Link: https://lkml.kernel.org/n/tip-lxwjr0cd2eggzx04a780ffrv@git.kernel.org
> > Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
> > ---
> >  tools/perf/builtin-top.c | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> > 
> > diff --git a/tools/perf/builtin-top.c b/tools/perf/builtin-top.c
> > index dc80044bc46f..795e353de095 100644
> > --- a/tools/perf/builtin-top.c
> > +++ b/tools/perf/builtin-top.c
> > @@ -1568,9 +1568,13 @@ int cmd_top(int argc, const char **argv)
> >  	 */
> >  	status = perf_env__read_cpuid(&perf_env);
> >  	if (status) {
> > -		pr_err("Couldn't read the cpuid for this machine: %s\n",
> > -		       str_error_r(errno, errbuf, sizeof(errbuf)));
> > -		goto out_delete_evlist;
> > +		/*
> > +		 * Some arches do not provide a get_cpuid(), so just use pr_debug, otherwise
> > +		 * warn the user explicitely.
> > +		 */
> > +		eprintf(status == ENOSYS ? 1 : 0, verbose,
> > +			"Couldn't read the cpuid for this machine: %s\n",
> > +			str_error_r(errno, errbuf, sizeof(errbuf)));
> >  	}
> >  	top.evlist->env = &perf_env;
> >  
> > -- 
> > 2.21.0
> > 

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
