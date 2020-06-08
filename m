Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE841F13E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 09:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnQ49Q44Je7jUirwCtlD7jewHaasVPGDxZxV8TiugDA=; b=WuP31gwK9o/908
	kY/MvtK8lvEFaou8tFONjdDOVMZSu7gocVJ5TsddkEl4yGf+9xrmhxMCl9MIdqRxvFlyIrpLBh+lp
	va7FcieIHP/ky7VO5Z02z8KrLcjrrx9hHUMWFFssXZQxR0O1O4n097PKccw33OUIwHi6aQNfcvBmF
	+Z3HRQhS3jABYi+U0PzH75yxWhJgPBChZ3DbcaKkxu5sBZfxDkguceQio44ZaPIMFo2r20OleZIPB
	Pja4VKHFXc+xpguhP6KFYGii0OEkXP15FdurKDr8R+mVU+/ziKHXdJq+zY39Ks6Edql2zZeaGIrnj
	7HBQhaqDauPTmmyYxuag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiCXL-000159-UR; Mon, 08 Jun 2020 07:49:39 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiCXC-00013p-Bo
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 07:49:31 +0000
Received: by mail-lf1-x142.google.com with SMTP id r125so9567757lff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 00:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=37K4gneCiuRGulLCKf4ynFvMW4e68flpa0GiDzEnHyg=;
 b=uLi1RmjhtH1FlDsw82tNk1UEqMah3505zWAqYW0iJnhsR3ofTEhFjqgg0bqVnddqZT
 wAxQu3f3tLu0IjoYRj/q5xCx5ttN12X/9cS1LPWtvPhLhxvS2znXsVPeT1APIbqa6lNe
 A4/si6/ECFxjTPLdooQi+BUYuS9FxroIrzWRnwuzUiDLj5axLDtmFK/fgmAKdII++gN0
 8H+slUd3WPMJbncGutqkddXFKaG9mJrXn4b9AcUYLERHHIRVN1uuOFicsU96UPRjItfA
 1eA5C+72CB02PbahRX0V2G87TOjsr01aUEtMLxh5bPLhc8KL2wa6RaC1xoAyU4lcJ6mb
 7heQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=37K4gneCiuRGulLCKf4ynFvMW4e68flpa0GiDzEnHyg=;
 b=GwGT2jB6eDYf7nPNbr0zhEysVn9r8N+W3LLx+yhyf1GNMfsw4yINOGlI3OoR8fQvrK
 12097GHrtddETws/d6clJu1/icww1eovG535n0WnYnSUOHchjHhOBLzKa+Iw65c5tUjF
 hlAH9xNdSVs7LUNEw4xCBSaSTZ4KG8Wx03IQYXHTzhUPNKzUJfC0UIfhi5l8SseLQwGc
 5Ademlh+Vd+96hxuibyZ0UlRGvOhK63Aq6K/MY/sMMHiuba1bwDN7albfKFQeolN6zXc
 C8UQ02w2clTQQXeMTxbbI/aN+64/T1LarC2pm7Gt6IaUYpFmGLZiHQ4syX8udhKm8o0i
 bCzQ==
X-Gm-Message-State: AOAM530kjBIEtv5zVIrd3+Vo6RymDcByaIm8eSkxprFGsDreg0YlGCZT
 PrAhqdEMe+uKKBfEOYR8NHx2EtyEWOLOSyBu4w5mOQ==
X-Google-Smtp-Source: ABdhPJwxrOl8NL4ByK/Pfp55vHI3T08O8KOMm+uol36pOuMBluSdlFqIghiVrQxdlv6OnTL4mJMgM/2GivNrvUhScRE=
X-Received: by 2002:ac2:5473:: with SMTP id e19mr11864445lfn.21.1591602567899; 
 Mon, 08 Jun 2020 00:49:27 -0700 (PDT)
