Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CDF700F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5QtZldl5qkyxy5waBblno4JFC1gWPFEgoUwQJzTKmig=; b=TlMUPwMT+/HHZRC3P7GYDcAD+
	FUa6Kl4FmOfNRQikLdzNuCF5cg/Cq3rakP7dZuinAgDciuzkE6/D/4sK3UzNE9yMX0JKKkS8aIkEL
	WCBWNLNvgzM1NiE/YfpVdsfvsf5yJQjIxEX6/63mhcxhlm+vd26BE+QiOAVEZHUx0XxYBkDRvlBAh
	Z6P0h43MG6/QcSwaixxc1PBFOXybcAq/NbvZu7XFRURFhT9SCd6r8koPnNNAXdCvVf4NT0u/je/nt
	hXIIptUU8s1sjhnnu3anIGpy7cyqAn8mYKi+h22BwRe5WNAkW12KNL6Hx/Z7L1wOy/WxbrSEz2xSX
	ZKOggA/SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYIx-0000nH-D0; Mon, 22 Jul 2019 13:24:39 +0000
Received: from kadath.azazel.net ([2001:8b0:135f:bcd1:e2cb:4eff:fedf:e608])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYDq-0005h9-Mc
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:19:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BJZaPv+ZzOIR8B7tw6DrhELBhHNpgCujcs9EdlLvffI=; b=HCEqoqhwpCNV9mX4vPh3vjc+aa
 o0AmZ8zyOinCSarqcysgs9v+lhMgPR6RX8NrzyDcKekfw6OHHA/cW6IkoaBuJfj8jCrSaPAuM1jvS
 nmdiEG9FGEMXKMVSTRclxkKl5xVy7qXnofRqccb/QJgrAGmiBw1TwYLNHSVzucbDPWckjj9M47Dy+
 erPO4HnEnZg2g+/ucJinCyGpDZSm30IXzn8XVZmNCfhfJey0UcwT8iNNsEsvQixeXnWODNC5jr4zf
 dDN9Adf9fQeJycJ9CIFFLyC+DGrBQ4l7LwCuucpeFQa8T4E4ejR0DGJyHjRM8gcQhWzodJLnAzO4Q
 q+nplM8A==;
Received: from pnakotus.dreamlands ([192.168.96.5] helo=azazel.net)
 by kadath.azazel.net with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <jeremy@azazel.net>)
 id 1hpYDe-0007Bw-TS; Mon, 22 Jul 2019 14:19:10 +0100
Date: Mon, 22 Jul 2019 14:19:11 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2] staging: media: sunxi: Add bool cast to value
Message-ID: <20190722131910.GC2695@azazel.net>
References: <20190722060651.6538-1-nishkadg.linux@gmail.com>
 <20190722111225.GA2695@azazel.net>
 <20190722122438.GA1908@aptenodytes>
