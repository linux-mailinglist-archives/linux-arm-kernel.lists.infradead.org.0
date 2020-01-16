Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB0313D9FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 13:30:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Oirqb3JEg0d5V1SGQS6Yhmj8bqnUK0Q3xrqKGHkp6A8=; b=M8a7w0fh/1rdSzxXDega/fLAD
	zO06O7lg6YsyePAo/RH1ozcX8VFWVePmh+akRWaYuNJbU9b16nvug9gkZ/F6wLqEUyZW0L0lQ/iAR
	Evk10y3YK2lLy1QTRp1gUgZo4/EsTnbvY3oKAE5X6cRH8moeGkteuILDOuBWnGvwtD+oEuIPkTeT6
	ixQCYzpmru0bCNipFOTwx720MP42A/SJQNYkR8DuShVLVsywYzcyHz0igh5QgLzr16SVqBxpS2z9M
	eSmHU0jD6DrDnIWlIciLOq7TNU+IQnipMopKxpZegQzFLQRn2ZWiId0QoILJviShCnbFyLJ+2n1ab
	DKFA43cGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4Hg-0006Kc-JI; Thu, 16 Jan 2020 12:30:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4HS-0006Jm-Jo
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:29:51 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D28C920748;
 Thu, 16 Jan 2020 12:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579177786;
 bh=OQ4DvKQn6DjynjxFZnipVci0kmylwgCgywja2qyJZxw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ntTCbNMnfeBHi5RrLmh3GPZkvANG1wbsNq75B4fnIRDNgkfMySdY39omZChm7UVe0
 i6i5P58QzLTITyoQ5x9gkWNb6cSeyFp4PV8SOsE96Joou2XwMInUXCCOF1reMe4KnG
 UR1WqhPpp1J8bfFV7eWFUl4yAXHRQiozBinvApj0=
Date: Thu, 16 Jan 2020 13:29:44 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/2] dt-bindings: arm: sunxi: add OrangePi 3 with eMMC
Message-ID: <20200116122944.sgl2fgxf5mrg6i52@gilmour.lan>
References: <20200115194216.173117-1-jernej.skrabec@siol.net>
 <20200115194216.173117-2-jernej.skrabec@siol.net>
 <CAL_JsqK-KBd9PF7nKK976vVYjRwfm-ZxJSnEbhiWC=X3AnvpeA@mail.gmail.com>
 <4200557.LvFx2qVVIh@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <4200557.LvFx2qVVIh@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_042946_678395_A9BC1868 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7760447349125285675=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7760447349125285675==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z3e6p5ezhmthrhbl"
Content-Disposition: inline


--z3e6p5ezhmthrhbl
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 16, 2020 at 12:10:58AM +0100, Jernej =C5=A0krabec wrote:
> Hi!
>
> Dne sreda, 15. januar 2020 ob 22:57:31 CET je Rob Herring napisal(a):
> > On Wed, Jan 15, 2020 at 1:42 PM Jernej Skrabec <jernej.skrabec@siol.net>
> wrote:
> > > OrangePi 3 can optionally have eMMC. Add a compatible for it.
> >
> > Is this just a population option or a different board layout? If the
> > former, I don't think you need a new compatible, just add/enable a
> > node for the eMMC.
>
> I have only board with eMMC but I imagine it's the former. Even so, curre=
nt
> approach with Allwinner boards is to have two different board DT files, o=
ne for
> each variant. This can be seen from Documentation/devicetree/bindings/arm/
> sunxi.yaml which has a lot of compatibles ending with "-emmc". I guess re=
ason
> for that is to avoid having MMC controller being powered on for no reason.

The main reason for that is that those populating options can be
conflicting. For example, last week we discussed an issue about the
eMMC being on the same pin set than an SPI flash, both options being
available.

The solution Andre suggested then was to let the eMMC be disabled, and
have the bootloader probe the emmc, and if found, enable
it. Otherwise, it means that you have a SPI flash (and enable it).

I guess a similar solution would apply here.

Maxime

--z3e6p5ezhmthrhbl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXiBXNwAKCRDj7w1vZxhR
xSiCAQC3vqoZktCtBHtvXsgBmpAOofLKQpEHTDgn3BB1dlUTvQD/SVxXyY+qZTZi
JO/lb9XHuZfUdVTYe5uE19i8KbsfrQM=
=/A2H
-----END PGP SIGNATURE-----

--z3e6p5ezhmthrhbl--


--===============7760447349125285675==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7760447349125285675==--