MIME-Version: 1.0
References: <1591085678-22764-1-git-send-email-neal.liu@mediatek.com>
 <CAMj1kXHjAdk5=-uSh_=S9j5cz42zr3h6t+YYGy+obevuQDp0fg@mail.gmail.com>
 <85dfc0142d3879d50c0ba18bcc71e199@misterjones.org>
 <1591169342.4878.9.camel@mtkswgap22>
 <fcbe37f6f9cbcde24f9c28bc504f1f0e@kernel.org>
 <20200603093416.GY1551@shell.armlinux.org.uk>
 <1591341543.19510.4.camel@mtkswgap22>
 <20200605080905.GF1551@shell.armlinux.org.uk>
 <1591347582.21704.9.camel@mtkswgap22>
In-Reply-To: <1591347582.21704.9.camel@mtkswgap22>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Mon, 8 Jun 2020 13:19:16 +0530
Message-ID: <CAFA6WYNqWmhiz=wvCTt1ubMtrhf+RtFSC2GiQQeteEbmrF1EnQ@mail.gmail.com>
Subject: Re: Security Random Number Generator support
To: Neal Liu <neal.liu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_004930_399796_678088F5 
X-CRM114-Status: GOOD (  21.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Julius Werner <jwerner@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Marc Zyngier <maz@kernel.org>,
 Sean Wang <sean.wang@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 wsd_upstream <wsd_upstream@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?B?Q3J5c3RhbCBHdW8gKOmDreaZtik=?= <Crystal.Guo@mediatek.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neal,

On Fri, 5 Jun 2020 at 14:40, Neal Liu <neal.liu@mediatek.com> wrote:
>
> On Fri, 2020-06-05 at 09:09 +0100, Russell King - ARM Linux admin wrote:
> > On Fri, Jun 05, 2020 at 03:19:03PM +0800, Neal Liu wrote:
> > > On Wed, 2020-06-03 at 17:34 +0800, Russell King - ARM Linux admin wrote:
> > > > This kind of thing is something that ARM have seems to shy away from
> > > > doing - it's a point I brought up many years ago when the whole
> > > > trustzone thing first appeared with its SMC call.  Those around the
> > > > conference table were not interested - ARM seemed to prefer every
> > > > vendor to do off and do their own thing with the SMC interface.
> > >
> > > Does that mean it make sense to model a sec-rng driver, and get each
> > > vendor's SMC function id by DT node?
> >
> > _If_ vendors have already gone off and decided to use different SMC
> > function IDs for this, while keeping the rest of the SMC interface
> > the same, then the choice has already been made.
> >
> > I know on 32-bit that some of the secure world implementations can't
> > be changed; they're burnt into the ROM. I believe on 64-bit that isn't
> > the case, which makes it easier to standardise.
> >
> > Do you have visibility of how this SMC is implemented in the secure
> > side?  Is it in ATF, and is it done as a vendor hack or is there an
> > element of generic implementation to it?  Has it been submitted
> > upstream to the main ATF repository?
> >
>
> Take MediaTek as an example, some SoCs are implemented in ATF, some of
> them are implemented in TEE.

In case your TEE implementation is derived from OP-TEE, then I will
suggest you to re-use OP-TEE based RNG driver [1]. With that, you just
need to implement an OP-TEE based pseudo trusted application (similar
to this [2]) specific to your platform and need to extend driver UUID
config table [3] with UUID of your platform specific pseudo TA. This
way you can avoid using hardcoded DT based SMC approach and rather use
auto RNG device detection provided by TEE bus.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/char/hw_random/optee-rng.c
[2] https://github.com/OP-TEE/optee_os/blob/master/core/arch/arm/plat-synquacer/rng_pta.c
[3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/char/hw_random/optee-rng.c#n273

-Sumit

> We have no plan to make generic
> implementation in "secure world".
>
> Due to there must have different implementation in secure world for
> vendors, we plan to provide a generic SMC interface in secure rng kernel
> driver for more flexibility.
>
> Vendors can decide which "secure world" they want (HYP/ATF/TEE) by
> different smc/hvc and different SMC function IDs in DT node.
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
