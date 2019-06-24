Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD76C506CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCC0sw4KPSoGu5QIxWqIcPmvi3PWuQbyKJTM+/xMSW4=; b=oDo3HEWhL/XbVs
	ZQiuf5kHsRghu2BEgpDYJqwKeShb3ifeRmItP8AqOOtYdXMnAIoYbqJ5bg8ia4AZBfe+EtUea/fkC
	2n5Yvq9p4CUxdXR0ZVlfxOwkjRZe6V3iv67Zb49QwWLsqIP+nHh9s9MWIQFvMhdgGoY7mBVz6zWXZ
	bpSwxQ2Wn7in4r+i5WV9TcBYf5pKqH9yMH3QJaPhyc7jufqTZXDuT86ivVdD+k3I4W23s5Jtr99uH
	YKZ/hLN4n/rQU6Ib14j+jaIIPjgRXGiB8O5QWOgLEI1HFcbJuIOllF1MSAgIR7SI67NIylAw5gk22
	xqb6I32lu+ZQPdtncFaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLoe-0003k2-TC; Mon, 24 Jun 2019 10:03:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLjY-0006XX-Pl
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:57:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E245D21530;
 Mon, 24 Jun 2019 09:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561370276;
 bh=amAPfe8nFBVpmTr8hMxl5t1uBr6QIyXhovJtfP9avOo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PH8NPjKFKqV2/Ouf0NiSDD/uMJNA49llccgFqiKtinldirSIcTlW8GeD7XDGvb6Sn
 Aq/DDm+3wsjcEQD2fmh+hcwrcF6RYoZHw58Ud0RYLFcASrkTuW5R0oBNlPZ7vM0+p7
 PuIYwfmfJ1im8epbd6fhZR4K/jkujtC2q43vUgCg=
Date: Mon, 24 Jun 2019 10:57:50 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: defconfig: update and enable CONFIG_RANDOMIZE_BASE
Message-ID: <20190624095749.wasjfrgcda7ygdr5@willie-the-truck>
References: <20190620003244.261595-1-ndesaulniers@google.com>
 <20190620074640.GA27228@brain-police>
 <CAKv+Gu_KCFCVxw_zAfzUf8DjD4DmhvaJEoqBsX_SigOse_NwYw@mail.gmail.com>
 <CAKwvOdmQ+WdD8nvLz_VB_5atDi56fv485Xsn+mHJZKnyj6L-JA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdmQ+WdD8nvLz_VB_5atDi56fv485Xsn+mHJZKnyj6L-JA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_025756_951768_B3026717 
X-CRM114-Status: GOOD (  27.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Jeffrey Vander Stoep <jeffv@google.com>, Olof Johansson <olof@lixom.net>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
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

Hi Nick, Kees, Ard,

Thanks for the responses.

On Fri, Jun 21, 2019 at 01:27:45PM -0700, Nick Desaulniers wrote:
> On Thu, Jun 20, 2019 at 1:17 AM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> > On Thu, 20 Jun 2019 at 09:47, Will Deacon <will.deacon@arm.com> wrote:
> > > On the flip side, I worry that it could make debugging more difficult, but I
> > > don't know whether that's a genuine concern or not. I'm assuming you've
> > > debugged your fair share of crashes from KASLR-enabled kernels; how bad is
> > > it? (I'm thinking of the case where somebody mails you part of a panic log
> > > and a .config).
> 
> I don't recall specific cases where KASLR made debugging difficult.  I
> went and spoke to our stability team that debugs crash reports from
> the field.  My understanding is that we capture full ramdumps.  They
> have a lot of custom tooling for debugging, but they did not recall
> ever having to disable KASLR to debug further.  We've had KASLR
> enabled since I think the 2016 Pixel 1, so I assume their tooling
> accounts for the seed/offset.
> 
> I think if a full ramdump of the kernel image is loaded into GDB with
> the matching kernel image it "just works" but could be mistaken.  For
> external developers, "nokaslr" boot time param is pretty standard.
> 
> > In fact, given how many Android phones are running this code: Nick,
> > can you check if there are any KASLR related kernel fixes that haven't
> > been upstreamed?
> 
> I spoke with the android common kernel team that's trying to burn down
> their out of tree patches.  I triple checked a doc they had where they
> had audited every last patch, looking for for KASLR and
> CONFIG_RANDOMIZE_BASE.  I also triple checked our internal bug tracker
> for burning down the out of tree patches.  Finally I'm scanning each
> branch of our android-common trees via `git log --all --grep
> <KASLR|CONFIG_RANDOMIZE_BASE>`.  I haven't found anything yet, and the
> team doesn't expect any out of tree patches related to that feature.
> Sorry for not responding sooner, but I'm still going through our 4.4,
> 4.9, 4.14, and 4.19 branches.

Thanks for having a look. It could be that we've fixed the issue Catalin was
running into in the past -- he was going to see if the problem persists with
mainline, since it was frequent enough that it was causing us to ignore the
results from our testing infrastructure when RANDOMIZE_BASE=y.

> > So KASLR is known to be broken unless you enable KPTI as well, so that
> > is something we could take into account. I.e., mitigations that don't
> > reduce the attack surface at all are just pointless complexity, which
> > should obviously be avoided.
> 
> (Note to Sami + Jeff if they had KPTI on their radar)

I mean, we could have RANDOMIZE_BASE select UNMAP_KERNEL_AT_EL0 if you like?
The latter is already default y and hidden behind EXPERT.

> > Another thing to note is that the runtime cost of KASLR is ~zero, with
> > the exception of the module PLTs. However, the latter could do with
> > some additional coverage as well, so in summary, I think enabling this
> > is a good thing. Otherwise, we could disable full module randomization
> > so that the module PLT code doesn't get used in practice.
> >
> > Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> Olof mentioned on IRC that I should resend without the other defconfig
> changes.  Do others have thoughts on that?

That's not a bad idea. If you do that, feel free to add my Ack to the one
adding RANDOMIZE_BASE=y:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
