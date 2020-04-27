Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDD21BAB74
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 19:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1sdjUpc8/jABCRF25B5vxAY4uNKVitQIjExCmhfKrbk=; b=U4d6f1u3wGgnxW
	IHylY7+mmFrM0V3NZs7qkHNr9ncytJUDNFO8uxMuoWewu8xGsvGvl/4OwGkC/EelkyUzvHM8z8WGE
	ANaM1QpeuFHckqLNM9eU7b60hLUxyfHYySGbYBfVTiE0/KLA0e1D+5Zi2n4DysHrMVp/NTLiXDKtY
	sAGTiI2YLoYxThQIP8SY8sSh7yB37aHXtR75JBUWK0O71aBdSg0JiAZ+ORPnPQTY1bMReGW35zXoY
	FxTu/vuqw59VvK4gSzYIY4q9Xms1OjVuEOKcFLj/1rUYnvKWmChgydPWXb/WRwR3v5BWkZftK76v4
	BZhCD6HGcCiX5HY6GXEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT7jT-0006Nu-Un; Mon, 27 Apr 2020 17:39:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT7jJ-0006Md-Ke
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 17:39:43 +0000
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E74002078C
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 17:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588009180;
 bh=hrpwDQjnNosOZuDVeZVm9aVGNZZMloN7/cGIPwaOS2E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OEG6mbnAPk9Yk6G26yTR/TVVBKEZvPHXDTXfYgvruVQNacNQiflszdd+0GVvZRYy2
 rHV46TRK4sOsK5sEMulbd30Ou3kNNmzHcQfrDJhyprXiLmr6/v0Azt6qbGniF3D4Qm
 mpIkDvC4ZJOa4fBih6gCRXDIAHa8Yz36RoEypDhA=
Received: by mail-io1-f48.google.com with SMTP id w4so19735122ioc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 10:39:39 -0700 (PDT)
X-Gm-Message-State: AGi0PubmUrgS6heZMXzcTMP3TtTBpNvl5rENg9Zi0imoXwyqVSaYsB5A
 Nh5TQw6KK382U3SAC1rirAJHPSszDqru0uVEblM=
X-Google-Smtp-Source: APiQypKwgbBJU8vwKjnBG/W2/hGRkTtjHMSQFFtwdBypUd4jq0xAuehjbqPR+7Prha81wkO7jJ+QOnSaEJO928BJk1c=
X-Received: by 2002:a6b:5904:: with SMTP id n4mr22515735iob.142.1588009179242; 
 Mon, 27 Apr 2020 10:39:39 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 27 Apr 2020 19:39:28 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGASSCjTjvXJh=_iPwEPG50_pVRe2QO1hoRW+KHtugFVQ@mail.gmail.com>
Message-ID: <CAMj1kXGASSCjTjvXJh=_iPwEPG50_pVRe2QO1hoRW+KHtugFVQ@mail.gmail.com>
Subject: Re: [PATCH v13 00/12] add support for Clang's Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_103941_716302_F97383B4 
X-CRM114-Status: GOOD (  24.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 Apr 2020 at 18:00, Sami Tolvanen <samitolvanen@google.com> wrote:
>
> This patch series adds support for Clang's Shadow Call Stack
> (SCS) mitigation, which uses a separately allocated shadow stack
> to protect against return address overwrites. More information
> can be found here:
>
>   https://clang.llvm.org/docs/ShadowCallStack.html
>
> SCS provides better protection against traditional buffer
> overflows than CONFIG_STACKPROTECTOR_*, but it should be noted
> that SCS security guarantees in the kernel differ from the ones
> documented for user space. The kernel must store addresses of
> shadow stacks in memory, which means an attacker capable of
> reading and writing arbitrary memory may be able to locate them
> and hijack control flow by modifying the shadow stacks.
>
> SCS is currently supported only on arm64, where the compiler
> requires the x18 register to be reserved for holding the current
> task's shadow stack pointer.
>
> With -fsanitize=shadow-call-stack, the compiler injects
> instructions to all non-leaf C functions to store the return
> address to the shadow stack, and unconditionally load it again
> before returning. As a result, SCS is incompatible with features
> that rely on modifying function return addresses in the kernel
> stack to alter control flow. A copy of the return address is
> still kept in the kernel stack for compatibility with stack
> unwinding, for example.
>
> SCS has a minimal performance overhead, but allocating
> shadow stacks increases kernel memory usage. The feature is
> therefore mostly useful on hardware that lacks support for PAC
> instructions.
>
> Changes in v13:
>  - Changed thread_info::shadow_call_stack to a base address and
>    an offset instead, and removed the now unneeded __scs_base()
>    and scs_save().
>  - Removed alignment from the kmem_cache and static allocations.
>  - Removed the task_set_scs() helper function.
>  - Moved the assembly code for loading and storing the offset in
>    thread_info to scs_load/save macros.
>  - Added offset checking to scs_corrupted().
>  - Switched to cmpxchg_relaxed() in scs_check_usage().
>

OK, so one thing that came up in an offline discussion about SCS is
the way it interacts with the vmap'ed stack.

The vmap'ed stack is great for robustness, but it only works if things
don't explode for other reasons in the mean time. This means the
ordinary-to-shadow-call-stack size ratio should be chosen such that it
is *really* unlikely you could ever overflow the shadow call stack and
corrupt another task's call stack before hitting the vmap stack's
guard region.

Alternatively, I wonder if there is a way we could let the SCS and
ordinary stack share the [bottom of] the vmap'ed region. That would
give rather nasty results if the ordinary stack overflows into the
SCS, but for cases where we really recurse out of control, we could
catch this occurrence on either stack, whichever one occurs first. And
the nastiness -when it does occur- will not corrupt any state beyond
the stack of the current task.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