MIME-Version: 1.0
In-Reply-To: <20190722122438.GA1908@aptenodytes>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 192.168.96.5
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_061922_892312_98B505C9 
X-CRM114-Status: GOOD (  30.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, maxime.ripard@bootlin.com,
 gregkh@linuxfoundation.org, wens@csie.org,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6604526433980559048=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6604526433980559048==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KDt/GgjP6HVcx58l"
Content-Disposition: inline


--KDt/GgjP6HVcx58l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2019-07-22, at 14:24:38 +0200, Paul Kocialkowski wrote:
> On Mon 22 Jul 19, 12:12, Jeremy Sowden wrote:
> > On 2019-07-22, at 11:36:51 +0530, Nishka Dasgupta wrote:
> > > Typecast as bool the return value of cedrus_find_format in
> > > cedrus_check_format as the return value of cedrus_check_format is
> > > always treated like a boolean value.
> > >
> > > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > > ---
> > > Changes in v2:
> > > - Add !! to the returned pointer to ensure that the return value
> > >   is always either true or false, and never a non-zero value other
> > >   than true.
> > >
> > >  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > index e2b530b1a956..b731745f21f8 100644
> > > --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > > @@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
> > >  static bool cedrus_check_format(u32 pixelformat, u32 directions,
> > >  				unsigned int capabilities)
> > >  {
> > > -	return cedrus_find_format(pixelformat, directions, capabilities);
> > > +	return !!(bool)cedrus_find_format(pixelformat, directions, capabilities);
> > >  }
> >
> > I think the original was fine.  The return value of
> > cedrus_find_format will be automatically converted to bool before
> > being returned from cedrus_check_format since that is the
> > return-type of the function, and the result of converting any
> > non-zero value to bool is 1.
>
> Okay I was a bit unsure about that and wanted to play it on the safe
> side without really looking it up, but that gave me the occasion to
> verify.
>
> From what I could find (from my GNU system's
> /usr/include/unistring/stdbool.h):
>
>    Limitations of this substitute, when used in a C89 environment:
>
>        - In C99, casts and automatic conversions to '_Bool' or 'bool'
>          are performed in such a way that every nonzero value gets
>          converted to 'true', and zero gets converted to 'false'.
>          This doesn't work with this substitute.  With this
>          substitute, only the values 0 and 1 give the expected result
>          when converted to _Bool' or 'bool'.
>
> So since the kernel is built for C89 (unless I'm mistaken), I don't
> think the compiler provides any guarantee about bool values being
> converted to 1 when they are non-zero.

Ick.  I checked the C99 standard and assumed that GCC would use the same
semantics.  I've just tested with "gcc-8 -std=gnu89" and it appears to
do the right thing:

  [azazel@ulthar:/space/azazel/tmp] $ cat test.c
  #include <stdbool.h>
  #include <stdio.h>

  int
  main (void)
    {
    char *p = "test";
    bool b = p;

    fprintf (stderr, "%p, %d\n", (void *) p, b);

    return 0;
    }
  [azazel@ulthar:/space/azazel/tmp] $ gcc-8 -O2 -std=gnu89 -Wall -Wextra
  test.c -o test
  [azazel@ulthar:/space/azazel/tmp] $ ./test
  0x55d984e0e004, 1

> As a result, I think it's best to be careful.

Fair enough.

> However, I'm not sure I really see what cocinelle was unhappy about.
> You mentionned single-line functions, but I don't see how that can be
> a problem.
>
> So in the end, I think we should keep the !! and drop the (bool) cast
> if there's no particular warning about it.
>
> What do you think?

Seems sensible.

J.

--KDt/GgjP6HVcx58l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEZ8d+2N/NBLDbUxIF0Z7UzfnX9sMFAl01t8oACgkQ0Z7UzfnX
9sM6EBAAkkQYvSH24qMbABICcjH8XzSNpn+DAmj5ODDs0l9jFd+hNMLROg3zffgx
nS8+BuuBmBbI0Ds5XOWj9fbRcCB0J1FxmjotL3msjVORITaHs/IiEllgiZw0ab0v
Skbzu3XG6dcCRtKiHBR9iGRLuuZfubS9+19qAmKrMARtl07mtMGyvEwkJbRybgk1
EAmGKwKx6aY8XHnd10IXXV5JpYxi+MEja98yrIEwrAmFcfvPZtF2JVbU3liekq8r
NJ8eGDpchmICX3oqi7zjewPbu5zG7zOw/pAg5lciF/nGU6Y9r+sNBcbA+dFkIPfa
Zd8tfvHn//bHn9yUTLpQOW1bm6QgIP7//dSFHzYV0C+6N2esOR6L1xpTh7+uH1sT
lc0MsZ3qrdk50uCBNXSMgb5eYzUUW18FneKf7uBBlXDXOU1PF3LpCExukftddEGZ
lCZXTvtCSKpduxc8hNZ83F0eySr+mZ/5/lv7Tm5gD6irapyLxLfYFfcWkVp2Jqoq
X0IqbyPV+UKL8i4yUz6S1qje5cZs4OUlCnAX6r/65syBAlYt4R5pj0DFiw5avicd
MMGrj39m5EKetc+7g0aVs8C60hmYfx0qXQkwrw4lz8ca68mEgDJcYYHlfTx8lU5x
yOL1dsoVDw18MAB9T6pBg/OYIzKsBSj9Nl60M+u5qo+QuIooh9Q=
=NPHQ
-----END PGP SIGNATURE-----

--KDt/GgjP6HVcx58l--


--===============6604526433980559048==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6604526433980559048==--

