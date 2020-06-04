Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AB91EEA0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 20:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwbpwB8qHzzXNrAc5nbffvHFYjJ6FWsNXde5dBybaek=; b=TnM1/wQFw6IuBj
	Y9y6WawHS6m+QOG7wdftDrH2fO012IA6ClTEgvBmJaXp3dGjUYF3neR4VJ2xofggX4xEH6cj2PJcm
	aFWiKBSsfJK/Ushknyv3J1ejzawURCrh+5GvRO0UqIV0f0iX1czsznnJUcp4vEva9bOz7ysomg6lI
	ipijtVVbvbmk2m/KMJKsBatUJ1E+4+f5yjaAK/lTQrYVD5jYhI9CHnkl152rPEi/l6CpOAkOfC6/k
	2ExEo5W2FSO5PRX2Syf1Qo8PRHZYQewitoSUoghNCjlckFd1IE0sDfLIlbTWfyIT/s9rf0oz0hty3
	Iz/fmjo4P7LosnXOGSSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jguCa-0008OW-0c; Thu, 04 Jun 2020 18:02:52 +0000
Received: from smtprelay0233.hostedemail.com ([216.40.44.233]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jguCG-0008FZ-9r
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 18:02:33 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 99980F4D1E;
 Thu,  4 Jun 2020 18:02:27 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:2892:2911:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3874:4321:4425:5007:6119:7903:10004:10400:10848:11232:11658:11914:12297:12663:12679:12740:12760:12895:13069:13095:13255:13311:13357:13439:14096:14097:14659:21080:21433:21451:21627:21790:21939:21987:30054:30075:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: sugar90_6017dc626d99
X-Filterd-Recvd-Size: 3603
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf03.hostedemail.com (Postfix) with ESMTPA;
 Thu,  4 Jun 2020 18:02:25 +0000 (UTC)
Message-ID: <c925d033cf566743a1f6255da7843d1b85451d2f.camel@perches.com>
Subject: Re: [PATCH] pinctrl: pxa: pxa2xx: Remove 'pxa2xx_pinctrl_exit()'
 which is unused and broken
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Date: Thu, 04 Jun 2020 11:02:23 -0700
In-Reply-To: <20200604173500.GI22511@kadam>
References: <CACRpkdasbS-4_ZwC-Ucm8tkSUW5tAQdUrXjxHXQ3J0goVYfgHw@mail.gmail.com>
 <20200604083120.GF22511@kadam>
 <2aa49a543e6f48a6f428a37b63a06f9149870225.camel@perches.com>
 <alpine.DEB.2.21.2006041147360.2577@hadrien>
 <32232229031e02edcc268b1074c9bac44012ee35.camel@perches.com>
 <alpine.DEB.2.21.2006041228520.2577@hadrien>
 <10e54ee84bd44171ef329bed9e7e6a946bae61ba.camel@perches.com>
 <alpine.DEB.2.21.2006041328570.2577@hadrien> <20200604123038.GG22511@kadam>
 <0749ac5e3868c6ba50728ced8366bfd86b0b8500.camel@perches.com>
 <20200604173500.GI22511@kadam>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_110232_414233_0C7F9FC8 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.233 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.233 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Linus Walleij <linus.walleij@linaro.org>, kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>, "open list:GPIO
 SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-06-04 at 20:35 +0300, Dan Carpenter wrote:
> On Thu, Jun 04, 2020 at 09:08:44AM -0700, Joe Perches wrote:
> > On Thu, 2020-06-04 at 15:30 +0300, Dan Carpenter wrote:
> > > On Thu, Jun 04, 2020 at 01:42:12PM +0200, Julia Lawall wrote:
> > > > OK, I recall a discussion with Dan where he suggested that some things
> > > > that were not actually bug fixes could also merit a Fixes tag.  But it's
> > > > probably better if he weighs in directly.
> > > 
> > > I generally think Fixes should only be used for "real bug" fixes.
> > > 
> > > The one exception is when I'm reviewing a patch that fixes an "unused
> > > assignment" static checker warning is that I know which commit
> > > introduced the warning.

Sometimes those warnings are introduced by new compiler
versions.

That's why I don't care for -Werror use in Makefiles.

> > > I don't have strong feelings if it's in the
> > > Fixes tag or if it's just mentioned in the commit message.
> > 
> > My view is that changes that silence compiler warnings are
> > not fixing bugs and that these changes should generally not
> > be backported.
> > 
> The Fixes tag is useful for backports but that's not whole the point of
> it.  It's also for collecting metrics.

Hmm, how are these metrics used?

> Also sometimes we fix the bug
> before the kernel is released so the Fixes tag means we can automatically
> ignore those ones when we look at which patches to backport.
> 
> I don't care if the "unused assignment" patches use a Fixes tag or just
> mention the commit.  Either way the information is there for when I
> review the patch.

Perhaps there could/should be some distinction between
"real bug" fixes and trivialities like "unused assignment"

Maybe something like:
	Updates: <commit> ("commit description")
vs
	Fixes: <commit> ("commit description")



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
