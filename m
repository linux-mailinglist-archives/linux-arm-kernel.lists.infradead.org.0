Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BFB1EE2F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 13:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rhrb1fI0TpX8VIZi3Fd8NfTEH1rHNKgQlj9ACyaLbQ=; b=ui9pgbWROAsZG7
	KzGS+S8vGw9HQLHkDsl4kVl/Istqh9t1vJMhkLNTiWXy6TU88ILOEGSYk0Q4mfxcu3wH0MKyeR9BE
	N9ZyOeBEK4ddekDhHMwTALl27+Dt3Mz661qfdRJJIrp5wX/GOwBeB9Yb0x2UhGWDURAlcxqwWHI1m
	jqvvDEGsiWY3vGM4Z84T/fYs5QY0a4JsThey0gc5/ZBkfVxq8y3JlO8w/MR4ZvlKXn+/L25Ls1T9A
	t3IVZcWmsCuSkLO4KuLT7EZaOnUfxRaXwLkmKMxaDEaPfSu1pGm90wR7g0G9L+7+VSOtdH/N1CasC
	aUcSj0BP6iTuZtUzTCIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgnjo-0001Xf-NM; Thu, 04 Jun 2020 11:08:44 +0000
Received: from smtprelay0197.hostedemail.com ([216.40.44.197]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgnji-0001XD-AT
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 11:08:39 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 0B734181D3030;
 Thu,  4 Jun 2020 11:08:36 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2691:2693:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:7775:7903:9025:10004:10400:10848:11232:11658:11914:12043:12294:12297:12663:12679:12740:12760:12895:13069:13161:13229:13255:13311:13357:13439:14096:14097:14181:14659:14721:21080:21451:21627:21939:30054:30070:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:14, LUA_SUMMARY:none
X-HE-Tag: sand99_0e162d926d96
X-Filterd-Recvd-Size: 3513
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf18.hostedemail.com (Postfix) with ESMTPA;
 Thu,  4 Jun 2020 11:08:34 +0000 (UTC)
Message-ID: <10e54ee84bd44171ef329bed9e7e6a946bae61ba.camel@perches.com>
Subject: Re: [PATCH] pinctrl: pxa: pxa2xx: Remove 'pxa2xx_pinctrl_exit()'
 which is unused and broken
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@inria.fr>
Date: Thu, 04 Jun 2020 04:08:32 -0700
In-Reply-To: <alpine.DEB.2.21.2006041228520.2577@hadrien>
References: <20200531073716.593343-1-christophe.jaillet@wanadoo.fr>
 <87h7vvb1s3.fsf@belgarion.home>
 <a2e34c9a-676f-d83f-f395-7428af038c16@wanadoo.fr>
 <20200601183102.GS30374@kadam>
 <CACRpkdasbS-4_ZwC-Ucm8tkSUW5tAQdUrXjxHXQ3J0goVYfgHw@mail.gmail.com>
 <20200604083120.GF22511@kadam>
 <2aa49a543e6f48a6f428a37b63a06f9149870225.camel@perches.com>
 <alpine.DEB.2.21.2006041147360.2577@hadrien>
 <32232229031e02edcc268b1074c9bac44012ee35.camel@perches.com>
 <alpine.DEB.2.21.2006041228520.2577@hadrien>
User-Agent: Evolution 3.36.2-0ubuntu1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_040838_421691_F12048A7 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.197 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.197 listed in wl.mailspike.net]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linus Walleij <linus.walleij@linaro.org>, kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, "open list:GPIO
 SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-06-04 at 12:33 +0200, Julia Lawall wrote:
> 
> On Thu, 4 Jun 2020, Joe Perches wrote:
> 
> > On Thu, 2020-06-04 at 11:52 +0200, Julia Lawall wrote:
> > > Should Fixes also be used when the change will make it hard to port other
> > > fixes over it?
> > 
> > If it's a logic defect or regression that's being fixed,
> > shouldn't the logic defect or regression be fixed as
> > reasonably soon as possible?
> 
> Sure, but I recall seeing some patches that mentioned that the problem had
> existed since the beginning of git.  Of course, it should be rare.

git history goes back 15 years already.
There are scant few bugs that old.

There is a tree with even older history that Rob Landley
still has here: https://landley.net/kdocs/fullhist/

It does make git blame research a bit easier for those
rare and extremely old defects.

> > The nature of the fix should ideally be optimal for
> > backporting, but I believe that should not stop any
> > consideration for the standalone fix itself.
> 
> I'm not sure to follow this.

I think it comes down to defects in current need to be
fixed.  Describing
the base commit that is being fixed
is useful for backporting.

I believe it's not reasonable to ask the author of a
fix to research how it could or should be backported.

> Sometimes non-bug fixes that block
> backporting a bug fix have to be backported as well.  So the fixes would
> again highlight the range of versions affected by the issue.

Sure, but the non-bug fixes that may also need backporting
to enable easy backports of the actual fix should not be
described in the Fixes: <commit> as those are  generally
easily researched from a command like:

$ git log <commit>.. <files in fix>

by whoever needs to backport.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
