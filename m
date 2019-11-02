Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D006AECE92
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 13:12:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mS4w2H6QjC4lE0tTN5j2ZpHHvm/q46fNapuXJaNFeI0=; b=NW3pchH4pmNSVMwWNrXa7SaUo
	z2KVUySzkrWHiinCVLqmGnj1knSNuuUTiCFQoSVagqVJX/qnwxf99pl0JJRWHgzcnlrBXJTqOKVJ9
	PbumxpClNrycKH2BijstspcQNlGB2YIwnZjjWGOEk2H3A8uXi290DIuEd/kB2qmuIyb8YYv03eBGK
	8WkN+eNhmOyDZ9bVW8FKN7RsFRDzWRHgubTQopgRcNSf4m6mwwHgtyCd4kXL+eNn1ondZT51euL+5
	45veWGJd+ZMRi74IEQ0sdWNIvrLqrL4u4TW7xlzcq26szxCMPr9SBz/gV7HL/e1VkGS0tX9Nb4DDr
	mi4UZu/QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQsGs-0005ki-Lf; Sat, 02 Nov 2019 12:12:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQsGk-0005kO-0f
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 12:12:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 820ED31F;
 Sat,  2 Nov 2019 05:12:32 -0700 (PDT)
Received: from [10.162.0.144] (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D83913F718;
 Sat,  2 Nov 2019 05:12:27 -0700 (PDT)
Subject: Re: [PATCHv2 0/8] arm64: ftrace cleanup + FTRACE_WITH_REGS
To: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20191029165832.33606-1-mark.rutland@arm.com>
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
Message-ID: <42c113ee-e7fc-3e94-cca0-f05f1c89fdb8@arm.com>
Date: Sat, 2 Nov 2019 17:42:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191029165832.33606-1-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_051238_146363_D4791F71 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 svens@stackframe.org, duwe@suse.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 10/29/19 10:28 PM, Mark Rutland wrote:
> Hi,
> 
> This series is a reworked version of Torsten's FTRACE_WITH_REGS series
> [1]. I've tried to rework the existing code in preparatory patches so
> that the patchable-function-entry bits slot in with fewer surprises.
> This version is based on v5.4-rc3, and can be found in my
> arm64/ftrace-with-regs branch [2].
> 
> Patch 1 adds an (optional) ftrace_init_nop(), which the core code uses
> to initialize callsites. This allows us to avoid a synthetic MCOUNT_ADDR
> symbol, and more cleanly separates the one-time initialization of the
> callsite from dynamic NOP<->CALL modification. Architectures which don't
> implement this get the existing ftrace_make_nop() with MCOUNT_ADDR.
> 
> Recently parisc gained ftrace support using patchable-function-entry.
> Patch 2 makes the handling of module callsite locations common in
> kernel/module.c with a new FTRACE_CALLSITE_SECTION definition, and
> removed the newly redundant bits from arch/parisc.
> 
> Patches 3 and 4 move the module PLT initialization to module load time,
> which simplifies runtime callsite modification. This also means that we
> don't transitently mark the module text RW, and will allow for the
> removal of module_disable_ro().
> 
> Patches 5 and 6 add some trivial infrastructure, with patch 7 finally
> adding FTRACE_WITH_REGS support. Additional work will be required for
> livepatching (e.g. implementing reliable stack trace), which is
> commented as part of patch 7.
> 
> Patch 8 is a trivial cleanup atop of the rest of the series, making the
> code easier to read and less susceptible to config-specific breakage.
I tested the whole series with my latest in-kernel ptrauth patches [1]
and graph_tracer/function_graph_tracer works fine, So for the whole series,
Tested-by: Amit Daniel Kachhap <amit.kachhap@arm.com>

Also I gave few minor comments in the individual patches. With those
comments,
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>

Thanks,
Amit Daniel
[1]: https://patchwork.kernel.org/cover/11195085/
> 
> Since v1 [3]:
> * Add a couple of people to Cc
> * Fold in Ard's Reviewed-by tag
> * Rename ftrace_code_init_disabled() to ftrace_nop_initialize()
> * Move ftrace_init_nop() to <linux/ftrace.h>, with kerneldoc
> * Update kerneldoc for rec parameters
> 
> Thanks,
> Mark.
> 
> [1] https://lore.kernel.org/r/20190208150826.44EBC68DD2@newverein.lst.de
> [2] git://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git arm64/ftrace-with-regs
> [3] https://lore.kernel.org/r/20191021163426.9408-1-mark.rutland@arm.com
> 
> Mark Rutland (7):
>    ftrace: add ftrace_init_nop()
>    module/ftrace: handle patchable-function-entry
>    arm64: module: rework special section handling
>    arm64: module/ftrace: intialize PLT at load time
>    arm64: insn: add encoder for MOV (register)
>    arm64: asm-offsets: add S_FP
>    arm64: ftrace: minimize ifdeffery
> 
> Torsten Duwe (1):
>    arm64: implement ftrace with regs
> 
>   arch/arm64/Kconfig               |   2 +
>   arch/arm64/Makefile              |   5 ++
>   arch/arm64/include/asm/ftrace.h  |  23 +++++++
>   arch/arm64/include/asm/insn.h    |   3 +
>   arch/arm64/include/asm/module.h  |   2 +-
>   arch/arm64/kernel/asm-offsets.c  |   1 +
>   arch/arm64/kernel/entry-ftrace.S | 140 +++++++++++++++++++++++++++++++++++++--
>   arch/arm64/kernel/ftrace.c       | 123 ++++++++++++++++++++--------------
>   arch/arm64/kernel/insn.c         |  13 ++++
>   arch/arm64/kernel/module-plts.c  |   3 +-
>   arch/arm64/kernel/module.c       |  57 +++++++++++++---
>   arch/parisc/Makefile             |   1 -
>   arch/parisc/kernel/module.c      |  10 ++-
>   arch/parisc/kernel/module.lds    |   7 --
>   include/linux/ftrace.h           |  40 ++++++++++-
>   kernel/module.c                  |   2 +-
>   kernel/trace/ftrace.c            |   6 +-
>   17 files changed, 355 insertions(+), 83 deletions(-)
>   delete mode 100644 arch/parisc/kernel/module.lds
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
