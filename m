Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20625BF6DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 18:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMQbdu06OCHyt1bfidqlqkOrwKBn+eTydsV/7Xste2c=; b=rmijbTfUoWPoJ5
	bkaGnyGu+pjXjiUfGx7UvHf/GB/MYxiZcQ2ZvBCEzQOk6Y/qNIYHSYdG7excgVKrcljx9et63DIvv
	SXlx16nnMfMiNduMy8tu5Cq1wtKFUe+cqy0RjjeLlRN6KrhBoSgcwNBZ0E88aMWM9BLPE50eragzJ
	erhS2LG/c5Y+5qFFOGZcEb0jko+Tn5MaVXFVgtftmTVWmLWLtcKUL8cuTK87mw/E7Hvzl7UiC5JeI
	wt/uRVLTg3EA/v3uvfeLMcuHQMByGcuyLwVMU/YGaUBPQkJV6Z/BG4Ff9eThdALHDWSJjc9rj3L1O
	fAGZuc9bWiuRuK40VsOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDWpG-0006HX-F1; Thu, 26 Sep 2019 16:41:06 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDWp5-0006HA-RC
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 16:40:57 +0000
Received: by mail-pg1-x542.google.com with SMTP id y35so1884610pgl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 09:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=esvGgHn/Fk8P7/1eukGo/3RvPgjyDzLIKExVZFQ9XgM=;
 b=totzfr7ujRiSU4GBennfp0gaTeOVKnDAcd6h1IsC1yLhGzWT/UgC+wXUblFxkx3N2e
 24scoPBq265Mb1BFAMQGDTrRS8IgPKDqAPwaqMuTOP1gQ5RfPox95hz3Rli7HgRxJaek
 2gYBeSov7tAmx7456XbDA+EZcExRu4w29jOoo2z65E575Qgr36VxfpdeWw8WylBdFsDD
 SavSpFEAof4Olb9gWkqpz3xJxkk+CjhZ06WAuCD4m+v4qYOHS4FIffDCP4G4uAB6hZ9M
 qXCTUx7gclVXF7Uf+m35XM5lx43wRtDTTICUXwiSD1t9uKj3lMiuaTmxF2MmS39xRxdz
 VsWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=esvGgHn/Fk8P7/1eukGo/3RvPgjyDzLIKExVZFQ9XgM=;
 b=uKBLyepS3LJqjqH8UxioeDmfmsBGcdU4p1KFtqznj6zvg3ogaF1ksq7rRqhkqHT67p
 eO7my8e9EKrAC7Wj8INFPRqFGTYD2yg/gWXZXlgYTQh0CR3uFpIj4FmRZjDljprVC7EV
 m/edK4tfyY447s2bP5y2iZ72zQQ++F7ERQMVF2hUhsiwYlbPw2l9rmdVSfiTQVs+XvPp
 L67uvOJIGBtzkV4djUllK6jpQGzpbbA+1Njdi9p1/1SccHsz13cIuIErG1j1PmKgaL3m
 q9OEiJDzNWgOQvFbJNO4dupPf336YBEUOoaRncv+r44n3Nkr5YO+5eGILuO9xIQLh6xi
 oTlw==
X-Gm-Message-State: APjAAAUm9c0GWUhHrAoNLUfprD7SnoULy8wAX7F6jcWFXW2q+TdVLuzh
 t11WSaYUJNe7cwrx1BPXEwFWwIXGSlH96zGkhcpmcg==
X-Google-Smtp-Source: APXvYqwSTR6cAQDZeotV74lzttVw2dtqTt8GShXwmft9mDe5aQD2k5v7WPPJWUm/hUEUtA8dnesPi8ZeKc06wbZ8QlA=
X-Received: by 2002:a17:90a:ff18:: with SMTP id
 ce24mr4437144pjb.123.1569516054579; 
 Thu, 26 Sep 2019 09:40:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190925130926.50674-1-catalin.marinas@arm.com>
 <CAKwvOdn2Sf7aAt0zqUUqGY6nXg-C3be7An9amy4tfiNr_8ERJw@mail.gmail.com>
 <20190925170838.GK7042@arrakis.emea.arm.com>
 <a7e06b86-facd-21de-c47c-246d0da8d80d@arm.com>
 <20190926074717.GA26802@iMac.local>
 <20190926155147.GL9689@arrakis.emea.arm.com>
In-Reply-To: <20190926155147.GL9689@arrakis.emea.arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 26 Sep 2019 09:40:43 -0700
Message-ID: <CAKwvOdmtys4sgx_k3ikc3pYca4u9Es3hWJUJbckiDaDFBrn7Fg@mail.gmail.com>
Subject: Re: [PATCH] arm64: Allow disabling of the compat vDSO
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_094055_908283_4888C6E1 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 8:51 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Thu, Sep 26, 2019 at 08:47:18AM +0100, Catalin Marinas wrote:
> > On Thu, Sep 26, 2019 at 01:06:50AM +0100, Vincenzo Frascino wrote:
> > > On 9/25/19 6:08 PM, Catalin Marinas wrote:
> > > > On Wed, Sep 25, 2019 at 09:53:16AM -0700, Nick Desaulniers wrote:
> > > >> On Wed, Sep 25, 2019 at 6:09 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > >>> - clean up the headers includes; vDSO should not include kernel-only
> > > >>>   headers that may even contain code patched at run-time
> > > >>
> > > >> This is a big one; Clang validates the inline asm constraints for
> > > >> extended inline assembly, GCC does not for dead code.  So Clang chokes
> > > >> on the inclusion of arm64 headers using extended inline assembly when
> > > >> being compiled for arm-linux-gnueabi.

This case is very much real (not sure if Vincenzo was asking me or
Catalin), see report at the bottom of this comment:
https://github.com/ClangBuiltLinux/linux/issues/595#issuecomment-509874891

> > > >
> > > > Whether clang or gcc, I'd like this fixed anyway. At some point we may
> > > > inadvertently rely on some code which is patched at boot time for the
> > > > kernel code but not for the vDSO.
> > >
> > > Do we have any code of this kind in header files?
> > >
> > > The vDSO library uses only a subset of the headers (mainly Macros) hence all the
> > > unused symbols should be compiled out. Is your concern only theoretical or do
> > > you have an example on where this could be happening?
> >
> > At the moment it's rather theoretical.
>
> Actually, it's not. The moment the compat vdso Makefile needs the line
> below, we are doing it wrong:
>
> VDSO_CFLAGS += -D__uint128_t='void*'

*yikes*
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
