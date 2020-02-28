Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8D3174136
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 21:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIshK+hEPP4bjP+Sk9o8bisFJOJdb57AzbcrqO9MInY=; b=J9agaQwlqxSY+i
	SrkgdWW/udGGw+1cN5EBl1gy7AKD7QqimJQmTBkqOF+tUeqtraLvhY6nk0kein8Qmy8nLve9Yxqgn
	FVfK1d6+o+iOfUKmtbdzJHJedmhfPbCgzNjoXm8rmICnAU5gwUeCRxt4Mkie6i3bYxjP9CGnaVZPS
	DTcuUa3+kO12cX1A9l9Yk9rgRrl+VR2VqQ87KSjcFPHeL30aUu9S6RPH+1eAtfklPO6MTmWPbb6Xp
	t8nCtG+fO2Bce4SXOmPAKp9qihu3d/vhreyJZ9sBejxUTXqwJWtq2fG56KgExJWzStBIqNAUrEeAX
	DscuvQwtjcqaJ6vx3qvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7mbf-0000lX-AS; Fri, 28 Feb 2020 20:51:35 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7mbT-0000kr-BC
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 20:51:24 +0000
Received: by mail-vs1-xe44.google.com with SMTP id c18so2821412vsq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 12:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SitQuWaYJYljvcCrYj4fkHHkPc4o0vcrOMkYmOvH+dg=;
 b=WsM/fb6y5CGtFjZacOBZZYlUzkSwNVN+lgzwRpeO7kE0e/83uZ2+K3ZTNKkv0Q8dSI
 a+Cugxv8TY/rUcQjCqy8r8gHFh1GeAOUAEhTpt/68gti4/raIjNU9nV6YsuYTnE1pQg4
 BjR09FkgavjN4CagxM8NdJbh77wJU1R5zT8YKoCpeYzhTXcpH67QL/XNAng5pvrnCqzW
 IlpTQwrR9LWfOP5fofMezihxVEIAGD6q+96J1skrj6gfpRAHBApVND96QkQOppRbBXCs
 AIgan+ocDu8aj28mHw/t5DZ9jenFbfBChKOdPnSbMKWlknHeyCJ9J8SDvVmB2tsmDd2F
 ZnZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SitQuWaYJYljvcCrYj4fkHHkPc4o0vcrOMkYmOvH+dg=;
 b=eQe0O5UiL0KNwtbROi4SF/xmPR9PF0qVpcVPG+mvaIihqUjlhB8Vu82MtXPpDZGPpW
 O8eP016+stLvssoZ6b0iBHgEhvLzCFords226c75HH6qR92tGY5pR410pNsfipujDB3D
 0dJlwz9lwtMbzEomgC0Y2xH60JAMeSiWtJc1FwyDLk151/bEYQ0ED8wx3w/4hn6a9zvA
 D71PFeKTst5mQJT2yRG7KMrHhcLFAPJ5evqpkCKtg2ip3dS23VbgdUQnuSRyUnKFH+Qe
 zraO4jq+xTCWHUw9tBdHui1DUg32JXaaHVntemgU4g5JmcmDp8D3TUBdMRf+rA++aIrF
 hevQ==
X-Gm-Message-State: ANhLgQ1f4pSK1q9HwlQaxvCr+gnUs5H3fNebjyct/ndgpGSvCBBD2z07
 qtiHXSUIwUnbQ8pN8NhIX1GT2aBwHMc/BCMlWeqQAQ==
X-Google-Smtp-Source: ADFU+vvQxOaGGrHRtQqNZNl73QRM6vi1YBVrsU8i6+lpeaELnBsJ5FIiG7kODI7N1KIXUtRDUGM7/idkISnluUIb4h8=
X-Received: by 2002:a67:fb8d:: with SMTP id n13mr309624vsr.15.1582923080404;
 Fri, 28 Feb 2020 12:51:20 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200225173933.74818-1-samitolvanen@google.com>
 <20200225173933.74818-11-samitolvanen@google.com>
 <56b82a54-044a-75ec-64e5-6ba25b19571f@arm.com>
In-Reply-To: <56b82a54-044a-75ec-64e5-6ba25b19571f@arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 28 Feb 2020 12:51:09 -0800
Message-ID: <CABCJKufFp=7+18-XSY3U3745FifmRNXqBWk9TeZxgZ-aWmhfHQ@mail.gmail.com>
Subject: Re: [PATCH v9 10/12] arm64: implement Shadow Call Stack
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_125123_409072_CD08A679 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 8:31 AM James Morse <james.morse@arm.com> wrote:
> > +#ifndef __ASSEMBLY__
>
> As the whole file is guarded by this, why do you need to include it in assembly files at all?

True, the include in head.S is not needed. I'll remove it in the next version.

> > +static inline void scs_overflow_check(struct task_struct *tsk)
> > +{
> > +     if (unlikely(scs_corrupted(tsk)))
> > +             panic("corrupted shadow stack detected inside scheduler\n");
>
> Could this ever catch anything with CONFIG_SHADOW_CALL_STACK_VMAP?
> Wouldn't we have hit the vmalloc guard page at the point of overflow?

With CONFIG_SHADOW_CALL_STACK_VMAP, even though we allocate a full
page, SCS_SIZE is still 1k, so we should catch overflows here well
before we hit the guard page.

> It would be nice to have a per-cpu stack that we switch to when on the overflow stack.

It shouldn't be a problem to add an overflow shadow stack if you think
one is needed.

> I can't work out why this needs to be before before idle_task_exit()...
> It needs to run before init_idle(), which calls scs_task_reset(), but all that is on the
> cpu_up() path. (if it is to pair those up, any reason core code can't do both?)

At this point, the idle task's shadow stack pointer is only stored in
x18, so we need to save it again to thread_info before the CPU shuts
down, or we'll lose the pointer.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
