Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9A91C5A22
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5D0/UW4wjWrByiseRKZ8QFCBNaSbxCo0kl464bN0Ipo=; b=djod7jIPxZz05O5+dtJht5okt
	JLiUxAfIEsrKQHUV659VMckSX+j2ciOqVE97dhH0sk4QvXk0nWusHJv3s82cko6txL8/VCTlgL1yM
	hTW+L7Dp9B+A8mjgSXF8FxRcSJ/NTKm408/EoOqt3p4O5i4tVvERjNQdNlFThHgLUqF2anKRAxBKh
	ENwW5SQei4+4YpuvAQUNFH9ya16jDvPpgdt+rBhD7Y4dUr0JxGVhdAY24bJgMZHJOxmqC+gDsq0gV
	ytu/woxf0QFKe4nSeIRHWdUefx5nyx9pJm6OpN1eTAtiqdA3u8w4T/Nn8F9iw2aT3P6OEJF8PxrPT
	VDLunSpXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyxh-0004Cj-I5; Tue, 05 May 2020 14:54:21 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyxX-0004C6-Eq
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:54:12 +0000
Received: by mail-qk1-x741.google.com with SMTP id f13so2564948qkh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=jSocksHYb9zl/JGU+koYObwZ4sleYquXCNFXOruiZU0=;
 b=X43eTslCX/HNNmesYL3Fsx5aXrB31f7o5wrAqV4kmD0074bnyV3S/oxOdYGuTkrU0r
 O/fPkW9VYXn6njRBNjHvblOJh1jq/wrCGmnHWcWdlw40qUH+VmtdR+TvwdxF3TcAZB2x
 V2NcTJuHrq/2UvuAg+1vvFCuhzRk9R9fPP9X3lPGeKgUkjI3ePV/JFfZvFaoo9CK6Hgo
 KTwY9YxA1zIb4Bayqff9RZHp2a9O/kyquhucRegxrqCrqXmlfkA4TcwNaIsCH3PHEGP5
 7QWeuCqRHAZJPC8hGH8s2QiNyQ93fqvw0veotMHke9Rtrc2+bf2AiEEMO1h9Jl/z4W61
 ukhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jSocksHYb9zl/JGU+koYObwZ4sleYquXCNFXOruiZU0=;
 b=VyQsudymnaF3Oxe0qx/UOXE9e2gHw5Jo5BFAzERld6esMpTT31J5EAHLxWYv5Ga6Vz
 pQn5tEOLxF631wEsNlBSrDmnW0/XMG+5TMFEUaTOYSlaDod/bTgtkSL+WIhxN1J1uiuQ
 NeMsARSoVhW0w62mMgy9NCW5DcCFhjv6x5oe9RJAAvLIKGYTpkAzvWO2P5/tbnADebX7
 lCPIKjtO9/GgXZEXHCGlvjFDdxBdvjRJ+yOsX3+XioXF3wimOO0Tk/lex5Sb1M0pFbum
 neCkCAz9hJ33KprY6sxL+v0FlIFOSNwqCw7pgTJyQZcOdu9lnqHUMU9nUMJDqjxtLH8x
 23Og==
X-Gm-Message-State: AGi0PuZZzQjkHhPtSe4R/+yzSBRbNvObSVE1dxryRkdIyQ1Q0Tz28rZ5
 7Faf/scfbRB8WWhpdZXpBE0=
X-Google-Smtp-Source: APiQypKHZt/tsl7D6ZxkoYpLuHMfDxw0ggzb9p/Ze2te7v0luNbbLGjLb8VqX9Ukk2YwMWDPUKrTog==
X-Received: by 2002:a05:620a:1f1:: with SMTP id
 x17mr3990168qkn.330.1588690449917; 
 Tue, 05 May 2020 07:54:09 -0700 (PDT)
Received: from shinobu (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id n124sm2004093qkn.24.2020.05.05.07.54.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:54:09 -0700 (PDT)
Date: Tue, 5 May 2020 10:53:49 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH v5 0/4] Introduce the for_each_set_clump macro
Message-ID: <20200505145250.GA5979@shinobu>
References: <cover.1588460322.git.syednwaris@gmail.com>
 <20200504114109.GE185537@smile.fi.intel.com>
 <20200504143638.GA4635@shinobu>
 <CAHp75Vf_vP1qM9x81dErPeaJ4-cK-GOMnmEkxkhPY2gCvtmVbA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHp75Vf_vP1qM9x81dErPeaJ4-cK-GOMnmEkxkhPY2gCvtmVbA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_075411_505613_85433AD3 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-Arch <linux-arch@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, rrichter@marvell.com,
 Linux PM <linux-pm@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Syed Nayyar Waris <syednwaris@gmail.com>, "Zhang, Rui" <rui.zhang@intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1623545897433488272=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1623545897433488272==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CblX+4bnyfN0pR09"
