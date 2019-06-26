Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E22FF55E19
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 04:04:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTxzcNmr5rZfF+mDlIqqW/yg2VTgQSpRgRfFgNDMFtE=; b=Jog833g58t5gBF
	lIbxDEGGKkIZeP9L56rezWNCVFF1V4LyCyfogk84f9sg6uXGuglkCD94znrQcKE1rNPavKzhZFgZE
	ZotYfpb7x14IWHXLl6Up1Uo9NWZCaq4CXkeDoimalK2fe9aJSC+iOrJyAIBl7cod/zz3m7w8Gki77
	ro9xuny82tX1zUIMuxsCKHi1HycKWl9o3lO+cgtQ6EoIfRlqOXz7wRl8/AIj5PVwQ6iKPOHKuwH4X
	LUr0JKEDtg3K+9xNnYdG52SAmDdsUsidUA6QFwZm1NZEQtIVSsllBPZO7w6KVdaQB3+c6/34jyD4m
	tzTzC3pt80ua4nHlErGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfxID-00013u-T6; Wed, 26 Jun 2019 02:04:14 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfxHz-00013b-3G
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 02:04:00 +0000
Received: by mail-qt1-x841.google.com with SMTP id m29so746414qtu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 19:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d8pVeLPdHk2oTXC+KppJWuWHBrcymZj+Ve80HyFGwuM=;
 b=RQc6Aiej+ibrcj8EnhRUFYW0CF95hEqo6UNcmr93VE/NI/oXiPks1VSCIaE4wdPToX
 nryHkPqN8pKSU/Gqy4tldvjj0848xviRF/IEyWEtjmxS+61vchdVDDhJ0105O1CAe+Ct
 3u9NEFdmU0vp4WNonMSTjdqv3SK0WNv4aDjYQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d8pVeLPdHk2oTXC+KppJWuWHBrcymZj+Ve80HyFGwuM=;
 b=uYpJrYH8d+AurwKal9DWpPrCAvfrDxD8yL79i/5TrJ8xYXDXFygJFX6T+iHQbJ9obK
 uqfq5PCagMDIHuHDKJGlfnpinBahzYU0xDmGOJ33FYuhbWbctFu0rkHPSUvr0dY+FVgs
 0NwWaNVR1gDXHRGtPtIoqQu9c0RzkIld1f0e3TdEDicGWX2omK1u50lUSbSPsoKrHuMG
 oXHa2l+ifSm3uAL4csw6+/0OTYycM9NC+BMxQKaPMvlvbV/b16AB0kX9eZ7lGVQ4rfTw
 DCslNYDcYO85Dcb309Gboi4KQCYYSYJmmFIsBgGLvaOTDZHQ1K9hKPZTY5f8s6JIaWb/
 6Ylg==
X-Gm-Message-State: APjAAAUShoUWCGAFFM/C2GjmYWNgf4vE1SXAM4Jz+N9I8HxC2WXQt20G
 qiqyP8hqi8Iivl6OkDPXCMZCjIojR6jSb5mEyvhOWmCp
X-Google-Smtp-Source: APXvYqxXm5H989j0lfUgETt85cMUgy6FEEBsU+i07r9Fll+zG+PORZk240DXvqfxbhcz+L8wFu+jyMYANdteoO+UkCY=
X-Received: by 2002:ac8:264a:: with SMTP id v10mr1353396qtv.255.1561514637307; 
 Tue, 25 Jun 2019 19:03:57 -0700 (PDT)
MIME-Version: 1.0
References: <CACPK8XfL-U-BeynGQNBp5rPiv1gzD=7DVzyvrgtoL3njU1Kr_A@mail.gmail.com>
 <CAOesGMjTBazjfMYEKww_dGuFAZYa7f6JBZDoyyCNaWKvKdpbQw@mail.gmail.com>
In-Reply-To: <CAOesGMjTBazjfMYEKww_dGuFAZYa7f6JBZDoyyCNaWKvKdpbQw@mail.gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Wed, 26 Jun 2019 02:03:45 +0000
Message-ID: <CACPK8Xf=vb4To_fxpJiaT-is3BBGg1SUsAc1qtFrBd-FwmPXRA@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: aspeed: defconfig changes for 5.3
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_190359_184663_311767DC 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Andrew Jeffery <andrew@aj.id.au>, arm <arm@kernel.org>,
 linux-aspeed@lists.ozlabs.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019 at 13:18, Olof Johansson <olof@lixom.net> wrote:
>
> Hi,
>
> Looks like the multi_v5_defconfig changes aren't producing the results
> you're probably expecting -- unless the drivers are pending in
> linux-next?
>
> arch/arm/configs/multi_v5_defconfig:257:warning: override: reassigning
> to symbol ASPEED_LPC_CTRL
> arch/arm/configs/multi_v5_defconfig:258:warning: override: reassigning
> to symbol ASPEED_LPC_SNOOP

Oops, sorry. I made a mistake when preparing the change and missed the
warning when testing. We now have two copies of each of these options
in the defconfig (they moved around due to misc -> soc movement).

I've sent a follow up patch for you to apply directly. Let me know if
that's okay, otherwise I can do a new tag.

Cheers,

Joel

>
>
> -Olof
>
> On Sat, Jun 22, 2019 at 9:59 AM Joel Stanley <joel@jms.id.au> wrote:
> >
> > Hi ARM maintainers,
> >
> > Here are some defconfig updates for the ASPEED machines. I haven't
> > sent one for a while, so there's a nice collection of drivers to add.
> >
> > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> >
> >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> >
> > are available in the Git repository at:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
> >     tags/aspeed-5.3-defconfig
> >
> > for you to fetch changes up to 2d8bf3404bb0e65dffb7326f7fb6e96fa3cee418:
> >
> >   ARM: configs: multi_v5: Add more ASPEED devices (2019-06-22 17:12:17 +0930)
> >
> > ----------------------------------------------------------------
> > ASPEED device tree updates for 5.3
> >
> > Add new drivers to the ASPEED G4 and G5 defconfigs, and to the armv5
> > multi defconfig.
> >
> > ----------------------------------------------------------------
> > Joel Stanley (2):
> >       ARM: configs: aspeed: Add new drivers
> >       ARM: configs: multi_v5: Add more ASPEED devices
> >
> >  arch/arm/configs/aspeed_g4_defconfig | 10 ++++++++--
> >  arch/arm/configs/aspeed_g5_defconfig | 14 ++++++++++++--
> >  arch/arm/configs/multi_v5_defconfig  |  8 ++++++++
> >  3 files changed, 28 insertions(+), 4 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
