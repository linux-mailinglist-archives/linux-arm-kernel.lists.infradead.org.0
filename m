Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA04FE653
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 21:19:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FTmknfGCy76tJOWFoPgCpxF4jgO5+mgYUAm1sj6ylhI=; b=aySU2/S++0wjW5
	Vondb4EU/MxjYqb74a+D+gH7Ri8+2U0djEg+eglV6QhuS+hDRgOAKWSekLSEtntjv2ht9s7sYJiX2
	qPrYY9Y/isGzq+gdd8P6JTDIBgdcF8TIHk3T6ZgdtK7+X9s9yF69DTqnN5y0MmnUe7s7Ua93c0vfW
	yGj990sjZBexIdKo27j6PMkx1PQyhlIv2YZru3ytaKU1CVoR8qK1b6XdLQDBCTCAuz8DWGX3YSSfU
	tisfBiQZrf8ovHJbqteOFFkFc063C90fMLcpwEGBv2eWQkqQltKqyCchS5Yqcb5FsJurPZDiF2s5a
	fuHN2ED+ZFpeJAF2rQQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVi4J-00068z-Rp; Fri, 15 Nov 2019 20:19:47 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVi4A-00068W-Gr
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 20:19:39 +0000
Received: by mail-vs1-xe42.google.com with SMTP id q21so7165201vsg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 12:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JGaDR9v43Zv6SHpEarxzzn1nbL46+U2IHPBI4tRr2qU=;
 b=sz3oYsEy6H86AvsBzq8AbZKdjQSN7okat4NCYezwXYe4Nn3roLSKspibusFC5eHUf/
 XOZxYpYgje1RauUONtlip6AndrCc1FzEjmqFuEXf/69rqOVa2UBWi0fKU+Kei4F8RfQX
 +7+vOdylQ6Vj7DNMXqMEOg93IKnt/XFB5vW7yWtdoQvsrjLwYpphuYBP9e1+Qbw3HkGs
 UbQW5JMFNZJhDACwQBzv7KE+82hTDuxWS8H3YU+Y4iLbH+MU9i1tI1p103NI8UckIlSi
 o8zaOjuCB9CXHD9+Ooztaj1GSDDxopXYagZX0MrPMJY7b/8XydSkeYdBXQfkOH969mBK
 m3RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JGaDR9v43Zv6SHpEarxzzn1nbL46+U2IHPBI4tRr2qU=;
 b=bK54mUQpZePFnMsB+f/Ubg97LYEjF0H/g4nBHh9KmOI6hquLI/8OjcpcqZkc1Si7GQ
 zNOcsgbAIkoLbAzX3tTpQTdXW0+MJ4BevGhkkqNDM/H7jf6MRa0ErXZMES0BCtDmSEMM
 cRGLIw3wV1FRrZDqcVJfBVqfG1BaBtkMhpHxr8HC9NtkBnZ8YDtEINPbiH+oMOSU9Np9
 a2NBrXD+IvFHU0KcNyxKWxBN5aoU8i4mqAYTbdJCY5tegr3XwnQpY2sO3BGaXhJRSuA3
 l0bGp0zL7AKSNrOGeZpmwQ1oYQqu3w2CHzzodYaheazrCuIF9ztu/0kp4EZp1odHztYF
 2e3Q==
X-Gm-Message-State: APjAAAWVv5PmVZ10Fdt9iZBnmywHqX3PpoBTEnIwUpZMEyEoUwLOfHsU
 deW8Sl8ZNxLtRxAn1p+oTFo1EmSrsDZZKON9TcoWng==
X-Google-Smtp-Source: APXvYqyJJAtOC9yDRTQtthbybCklKzAJjxRAZgrd64ZfvgQMG7E3ZVIDa8qPXRTRklTlBbwY1FtJCZyMYntSX38nxGA=
X-Received: by 2002:a67:db10:: with SMTP id z16mr6607389vsj.5.1573849174709;
 Fri, 15 Nov 2019 12:19:34 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <20191105235608.107702-15-samitolvanen@google.com>
 <20191115152047.GI41572@lakrids.cambridge.arm.com>
In-Reply-To: <20191115152047.GI41572@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 15 Nov 2019 12:19:20 -0800
Message-ID: <CABCJKudm28QaKRxPHWgKuEfRvm=EvuUEmcAVOnNkbxBCJcYX5A@mail.gmail.com>
Subject: Re: [PATCH v5 14/14] arm64: implement Shadow Call Stack
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_121938_584087_9F3173E6 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>,
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

On Fri, Nov 15, 2019 at 7:20 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Tue, Nov 05, 2019 at 03:56:08PM -0800, Sami Tolvanen wrote:
> > This change implements shadow stack switching, initial SCS set-up,
> > and interrupt shadow stacks for arm64.
>
> Each CPU also has an overflow stack, and two SDEI stacks, which should
> presumably be given their own SCS. SDEI is effectively a software-NMI,
> so it should almost certainly have the same treatement as IRQ.

Makes sense. I'll take a look at adding shadow stacks for the SDEI handler.

> Can we please fold this comment into the one above, and have:
>
>         /*
>          * The callee-saved regs (x19-x29) should be preserved between
>          * irq_stack_entry and irq_stack_exit.
>          */
>         .macro irq_stack_exit
>         mov     sp, x19
> #ifdef CONFIG_SHADOW_CALL_STACK
>         mov     x18, x20
> #endif
>         .endm

Sure, I'll change this in the next version.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
