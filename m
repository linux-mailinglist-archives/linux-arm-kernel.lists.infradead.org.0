Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0968E37F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zdoTkJSj0SUi6uMyCoVIL0/rRm1T1X+P7HRYPhJC7iQ=; b=NMSKI/rMYO2tNN
	a0+q0vs4Y58tiWczxg82YemibI9NTbuo1eL8cYIJ4dxW8N7vFGazrZm/HoDvXeSw5vwe9yC6NAsam
	2nMJymW4kt48K1FeUFjb4MTb760nyliiMu9D3All36qNLOQa5ZIPz14pbkpDcvy5i1VsIMuDqEWDl
	ODalwfuAW029lzbTwDaM3EAfH898AVU6+MZrTet3MmPMNDihDrKIfZjSz4Vu+1MKlYNOiDbb44ZOi
	Va9BU0rBKr4NorQ1VVNv+IHLOSsfN1RhflXSiyUlwdoqCRATNsNhvBKXb6y5t+aPRyFqwFPlNliOB
	QL1zAlDHcHgtgFWHOJRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNg2Y-00021c-7X; Thu, 24 Oct 2019 16:32:46 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg2M-000212-KE
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:32:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id n7so2732742wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rU3z16VWtzBIk+svSwi6S4IWlLlcuR6vtu8ErKDXMGM=;
 b=j/hXJF8MSfMcFr+8ICSDqKdkq+j9Yy67mheFRR0ZNWRAGX9lYMS508yglTK/wFKUE9
 DYc+e6ecoTFRt9djQnLzSy8TC4KVONxfEbo1IQYHQMlQxKflhv8P8ZKClmbBVR+N7glr
 eN6uNcMLf7ng+ZefcjCADWfDa4FD8YO9hi8Q4LOzeXKxLwHo2IObx/A98R3ti9u/98s2
 fmwnQSLo/en94re6UBYGiC2HYRNvE+gRFg04970IrrIkRLEK1glUslSV4N03VNYRxPAP
 Zzgsjgr58i2VB2Q7k6Pzs/3LiO2Y+S1/s/jtqqHjzTtwedCpc4os9eLdIE0KMUeUrdJE
 RXxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rU3z16VWtzBIk+svSwi6S4IWlLlcuR6vtu8ErKDXMGM=;
 b=ADwmYReF1iWVKaRMxE2rWUTJ7f5NjDf4ifzT5QTXCqDbLdp4o4T6mHoBvzyo6JakU0
 yKqIA7TQi/TiC6W28T9JzV1KYIfpF57/HS6vtX7aoj2R/ARmuKgMHmXivIGWJSMvJShx
 KZoyrZtrOEElBlpLFrHWD72LpmOB3mUBBPoVhNPqyK9dHzx+/gyTOIRasv9gjRw7NoFc
 TNHTTzhKBcnV/o99njHDpEzRo6j1Imjss3sQe5ujZ+KBOqUjjhJAQp3/YEBPwggr8pZ5
 UoA6ubj7KmeqhzP69x9+0paPywwst7EOoO+58OCv4N4X5pHBzxlx0p0Ceqzc25JzV3ih
 5nhw==
X-Gm-Message-State: APjAAAUa5CLP8X3shhXOLc+6XvF0DkrJ32B4+92ehg4w9THAZzTlU5f+
 OIsNimG8fvPKa7XhojB67k4tY9Njd4v/QKxRI9vnxA==
X-Google-Smtp-Source: APXvYqx0OMPmXC4g7/6lRtvSZZdX1OSNshPAGnEVfbvjUnA3a71Kg021LSrWoZFQHpYWKwELZvB5L2ZCcxPFoWd7Gxs=
X-Received: by 2002:a1c:64d6:: with SMTP id y205mr5334697wmb.136.1571934752887; 
 Thu, 24 Oct 2019 09:32:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191021163426.9408-1-mark.rutland@arm.com>
