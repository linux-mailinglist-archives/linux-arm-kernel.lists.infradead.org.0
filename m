Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089328BEB2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 18:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2bubDO7j01vbNAmXQgBiyg9NxSZoGkGCGyubhjxGYo=; b=pu2pyV+HgSJsb+
	OCyRMSCxYC/y6VzBzvyumxRnMdSE218l4QHz/wt7LDCcynNJzJ2a0n5YBIecrVxs/9Njx8X88LqHp
	b4gE+hNzoaO91eayvohgTkNTzvJSsftvDeKIgoJowSPX/GHRQpXr/ouG2Yqkts9ssPMCBzsrnI5O0
	5ozWvfelEW0Pjov9GF/5cP1mVJNjv/prATAF0qL+446Nct3TaT7zeQI2q2UUNx/HdNwkvDc/PuDGd
	SWC944r+pL7Y7hSlRizr5gpIztoSxnush22V0Bx9e4WW+pFQs4CGNOpYyALSx7eButOMIJ45MBN6g
	5XbcIICywrcTCBjH06Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxZm6-0006To-Ml; Tue, 13 Aug 2019 16:35:54 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxZlr-0006Sw-7b
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 16:35:41 +0000
Received: by mail-ot1-x341.google.com with SMTP id c7so2314836otp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 09:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fzB2ggJlh0N+RbsH1azT+YPoxdzqG3zdG3CDP2iDq1A=;
 b=Wi9/mC5yulWJWA8OL9yRNSdmg86TTwQRjHIxZgGJXQXTXWY1RgB04RHBGtJxkRO4bf
 urA+4xmvrgqERtVC6H7eu+h5dVTMCARHxeQqDkRF1tLCPjkKRIsCuHG0lKKCNrHaUnkW
 /UQ4QUxNS6u7FJbT2Zi43xADWGN8MoHdbgIzlKE+23bXsr6b2pBuMC3t3QMg60kPmYuz
 XFT1Ty4iiip+itZNva+5vrjez+FVS2GTlhSu8/7siDOzLuE55bkcKGD/Rt+GrBqi7LKu
 pTAhxdDZ+Zi06m8SACepkm/xn8AgSnB7uOx3/C+KNAEJ9bbikNEfuY9hP8TPCF3e6qic
 l25w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fzB2ggJlh0N+RbsH1azT+YPoxdzqG3zdG3CDP2iDq1A=;
 b=Gfkzkljjt+qfcNBr5AnRmXlB+vDMKrkznoD4jMRm+KUHZ+qCgQ2zmuaB82QN4qgyBa
 6z3ed+BwjNwbyxcCZAe/UP8Nfq2WgVA1yHjPCDleu8x9Se2fqg94MpLQYarBXIFt66a4
 NseeK6hlkytoxL/aHKhZt8ifMPig5q1VqS1BJbr0/ptiI1P8DQCwRMI2ZKrhVAxMoc6C
 R6vwO6+b4W1qfbfFwQP0LVKbkGqsWE/g0X9m+o/jCOOAqmcu22A++sc10L35gkBn1tWn
 LdsKnnOsf1FRucUPtPY7AtrRQgxxFFwYE7xaaUHpotrMRbWn1JiujDox1NiSPhy0Urhj
 tgkg==
X-Gm-Message-State: APjAAAV/43OhHbeYpsEefHX0wtDKUJ9AzFd+qZ5iqxo9r332f8gKvqSj
 AuUqUVNcLoBgNNIZXGmdPsegMf8iTIeXX5fSQspSlnTrDcc=
X-Google-Smtp-Source: APXvYqyxL+jripQJqwIkVPl+ZCHAArNKcyrcvRHPfSZDGGG/wGq0OQGkJKpNIB8aKn/fDZQh37VaPdgNU4AcXI3pybc=
X-Received: by 2002:a6b:720e:: with SMTP id n14mr42955425ioc.139.1565714137167; 
 Tue, 13 Aug 2019 09:35:37 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1565188228.git.ilubashe@akamai.com>
 <bd8763b72ed4d58d0b42d44fbc7eb474d32e53a3.1565188228.git.ilubashe@akamai.com>
 <20190812202251.GG9280@kernel.org> <20190812202706.GH9280@kernel.org>
 <20190812202947.GI9280@kernel.org>
 <CANLsYkwjdhzVMwrWboTTOw+P3NajtoswxfxhodK0DdeexFCR3w@mail.gmail.com>
 <20190813132349.GB12299@kernel.org>
