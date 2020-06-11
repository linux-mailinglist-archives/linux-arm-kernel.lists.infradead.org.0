Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EA51F70C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 01:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWVPZRF/7AAsFDpasfW368zajur+hneGsLTxbfvSFwg=; b=CJ0dfj4sH+LSiW
	9xtFWeFvQRKa+PqXe4yJ8JSNimE5XPEXTlvWzTyOBEy4rpGUD4BHUhLSCmTo/zts8JdMG3X6up7o5
	/DQ4z6puPXLrkqTR0vDmOwGdiRpLQ83Ma3ogVzcdhLckoiI6qV91TWAnlArPtTFVj2dDoeSfCYXxk
	jZzjhDvPsOSFeBE0x3CpiOE0fEucInEjNncazf7sJ42tvMhe7wpDJcdJ3ilPNLAQxse9nxoQoEhhL
	BYDbZ8m3PCC/Zu7+138ZMvletx18w6UbXuzH1yejcN05+Ygmxc+IbB3I1sC3puFaNqWqUdx1AT2hv
	Udu7R3Ay2GKRyHFR/0xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjWS5-0001yE-LF; Thu, 11 Jun 2020 23:17:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjWRw-0001xb-Lt
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 23:17:34 +0000
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3331F20853
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 23:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591917452;
 bh=fOD6ezCkOVRyI6PhH1XLtKafgMyMH59Fa6W8i7UEx4I=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=d/+WzhbdWr95ZdrlKpo/cn+zbcmliZFuKxUpOP+UNioXWQN4kPCbr/eH0Sthcwn4c
 S4tO7VaCtxahqhi5LpSTyB0+a72TjEAak7EXU+/Ijkx/qy6uv77nK3ECy2053Jwi1t
 RuEFyBZuQH3jg3m1HEHEp+A8lU8Im3wO6KixChUI=
Received: by mail-oi1-f178.google.com with SMTP id j189so7012681oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 16:17:32 -0700 (PDT)
X-Gm-Message-State: AOAM531r5JDogmdq/t0+yVsVjgetsMw6XWzPbZDAGQE+tH4R6zH2NY9k
 kgLmdKhhfX/7hAsBbTpD6LGRFOuG2Sthx/mUp1M=
X-Google-Smtp-Source: ABdhPJwNBnjYMi/5e8oSMsVn/eTYdFfpk/D9sszQWxQP+L3G14j9WhMMAckIZrE6+9/rdAlnTM0EftrQNlDT/RBbTBk=
X-Received: by 2002:aca:6144:: with SMTP id v65mr278075oib.33.1591917451480;
 Thu, 11 Jun 2020 16:17:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200607135834.898294-1-ardb@kernel.org>
 <20200607135834.898294-2-ardb@kernel.org>
 <96a36110-68e1-89e3-2d59-b16f01abae21@gmx.de>
 <CAMj1kXG9XTtsyLQ=njM8LPCYCE2tOrrYQtctU_acNAxLfe=5oQ@mail.gmail.com>
 <f8a485d2-1e00-1d02-58a4-2e1684bfbfb4@gmx.de>
 <CAMj1kXGLoKDLJAihThkkcYwNpr12inneEB3dMOqvcZFm9oR5_w@mail.gmail.com>
 <CAMj1kXFjuMy6+amsMmmepkNATCec4vsxeiVVFq9CFZ64wbmGaA@mail.gmail.com>
 <20200611223800.GZ1551@shell.armlinux.org.uk>
 <CAMj1kXE+y=Q+-wZaPT6ap278OfP2wbBM3CCvyHCL9K=AaBbO=A@mail.gmail.com>
 <20200611224334.GA1551@shell.armlinux.org.uk>
In-Reply-To: <20200611224334.GA1551@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 12 Jun 2020 01:17:17 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEEd5aO=xHUM901bM_JaJ3rEs6KQ0a20-AOdXUBwK=CEA@mail.gmail.com>
Message-ID: <CAMj1kXEEd5aO=xHUM901bM_JaJ3rEs6KQ0a20-AOdXUBwK=CEA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] efi/arm: decompressor: deal with HYP mode boot
 gracefully
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_161732_756257_16FA805B 
X-CRM114-Status: GOOD (  22.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Heinrich Schuchardt <xypron.glpk@gmx.de>, Chen-Yu Tsai <wens@csie.org>,
 linux-efi <linux-efi@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 12 Jun 2020 at 00:43, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Fri, Jun 12, 2020 at 12:39:08AM +0200, Ard Biesheuvel wrote:
> > On Fri, 12 Jun 2020 at 00:38, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Fri, Jun 12, 2020 at 12:18:43AM +0200, Ard Biesheuvel wrote:
> > > > I've given this a spin myself on a RPi4 running 32-bit U-boot, and
> > > > everything works as expected, both with and without the GRUB hack
> > > > enabled.
> > > >
> > > > Russell, given that this only affects code inside #ifdef
> > > > CONFIG_EFI_STUB, do you have any objections to me taking this as a fix
> > > > via the EFI tree? I have a set of fixes I need to queue up and send
> > > > out anyway, and I intend to do so early next week.
> > >
> > > Please don't, I'll be basing my branches off -rc1 (as normal), and if
> > > you then submit this as a fix through the EFI tree for merging after
> > > rc1, and then send me further EFI work to go through the ARM tree,
> > > we'll end up in exactly the same merge issues as we did prior to this
> > > merge window.
> > >
> >
> > Fair enough. What do you suggest instead? Shall I drop this into the
> > patch system?
>
> Is it a regression?  If so, sending it prior to -rc1 is permissible.
> If not, please drop it in the patch system.
>

If you boot via the EFI stub in HYP mode with the caches off (or with
U-boot's GRUB hack enabled which fiddles with the caches halfway
through), it appears that you cannot boot current mainline. This is an
oversight on my part - the EFI spec does not permit doing either of
those things, and while EDK2 behaves in this regard, u-boot can be
configured in various different non-conforming ways. (Note that v5.7
and before will leave the MMU and caches enabled at HYP upon entering
the kernel proper after booting via EFI, so this is not something that
was 100% correct before, but at least it booted most of the time)

So this is a regression, but since the EFI tree goes through -tip, I
won't be able to get this fix in before -rc1 is released. Therefore, I
will be dropping this into the patch system in any case, and leave it
up to you to decide when it gets sent onwards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
