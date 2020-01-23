Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CC41464B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:41:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ppnbCrJfHSS0HqLA63pS0VQFD7qjaF1SyaOW8mbcpbg=; b=V+YO8ucsxKcqwuNaSB/BS5CHm
	nBEaKIIZRFNG0TWRSwttBWrk5GkpKMEHyZKpWVavZNhjh8BwJPhmGrIF9ezu5hoBOuzSHUuyxANp2
	kSRvE/rXYD+KdFol7J3m2EUGWk5EzEIdrJb1AVKfQGyZd4SkZ+OSXX1P3eptMFO7j0TWUThsFQFqt
	MLvw0c4cBqNmXAoAEhPPVb8YLXc+h0lntBd/3zkN+h1sxyfQodnQey9eOXXoUyTmUJC907ur2a2aj
	m72OJ8KZ9qyrqlP6MnU+BVZfa1D7FMGT8AcOLbcbsI7dAFKyHRWsVj2R4msh1B5WYR5tNDXJ41Why
	fIUxOBREw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuYzF-00052M-2X; Thu, 23 Jan 2020 09:41:17 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuYz6-00051P-Mh
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 09:41:10 +0000
Received: from localhost (p54B335E9.dip0.t-ipconnect.de [84.179.53.233])
 by pokefinder.org (Postfix) with ESMTPSA id DC3322C00DA;
 Thu, 23 Jan 2020 10:41:07 +0100 (CET)
Date: Thu, 23 Jan 2020 10:41:07 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 1/2] i2c: Enable compile testing for some of drivers
Message-ID: <20200123094107.GD1105@ninjato>
References: <1578384779-15487-1-git-send-email-krzk@kernel.org>
 <20200123091228.GB1105@ninjato> <20200123093120.GA2365@pi3>
MIME-Version: 1.0
In-Reply-To: <20200123093120.GA2365@pi3>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_014108_890468_31F42570 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Greg KH <greg@kroah.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>, linux-i2c@vger.kernel.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Jean Delvare <jdelvare@suse.de>
Content-Type: multipart/mixed; boundary="===============0858323090847097736=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0858323090847097736==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EY/WZ/HvNxOox07X"
Content-Disposition: inline


--EY/WZ/HvNxOox07X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 23, 2020 at 10:31:20AM +0100, Krzysztof Kozlowski wrote:
> On Thu, Jan 23, 2020 at 10:12:28AM +0100, Wolfram Sang wrote:
> >=20
> > >  config I2C_ZX2967
> > >  	tristate "ZTE ZX2967 I2C support"
> > > -	depends on ARCH_ZX
> > > -	default y
> > > +	depends on ARCH_ZX || (COMPILE_TEST && (ARC || ARM || ARM64 || M68K=
 || RISCV || SUPERH || SPARC))
> > > +	# COMPILE_TEST needs architectures with readsX()/writesX() primitiv=
es
> >=20
> > The list of archs neither looks pretty nor very maintainable. My
> > suggestion is that we leave this out of COMPILE_TEST until we have
> > something like ARCH_HAS_READS or something. What do you think?
>=20
> Indeed it does not look good. However having compile testing allows
> kbuild to run sparse and smatch which already started pointing minor
> issues in existing drivers.
>=20
> Yeah... pros and cons... I don't have a strong opinion to keep it. Since
> patch is important, maybe let's just skip this part?

Yeah, let's skip it for now. If you or someone is keen on having it,
something like ARCH_HAS_READS (<- needs better name) should be
introduced so we can use it here. But that can/should be handled
incrementally.


--EY/WZ/HvNxOox07X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4pai8ACgkQFA3kzBSg
KbZuMA/+MDdZn6LKAYPb/hGGIvu1E0SYz615wqwiPR0e0E+41UdROF/YpdKyisqD
oMbbHYOilLd2KIF/7Df+LnU4UHjGj3PV7U6+uO2ZHYxHlZHY1jLLk4zaS/2U6IUm
AQ+ItfGt6ShpBeShwTtMTeTB9HRh9Btpyv5fvD3Y0Y5g/u/nTzTx3a9wqnUPQy7g
JNrazF6w1k//66RxU4X1hRj/8Bw50C3Cubj/1CI09BtNhjSECeGXVti9658ujvU2
d10NY4tUyAPw4SL+nbT3BTAQprJLQWa91s5aDBQa3EheulM17deLNux97Sj7lwv9
y2Uhsgm1gEsy2rskMvxeKMr0nj6YfA782FbLY7cCXAApUR2moJqIwM1JWGCY8Oqw
VdT1oPG46f29CeW9JvEv7OPp9WfhODMnvbd22tY2sy9GmsToRqRZV9qfSlRAbgiX
xVJ2UiZT85Phdk19o3xcHAtYXQlzG1PARVkYrEaSN9hd6RHZirojM4WyWNQ1Jge7
5KBdmjzVjj9RBaV1XKxVdoAht6Sghesog5S+k13eB2a/UURXOgOEZX+1M4QfoLBM
/uoguJSkyRXSUUVThcZGXCgu3j6yRVUTBM/ZLDzT5yNgQRzfcdLtuvn0xuUoj+pH
WarmvqCuPGb840nx3XN0POZr30iIus/U+HVCEQw2//9MLEjQh3M=
=iauM
-----END PGP SIGNATURE-----

--EY/WZ/HvNxOox07X--


--===============0858323090847097736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0858323090847097736==--

