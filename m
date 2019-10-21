Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E99DEB44
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HAGIYvYeByp3du4mGK5ysizFRcBlfYGBqiLSk6Wb3YQ=; b=ZzBdKVnHxRbGJ+
	nb44ZW/lNIbLf8UJYHJeHnUspffTqZg/cR2eRk3UIcpdwR0RnuHM/I4+/Hld4w73MM3/kPY9N/drH
	ml8McGj48ebtaAaplIYGiZtMVIIKUNsmPou+xgnGspXMEOqkUXG5PyxHsMhN54pseNgXCQh8WdmNh
	r/xzdNvRc0zsZZuI616J2c6wF8PzvkS/ab/GXf/BT7UL+oHhHNMg900aHsV0m57Y6fwRpkfZWvWd9
	fvFn13sEgxy5SQH7K+Sqg8QCVoSIIl6F3iIxAQbwY3VTaatgP5WrLeNnZB10I6ClUZkFqe4pbfAqh
	9xF79HJ6wAVPNcnFWiAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMW7g-0008J4-Cn; Mon, 21 Oct 2019 11:45:16 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMW77-000831-87
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:44:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id D288C508B6;
 Mon, 21 Oct 2019 13:44:34 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 0BsA60h9gCPB; Mon, 21 Oct 2019 13:44:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id D974C508B7;
 Mon, 21 Oct 2019 13:44:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id LzrHZ0-7O3AT; Mon, 21 Oct 2019 13:44:25 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 83982508B6;
 Mon, 21 Oct 2019 13:44:25 +0200 (CEST)
Message-ID: <e5e7695cc82b4370752f45082be007dbe410c74c.camel@v3.sk>
Subject: Re: [PATCH v2 0/9] Simplify MFD Core
From: Lubomir Rintel <lkundrak@v3.sk>
To: Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee.jones@linaro.org>
Date: Mon, 21 Oct 2019 13:44:24 +0200
In-Reply-To: <CAK8P3a10w9Xg6U8EgUqPLbucP3A0wc9xO_WNG06LxHrsZkZc1g@mail.gmail.com>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <CAK8P3a10w9Xg6U8EgUqPLbucP3A0wc9xO_WNG06LxHrsZkZc1g@mail.gmail.com>
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_044441_609857_C6A0B206 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Barry Song <baohua@kernel.org>, James Cameron <quozl@laptop.org>,
 stephan@gerhold.net, Linus Walleij <linus.walleij@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Daniel Drake <drake@endlessm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-10-21 at 13:29 +0200, Arnd Bergmann wrote:
> On Mon, Oct 21, 2019 at 12:58 PM Lee Jones <lee.jones@linaro.org> wrote:
> > MFD currently has one over-complicated user.  CS5535 uses a mixture of
> > cell cloning, reference counting and subsystem-level call-backs to
> > achieve its goal of requesting an IO memory region only once across 3
> > consumers.  The same can be achieved by handling the region centrally
> > during the parent device's .probe() sequence.  Releasing can be handed
> > in a similar way during .remove().
> > 
> > While we're here, take the opportunity to provide some clean-ups and
> > error checking to issues noticed along the way.
> > 
> > This also paves the way for clean cell disabling via Device Tree being
> > discussed at [0]
> > 
> > [0] https://lkml.org/lkml/2019/10/18/612.
> 
> As the CS5535 is primarily used on the OLPC XO1, it would be
> good to have someone test the series on such a machine.
> 
> I've added a few people to Cc that may be able to help test it, or
> know someone who can.
> 
> For the actual patches, see
> https://lore.kernel.org/lkml/20191021105822.20271-1-lee.jones@linaro.org/T/#t

Thanks for the pointer. I'd by happy to test this.

Which tree do the patches apply to?
Or, better, is there a tree with the patches applied that I could use?

Thanks
Lubo

> 
>     Arnd
> 
> > Lee Jones (9):
> >   mfd: cs5535-mfd: Use PLATFORM_DEVID_* defines and tidy error message
> >   mfd: cs5535-mfd: Remove mfd_cell->id hack
> >   mfd: cs5535-mfd: Request shared IO regions centrally
> >   mfd: cs5535-mfd: Register clients using their own dedicated MFD cell
> >     entries
> >   mfd: mfd-core: Remove mfd_clone_cell()
> >   x86: olpc: Remove invocation of MFD's .enable()/.disable() call-backs
> >   mfd: mfd-core: Protect against NULL call-back function pointer
> >   mfd: mfd-core: Remove usage counting for .{en,dis}able() call-backs
> >   mfd: mfd-core: Move pdev->mfd_cell creation back into mfd_add_device()
> > 
> >  arch/x86/platform/olpc/olpc-xo1-pm.c |   6 --
> >  drivers/mfd/cs5535-mfd.c             | 124 +++++++++++++--------------
> >  drivers/mfd/mfd-core.c               | 113 ++++--------------------
> >  include/linux/mfd/core.h             |  20 -----
> >  4 files changed, 79 insertions(+), 184 deletions(-)
> > 
> > --
> > 2.17.1
> > 
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
