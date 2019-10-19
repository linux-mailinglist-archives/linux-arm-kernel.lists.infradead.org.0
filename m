Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B25C6DD846
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 13:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JR5HXIwbW2fUb1D4AzVdN/ELn807TLrT9PSt4VzonJI=; b=H1dJizrvYEGdIb
	eyDHjdXVcvFAwQvxbefojGDjkoOySqYXwrmQlu7aUFmupR+D+RSKLb1Jo3DwPuGtCf/+j4EyaWmbR
	vB453XAP48IrTJjAgnm2xIeGuajBoGAouRVASBqjHdjDB9xuU2tFqY/GzwJiKigpiMe4x8l1jUkB2
	6rSk/scCuhdgANysV1L5/rYhx0zOVcD3zJ2ulWJuL/A2Wv6U8U5UGNitNoQPZrv+UaWmjOMWyd3MF
	stDUkM/7cb5h1GAEvfXdpJtag/rI4Tp9kzpTfdJ69jMjKuMxtdqezAnPXPbKPpVpyKZnKJjy6zIED
	5pLk5VuKIFdp5A7G6oRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLmUv-0000On-Bg; Sat, 19 Oct 2019 11:02:13 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLmUl-0000Nw-M2
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 11:02:05 +0000
Received: by verein.lst.de (Postfix, from userid 107)
 id 2B59A68C4E; Sat, 19 Oct 2019 13:01:57 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on verein.lst.de
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=ALL_TRUSTED,BAYES_50
 autolearn=disabled version=3.3.1
Received: from blackhole.lan (p5B0D886C.dip0.t-ipconnect.de [91.13.136.108])
 by verein.lst.de (Postfix) with ESMTPSA id 5448D68B05;
 Sat, 19 Oct 2019 13:01:40 +0200 (CEST)
Date: Sat, 19 Oct 2019 13:01:35 +0200
From: Torsten Duwe <duwe@lst.de>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v8 0/5] arm64: ftrace with regs
Message-ID: <20191019130135.10de9324@blackhole.lan>
In-Reply-To: <20191018174100.GC18838@lakrids.cambridge.arm.com>
References: <20190208150826.44EBC68DD2@newverein.lst.de>
 <0f8d2e77-7e51-fba8-b179-102318d9ff84@arm.com>
 <20190311114945.GA5625@lst.de>
 <20190408153628.GL6139@lakrids.cambridge.arm.com>
 <20190409175238.GE9255@fuggles.cambridge.arm.com>
 <CAB=otbRXuDHSmh9NrGYoep=hxOKkXVsy6R84ACZ9xELwNr=4AA@mail.gmail.com>
 <20190724161500.GG2624@lakrids.cambridge.arm.com>
 <nycvar.YFH.7.76.1910161341520.13160@cbobk.fhfr.pm>
 <20191016175841.GF46264@lakrids.cambridge.arm.com>
 <20191018174100.GC18838@lakrids.cambridge.arm.com>
Organization: LST e.V.
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_040204_018368_AA4B2412 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Julien Thierry <julien.thierry@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jiri Kosina <jikos@kernel.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ingo Molnar <mingo@redhat.com>,
 Ruslan Bilovol <ruslan.bilovol@gmail.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, live-patching@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark!

On Fri, 18 Oct 2019 18:41:02 +0100 Mark Rutland
<mark.rutland@arm.com> wrote:

> In the process of reworking this I spotted some issues that will get
> in the way of livepatching. Notably:
> 
> * When modules can be loaded far away from the kernel, we'll
> potentially need a PLT for each function within a module, if each can
> be patched to a unique function. Currently we have a fixed number,
> which is only sufficient for the two ftrace entry trampolines.
> 
>   IIUC, the new code being patched in is itself a module, in which
> case we'd need a PLT for each function in the main kernel image.

When no live patching is involved, obviously all cases need to have
been handled so far. And when a live patching module comes in, there
are calls in and out of the new patch code:

Calls going into the live patch are not aware of this. They are caught
by an active ftrace intercept, and the actual call into the LP module
is done in klp_arch_set_pc, by manipulating the intercept (call site)
return address (in case thread lives in the "new world", for
completeness' sake). This is an unsigned long write in C.

All calls going _out_ from the KLP module are newly generated, as part
of the KLP module building process, and are thus aware of them being
"extern" -- a PLT entry should be generated and accounted for in the
KLP module.

>   We have a few options here, e.g. changing which memory size model we
>   use, or reserving space for a PLT before each function using
>   -f patchable-function-entry=N,M.

Nonetheless I'm happy I once added the ,M option here. You never know :)

> * There are windows where backtracing will miss the callsite's caller,
>   as its address is not live in the LR or existing chain of frame
>   records. Thus we cannot claim to have a reliable stacktrace.
> 
>   I suspect we'll have to teach the stacktrace code to handle this as
> a special-case.

Yes, that's where I had to step back. The unwinder needs to stop where
the chain is even questionable. In _all_ cases. Missing only one race
condition means a lurking inconsistency.

OTOH it's not a problem to report "not reliable" when in doubt; the
thread in question will then get woken up and unwind itself.
It is only an optimisation to let all kernel threads which are
guaranteed to not contain any patched functions sleep on.

>   I'll try to write these up, as similar probably applies to other
>   architectures with a link register.

I thought I'd quickly give you my feedback upfront here.

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
