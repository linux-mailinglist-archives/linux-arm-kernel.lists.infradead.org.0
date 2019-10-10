Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D7DD31D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76Il8TtEchy0SLCY0MmXAS7dBE2+QfNnVa0BkamPRCU=; b=R1+Nx31If7H1yj
	PkpVxIiNlf8Eq8zlLlzA9OytrzFdV132NY6573W74G9dg0SScg/0yNKnn1cpudCd17mxBda+gjQOa
	wn6KKYZiNohBxZmGj59LW/YvhOJ6JGSMmhWSwKLuBwd6S77QYlZa/P1be696pxrnEpIVjXRiv1s78
	OYD50x+2xuu12GRud+958lRTAIZnapY1xi+o1FBSCzZHUd+njnfvR0beSR+bODwfzZVDyCBZgGCeC
	zpa8sCosyWEhr+pxpjiabew49w1e5+VRuOiK0w9esFZ1sAyFNlashOzZSw4kh5drK6oPtTaGtwTyp
	CQ6ZWJigYpP7KLUG6qPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIepJ-0002BF-6D; Thu, 10 Oct 2019 20:14:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIepA-0002AC-VB
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:14:14 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iIeoz-0004VC-S0; Thu, 10 Oct 2019 22:14:01 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iIeoy-0005K0-BS; Thu, 10 Oct 2019 22:14:00 +0200
Date: Thu, 10 Oct 2019 22:14:00 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v4 4/8] recordmcount: Rewrite error/success handling
Message-ID: <20191010201400.k4tcsbx2cqe5wjqs@pengutronix.de>
References: <cover.1564596289.git.mhelsley@vmware.com>
 <8ba8633d4afe444931f363c8d924bf9565b89a86.1564596289.git.mhelsley@vmware.com>
 <20191009104626.f3hy5dcehdfagxto@pengutronix.de>
 <20191009110538.5909fec6@gandalf.local.home>
 <20191009152217.whklst5vwrwvsjc4@pengutronix.de>
 <20191010122321.7329329f@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010122321.7329329f@gandalf.local.home>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_131413_003256_74AE951C 
X-CRM114-Status: GOOD (  12.30  )
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
Cc: Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, kernel@pengutronix.de,
 Matt Helsley <mhelsley@vmware.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 12:23:21PM -0400, Steven Rostedt wrote:
> On Wed, 9 Oct 2019 17:22:18 +0200
> Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> wrote:
> =

> > > diff --git a/scripts/recordmcount.h b/scripts/recordmcount.h
> > > index 3796eb37fb12..6dbec46b7703 100644
> > > --- a/scripts/recordmcount.h
> > > +++ b/scripts/recordmcount.h
> > > @@ -389,11 +389,8 @@ static int nop_mcount(Elf_Shdr const *const relh=
dr,
> > >  			mcountsym =3D get_mcountsym(sym0, relp, str0);
> > >  =

> > >  		if (mcountsym =3D=3D Elf_r_sym(relp) && !is_fake_mcount(relp)) {
> > > -			if (make_nop) {
> > > +			if (make_nop)
> > >  				ret =3D make_nop((void *)ehdr, _w(shdr->sh_offset) + _w(relp->r_=
offset));
> > > -				if (ret < 0)
> > > -					return -1;
> > > -			}  =

> > =

> > Yes, this patch fixes building for me.
> =

> May I add to my patch:
> =

> Reported-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Tested-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Yeah, sure.

Thanks
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
