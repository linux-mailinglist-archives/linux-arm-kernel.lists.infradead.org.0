Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7840EE3459
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YR0Xl6m3rRuez0MPbVGp573Pc/kDMWy3eIbw6u12DQg=; b=C7td8CJTgWqjL4
	dEwNYnqEULGnEx1LX+J3l3qTVuJXYW8XvdtzxEP6JEaANts6WzYI+z51xlLd16wE2yurzkmt4RJbD
	dGJYXn7VUFCJQ9TqYlU+A636ClODGJ2Bv7chR1y3dZZ6jIcyUpzQK7S9XaP7lm6rzBrIX9OrJGVVK
	O3i/3a+Ao8JVxKXlZkoC43p/ReMYgUU00WazZbiP3UuzrTPmvdPEvrnfRhQBl/IIYo9nsMVstRDxH
	K2rMhbOYMiXFJ8kEuBImaUwcdUoWz3I3yDq4BH+rX/jIW781gI+Twif6Rdx0iYFA3IWZREf5rArPV
	YPNMadT91LMWjtDVhA+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNdGK-0002fp-Mq; Thu, 24 Oct 2019 13:34:48 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNdAX-00052V-7I
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:28:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A65C3C8F;
 Thu, 24 Oct 2019 06:28:36 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 004113F71A;
 Thu, 24 Oct 2019 06:28:34 -0700 (PDT)
Date: Thu, 24 Oct 2019 14:28:32 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191024132832.GG4300@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <20191022162826.GC699@lakrids.cambridge.arm.com>
 <CABCJKudxvS9Eehr0dEFUR4H44K-PUULbjrh0i=pP_r5MGrKptA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABCJKudxvS9Eehr0dEFUR4H44K-PUULbjrh0i=pP_r5MGrKptA@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_062849_326690_1EA7A2BF 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 22, 2019 at 12:26:02PM -0700, Sami Tolvanen wrote:
> On Tue, Oct 22, 2019 at 9:28 AM Mark Rutland <mark.rutland@arm.com> wrote:

> > > +config SHADOW_CALL_STACK
> > > +     bool "Clang Shadow Call Stack"
> > > +     depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > > +     depends on CC_IS_CLANG && CLANG_VERSION >= 70000
> >
> > Is there a reason for an explicit version check rather than a
> > CC_HAS_<feature> check? e.g. was this available but broken in prior
> > versions of clang?
> 
> No, this feature was added in Clang 7. However,
> -fsanitize=shadow-call-stack might require architecture-specific
> flags, so a simple $(cc-option, -fsanitize=shadow-call-stack) in
> arch/Kconfig is not going to work. I could add something like this to
> arch/arm64/Kconfig though:
> 
> select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
> ...
> config CC_HAVE_SHADOW_CALL_STACK
>        def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
> 
> And then drop CC_IS_CLANG and version check entirely. Thoughts?

That sounds good to me, yes!

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
