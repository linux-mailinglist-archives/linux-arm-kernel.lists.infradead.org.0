Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7EAD1253
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 17:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mBGsR+xEKMQmE8tVpXHucV8eCObWKf0iGsrpwYiDWpA=; b=Y53/dB97bWqri+
	hDOQUQnRS1YkOYLH2mLucJ1bEbjgTyJZEWL54j4z1HnToA/8qkiugAGgqgCICMpn1GmYKxvT3r9Rt
	UJV0JXl9aovnI2NRUVfaRGLYvRzM/e10IVpdAf7RQlplTSOIFqnL88iu7qIC8+hPvYFj/mfQusjMd
	l0SJ+Wuz3y0pRc+SnOswpgXwD5idn3+cwbWNWh8ItY1BuIjyimwt04FkGRKoRF91t60Uq2qDijLdx
	QM/NzIXkXtJmqpzOgfogzgcea9+LK8TlaJ9hloRaYxY0DFNHgSNkBkA3Go+pwmma6OPf6h8g50QXe
	qxgI7iCLHr4+MkjTeZpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIDnP-0007vQ-HB; Wed, 09 Oct 2019 15:22:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIDnI-0007ua-NC
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 15:22:30 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iIDn9-0000BE-3A; Wed, 09 Oct 2019 17:22:19 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iIDn8-0004d5-10; Wed, 09 Oct 2019 17:22:18 +0200
Date: Wed, 9 Oct 2019 17:22:18 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v4 4/8] recordmcount: Rewrite error/success handling
Message-ID: <20191009152217.whklst5vwrwvsjc4@pengutronix.de>
References: <cover.1564596289.git.mhelsley@vmware.com>
 <8ba8633d4afe444931f363c8d924bf9565b89a86.1564596289.git.mhelsley@vmware.com>
 <20191009104626.f3hy5dcehdfagxto@pengutronix.de>
 <20191009110538.5909fec6@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009110538.5909fec6@gandalf.local.home>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_082228_752648_EF529CA1 
X-CRM114-Status: GOOD (  15.84  )
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
Cc: Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, kernel@pengutronix.de,
 Matt Helsley <mhelsley@vmware.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 11:05:38AM -0400, Steven Rostedt wrote:
> On Wed, 9 Oct 2019 12:46:26 +0200
> Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> wrote:
> =

> =

> > uwe@taurus:~/arietta/kbuild$ ./scripts/recordmcount "arch/arm/crypto/ae=
s-cipher-glue.o"
> > arch/arm/crypto/aes-cipher-glue.o: failed
> =

> Thanks for the report.
> =

> > =

> > I didn't debug this further, if you have problems reproducing or need m=
ore
> > infos tell me. The defconfig I'm using is attached.
> > =

> =

> Does this fix it for you?
> =

> -- Steve
> =

> diff --git a/scripts/recordmcount.h b/scripts/recordmcount.h
> index 3796eb37fb12..6dbec46b7703 100644
> --- a/scripts/recordmcount.h
> +++ b/scripts/recordmcount.h
> @@ -389,11 +389,8 @@ static int nop_mcount(Elf_Shdr const *const relhdr,
>  			mcountsym =3D get_mcountsym(sym0, relp, str0);
>  =

>  		if (mcountsym =3D=3D Elf_r_sym(relp) && !is_fake_mcount(relp)) {
> -			if (make_nop) {
> +			if (make_nop)
>  				ret =3D make_nop((void *)ehdr, _w(shdr->sh_offset) + _w(relp->r_offs=
et));
> -				if (ret < 0)
> -					return -1;
> -			}

Yes, this patch fixes building for me.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
