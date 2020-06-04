Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C95CA1EE39C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 13:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbJGZe1stEJKqk4yIKS/uwaU3e5ky0YYY6a1CYOMiyk=; b=nAb0N5lrzljdSI
	ejjdfLN1MXIaueDVuZ+vRkZoBIlrKWafZDBLp+R70xvlXQVB/pjjdLI5njzwh3ePePNY9pcfZ5U8u
	GsqH/t4w8Sb1T3Whm8E8Q/BIDFeu8V0NPe5RJV2jtMCwlcmZxRlDQd6QPNapZ/MUnIo+mvkConFqF
	9sicJXODWQaiWUpTRecW4cBlU/9SqLZmF0bXXPvXGiTIXcI45aiPXL14t1tK8N1VvSCM94xS8Edea
	ZnlHstPGrhE4QRzks3VhGcYfKgJEPDPMk2zYpIOyQmmpO/un6jTULbPQ7fNeFxnh+n8CXjohI+6pR
	mQ4jtQIjGSUvCL7DgDYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgoGS-0006z9-Ah; Thu, 04 Jun 2020 11:42:28 +0000
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgoGK-0006y6-PH
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 11:42:22 +0000
X-IronPort-AV: E=Sophos;i="5.73,472,1583190000"; d="scan'208";a="350573905"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 13:42:12 +0200
Date: Thu, 4 Jun 2020 13:42:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] pinctrl: pxa: pxa2xx: Remove 'pxa2xx_pinctrl_exit()'
 which is unused and broken
In-Reply-To: <10e54ee84bd44171ef329bed9e7e6a946bae61ba.camel@perches.com>
Message-ID: <alpine.DEB.2.21.2006041328570.2577@hadrien>
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
 <10e54ee84bd44171ef329bed9e7e6a946bae61ba.camel@perches.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_044221_117073_761E1DBF 
X-CRM114-Status: GOOD (  28.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.104 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.134.164.104 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 4 Jun 2020, Joe Perches wrote:

> On Thu, 2020-06-04 at 12:33 +0200, Julia Lawall wrote:
> >
> > On Thu, 4 Jun 2020, Joe Perches wrote:
> >
> > > On Thu, 2020-06-04 at 11:52 +0200, Julia Lawall wrote:
> > > > Should Fixes also be used when the change will make it hard to port other
> > > > fixes over it?
> > >
> > > If it's a logic defect or regression that's being fixed,
> > > shouldn't the logic defect or regression be fixed as
> > > reasonably soon as possible?
> >
> > Sure, but I recall seeing some patches that mentioned that the problem had
> > existed since the beginning of git.  Of course, it should be rare.
>
> git history goes back 15 years already.
> There are scant few bugs that old.
>
> There is a tree with even older history that Rob Landley
> still has here: https://landley.net/kdocs/fullhist/
>
> It does make git blame research a bit easier for those
> rare and extremely old defects.
>
> > > The nature of the fix should ideally be optimal for
> > > backporting, but I believe that should not stop any
> > > consideration for the standalone fix itself.
> >
> > I'm not sure to follow this.
>
> I think it comes down to defects in current need to be
> fixed.  Describing
> the base commit that is being fixed
> is useful for backporting.
>
> I believe it's not reasonable to ask the author of a
> fix to research how it could or should be backported.
>
> > Sometimes non-bug fixes that block
> > backporting a bug fix have to be backported as well.  So the fixes would
> > again highlight the range of versions affected by the issue.
>
> Sure, but the non-bug fixes that may also need backporting
> to enable easy backports of the actual fix should not be
> described in the Fixes: <commit> as those are  generally
> easily researched from a command like:
>
> $ git log <commit>.. <files in fix>
>
> by whoever needs to backport.

OK, I recall a discussion with Dan where he suggested that some things
that were not actually bug fixes could also merit a Fixes tag.  But it's
probably better if he weighs in directly.

It would be unfortunate if someone doesn't submit a fix because they can't
figure out how to make the Fixes tag properly, though.

For example, when there is a lot of concurrency involved, some of the bugs
reported by syzkaller can be hard to fully understand.  In the case of a
NULL pointer dereference can a patch only be submitted if it is known
where the NULL comes from, and at what time the reason for producing the
NULL was introduced into the kernel?  Adding a NULL test without fully
understanding how the NULL can arise could reasonably be seen as papering
over a real problem.  But sometimes it could be better to paper over the
problem than incur the problem in a critical situation.

But I agree that these are corner cases.  Hopefully if such a NULL test
was submitted with an explanation on why the submitter was not able to
find the source of the problem and why the problem is important, then the
maintainer could provide some guidance that would resolve the situation.

julia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
