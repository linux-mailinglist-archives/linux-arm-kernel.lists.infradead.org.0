Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B15E150752
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WObJb+dw1H8g+V7NyAXwQe5mj4d7rtsmHwYXAxMSCg=; b=ic96p1YUj5N1+A
	7jG7qqH/cQ3r/5Vdmfiqznwu7uDNye3+mFpy9Bu8HrT2/bkBELXP5jJfkfQSXeIf500cOYciuSk4+
	KZOMX+zs8mhefmA0xjCQ/pZZDjkxsJ0mqlRZjyOShEmfwSplGGNtutC7l+N4npYnYyEIOLATy2i+p
	c1ajwCvGWztusx7N10sDp7WXjtjdcPMxWJJ+qon+P81oWg+OSElwk5N7RMzEXw6HuP+bW3jl+QcZP
	g9flkFMEyR6HVEMC/J+2c50CUnhySdSqKTRuOiZDvPNGPi/Ttoit6DR8tKIQWIiYDNgv4oNYedXA4
	lcqhXbjOjHRSAUMV0yFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLsA-0006aU-EO; Mon, 24 Jun 2019 10:06:50 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLrt-0006Zk-Bu
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 10:06:34 +0000
Received: by mail-io1-xd43.google.com with SMTP id u19so1781659ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 03:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jzjhqKUQE+QT87VlGM7mrbkwUfIug49zvMwL3mtkgLI=;
 b=nsgcCRD4CD7gAOEhmxdS9KtrV1XDmK+5s3tRYAp4HsTfnT8B4aoKgDLyD6HpN5bSKn
 Emsl7eP2xijq0eANUtP0KvD/WoHMrGgOyW9IebxKrBzgTnq8rg7HWaY1HiETeI+wVCy3
 G0x1q+sKHGvktCR3zFb/ltoxVGFvwJ8UiRlSdeXa1JY87nKd8jkdRUZsagcB8fNP2IsO
 5Tzq0jCElctINZ9ixKqDwpWfKrUXZl1inBuoVPQObeQ9VIgGrIzSZj33cST1DvsZkQkt
 kWOD/4dgdYs0UhB5mDmCjKCO8oP7XkPLXtP2+kJoFvLZGT21/9PxD/UiuYBhnX8OFA3A
 Zwng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jzjhqKUQE+QT87VlGM7mrbkwUfIug49zvMwL3mtkgLI=;
 b=X7ip9qNe8PZ8rfW26zO5AveNZETlAKZBA6fjj5OX1QfMHk5seQEXsBiqaC9DToodfD
 eVhRLjPh/7Qu5JRj48xd3kVIIADxUcHsMeMgz8ZT2s8zuoH1+J0oZ0v+gfQfhOjR7Gk2
 4Q/b0/ihcD0PDxk+Zn0tBJkoidPCYgsY98xw/TxNhvDBR27HTgwF4l/XIMthk92r+jbl
 ZHHip15ZKmjpkWQUEca9vMl4LqKlkGIlKVvssRPWOUaHmLJcdGzqFU2OdBnI8bGsVsTK
 cTx9VJyJETAxlwf54/P6hiVUwsYZXFMh/a3Qagls5dp+Vj0ZA3dyE920rheBljY4XJfH
 SCMg==
X-Gm-Message-State: APjAAAWm7+ncGylllUVvg56UdTOoXpQICPkAfApNEEzWW+57O8kPR839
 LDdx1TOJ/o19WfhCyVxprx2T98if1ZKWZWeLtxSh1w==
X-Google-Smtp-Source: APXvYqzI8LYtNA99krDyYdJrbnPVFN00/VQBOGb8UbWp0fin3ELK5c7b8Nol1ZK3tMvJkd9iYwbO2GQPbH3p5eA9CAM=
X-Received: by 2002:a02:6597:: with SMTP id u145mr28812545jab.26.1561370790929; 
 Mon, 24 Jun 2019 03:06:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190620003244.261595-1-ndesaulniers@google.com>
 <20190620074640.GA27228@brain-police>
 <CAKv+Gu_KCFCVxw_zAfzUf8DjD4DmhvaJEoqBsX_SigOse_NwYw@mail.gmail.com>
 <CAKwvOdmQ+WdD8nvLz_VB_5atDi56fv485Xsn+mHJZKnyj6L-JA@mail.gmail.com>
 <20190624095749.wasjfrgcda7ygdr5@willie-the-truck>
