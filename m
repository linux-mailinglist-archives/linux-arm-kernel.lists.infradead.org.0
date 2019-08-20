Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0922D96723
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:14:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8a+CoqOXbXaL5KSbF0/JeoR6ospXBx6zz+V+BxUNbGk=; b=mhtQaAdBzQk7rN
	Da9d1zmPsx+45JizPT5rtLBLnhGsDErbFIbChNIN+b09/VcUfA7EyvBYgNxCdSsNzp5N5qyuuELkH
	WhPdR83CY0b9sfvR0fRMnx/nb9xrzSpaQdEzAM8CFRRw0AgMn/SjWQGHD3UER0Jtd7HR9nnXf/GYM
	m/OFE7asZqN92Vmz/Baown2HoRcrqipsepaV4f0B8taFm3jI3oNVCZhQXgGV48WXZgGt9D9i0AZkf
	Ku5nX7wytjJSQni8GqlyZhnkgllk/ZnOi/LtnMp6mygnYyLqSPzmrFlgZubojguCfRZf9tJRP7eXH
	N0dRICsn6ffJYZC0LxCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i07hl-0007nw-Ao; Tue, 20 Aug 2019 17:13:57 +0000
Received: from [177.195.212.43] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i07hb-0007nP-OY; Tue, 20 Aug 2019 17:13:48 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 3E59A40340; Tue, 20 Aug 2019 14:13:42 -0300 (-03)
Date: Tue, 20 Aug 2019 14:13:42 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: "Lubashev, Igor" <ilubashe@akamai.com>
Subject: Re: [PATCH v3 3/4] perf: Use CAP_SYSLOG with kptr_restrict checks
Message-ID: <20190820171342.GD3929@kernel.org>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <291d2cda6ee75b4cd4c9ce717c177db18bf03a31.1565188228.git.ilubashe@akamai.com>
 <CANLsYkxZE0CQJKQ-bFi=zFV5vTCbL2v76+x1fmCpqNruqWiFXg@mail.gmail.com>
 <20190814184814.GM9280@kernel.org>
 <20190814185213.GN9280@kernel.org>
 <23f7b8c7616a467c93ee2c77e8ffd3cf@usma1ex-dag1mb6.msg.corp.akamai.com>
 <CANLsYkxqBcJq8QJq+aLZXQas1VBg_wGh_p5WTUuRVFCYEQWiQw@mail.gmail.com>
 <20190815214236.GA3929@kernel.org>
 <CANLsYkyPkcJWmBZzyjGj3vJRgEtuaun7HQjN1=5wcOyTPnfhmQ@mail.gmail.com>
 <3f70f6be3a464ca5b4cf563433933245@usma1ex-dag1mb6.msg.corp.akamai.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3f70f6be3a464ca5b4cf563433933245@usma1ex-dag1mb6.msg.corp.akamai.com>
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
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, James Morris <jmorris@namei.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, Aug 19, 2019 at 10:22:07PM +0000, Lubashev, Igor escreveu:
> On Mon, August 19, 2019 at 12:51 PM Mathieu Poirier <mathieu.poirier@linaro.org> wrote:
> > On Thu, 15 Aug 2019 at 15:42, Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com> wrote:
> > Things are working properly on your perf/cap branch.  I tested with on both
> > x86 and ARM.
 
> Mathieu, you are probably testing with euid==0.  If you were to test
> with euid!=0 but with CAP_SYSLOG and no libcap (and kptr_restrict=0,
> perf_event_paranoid=2), you would likely hit the bug that you
> identified in __perf_event__synthesize_kermel_mmap().
 
> See https://lkml.kernel.org/lkml/930a59730c0d495f8c5acf4f99048e8d@usma1ex-dag1mb6.msg.corp.akamai.com for the fix (Option 1 only or Options 1+2).
> 
> Arnaldo, once we decide what the right fix is, I am happy to post the update (options 1, 1+2) as a patch series.

I think you should get the checks for ref_reloc_sym in place so as to
make the code overall more robust, and also go on continuing to make the
checks in tools/perf/ to match what is checked on the other side of the
mirror, i.e. by the kernel, so from a quick read, please put first the
robustness patches (check ref_reloc_sym) do your other suggestions and
update the warnings, then refresh the two patches that still are not in
my perf/core branch:

[acme@quaco perf]$ git rebase perf/core
First, rewinding head to replay your work on top of it...
Applying: perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid checks
Applying: perf symbols: Use CAP_SYSLOG with kptr_restrict checks
[acme@quaco perf]$ 

I've pushed out perf/cap, so you can go from there as it is rebased on
my current perf/core.

Then test all these cases: with/without libcap, with euid==0 and
different than zero, with capabilities, etc, patch by patch so that we
don't break bisection nor regress,

Thanks and keep up the good work!

- Arnaldo
 
> - Igor
> 
> 
> > > > I am not sure how this can be fixed.  I counted a total of 19
> > > > instances where kmap->ref_reloc_sym->XYZ is called, only 2 of wich
> > > > care to check if kmap->ref_reloc_sym is valid before proceeding.  As
> > > > such I must hope that in the 17 other cases, kmap->ref_reloc_sym is
> > > > guaranteed to be valid.  If I am correct then all we need is to
> > > > check for a valid pointer in _perf_event__synthesize_kernel_mmap().
> > > > Otherwise it will be a little harder.
> > > >
> > > > Mathieu
> 

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
