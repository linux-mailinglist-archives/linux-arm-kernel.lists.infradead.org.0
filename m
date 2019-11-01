Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B386EC541
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sOV6JxREwA1YywS5szrVdl1NMRVR7OMc+JYNuRtxEXU=; b=hAYSTmpVQSmbzR
	p9T6olGuwWGP1GcgkpLi6zPkbcO3+qbQlupyVq/9rfuf8XWIzrWyosj522CBmtW6UIsJZDbEqmnkO
	9xx1t+tjXYmLPNrNh6Y6zEIHAdVOxgnSi0esvDUWBvFEIoFYPrHq+zNWXMhKPOwPbmVsx+cRDHkEo
	TOxY2Irlp+8rE1GgtYn8UioH6jipqQYmQmafbPxZ3cVW+XHIlK/FU8hp/fT+gLdY9icFt4AY/O9Wh
	s8oO3XtpWMW14P9cRhiKSCtekuULo5kheW4AviMDIuDVb920zx5bHlg8w4kk/ujvPny3mc4MPnyfQ
	CoKdmedY/Xazeztk+PvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQYR0-0002Sp-HA; Fri, 01 Nov 2019 15:01:54 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQYQs-0002S0-S6
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:01:48 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id E7C2C400B5;
 Fri,  1 Nov 2019 16:01:40 +0100 (CET)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 4EMX4ZocWg0t; Fri,  1 Nov 2019 16:01:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id B7EB4400BD;
 Fri,  1 Nov 2019 16:01:34 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id GPjCwwEgtuTK; Fri,  1 Nov 2019 16:01:34 +0100 (CET)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 91BAE400B5;
 Fri,  1 Nov 2019 16:01:33 +0100 (CET)
Message-ID: <a57dec8fca7b42d6a4f4fb29cb4b9f87435fca74.camel@v3.sk>
Subject: Re: [PATCH v2 0/9] Simplify MFD Core
From: Lubomir Rintel <lkundrak@v3.sk>
To: Lee Jones <lee.jones@linaro.org>
Date: Fri, 01 Nov 2019 16:01:32 +0100
In-Reply-To: <20191101090751.GH5700@dell>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <CAK8P3a10w9Xg6U8EgUqPLbucP3A0wc9xO_WNG06LxHrsZkZc1g@mail.gmail.com>
 <e5e7695cc82b4370752f45082be007dbe410c74c.camel@v3.sk>
 <20191021115339.GF4365@dell>
 <ba31d7cb894cb44eacee630e56fae647922f3dc2.camel@v3.sk>
 <20191101090751.GH5700@dell>
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_080147_063923_2CB62344 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Barry Song <baohua@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 stephan@gerhold.net, Linus Walleij <linus.walleij@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Daniel Drake <drake@endlessm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 James Cameron <quozl@laptop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-11-01 at 09:07 +0000, Lee Jones wrote:
> On Mon, 21 Oct 2019, Lubomir Rintel wrote:
> > On Mon, 2019-10-21 at 12:53 +0100, Lee Jones wrote:
> > > On Mon, 21 Oct 2019, Lubomir Rintel wrote:
> > > 
> > > > On Mon, 2019-10-21 at 13:29 +0200, Arnd Bergmann wrote:
> > > > > On Mon, Oct 21, 2019 at 12:58 PM Lee Jones <lee.jones@linaro.org> wrote:
> > > > > > MFD currently has one over-complicated user.  CS5535 uses a mixture of
> > > > > > cell cloning, reference counting and subsystem-level call-backs to
> > > > > > achieve its goal of requesting an IO memory region only once across 3
> > > > > > consumers.  The same can be achieved by handling the region centrally
> > > > > > during the parent device's .probe() sequence.  Releasing can be handed
> > > > > > in a similar way during .remove().
> > > > > > 
> > > > > > While we're here, take the opportunity to provide some clean-ups and
> > > > > > error checking to issues noticed along the way.
> > > > > > 
> > > > > > This also paves the way for clean cell disabling via Device Tree being
> > > > > > discussed at [0]
> > > > > > 
> > > > > > [0] https://lkml.org/lkml/2019/10/18/612.
> > > > > 
> > > > > As the CS5535 is primarily used on the OLPC XO1, it would be
> > > > > good to have someone test the series on such a machine.
> > > > > 
> > > > > I've added a few people to Cc that may be able to help test it, or
> > > > > know someone who can.
> > > > > 
> > > > > For the actual patches, see
> > > > > https://lore.kernel.org/lkml/20191021105822.20271-1-lee.jones@linaro.org/T/#t
> > > > 
> > > > Thanks for the pointer. I'd by happy to test this.
> > > > 
> > > > Which tree do the patches apply to?
> > > > Or, better, is there a tree with the patches applied that I could use?
> > > 
> > > Ideal.  Thank you.
> > > 
> > > http://git.linaro.org/people/lee.jones/linux.git/log/?h=topic/mfd-remove-clone-cs5535-mfd
> > 
> > Thanks. My boot attempt ends up in a panic [1]:
> 
> New patches have been drafted, reviewed and pushed to the same branch.
> 
> Would you be kind enough to boot test them for me please Lubo?

The branch

Tested-by: Lubomir Rintel <lkundrak@v3.sk> (OLPC XO-1)

Here's a dmesg and partial sysfs listing indicating that the driver
indeed bound correctly: https://paste.centos.org/view/3aa89258

> 
> TIA.

Take care
Lubo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
