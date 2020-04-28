Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B5A1BBCDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xfQbwErBiZrlAQPNupyyrJ5E1IwvqFFP++If/qZFP2w=; b=YYIRdkSbQ/qVej
	49Udd47XC9rcjXPdclPM/yP0FJGrNRcUp74i87+efzyfRFx28L+gohNr2eMJLJFXdbXW9O+9qfBQs
	HR1NrcAf+VYi4UUwTdyJOoNAHGbLfoGGN5YQMEcsrCKhWEPD7R2K+y3mr7GnhQst1UKfucCGS2JW8
	v/rSV/y2UMgv9bgHZP+mYH4D14Dj2OgodqU2C2PCbBfU2hj+3/Nkovn+A0uF79rw7B23WSaQRID1p
	bqroy2JpkcKPO/udws6XtxAt2/5xDg3SI+DCkyiqtsLkdnaIzSD+Mndk70HqQX0B9VlGf2bT3FHo/
	0fLMckVNirwAkonyPsWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOne-0003sy-1m; Tue, 28 Apr 2020 11:53:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOnT-0003sG-LE
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:53:08 +0000
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com
 [209.85.166.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A9C8206D9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 11:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588074787;
 bh=qxJ2vBHg5G5HuPPPSQ6TVDsxRbTTsyROVYOl+pq1JAo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XDYB9C9dJJEaPPq4qz6YvXMdQTmKK2h9tIKQVAJy5vow38kHZcK13rHVXVUd8v2bF
 PML33zU2Ln7UqkJ3hLeqb0xWyITEb838BKKkXlXkmtoMJnW4DRXjLWTPY1G6+clNwg
 6Tvuhoo7NGKgiP7JD2oVplUXkmbNjfPJb1iib96Y=
Received: by mail-il1-f173.google.com with SMTP id x2so19959834ilp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 04:53:07 -0700 (PDT)
X-Gm-Message-State: AGi0PuYCiBuW4Uui5UFPQMZ2FIURoVWT/wtTzCMqkcBaPahwkfFeZgGm
 cpVDFaSK7JVkznAhSe6zJvznx/Qv826WXniBXVA=
X-Google-Smtp-Source: APiQypJdjDIs9T7Kgmhj28S4xpbFlk6a6ZS4dEmaB5UvBpO1IMB0FFw475i5b9jadsWKRU32c6ITW3DII6RFViHQ6PY=
X-Received: by 2002:a92:607:: with SMTP id x7mr23617727ilg.218.1588074786653; 
 Tue, 28 Apr 2020 04:53:06 -0700 (PDT)
MIME-Version: 1.0
References: <d8baa0e5-0e20-9f58-5e79-34a272f86d1d@infradead.org>
 <20200427203520.GA23186@willie-the-truck>
 <c3c48a79-6a0c-2bae-16a8-507f05ee5473@arm.com>
In-Reply-To: <c3c48a79-6a0c-2bae-16a8-507f05ee5473@arm.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 28 Apr 2020 13:52:55 +0200
X-Gmail-Original-Message-ID: <CAMj1kXHoEbG_Ff21Qs1eQJ=3zuqE_RuMzVWbmopv5FP52pqJgQ@mail.gmail.com>
Message-ID: <CAMj1kXHoEbG_Ff21Qs1eQJ=3zuqE_RuMzVWbmopv5FP52pqJgQ@mail.gmail.com>
Subject: Re: [PATCH] arm64/vdso: Remove unused makefile variable
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_045307_733284_92DFA57A 
X-CRM114-Status: GOOD (  22.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Geoff Levand <geoff@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Apr 2020 at 12:45, Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
> Hi Will,
>
> thank you for pointing this out.
>
> On 4/27/20 9:35 PM, Will Deacon wrote:
> > [+Vincenzo]
> >
> > On Fri, Apr 24, 2020 at 08:58:49AM -0700, Geoff Levand wrote:
> >> The vdso makefile variable VDSO_LDFLAGS is defined, but never used,
> >> so remove it.
> >>
> >> Signed-off-by: Geoff Levand <geoff@infradead.org>
> >> ---
> >>
> >> Hi,
> >>
> >> This seems to be left over from a code cleanup that missed it.
> >
> > While I agree that this isn't used, I'm wondering why '-Bsymbolic' is used
> > to link the compat vDSO but not the native one. It seems weird to differ
> > in this regard.
> >
> > Vincenzo? Looks like you added this unused variable in 28b1a824a4f44
> > ("arm64: vdso: Substitute gettimeofday() with C implementation").
> >
>
> My understanding is that "-Bsymbolic" is required by both compat and normal vdso
> because when the shared library is built it adds a flag in the dynamic section
> of the binary called DT_SYMBOLIC which alters the dynamic linker's symbol
> resolution algorithm to search for references for a symbol inside the library
> first and then into the executable.
>

DT_SYMBOLIC doesn't (or shouldn't) change the dynamic linking
behavior. It informs the linker that ELF symbol preemption may not
work, since the .so has bound internal references to its exported
symbols to the internal versions directly, rather than allowing the
application to supersede (i.e., 'preempt') them. This is an obscure
feature that isn't really relevant for the VDSO, since we carefully
control what we export from the .so anyway (via the linker script's
VERSIONS section)

> This becomes useful for example when an executable built with -fPIC is trying to
> call a public vDSO function from assembly (bl symbol).
>
> The issue here seems to be that I used VDSO_LDFLAGS instead of ldflags-y. I can
> post a patch and Cc stable. Adding Geoff as Reported-by.
>

I think it can be removed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