In-Reply-To: <20190624095749.wasjfrgcda7ygdr5@willie-the-truck>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 24 Jun 2019 12:06:18 +0200
Message-ID: <CAKv+Gu8G2GQGxmcAAy1XQ5gkN-2fJSWAKCQQm9T4skYdh5cT3Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: update and enable CONFIG_RANDOMIZE_BASE
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_030633_433328_A7729AC0 
X-CRM114-Status: GOOD (  32.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Jeffrey Vander Stoep <jeffv@google.com>, Olof Johansson <olof@lixom.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Mark Brown <broonie@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@google.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Jun 2019 at 11:57, Will Deacon <will@kernel.org> wrote:
>
> Hi Nick, Kees, Ard,
>
> Thanks for the responses.
>
> On Fri, Jun 21, 2019 at 01:27:45PM -0700, Nick Desaulniers wrote:
> > On Thu, Jun 20, 2019 at 1:17 AM Ard Biesheuvel
> > <ard.biesheuvel@linaro.org> wrote:
> > > On Thu, 20 Jun 2019 at 09:47, Will Deacon <will.deacon@arm.com> wrote:
> > > > On the flip side, I worry that it could make debugging more difficult, but I
> > > > don't know whether that's a genuine concern or not. I'm assuming you've
> > > > debugged your fair share of crashes from KASLR-enabled kernels; how bad is
> > > > it? (I'm thinking of the case where somebody mails you part of a panic log
> > > > and a .config).
> >
> > I don't recall specific cases where KASLR made debugging difficult.  I
> > went and spoke to our stability team that debugs crash reports from
> > the field.  My understanding is that we capture full ramdumps.  They
> > have a lot of custom tooling for debugging, but they did not recall
> > ever having to disable KASLR to debug further.  We've had KASLR
> > enabled since I think the 2016 Pixel 1, so I assume their tooling
> > accounts for the seed/offset.
> >
> > I think if a full ramdump of the kernel image is loaded into GDB with
> > the matching kernel image it "just works" but could be mistaken.  For
> > external developers, "nokaslr" boot time param is pretty standard.
> >
> > > In fact, given how many Android phones are running this code: Nick,
> > > can you check if there are any KASLR related kernel fixes that haven't
> > > been upstreamed?
> >
> > I spoke with the android common kernel team that's trying to burn down
> > their out of tree patches.  I triple checked a doc they had where they
> > had audited every last patch, looking for for KASLR and
> > CONFIG_RANDOMIZE_BASE.  I also triple checked our internal bug tracker
> > for burning down the out of tree patches.  Finally I'm scanning each
> > branch of our android-common trees via `git log --all --grep
> > <KASLR|CONFIG_RANDOMIZE_BASE>`.  I haven't found anything yet, and the
> > team doesn't expect any out of tree patches related to that feature.
> > Sorry for not responding sooner, but I'm still going through our 4.4,
> > 4.9, 4.14, and 4.19 branches.
>
> Thanks for having a look. It could be that we've fixed the issue Catalin was
> running into in the past -- he was going to see if the problem persists with
> mainline, since it was frequent enough that it was causing us to ignore the
> results from our testing infrastructure when RANDOMIZE_BASE=y.
>

I had no idea this was the case. I can look into it if we are still
seeing failures.

> > > So KASLR is known to be broken unless you enable KPTI as well, so that
> > > is something we could take into account. I.e., mitigations that don't
> > > reduce the attack surface at all are just pointless complexity, which
> > > should obviously be avoided.
> >
> > (Note to Sami + Jeff if they had KPTI on their radar)
>
> I mean, we could have RANDOMIZE_BASE select UNMAP_KERNEL_AT_EL0 if you like?
> The latter is already default y and hidden behind EXPERT.
>

IIRC, when KASLR is enabled (and we have a seed), we override the
runtime decision to out out of KPTI, and so even uarchs that don't
require the Meltdown mitigations it provides will still be using it.

So I'd be fine with just adding a note to the UNMAP_KERNEL_AT_EL0
Kconfig help text that even non-affected uarchs have a use for it if
KASLR is enabled, but given that it is already behind EXPERT, I don't
think more hand holding is necessary.

> > > Another thing to note is that the runtime cost of KASLR is ~zero, with
> > > the exception of the module PLTs. However, the latter could do with
> > > some additional coverage as well, so in summary, I think enabling this
> > > is a good thing. Otherwise, we could disable full module randomization
> > > so that the module PLT code doesn't get used in practice.
> > >
> > > Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> >
> > Olof mentioned on IRC that I should resend without the other defconfig
> > changes.  Do others have thoughts on that?
>
> That's not a bad idea. If you do that, feel free to add my Ack to the one
> adding RANDOMIZE_BASE=y:
>
> Acked-by: Will Deacon <will@kernel.org>
>
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