In-Reply-To: <20190813132349.GB12299@kernel.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 13 Aug 2019 10:35:26 -0600
Message-ID: <CANLsYkynrTs4TouDs2=beEigOh6Ptatga_-WjE-FdC1ecKWyWg@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] perf: Use CAP_SYS_ADMIN instead of euid==0 with
 ftrace
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_093539_308274_2337DC62 
X-CRM114-Status: GOOD (  27.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnaldo,

On Tue, 13 Aug 2019 at 07:23, Arnaldo Carvalho de Melo
<arnaldo.melo@gmail.com> wrote:
>
> Em Mon, Aug 12, 2019 at 03:42:17PM -0600, Mathieu Poirier escreveu:
> > On Mon, 12 Aug 2019 at 14:29, Arnaldo Carvalho de Melo
> > <arnaldo.melo@gmail.com> wrote:
> > >
> > > Em Mon, Aug 12, 2019 at 05:27:06PM -0300, Arnaldo Carvalho de Melo escreveu:
> > > > Em Mon, Aug 12, 2019 at 05:22:51PM -0300, Arnaldo Carvalho de Melo escreveu:
> > > > > Em Wed, Aug 07, 2019 at 10:44:17AM -0400, Igor Lubashev escreveu:
> > > > > > @@ -281,7 +283,7 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
> > > > > >           .events = POLLIN,
> > > > > >   };
> > > > > >
> > > > > > - if (geteuid() != 0) {
> > > > > > + if (!perf_cap__capable(CAP_SYS_ADMIN)) {
> > > > > >           pr_err("ftrace only works for root!\n");
> > > > >
> > > > > I guess we should update the error message too?
> > > > >
> > > >
> > > > I.e. I applied this as a follow up patch:
> > > >
> > > > diff --git a/tools/perf/builtin-ftrace.c b/tools/perf/builtin-ftrace.c
> > > > index 01a5bb58eb04..ba8b65c2f9dc 100644
> > > > --- a/tools/perf/builtin-ftrace.c
> > > > +++ b/tools/perf/builtin-ftrace.c
> > > > @@ -284,7 +284,12 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
> > > >       };
> > > >
> > > >       if (!perf_cap__capable(CAP_SYS_ADMIN)) {
> > > > -             pr_err("ftrace only works for root!\n");
> > > > +             pr_err("ftrace only works for %s!\n",
> > > > +#ifdef HAVE_LIBCAP_SUPPORT
> > > > +             "users with the SYS_ADMIN capability"
> > > > +#else
> > > > +             "root"
> > > > +#endif
> > >
> > >                 );
> > >
> > > :-)
> > >
> > > >               return -1;
> > > >       }
> > > >
> > >
> > > I've pushed the whole set to my tmp.perf/cap branch, please chec
> >
> > Please hold on before moving further - I'm getting a segmentation
> > fault on ARM64 that I'm still trying to figure out.
>
> This is just sitting in my tmp branch, and in my local perf/core branch,
> so that I can test it with the containers, etc.
>
> Is this related to the following fix?

That is the first thing I thought about but no, it has nothing to do
with it.  Patch 3/4 is where the problem shows up.  The code in the
patch is fine, it is the repercussion it has on other part that needs
to be investigated.

Right now I see that kmap->ref_reloc_sym is NULL here [1] when tracing
with anything else than the 'u' option.  I am currently investigating
the problem.

Igor, please see if you can reproduce on QEMU or an ARM64 based platform.

[1] https://elixir.bootlin.com/linux/v5.3-rc4/source/tools/perf/util/event.c#L945

>
> commit 3e70008a6021fffd2cd1614734603ea970773060
> Author: Leo Yan <leo.yan@linaro.org>
> Date:   Fri Aug 9 18:47:52 2019 +0800
>
>     perf trace: Fix segmentation fault when access syscall info on arm64
>
>     'perf trace' reports the segmentation fault as below on Arm64:
>
>       # perf trace -e string -e augmented_raw_syscalls.c
>       LLVM: dumping tools/perf/examples/bpf/augmented_raw_syscalls.o
>       perf: Segmentation fault
>       Obtained 12 stack frames.
>       perf(sighandler_dump_stack+0x47) [0xaaaaac96ac87]
>       linux-vdso.so.1(+0x5b7) [0xffffadbeb5b7]
>       /lib/aarch64-linux-gnu/libc.so.6(strlen+0x10) [0xfffface7d5d0]
>       /lib/aarch64-linux-gnu/libc.so.6(_IO_vfprintf+0x1ac7) [0xfffface49f97]
>       /lib/aarch64-linux-gnu/libc.so.6(__vsnprintf_chk+0xc7) [0xffffacedfbe7]
>       perf(scnprintf+0x97) [0xaaaaac9ca3ff]
>       perf(+0x997bb) [0xaaaaac8e37bb]
>       perf(cmd_trace+0x28e7) [0xaaaaac8ec09f]
>       perf(+0xd4a13) [0xaaaaac91ea13]
>       perf(main+0x62f) [0xaaaaac8a147f]
>       /lib/aarch64-linux-gnu/libc.so.6(__libc_start_main+0xe3) [0xfffface22d23]
>       perf(+0x57723) [0xaaaaac8a1723]
>       Segmentation fault
>
>     This issue is introduced by commit 30a910d7d3e0 ("perf trace:
>     Preallocate the syscall table"), it allocates trace->syscalls.table[]
>     array and the element count is 'trace->sctbl->syscalls.nr_entries'; but
>     on Arm64, the system call number is not continuously used; e.g. the
>     syscall maximum id is 436 but the real entries is only 281.
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
