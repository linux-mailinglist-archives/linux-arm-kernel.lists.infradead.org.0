Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09941EE84E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 18:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJ07e9/GxF8tDfjUnJhC76O1hiuj8Dd390TojG9hpVA=; b=qDG0Kscq5E5ky1
	LQNBR7kSpj2Q/GOpzWIsPrD0L4mdWSjbSFztMnWND6tCnIqq8Saq/ItNEdQ7Y/s9NnPusOHtRPvjy
	+qeF0Kvmj+ur84ueeJXi4GzyWN0UdzZwdHb8K314WtG7I2LlkfRkL4gLuUzvTmN/YTRoXziqZcbdB
	LkccFRcwTJ8m1xgfuUFgjTiOSx81OKa+3OSHYCR8dN9jvGAih0ttVvgJn6rV4zRAgzfYFgfZQXeRo
	si8aPiXvnUpls/JYs4U7h9no63G0BL7xh2STnZxi3YV3ZGqqeC02mfnoTI5W9uddiLBpWkjTES9DO
	x5PhCO/a+xS3cXqUXHbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgsQR-0004yH-Me; Thu, 04 Jun 2020 16:09:03 +0000
Received: from smtprelay0146.hostedemail.com ([216.40.44.146]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgsQJ-0004xJ-Rx
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 16:08:57 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id 5DEAF1810F261;
 Thu,  4 Jun 2020 16:08:49 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3871:3872:3874:4321:5007:10004:10400:10848:11232:11658:11914:12297:12663:12740:12760:12895:13069:13095:13160:13229:13255:13311:13357:13439:14096:14097:14659:21080:21433:21627:21740:21790:30012:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: joke87_4e0d58826d98
X-Filterd-Recvd-Size: 2786
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Thu,  4 Jun 2020 16:08:47 +0000 (UTC)
Message-ID: <0749ac5e3868c6ba50728ced8366bfd86b0b8500.camel@perches.com>
Subject: Re: [PATCH] pinctrl: pxa: pxa2xx: Remove 'pxa2xx_pinctrl_exit()'
 which is unused and broken
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Julia Lawall
 <julia.lawall@inria.fr>
Date: Thu, 04 Jun 2020 09:08:44 -0700
In-Reply-To: <20200604123038.GG22511@kadam>
References: <a2e34c9a-676f-d83f-f395-7428af038c16@wanadoo.fr>
 <20200601183102.GS30374@kadam>
 <CACRpkdasbS-4_ZwC-Ucm8tkSUW5tAQdUrXjxHXQ3J0goVYfgHw@mail.gmail.com>
 <20200604083120.GF22511@kadam>
 <2aa49a543e6f48a6f428a37b63a06f9149870225.camel@perches.com>
 <alpine.DEB.2.21.2006041147360.2577@hadrien>
 <32232229031e02edcc268b1074c9bac44012ee35.camel@perches.com>
 <alpine.DEB.2.21.2006041228520.2577@hadrien>
 <10e54ee84bd44171ef329bed9e7e6a946bae61ba.camel@perches.com>
 <alpine.DEB.2.21.2006041328570.2577@hadrien> <20200604123038.GG22511@kadam>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_090855_962542_666CBEDD 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.146 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.146 listed in wl.mailspike.net]
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
 Haojian Zhuang <haojian.zhuang@gmail.com>, "open list:GPIO
 SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-06-04 at 15:30 +0300, Dan Carpenter wrote:
> On Thu, Jun 04, 2020 at 01:42:12PM +0200, Julia Lawall wrote:
> > OK, I recall a discussion with Dan where he suggested that some things
> > that were not actually bug fixes could also merit a Fixes tag.  But it's
> > probably better if he weighs in directly.
> 
> I generally think Fixes should only be used for "real bug" fixes.
> 
> The one exception is when I'm reviewing a patch that fixes an "unused
> assignment" static checker warning is that I know which commit
> introduced the warning.  I don't have strong feelings if it's in the
> Fixes tag or if it's just mentioned in the commit message.

My view is that changes that silence compiler warnings are
not fixing bugs and that these changes should generally not
be backported.

Compiler silencing changes marked as fixes can introduce other
defects in working code.

Backporting patches to stable trees should be conservatively
rather than liberally applied.

It seems that the actual backport maintainers disagree though.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
