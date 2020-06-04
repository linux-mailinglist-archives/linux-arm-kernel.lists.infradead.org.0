Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D948B1EE89A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 18:29:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=taSzd9HBW0cNnmi8QpHIlMH6s6obRxxQ9qQ7AqmM2hk=; b=Dvy0RVLGKiNEUd
	1pKejrjhlf0fsLeB3tc3ySg6ihnI2GN8SL2THfmqP65Te1iN/oaMC1TZHFp5St7ykDoQ19lVLAcSC
	puuiTIIRjFqeDrG63AGIPCy09RhRpsnEGjxCiXLIvgfKZzannSoXWSnFD6wQH458UDch6x/szDBm4
	bga0R+c+h9x/LVy1n8Zc5hGQHQeY5mjX+YyL+9jAUrLrJmoNGGV/TPlYZqs4zMTAdXzu/RaKobnm4
	4k9BOeag4eXdeqwCstXnlAbkkXh2lvPx8Bkq2Qe4ecVhV2aBdynd9O2Fu8GaBYlc0k7+Ou3mN6eUe
	AevJb0YeU5KyMLN1a0GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgskF-000884-0n; Thu, 04 Jun 2020 16:29:31 +0000
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgsk6-00087D-O3
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 16:29:24 +0000
X-IronPort-AV: E=Sophos;i="5.73,472,1583190000"; d="scan'208";a="350610914"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
 by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 18:29:17 +0200
Date: Thu, 4 Jun 2020 18:29:16 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] pinctrl: pxa: pxa2xx: Remove 'pxa2xx_pinctrl_exit()'
 which is unused and broken
In-Reply-To: <0749ac5e3868c6ba50728ced8366bfd86b0b8500.camel@perches.com>
Message-ID: <alpine.DEB.2.21.2006041820590.2577@hadrien>
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
 <0749ac5e3868c6ba50728ced8366bfd86b0b8500.camel@perches.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_092923_081363_9BF05F7C 
X-CRM114-Status: GOOD (  14.11  )
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

> On Thu, 2020-06-04 at 15:30 +0300, Dan Carpenter wrote:
> > On Thu, Jun 04, 2020 at 01:42:12PM +0200, Julia Lawall wrote:
> > > OK, I recall a discussion with Dan where he suggested that some things
> > > that were not actually bug fixes could also merit a Fixes tag.  But it's
> > > probably better if he weighs in directly.
> >
> > I generally think Fixes should only be used for "real bug" fixes.
> >
> > The one exception is when I'm reviewing a patch that fixes an "unused
> > assignment" static checker warning is that I know which commit
> > introduced the warning.  I don't have strong feelings if it's in the
> > Fixes tag or if it's just mentioned in the commit message.
>
> My view is that changes that silence compiler warnings are
> not fixing bugs and that these changes should generally not
> be backported.
>
> Compiler silencing changes marked as fixes can introduce other
> defects in working code.
>
> Backporting patches to stable trees should be conservatively
> rather than liberally applied.
>
> It seems that the actual backport maintainers disagree though.

But the rule seemed to be "bug fixing patches must contain a Fixes", and
not "backportable patches must contain a Fixes".

Overall, the relationship between backporting and Fixes is not so clear.

Patches that remove something unnecessary might benefit from having a
Fixes, but might not be worth backporting.

julia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
