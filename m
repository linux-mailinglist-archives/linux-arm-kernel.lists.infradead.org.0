Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C977E35B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 16:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWczsW/mWivtKSRpMHm0HatKpbbDHKib/zGvD6WcvZI=; b=Q2tDf+2WLEdk6Z
	FtqbHZL1WRtOOWe5qt12o+THQbulxl5dQdXte/eSDpGWsFjYikGR2ztAMsGL8TnFRc/2i3TWoAs+L
	n4y1SvwfewdUKfzRIZAixOFJ0ptDhK/vBGfto/3MwW4gAkddsOmERkcxGmJdVvk9PG5/YUaJnmq3l
	9qt6btadnwBMRfv4S4ZdA4cvZnbng1J76FNLOzPK/noPq9/7F/Y98Hp9v9IAjwCAc1DUY5RsZqOXo
	AcLrL8MR/ECGTUQ22vZ8mpi+9eWI6eOxB62OGNxTnZXXbUElCWJC7nOuXukkdhmVzxVMAJTxqywbV
	zYgG+1KamAlCF6t4A2Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNeGg-00032n-70; Thu, 24 Oct 2019 14:39:14 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNeGW-00032S-R8
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 14:39:06 +0000
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com
 [209.85.217.47]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x9OEciD7003034
 for <linux-arm-kernel@lists.infradead.org>; Thu, 24 Oct 2019 23:38:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x9OEciD7003034
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1571927925;
 bh=5VDOJqWr1P/8RpUKJUiUUgzqRYMuViQTbISV22/DfcM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Wsq8rdKbjufD8xDQo9TYn/vVPfLqU8CWHsul4oOcXL2+aXPYpencUJWWwSK3e35D2
 r1rM9S/WmrTYaz2BZmvK3Q++Ya6W+X/E7doaUDPGpJqtcrfyTmXmvYas9LC6dtz7c6
 +Wp7bga0LwmkjxC7bnK3lfeIWZErlsOVJtEDo2V3S2VPEdRk6duBPk4lRsrsWbDSL/
 STw5curdVNiU7mM8M4A4aCs4z+NHeoPxk0Ve0g/XI+teLFDGPSgtiQYnJpzl/UW1DT
 /q3CPziyC8B8u7V6ef2AEzLzPC2Ud+TpShsgQS4VnFZCerdl+NYBUp2z94XzY4M3Fp
 7AXuq/dNyMwFA==
X-Nifty-SrcIP: [209.85.217.47]
Received: by mail-vs1-f47.google.com with SMTP id y129so16348679vsc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 07:38:45 -0700 (PDT)
X-Gm-Message-State: APjAAAU1XN1MEcqaOPQqiRHxRcMNThP6lbjQWQ2IhAdP8gKOjsaUyQs9
 2AJE3oDhGuwdOfzkFKXtO3yXhj4nAkgst5uW6rY=
X-Google-Smtp-Source: APXvYqzTx9f4+sdDvCmM/G0tcS16/98SXXq+GzkLjkICnXwW7kaMiC+gdVtM0Mg1KgO8XJEVHwsWres9Ec0jaj70OCs=
X-Received: by 2002:a67:e290:: with SMTP id g16mr6201871vsf.54.1571927924100; 
 Thu, 24 Oct 2019 07:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <20191022162826.GC699@lakrids.cambridge.arm.com>
 <CABCJKudxvS9Eehr0dEFUR4H44K-PUULbjrh0i=pP_r5MGrKptA@mail.gmail.com>
 <20191024132832.GG4300@lakrids.cambridge.arm.com>
In-Reply-To: <20191024132832.GG4300@lakrids.cambridge.arm.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 24 Oct 2019 23:38:07 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQWjq0DoTD6LkQfRSMz6sS6_SFapd5YzKjz2U1ZmFEm9w@mail.gmail.com>
Message-ID: <CAK7LNAQWjq0DoTD6LkQfRSMz6sS6_SFapd5YzKjz2U1ZmFEm9w@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_073905_209321_5B5B0C10 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Sami Tolvanen <samitolvanen@google.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 10:28 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Tue, Oct 22, 2019 at 12:26:02PM -0700, Sami Tolvanen wrote:
> > On Tue, Oct 22, 2019 at 9:28 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> > > > +config SHADOW_CALL_STACK
> > > > +     bool "Clang Shadow Call Stack"
> > > > +     depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > > > +     depends on CC_IS_CLANG && CLANG_VERSION >= 70000
> > >
> > > Is there a reason for an explicit version check rather than a
> > > CC_HAS_<feature> check? e.g. was this available but broken in prior
> > > versions of clang?
> >
> > No, this feature was added in Clang 7. However,
> > -fsanitize=shadow-call-stack might require architecture-specific
> > flags, so a simple $(cc-option, -fsanitize=shadow-call-stack) in
> > arch/Kconfig is not going to work. I could add something like this to
> > arch/arm64/Kconfig though:
> >
> > select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
> > ...
> > config CC_HAVE_SHADOW_CALL_STACK
> >        def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
> >
> > And then drop CC_IS_CLANG and version check entirely. Thoughts?
>
> That sounds good to me, yes!
>
> Thanks,
> Mark.


If you use cc-option, please add a comment like

    # supported by Clang 7 or later.


I do not know the minimal supported clang version.
When we bump the minimal version to clang 7,
we can drop the cc-option test entirely.





--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
