Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3975E1EE1DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 11:53:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nx1DTe6d07ZUCbHu/oN4UXJyTFoEW8srVChUsOMLEN8=; b=f3qV86qnsTl19z
	fPUSWMoazI1st7IbgYhBs/Q2hH1MGOm/AkTE9Kh2opoYOPBS3R+IuwYq5qvgO6cnJ3eYOhKNMJZvr
	rPVS3dxbSoppQqk9s5C7xzDuUm1FxmCWJo2QdSL4tqnw6st3+Z5RmuYR69VhbTkdmFI2byzCQq1fR
	uPJF+wIFBlIVQ7F2w783e6S4LT8hinrgOL6/nZBLyTkaMR9jjvqWaYziPy1IIkNNJoQE1fKeinZIL
	vC+zKABcRGLn4PtGTXpDcy5Ql3XOHglR3gfI4/JxpWZvatrHbJi1vMD6KKm680BpZyhDczZAfHuqq
	wvo+BLB/bHUg41Y+ZwzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgmYY-0005VK-F1; Thu, 04 Jun 2020 09:53:02 +0000
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgmYQ-0005Ix-JB
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 09:52:56 +0000
X-IronPort-AV: E=Sophos;i="5.73,471,1583190000"; d="scan'208";a="452941151"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 11:52:17 +0200
Date: Thu, 4 Jun 2020 11:52:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] pinctrl: pxa: pxa2xx: Remove 'pxa2xx_pinctrl_exit()'
 which is unused and broken
In-Reply-To: <2aa49a543e6f48a6f428a37b63a06f9149870225.camel@perches.com>
Message-ID: <alpine.DEB.2.21.2006041147360.2577@hadrien>
References: <20200531073716.593343-1-christophe.jaillet@wanadoo.fr>
 <87h7vvb1s3.fsf@belgarion.home>
 <a2e34c9a-676f-d83f-f395-7428af038c16@wanadoo.fr>
 <20200601183102.GS30374@kadam>
 <CACRpkdasbS-4_ZwC-Ucm8tkSUW5tAQdUrXjxHXQ3J0goVYfgHw@mail.gmail.com>
 <20200604083120.GF22511@kadam>
 <2aa49a543e6f48a6f428a37b63a06f9149870225.camel@perches.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_025254_910110_D538A11C 
X-CRM114-Status: GOOD (  23.28  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.83 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [192.134.164.83 listed in wl.mailspike.net]
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
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Thu, 4 Jun 2020, Joe Perches wrote:

> On Thu, 2020-06-04 at 11:31 +0300, Dan Carpenter wrote:
> > On Thu, Jun 04, 2020 at 12:08:49AM +0200, Linus Walleij wrote:
> []
> > > Fixes means it fixes something that was wrong in that commit.
> > > That's all. Whether syntactic or semantic or regression or
> > > serious or not does not matter. It is also not compulsory to
> > > add it is just helpful.
> >
> > Fixes tag should be compulsory for actual bug fixes.  We had a the
> > Bad Binder exploit last year because commit f5cb779ba163
> > ("ANDROID: binder: remove waitqueue when thread exits.") had no Fixes
> > tag and wasn't backported to Android kernels.
>
> Fixes tags IMO should be exclusively for actual bug fixes
> and should be mandatory.

I'm not sure that it is always possible to determine the specific commit
that a patch fixes.  Some bugs are too old.  Some bugs may arise from an
interaction of issues.  I don't have a concrete example, but I feel uneasy
about mandator and compulsory.  Neither word is in the proposed text,
though.

Should Fixes also be used when the change will make it hard to port other
fixes over it?

julia

>
> Perhaps:
> ---
>  Documentation/process/submitting-patches.rst | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/process/submitting-patches.rst b/Documentation/process/submitting-patches.rst
> index 1699b7f8e63a..285a84ae79de 100644
> --- a/Documentation/process/submitting-patches.rst
> +++ b/Documentation/process/submitting-patches.rst
> @@ -636,12 +636,14 @@ idea was not posted in a public forum. That said, if we diligently credit our
>  idea reporters, they will, hopefully, be inspired to help us again in the
>  future.
>
> -A Fixes: tag indicates that the patch fixes an issue in a previous commit. It
> -is used to make it easy to determine where a bug originated, which can help
> -review a bug fix. This tag also assists the stable kernel team in determining
> -which stable kernel versions should receive your fix. This is the preferred
> -method for indicating a bug fixed by the patch. See :ref:`describe_changes`
> -for more details.
> +A Fixes: tag indicates that the patch fixes a "bug". i.e.: a logic defect or
> +regression in a previous commit.  A Fixes: tag should not be used to indicate
> +that a previous commit had some trivial defect in spelling in the commit log or
> +some whitespace defect.  The Fixes: tag is used to make it easy to determine
> +where a bug originated, which can help review a bug fix. The Fixes: tag also
> +assists the stable kernel team in determining which stable kernel versions
> +should receive your fix. This is the preferred method for indicating a bug is
> +fixed by the patch.  See :ref:`describe_changes` for more details.
>
>  .. _the_canonical_patch_format:
>
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
