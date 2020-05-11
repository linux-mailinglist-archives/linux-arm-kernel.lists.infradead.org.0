Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADA11CE885
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 00:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uy6TWxYROgkozKSgUrwkIecMObKEs2idpaJ0DMtwvBI=; b=ZnznQZ0KHa1PMy
	3tgtIjt2kvpkC/mLbHxCkVy25xwnXNLu+RooKzzeg3N6CCJenLtg+cF5JfFVRuzzdDNqZ0OpCCh0Y
	yBkDiOSeLWJ0l/YbseZZ3TS+vBj1Dvz0eqvjL7uxKvdEsWp2p1GZGkyQlTgw9CgjgnzGaBGL3M/bk
	guekJzRCQWTIP+2sa9nm59CPeZWg2ZP4IHhnVB9inc4omZnVkby/72oMnZNtPbEP5Dofa95RCArXa
	7aX/i0LE/MUR/xzrcVeJ+UCFtDF8epcYtsHRLBmGTljjBlhG9LB9gLvrLeGYccWyTmF+s4Zd5XYAo
	Jk8PZCNRAZf/Oo5lmLdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYHIE-00028L-AA; Mon, 11 May 2020 22:53:02 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYHI7-00027M-4c
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 22:52:56 +0000
Received: by mail-pl1-x642.google.com with SMTP id u22so4528593plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 15:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6oQAHkHCTjdXQutqjFpnQFKkQXPKWu36loMHxr/U/Bw=;
 b=ABJ9An36QqvDTKUmlo81w3VPI+NywC5sRr3Udf1h5mkJQruw2r+/d0TK5KCxAvQnkM
 AnX6dF0ESk/0FMYf94bsuWf7TyAgd59x096hAtrjjgg+oqFcAzxb3dsZhEMl1OgQwajx
 UeNlEyLzrUVksn8Oh25g81dOCnaTLldN7BPyA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6oQAHkHCTjdXQutqjFpnQFKkQXPKWu36loMHxr/U/Bw=;
 b=R0//wgjYfZj7xLOO+Vd1WaGEIIqVQRO37kk58aTSCIYE5nG9vMDgV4nT7sgQEXtOwU
 jlebxrFte+bnZDKNIVYVLI23NpO+v2u+x6EsH8FfYZSq2YvLK7Mv4p7KT6H2VjlLtfyD
 CEOQywpf+0tEdKX3L4MnunXencWyVpvdcYyTSgHhJdMlCCx7M21Mf2dSSxo1bPrdBvVq
 4Qfk2pgNKCIDwEZ33MyUfdwPAM9BY2Yda/V7peTXtZSke3KNpVzy1eSlxb7roiOyRYm1
 QzjyL5QGJsaztHsGhIJasHin53prBOLtfmAT1mRExn8Sgnsu5ldh3AGCb2W6kneYeAXV
 786A==
X-Gm-Message-State: AGi0Pubvalq887GguQkOhG/JsjtW1+IxWCtFujPJearR/dObhN8OJ+QU
 GnW573saY9AJyhHUATx6sAKaUJcN7vU=
X-Google-Smtp-Source: APiQypIy2T/GL+CQJ2rGQu9gU0HYJzJjsezCn+O4ZOJZed098nVP0mQXdsNAsnme8iull0NZu6Js8g==
X-Received: by 2002:a17:90a:3b0c:: with SMTP id
 d12mr24072589pjc.78.1589237571928; 
 Mon, 11 May 2020 15:52:51 -0700 (PDT)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com.
 [209.85.215.170])
 by smtp.gmail.com with ESMTPSA id k14sm2629514pgn.94.2020.05.11.15.52.51
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 May 2020 15:52:51 -0700 (PDT)
Received: by mail-pg1-f170.google.com with SMTP id f6so5235083pgm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 15:52:51 -0700 (PDT)
X-Received: by 2002:a67:c40c:: with SMTP id c12mr13653102vsk.106.1589237114125; 
 Mon, 11 May 2020 15:45:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200428211351.85055-1-dianders@chromium.org>
 <20200428141218.v3.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid>
 <20200511145908.GA22040@willie-the-truck>
In-Reply-To: <20200511145908.GA22040@willie-the-truck>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 11 May 2020 15:45:02 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W1F-B7SUwxebhhH2HS+fN4sYv4RHvvKud5a+00J0T=SA@mail.gmail.com>
Message-ID: <CAD=FV=W1F-B7SUwxebhhH2HS+fN4sYv4RHvvKud5a+00J0T=SA@mail.gmail.com>
Subject: Re: [PATCH v3 05/11] arm64: Add call_break_hook() to early_brk64()
 for early kgdb
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_155255_203886_8E372E5D 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Frank Rowand <frowand.list@gmail.com>,
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 jinho lim <jordan.lim@samsung.com>, Andy Gross <agross@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-serial@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, Dave Martin <Dave.Martin@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Jiri Slaby <jslaby@suse.com>,
 Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Allison Randal <allison@lohutok.net>, Sumit Garg <sumit.garg@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Jason Wessel <jason.wessel@windriver.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Mon, May 11, 2020 at 7:59 AM Will Deacon <will@kernel.org> wrote:
>
> Hi Doug,
>
> On Tue, Apr 28, 2020 at 02:13:45PM -0700, Douglas Anderson wrote:
> > diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
> > index 48222a4760c2..59c353dfc8e9 100644
> > --- a/arch/arm64/kernel/debug-monitors.c
> > +++ b/arch/arm64/kernel/debug-monitors.c
> > @@ -297,7 +297,7 @@ void unregister_kernel_break_hook(struct break_hook *hook)
> >       unregister_debug_hook(&hook->node);
> >  }
> >
> > -static int call_break_hook(struct pt_regs *regs, unsigned int esr)
> > +int call_break_hook(struct pt_regs *regs, unsigned int esr)
> >  {
> >       struct break_hook *hook;
> >       struct list_head *list;
> > diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> > index cf402be5c573..a8173f0c1774 100644
> > --- a/arch/arm64/kernel/traps.c
> > +++ b/arch/arm64/kernel/traps.c
> > @@ -1044,6 +1044,9 @@ int __init early_brk64(unsigned long addr, unsigned int esr,
> >       if ((comment & ~KASAN_BRK_MASK) == KASAN_BRK_IMM)
> >               return kasan_handler(regs, esr) != DBG_HOOK_HANDLED;
> >  #endif
> > +     if (call_break_hook(regs, esr) == DBG_HOOK_HANDLED)
> > +             return 0;
>
> I think this just means we're not running debug_traps_init() early enough,
> and actually the KASAN early handler is unnecessary too.
>
> If we call debug_traps_init() directly from setup_arch() and drop the
> arch_initcall(), can we then drop early_brk64 entirely?

It seems to work in my testing.  ...but the worry I have is the
comment right before trap_init().  It says:

/* This registration must happen early, before debug_traps_init(). */

By moving debug_traps_init() early we're violating that comment.  Do I
just remove that comment, or was there a good reason for it?  ...or am
I reading it wrong and I should have read it as if it said:

/* NOTE: this registration happens early, before debug_traps_init(). */

...then removing it is fine.  Maybe that's right?

I coded this up and put it on the Chrome OS gerrit at
<https://crrev.com/c/2195061>.  I'm happy to post this on the list as
a loner patch to replace this one or spin the whole series depending
on what people want.


-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
