Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EF5DCC77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZCTwV5VOwaPUk96pJ8P6tra2k4JXQXr1hqR7y3yJLs=; b=eU2kOQzlEkTJus
	FbqzTgxV6kg/YbWXj9YMAOU6tsZYwXYhr+a2xiy2iNBbStBg4zGoB9O9A4wkoZUPHbGMkz2KDDatB
	CL8hikGa1FdJtMC+LAxvd73ZvC80aNtgyMqmwliaZ1b6sj0WPBQUsA2JirCVy12V6TM54zZ7dp7fK
	MqAA2D6ZBvpe7WhPidO5FxSxaSkJI0nbERiyWFEbwpeuGrCey0z80/OvlcvrMU/mYu59ZOhyqXKkU
	xchwhLpLjNCZA2LHO/sXKsOVDMsl94EaDIQAlHD6ICbN9KsDGHjA5jl27LWlw5M8iUd6Qlu7xPhG5
	Vj8Gb3ITOdEF+PxaNUDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVu9-0007ea-3y; Fri, 18 Oct 2019 17:19:09 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVtt-0007ZL-Bc
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:18:55 +0000
Received: by mail-ua1-x941.google.com with SMTP id n2so1934551ual.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 10:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0HIzf5D0wGbvpmxHvIyOvn+49UWE2lHPyTZCg3y02sw=;
 b=vsQmN/ApjkODa5g1BT612x/4GGL20gZVZE8EGaFhwsXbdCcFD/fycGlyho4gxOJTFH
 UNt9ub/I4P/h809X5D4yAx7rCwQfs1BEVFWXiVYtxsoUMxjlzIEJPcfVyB8tF344B2aC
 FjFd1SH8THaH/Pw81yxXP9FQn01T7I+/YsrNyL9mssL2T1CuwuFiQluKl0/fFUrg4HLq
 GlWt1dVIFhyf7eCqu7QIp5RVLWS2ZUOsoD7wzE3W1jtwUAY4NHDTbaS0+XPgu0S1K6/l
 VhJ5hk4oAgFzg9fAGqgifT4d4FsvndIJvJc42Q3EHtKExcLFN4z8Qliw6bt6wkdvd8lR
 FnJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0HIzf5D0wGbvpmxHvIyOvn+49UWE2lHPyTZCg3y02sw=;
 b=AkUxdJ/Af8GWsE8eYwbfNDxabm3fDqtCuT5jnyX7YJgTMjZObu7bOvsGb1EcrdIMyt
 tlWkInAKC8tIWy+1tWEZSB/dsHaD83O1XB3/RnBrYDnZ4ElUKjxNMjCXkmoLoLl/74eu
 fchb2AmI/aGyoQaMB6BHqnRb5BDRcXMYaTWBp0YMaGil/3QahvaBfIhUdetILAnAdheZ
 Sz3ERKmKtHJ7DsjeZRpO4UIHxfn/JrWI4yh7yIIMQmbUfYW7HuGz8gP6nl8sqeqoPmwN
 Nq1YYhK/z8okO1SV4UeF4IsBjXiBmXVeH4NhqsnYWFTmTb1rZ4XMMjFs47Vk093BDSmK
 wwwQ==
X-Gm-Message-State: APjAAAUeyRUVcKz8qZXuF/vBzn+EbEQVcwL2yxaw+HEQ+OR08mSmk6JJ
 jd//ZPIqUWXWc64a7BXBzEQOFe28alIun08ualA9tA==
X-Google-Smtp-Source: APXvYqz95u8SOpZ8CKpbA/DJiP9eST+uXrcgaIItAAur7JD+mN8MzKVC12sI0+N58LUhcO4C5kYwuTsqYm/TbJd/HRQ=
X-Received: by 2002:ab0:6387:: with SMTP id y7mr6108565uao.110.1571419131321; 
 Fri, 18 Oct 2019 10:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-19-samitolvanen@google.com>
 <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
In-Reply-To: <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 18 Oct 2019 10:18:40 -0700
Message-ID: <CABCJKudM-Jupwj9eMMjg3rb1=6rTDBEcWi-KkzPSeSGd8tSxGg@mail.gmail.com>
Subject: Re: [PATCH 18/18] arm64: implement Shadow Call Stack
To: Jann Horn <jannh@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_101853_443107_F42AAA4A 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
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
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 10:13 AM Jann Horn <jannh@google.com> wrote:
> These things should probably be __always_inline or something like
> that? If the compiler decides not to inline them (e.g. when called
> from scs_thread_switch()), stuff will blow up, right?

Correct. I'll change these to __always_inline in v2. I think there
might be other places in the kernel where not inlining a static inline
function would break things, but there's no need to add more.

> This is different from the intended protection level according to
> <https://clang.llvm.org/docs/ShadowCallStack.html#security>, which
> talks about "a runtime that avoids exposing the address of the shadow
> call stack to attackers that can read arbitrary memory". Of course,
> that's extremely hard to implement in the context of the kernel, where
> you can see all the memory management data structures and all physical
> memory.

Yes, the security guarantees in the kernel are different as hiding
shadow stack pointers is more challenging.

> You might want to write something in the cover letter about what the
> benefits of this mechanism compared to STACKPROTECTOR are in the
> context of the kernel, including a specific description of which types
> of attacker capabilities this is supposed to defend against.

Sure, I'll add something about that in v2. Thanks.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