Content-Disposition: inline


--CblX+4bnyfN0pR09
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 05, 2020 at 04:51:56PM +0300, Andy Shevchenko wrote:
> On Mon, May 4, 2020 at 5:41 PM William Breathitt Gray
> <vilhelm.gray@gmail.com> wrote:
> > On Mon, May 04, 2020 at 02:41:09PM +0300, Andy Shevchenko wrote:
> > > On Sun, May 03, 2020 at 04:38:36AM +0530, Syed Nayyar Waris wrote:
>=20
> ...
>=20
> > > Looking into the last patches where we have examples I still do not s=
ee a
> > > benefit of variadic clump sizes. power of 2 sizes would make sense (a=
nd be
> > > optimized accordingly (64-bit, 32-bit).
> > >
> > > --
> > > With Best Regards,
> > > Andy Shevchenko
> >
> > There is of course benefit in defining for_each_set_clump with clump
> > sizes of powers of 2 (we can optimize for 32 and 64 bit sizes and avoid
> > boundary checks that we know will not occur), but at the very least the
> > variable size bitmap_set_value and bitmap_get_value provide significant
> > benefit for the readability of the gpio-xilinx code:
> >
> >         bitmap_set_value(old, state[0], 0, width[0]);
> >         bitmap_set_value(old, state[1], width[0], width[1]);
> >         ...
> >         state[0] =3D bitmap_get_value(new, 0, width[0]);
> >         state[1] =3D bitmap_get_value(new, width[0], width[1]);
> >
> > These lines are simple and clear to read: we know immediately what they
> > do. But if we did not have bitmap_set_value/bitmap_get_value, we'd have
> > to use several bitwise operations for each line; the obfuscation of the
> > code would be an obvious hinderance here.
>=20
> Do I understand correctly that width[0] and width[1] may not be power
> of two and it's actually the case?
>=20
> --=20
> With Best Regards,
> Andy Shevchenko

I'm under the impression that width[0] and width[1] are arbitrarily
chosen by the user and could be any integer. I have never used this
hardware so I'm hoping one of the gpio-xilinx or GPIO subsystem
maintainers in this thread will respond with some guidance.

If the values of width[0] and width[1] are restricted to powers of 2,
then I agree that there is no need for generic bitmap_set_value and
bitmap_get_value functions and we can instead use more optimized power
of 2 versions.

William Breathitt Gray

--CblX+4bnyfN0pR09
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6xff0ACgkQhvpINdm7
VJI65w/8CTBNaBXzqQ6+AtgyAfLROsibTUPDE3wEs7s/eQkI4dlNN0BzmXwJ6sb6
oMCj6NqzTFksNVUoM6OSjyAGqHZVTJaSfFS97TG4+GrUZm4iWrLMmCipkYEh3qjB
b10DXznOSf6l0IFFbB51QRFRaDu2hJEFYbtCM0hDHYssMXQyI3wMyw/9qCtPwPOC
1l0MYPTFb825gGxAnfNCJ8CODpBXFxbahDtK1gvkaNB7Bdq/BFHyaR4FqMP0QbCC
hoxK7bdMqur6ghYjld9dPRw7iFMXZHt1gD90DMzyXZDl3FcOKlzaAsAz9abgCZ4d
sNHU6i8bRUtdTy66niUDTFHuMKOsWzcHe223zeC6SXp9L00kRzWbSJ4RioncRIEP
X1/Vc+7x62yX/PzECkI+jxhLA8G+wwWuizAxN2VxDDx3ei7XJ4UEfSnNYZwBYlyc
DUhyQZ3UyeID5wDu0XiGGBM8/+Y6mQprrYG7pgsPqAMCMYbcuK58W6cC+uM9ilH9
oNFMz74DRUKaRrK6N/L+ujYD5R+uqVIzq4rwXsT9UOeh4N85uNI/Vjxx5jYO6ICG
B4SGVNo2lwkdvH8XhnCfad+no1HV1XWPNflkedffcfALCxAsxhKF5riw4H1cmZ3B
NbCZv5hfWtY/5opWhWKCVrxAdH512xxHdWBThcAdj8l2NGpZaYM=
=lkYR
-----END PGP SIGNATURE-----

--CblX+4bnyfN0pR09--


--===============1623545897433488272==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1623545897433488272==--

