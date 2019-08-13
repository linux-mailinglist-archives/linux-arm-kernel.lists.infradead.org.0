Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D0B8BA09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 15:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60SrPSqlYIbbUZNSeWSCmuRRDDp5s7xCR0785bVv3M8=; b=Ji2Dzag+n89Dor
	8Pn6qb8rJF38LExCPTJ1g88lsT7nlqIRV7bct0y8UlyyzLT75aYn1jmUCVr7PnDCH7JzoNyfWsrdM
	HNGjGq1inhgo/QoR2A2vPnCD3Ojj0acaK/0Rq7EMtxTMMa8WOZ20NA0pPf4Y1w42dr/oYnM6cv32y
	S67BMtF9Y5arqIwTwjqOvNt+uvJQ1EIFkn9rLVe/Lcrl/mGI+QzopjvQTn4pNCO1Ix72cotmYXLLD
	fXsuy+2MY/ksWFaovz0dqy43cx5pbrCDwxfdkFMfuNeA2B99UXMHn8oPFMsfIY4raFRn8px0KOJJZ
	yWQ+Zrn+7lIOJqoVx6Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWmY-0006CV-P0; Tue, 13 Aug 2019 13:24:10 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWmN-0006CO-I3
 for linux-arm-kernel@bombadil.infradead.org; Tue, 13 Aug 2019 13:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S1SWiFkQPLZW+Dt7K4dnQXpIbGcb4i0q4bJIJoaJpxY=; b=bLLw2tq7Z/yx1vXpfdaxQdlnN
 GX7L1UBsuaSgBGy9iDMOmYwmOkNYffkKOaQR6S3mOqddAapuDEMCtaycVta8Fcnty2YGX30AcRJn5
 jWexVhSCNbkw8WMQZMz02fKRD+vTn9aVu65tEvOVlEKzc3gNFaF/FgBnXjomMgg3A5M1kbDv/YNIQ
 BNwCWgPQDkE/x0GLBx6YKXy8eHr6e2HHSOq3Odycfnn6DmhPvocdz3VRQ8OB8gQMo3RYg6BaqF0Fl
 Wg3eL0f49hU/B8GkPmmDnchxU8Mx+tR9N/8ZSH9i8rwfILQlLWa6nltFsnhHZyO6lKq33MpvF4vSi
 O58+BkEaQ==;
Received: from [179.97.35.50] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWmJ-0002jc-Sa; Tue, 13 Aug 2019 13:23:57 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 7E2A340340; Tue, 13 Aug 2019 10:23:49 -0300 (-03)
Date: Tue, 13 Aug 2019 10:23:49 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v3 4/4] perf: Use CAP_SYS_ADMIN instead of euid==0 with
 ftrace
Message-ID: <20190813132349.GB12299@kernel.org>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <bd8763b72ed4d58d0b42d44fbc7eb474d32e53a3.1565188228.git.ilubashe@akamai.com>
 <20190812202251.GG9280@kernel.org>
 <20190812202706.GH9280@kernel.org>
 <20190812202947.GI9280@kernel.org>
 <CANLsYkwjdhzVMwrWboTTOw+P3NajtoswxfxhodK0DdeexFCR3w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkwjdhzVMwrWboTTOw+P3NajtoswxfxhodK0DdeexFCR3w@mail.gmail.com>
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 James Morris <jmorris@namei.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, Aug 12, 2019 at 03:42:17PM -0600, Mathieu Poirier escreveu:
> On Mon, 12 Aug 2019 at 14:29, Arnaldo Carvalho de Melo
> <arnaldo.melo@gmail.com> wrote:
> >
> > Em Mon, Aug 12, 2019 at 05:27:06PM -0300, Arnaldo Carvalho de Melo escreveu:
> > > Em Mon, Aug 12, 2019 at 05:22:51PM -0300, Arnaldo Carvalho de Melo escreveu:
> > > > Em Wed, Aug 07, 2019 at 10:44:17AM -0400, Igor Lubashev escreveu:
> > > > > @@ -281,7 +283,7 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
> > > > >           .events = POLLIN,
> > > > >   };
> > > > >
> > > > > - if (geteuid() != 0) {
> > > > > + if (!perf_cap__capable(CAP_SYS_ADMIN)) {
> > > > >           pr_err("ftrace only works for root!\n");
> > > >
> > > > I guess we should update the error message too?
> > > >
> > >
> > > I.e. I applied this as a follow up patch:
> > >
> > > diff --git a/tools/perf/builtin-ftrace.c b/tools/perf/builtin-ftrace.c
> > > index 01a5bb58eb04..ba8b65c2f9dc 100644
> > > --- a/tools/perf/builtin-ftrace.c
> > > +++ b/tools/perf/builtin-ftrace.c
> > > @@ -284,7 +284,12 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
> > >       };
> > >
> > >       if (!perf_cap__capable(CAP_SYS_ADMIN)) {
> > > -             pr_err("ftrace only works for root!\n");
> > > +             pr_err("ftrace only works for %s!\n",
> > > +#ifdef HAVE_LIBCAP_SUPPORT
> > > +             "users with the SYS_ADMIN capability"
> > > +#else
> > > +             "root"
> > > +#endif
> >
> >                 );
> >
> > :-)
> >
> > >               return -1;
> > >       }
> > >
> >
> > I've pushed the whole set to my tmp.perf/cap branch, please chec
> 
> Please hold on before moving further - I'm getting a segmentation
> fault on ARM64 that I'm still trying to figure out.

This is just sitting in my tmp branch, and in my local perf/core branch,
so that I can test it with the containers, etc.

Is this related to the following fix?

commit 3e70008a6021fffd2cd1614734603ea970773060
Author: Leo Yan <leo.yan@linaro.org>
Date:   Fri Aug 9 18:47:52 2019 +0800

    perf trace: Fix segmentation fault when access syscall info on arm64

    'perf trace' reports the segmentation fault as below on Arm64:

      # perf trace -e string -e augmented_raw_syscalls.c
      LLVM: dumping tools/perf/examples/bpf/augmented_raw_syscalls.o
      perf: Segmentation fault
      Obtained 12 stack frames.
      perf(sighandler_dump_stack+0x47) [0xaaaaac96ac87]
      linux-vdso.so.1(+0x5b7) [0xffffadbeb5b7]
      /lib/aarch64-linux-gnu/libc.so.6(strlen+0x10) [0xfffface7d5d0]
      /lib/aarch64-linux-gnu/libc.so.6(_IO_vfprintf+0x1ac7) [0xfffface49f97]
      /lib/aarch64-linux-gnu/libc.so.6(__vsnprintf_chk+0xc7) [0xffffacedfbe7]
      perf(scnprintf+0x97) [0xaaaaac9ca3ff]
      perf(+0x997bb) [0xaaaaac8e37bb]
      perf(cmd_trace+0x28e7) [0xaaaaac8ec09f]
      perf(+0xd4a13) [0xaaaaac91ea13]
      perf(main+0x62f) [0xaaaaac8a147f]
      /lib/aarch64-linux-gnu/libc.so.6(__libc_start_main+0xe3) [0xfffface22d23]
      perf(+0x57723) [0xaaaaac8a1723]
      Segmentation fault

    This issue is introduced by commit 30a910d7d3e0 ("perf trace:
    Preallocate the syscall table"), it allocates trace->syscalls.table[]
    array and the element count is 'trace->sctbl->syscalls.nr_entries'; but
    on Arm64, the system call number is not continuously used; e.g. the
    syscall maximum id is 436 but the real entries is only 281.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
