Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 672C8164BDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 18:26:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36CvNZ4wZqNl5PHhR2WcfGpfaISoTExoKNgK0gwQcxo=; b=IRG1VtDBmzvXm6
	FE4n+eh0f1h/qmH+EcTq/GLufVRjAkllVxrUviU2Y4etRPXE2decuBrONuNePwWvD0vurgYDwVVNh
	oDJRhz+4uoIt4bT1RnhjZoeauLq/zSr5Wndj4nJCDh50hZX7OnpA0Sb5QCi87ZA6E2JR+ZSI64YJf
	r81Mm+i7KTKaTEm/0BurpDoXqJLwRz/nhwyT9EiMVnzOEO+ojVkneNt1SmmygPuOppYEbp3P8vNp7
	SIzS/1QF/XxVokpCJ2K2WnVOhXiFuHABAZnVopTf8I0RYX9pf4e76QSyr/X5Mc/gR6otFkZZJuDeX
	BRk+pBtkxGpPPRaF6vNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4T6r-0008F1-T8; Wed, 19 Feb 2020 17:26:05 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4T6j-0008E6-Bo
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 17:25:58 +0000
Received: by mail-ua1-x942.google.com with SMTP id g13so498549uab.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 09:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lOv0TJC8hMcQtpE5VWA57B/HblMF/rVC1OozLuYaMQ4=;
 b=wCVKJi1wPos2aoe3r35P78Z+FSG1LznO9dOxVeXE0xdKHBduJWQSiBquqEYSJJEekN
 yY2L0IZbsj9dlV7LpX0lkR6+uGJXfjz4aR31Qye5jkCHwWzR2UJ7t5Iu7fNK51fnvIq6
 a46RzXx5I6pPrFY8wdnCPQWlVZaXc4VncX69Ar93mXAxIeneFKCcgvUgjkB+8UmaapxX
 C5AxmUjVUKWLDtDoJV5sAMlPxU7Rn2Y66c9nq9icSa1tDUfbTJ8Gnqr5l2RIp6O5lbOG
 1Jdh0a/rKTL7Pv9XiYDRJm7vPCpWne6JU2Zikx7hlaxaGKeNFsDElZMIzoxnGSRJKOMu
 g/PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lOv0TJC8hMcQtpE5VWA57B/HblMF/rVC1OozLuYaMQ4=;
 b=OvHBihK/3hJFm2VArFbGDwaNNKo3NE5QJEmuyEJ9ulfzR1eI7kRYPx6hFZYdn5WlvK
 eSGVgFv0TikJqmOFs3FNcMdJ6g5lmYXVRhm1gss6JXT53fyO2pBz90FeKRn/OFScW59w
 rB+BfpKua3WmDolX0tTV4niIg6iCGLxYQRtRpogECNOj+JBASYmmaULixIqUk5DSDs2R
 22mFUN4mazZqwSa/2Mxjt0b4Y1HPq09tuLBMW9jbCaU4gwBmhhEx9FI/R5Jvb+Y7mRCR
 bk0T4H8K16nCqQGvtNmtnXsiCnjqyf/oseqhK+mNxbgYDz+C724SjgXQxwJeONz9TJjo
 2WgA==
X-Gm-Message-State: APjAAAVfpmuuwyqgDWbRc6n7S5B1XeG4kMdXcv31i7P6DPo18oHisbBT
 /v1Pjk3akHzDXC06sQAXlicjCHESKudBcJWhJeWGDg==
X-Google-Smtp-Source: APXvYqwSo6GUilJ/FzOryvH4ZQvh+dOFRIWXmaH6WmAGeZIJvKZZbDWH/ybZ+0IbluDu6CE89M7poWhpL8t0ZLuEzsk=
X-Received: by 2002:ab0:14a2:: with SMTP id d31mr13781595uae.106.1582133154592; 
 Wed, 19 Feb 2020 09:25:54 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
 <20200219000817.195049-2-samitolvanen@google.com>
 <60ec3a49-7b71-df31-f231-b48ff135b718@infradead.org>
In-Reply-To: <60ec3a49-7b71-df31-f231-b48ff135b718@infradead.org>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Wed, 19 Feb 2020 09:25:43 -0800
Message-ID: <CABCJKudVbSMEXWTPw+bzzMuEf_kNsrfYiY53S5ZhWqGB9ynFEA@mail.gmail.com>
Subject: Re: [PATCH v8 01/12] add support for Clang's Shadow Call Stack (SCS)
To: Randy Dunlap <rdunlap@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_092557_435943_C1FCF9E1 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 8:20 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> Hi Sami,
>
> a couple of minor tweaks:
>
> On 2/18/20 4:08 PM, Sami Tolvanen wrote:
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 98de654b79b3..66b34fd0df54 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -526,6 +526,40 @@ config STACKPROTECTOR_STRONG
> >         about 20% of all kernel functions, which increases the kernel code
> >         size by about 2%.
> >
> > +config ARCH_SUPPORTS_SHADOW_CALL_STACK
> > +     bool
> > +     help
> > +       An architecture should select this if it supports Clang's Shadow
> > +       Call Stack, has asm/scs.h, and implements runtime support for shadow
> > +       stack switching.
> > +
> > +config SHADOW_CALL_STACK
> > +     bool "Clang Shadow Call Stack"
> > +     depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > +     help
> > +       This option enables Clang's Shadow Call Stack, which uses a
> > +       shadow stack to protect function return addresses from being
> > +       overwritten by an attacker. More information can be found from
>
>                                                               found in
>
> > +       Clang's documentation:
> > +
> > +         https://clang.llvm.org/docs/ShadowCallStack.html
> > +
> > +       Note that security guarantees in the kernel differ from the ones
> > +       documented for user space. The kernel must store addresses of shadow
> > +       stacks used by other tasks and interrupt handlers in memory, which
> > +       means an attacker capable reading and writing arbitrary memory may
>
>                             capable of

Thanks, Randy! I'll fix these in the next version.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