In-Reply-To: <20191021163426.9408-1-mark.rutland@arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 24 Oct 2019 18:32:21 +0200
Message-ID: <CAKv+Gu_ceWFQMNUABvOU5Gd_d3EgpfODkzan_riU1YY8rSRZaQ@mail.gmail.com>
Subject: Re: [PATCH 0/8] arm64: ftrace cleanup + FTRACE_WITH_REGS
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093234_672741_23E70318 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jthierry@redhat.com, Will Deacon <will@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Helge Deller <deller@gmx.de>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ingo Molnar <mingo@redhat.com>,
 James Morse <james.morse@arm.com>, Jessica Yu <jeyu@kernel.org>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, svens@stackframe.org,
 Torsten Duwe <duwe@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 at 18:34, Mark Rutland <mark.rutland@arm.com> wrote:
>
> Hi,
>
> This series is a reworked version of Torsten's v8 FTRACE_WITH_REGS
> series [1]. I've tried to rework the existing code in preparatory
> patches so that the patchable-function-entry bits slot in with fewer
> surprises. This version is based on v5.4-rc3, and can be found in my
> arm64/ftrace-with-regs branch [2].
>
> I've added an (optional) ftrace_init_nop(), which the core code uses to
> initialize callsites. This allows us to avoid a synthetic MCOUNT_ADDR
> symbol, and more cleanly separates the one-time initialization of the
> callsite from dynamic NOP<->CALL modification. Architectures which don't
> implement this get the existing ftrace_make_nop() with MCOUNT_ADDR.
>
> I've moved the module PLT initialization to module load time, which
> simplifies runtime callsite modification. This also means that we don't
> transitently mark the module text RW, and will allow for the removal of
> module_disable_ro().
>
> Since the last posting, parisc gained ftrace support using
> patchable-function-entry. I've made the handling of module callsite
> locations common in kernel/module.c with a new FTRACE_CALLSITE_SECTION
> definition, and removed the newly redundant bits from arch/parisc.
>
> Thanks,
> Mark.
>
> [1] https://lore.kernel.org/r/20190208150826.44EBC68DD2@newverein.lst.de
> [2] git://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git arm64/ftrace-with-regs
>
> Mark Rutland (7):
>   ftrace: add ftrace_init_nop()
>   module/ftrace: handle patchable-function-entry
>   arm64: module: rework special section handling
>   arm64: module/ftrace: intialize PLT at load time
>   arm64: insn: add encoder for MOV (register)
>   arm64: asm-offsets: add S_FP
>   arm64: ftrace: minimize ifdeffery
>
> Torsten Duwe (1):
>   arm64: implement ftrace with regs
>

For the series,

Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

>  arch/arm64/Kconfig               |   2 +
>  arch/arm64/Makefile              |   5 ++
>  arch/arm64/include/asm/ftrace.h  |  23 +++++++
>  arch/arm64/include/asm/insn.h    |   3 +
>  arch/arm64/include/asm/module.h  |   2 +-
>  arch/arm64/kernel/asm-offsets.c  |   1 +
>  arch/arm64/kernel/entry-ftrace.S | 140 +++++++++++++++++++++++++++++++++++++--
>  arch/arm64/kernel/ftrace.c       | 123 ++++++++++++++++++++--------------
>  arch/arm64/kernel/insn.c         |  13 ++++
>  arch/arm64/kernel/module-plts.c  |   3 +-
>  arch/arm64/kernel/module.c       |  57 +++++++++++++---
>  arch/parisc/Makefile             |   1 -
>  arch/parisc/kernel/module.c      |  10 ++-
>  arch/parisc/kernel/module.lds    |   7 --
>  include/linux/ftrace.h           |   5 ++
>  kernel/module.c                  |   2 +-
>  kernel/trace/ftrace.c            |  13 +++-
>  17 files changed, 330 insertions(+), 80 deletions(-)
>  delete mode 100644 arch/parisc/kernel/module.lds
>
> --
> 2.11.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
