Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FA7DCC66
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GarPHwggSeYkyA1JOtQxeKZV4Bf4ydgbyYF5C3gvh7w=; b=c+dzIwokLOOGer
	KKIzeXcBL49KwqJ9xRp9yeJChJDrxj3Nd2XDX7nGjxO/5Uftpmx0RwLMo+f8CBfs94kDiCPYj0yri
	YVPrlDjZPHSan7W5r1kFCKG7qqF+Ru6uCkVOGzIm9AdtqMbo44uZlF+HncGxcjeFHerMLU6i+mOj6
	qN9Y4uW5XJHproKWJvtbHCB5Q1hlGn32kySEmbkdqhunslL984gxftQc+1QozinAQD88k81JDuZoL
	Tf5puwyxaNdvokK/U36vkJWoptcgOhYpPUi1UWrq4Nz6uBwynmbWFHN89uQ4VhuT3DV92320GEJ4/
	luJlc9YzrIXUZ7uKdmDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVon-0005L4-9E; Fri, 18 Oct 2019 17:13:37 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVoa-0005JL-1I
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:13:28 +0000
Received: by mail-ot1-x341.google.com with SMTP id s22so5578335otr.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 10:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hDou5Z7AnxlXNsw3EcpY942CX+9awGJrPWvG/Uzq/u0=;
 b=b3XVK3oUecv8zhJLi8wBDU7dsrLDXf1OhUshJUWrVsOCyqSXhdbO23VgWxMa1R1urV
 O3E1ni9xUlU5exVU2VN35NKkne1rfv/1j3PKa/bWhKm2DIro7eXxLtItOmaC3XOEVOA9
 ZLv/TVDdBvoFM3TfTMn3ONMlD7GUkxnZaMFWTTyGh44WPUx0cpIo6kEG+IVNJg1lrwBL
 WL9jGxsuEWtxSL3cJ9QRV9f3OdnQ5+aRdNlpTr9CoWQjI8f2G640+Y7wNI2i7oNG2Rsy
 O6DYbrPat+1p7BnU+R03ZNEIzhlMSWVKzCr2Ut84sHvq/7dPn/M9sIfCLCn29vsJ4VLN
 Awew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hDou5Z7AnxlXNsw3EcpY942CX+9awGJrPWvG/Uzq/u0=;
 b=XqtKoCnMRr8kB/bfGwGO5TBlTEIA+zJmCwDob9f+wxcsrr5/mmnoSAbzlPWB79pm27
 evQ5X2s8h/y63tgNFjjiTU5WSilMUq2xN2WW4wP3UZO4EU9tIXzFpqgEaS/WUDvbV4kX
 g83abgXzaGWtTc6CXvNXhFtR1b6dyQuW5M4phxt9PGPkLIL0EpWm+JUxLmDZBATr6G08
 Dt8zPxfV3EgiQtsoeJDmtvXaDJts0GNesnbrXb3V9Whtcn/YxWkxfumLvX4sWw16fbiX
 LzRgdEbe4ibQz+Hgd4gZ5vXmmQlMn4AZ6NsMz6wutyN5qhtif64tHPjtfCzuIjRrTAbv
 rQvg==
X-Gm-Message-State: APjAAAUMBHSFXamnLuKogW8asqE4ziteSPbJWa4NO+dfLPFOPeur0Zj0
 hrn1E+cEDDy8oPBYDzNv7Kw3/EZWe7EZ5V9wt2tw2Q==
X-Google-Smtp-Source: APXvYqzk63aLcaDtSLDQmaTKnKA/9Iqjg+1oUYrcegXtjis3ArS3MzocA0YvPnHL7bljLig2r8OQsin0dsxx/YoQ1HQ=
X-Received: by 2002:a05:6830:10cc:: with SMTP id
 z12mr8713226oto.110.1571418798907; 
 Fri, 18 Oct 2019 10:13:18 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-19-samitolvanen@google.com>
In-Reply-To: <20191018161033.261971-19-samitolvanen@google.com>
From: Jann Horn <jannh@google.com>
Date: Fri, 18 Oct 2019 19:12:52 +0200
Message-ID: <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
Subject: Re: [PATCH 18/18] arm64: implement Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_101324_077818_16A2007D 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 kernel list <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 6:16 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> This change implements shadow stack switching, initial SCS set-up,
> and interrupt shadow stacks for arm64.
[...]
> +static inline void scs_save(struct task_struct *tsk)
> +{
> +       void *s;
> +
> +       asm volatile("mov %0, x18" : "=r" (s));
> +       task_set_scs(tsk, s);
> +}
> +
> +static inline void scs_load(struct task_struct *tsk)
> +{
> +       asm volatile("mov x18, %0" : : "r" (task_scs(tsk)));
> +       task_set_scs(tsk, NULL);
> +}

These things should probably be __always_inline or something like
that? If the compiler decides not to inline them (e.g. when called
from scs_thread_switch()), stuff will blow up, right?

> +static inline void scs_thread_switch(struct task_struct *prev,
> +                                    struct task_struct *next)
> +{
> +       scs_save(prev);
> +       scs_load(next);
> +
> +       if (unlikely(scs_corrupted(prev)))
> +               panic("corrupted shadow stack detected inside scheduler\n");
> +}
[...]
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +DECLARE_PER_CPU(unsigned long *, irq_shadow_call_stack_ptr);
> +#endif

If an attacker has a leak of some random function pointer to find the
ASLR base address, they'll know where irq_shadow_call_stack_ptr is.
With an arbitrary read (to read
irq_shadow_call_stack_ptr[sched_getcpu()]) followed by an arbitrary
write, they'd be able to overwrite the shadow stack. Or with just an
arbitrary write without a read, they could change
irq_shadow_call_stack_ptr[sched_getcpu()] to point elsewhere. This is
different from the intended protection level according to
<https://clang.llvm.org/docs/ShadowCallStack.html#security>, which
talks about "a runtime that avoids exposing the address of the shadow
call stack to attackers that can read arbitrary memory". Of course,
that's extremely hard to implement in the context of the kernel, where
you can see all the memory management data structures and all physical
memory.

You might want to write something in the cover letter about what the
benefits of this mechanism compared to STACKPROTECTOR are in the
context of the kernel, including a specific description of which types
of attacker capabilities this is supposed to defend against.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
