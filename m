Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29340191D41
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 00:08:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWx3jLrKRgWtQVbpU6e5EWTvSVoFumCQaNhxz2DjBOU=; b=Bl7DaYULUOCL2g
	NTUVGVFRA9xFVkCnJ+BPTX6DwJNmu6BZgvG/uTHjfs4nQ8uL8VTOEXaosK9utyx4Ey5R6ITHNDyCz
	OrPL1E82f7ZvFgGunYemhso4oq8lE65eKOD4USDP2sG3u7zsL3QcBY67aCNa+3MpjA2SxFu104gDd
	+dN9GOmx7d4CJWpr7IAu+QT4/gKfTGROX1JBQKEBNisz8E5EZdivLuDxb2Mkn8dyRWyNPB8mOhZi9
	yD+zx7DsNsvaxAZIsCZOBnXwUVX7y1VuM86B9Q0hAmpl81zKFFLKYkqCUW+9cwuV0/+F9EGa+BwZQ
	sAvfqjkD9dLKXrRG9JZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGseU-00032K-Ea; Tue, 24 Mar 2020 23:08:06 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGseK-00030s-M6
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 23:07:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id b72so57169pfb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 16:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hZYGrrYHl0NkyIgc2uGWToFLNVXOPMpm5ALW355x8l8=;
 b=BD55ubdcQFGlrkHGIItP7aQDYlQQqN7BWHznAV/BjGLMmkbrJluW3YXOG3HL/kyDw3
 42/9FZDOe8ljg+1CRL8AXZrMCy3hHzGKeh/6wZnm1iCU/d6Aup3GFDglcGpiGZQja3QM
 Urwx0W7yYX5sK3oS2wzmYSIY/u5xoQbapUf/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hZYGrrYHl0NkyIgc2uGWToFLNVXOPMpm5ALW355x8l8=;
 b=UE9Jr3gpZav2vpCkh5xrS8MQJOa0oUPw6bPZtv4dLZ62wt+rUKG/GB4Om2UhgyTlyO
 m+UxIsc1grCAEqC2ZODkSrIMOYN14khkjVFRCOMK+H4KFH78xPOYx89ag8Z1SQrzfVaS
 mF47jPlXzkPoYFADQs4IKpXv7+7j5rLQ0O75+i9frIp+TXkLTrgGajZVLBoGfPq1CuQr
 +0+YZCvvvV2qIZNrHPrFGFFeazypgbuFw8RrGrStVWtgABLf6wb29GZjgrwPN2qA/MF0
 ohAIaM6SYuya82tMw7k5lhQvVcU5UfhcGw7LXdb9SYcvJaqJZ3Q0ztsvpdw++dpbbgLG
 hy7Q==
X-Gm-Message-State: ANhLgQ1582EEl/oAtM3ZumVrIT5Dw/5inTy+oT9SbZY3I96DYaGKxgNw
 Rd8wtEbNZeq1GJrLxHv5jv+AwA==
X-Google-Smtp-Source: ADFU+vticqY9doh2mTEaDYaNe3t5j0AxJERCJeuUe+VbDwiLI2y3AIoOf4ls11Z+6Qtp0zkgNcLtEg==
X-Received: by 2002:a62:1894:: with SMTP id 142mr151739pfy.27.1585091275699;
 Tue, 24 Mar 2020 16:07:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 11sm16908017pfz.91.2020.03.24.16.07.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 16:07:54 -0700 (PDT)
Date: Tue, 24 Mar 2020 16:07:53 -0700
From: Kees Cook <keescook@chromium.org>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH v2 0/5] Optionally randomize kernel stack offset each
 syscall
Message-ID: <202003241604.7269C810B@keescook>
References: <20200324203231.64324-1-keescook@chromium.org>
 <CAG48ez3yYkMdxEEW6sJzBC5BZSbzEZKnpWzco32p-TJx7y_srg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG48ez3yYkMdxEEW6sJzBC5BZSbzEZKnpWzco32p-TJx7y_srg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_160756_748301_6ECC50A9 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Elena Reshetova <elena.reshetova@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[-enrico, who is bouncing]

On Tue, Mar 24, 2020 at 10:28:35PM +0100, Jann Horn wrote:
> On Tue, Mar 24, 2020 at 9:32 PM Kees Cook <keescook@chromium.org> wrote:
> > This is a continuation and refactoring of Elena's earlier effort to add
> > kernel stack base offset randomization. In the time since the previous
> > discussions, two attacks[1][2] were made public that depended on stack
> > determinism, so we're no longer in the position of "this is a good idea
> > but we have no examples of attacks". :)
> [...]
> > [1] https://a13xp0p0v.github.io/2020/02/15/CVE-2019-18683.html
> 
> This one only starts using the stack's location after having parsed
> it out of dmesg (which in any environment that wants to provide a
> reasonable level of security really ought to be restricted to root),
> right? If you give people read access to dmesg, they can leak all
> sorts of pointers; not just the stack pointer, but also whatever else
> happens to be in the registers at that point - which is likely to give
> the attacker more ways to place controlled data at a known location.
> See e.g. <https://googleprojectzero.blogspot.com/2018/09/a-cache-invalidation-bug-in-linux.html>,
> which leaks the pointer to a BPF map out of dmesg.

It was mentioned that it would re-use the base across syscalls, so this
defense would have frustrated it.

More to my point was that there still are attacks using a deterministic
stack as part of the exploit chain. We have a low-cost way to make that
go away.

> Also, are you sure that it isn't possible to make the syscall that
> leaked its stack pointer never return to userspace (via ptrace or
> SIGSTOP or something like that), and therefore never realign its
> stack, while keeping some controlled data present on the syscall's
> stack?
> 
> > [2] https://repositorio-aberto.up.pt/bitstream/10216/125357/2/374717.pdf
> 
> That's a moderately large document; which specific part are you referencing?

IIRC, section 3.3 discusses using the stack for CFI bypass, though
thinking about it again, it may have been targeting pt_regs. I'll
double check and remove this reference if that's the case.

But, as I mention, this is proactive and I'd like to stop yet more
things from being able to depend on the stack location.

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
