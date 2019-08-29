Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EECA2684
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 20:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dDsmXWCqx+qOt3zQOxh9EbrD3X9NeaucZ/ijEYFOCG0=; b=E8OuQhUTHKnSn2QyoXb2hBEm6
	gkHGWmbEoo7kUgjlWY0XQe0kD2O4eVnBdvo0MaQRhlz6QAYdBmqbuu6kCFgX+goYTlsgUm9fOhqKn
	XNVfzQKBL1iPq1zHT+pNdQPo3fFMDUlBO9QNOm0ng5V6iXmDJzeI4FBlcHw1TKRvPaho5T0yGDAF1
	iVBcry+3/MdE1W4lJWoGTzM4Qm3EdXtgi8XCUk94bYZgD8KOLe9vV+ek0vv4aoULMBgTuuWdMS2EI
	TiJbWmVlNcUKP3dHBSWfJsEV33fzjtjYMOkUc4ok30KZkEwm4nWkQtp2YUyyYEqecihh7F2zcKHJ0
	SRsAWtjSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3PYB-0004o1-Ry; Thu, 29 Aug 2019 18:53:39 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3PXY-0004QP-5v
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 18:53:01 +0000
Received: from localhost (p54B33070.dip0.t-ipconnect.de [84.179.48.112])
 by pokefinder.org (Postfix) with ESMTPSA id 764D32C001C;
 Thu, 29 Aug 2019 20:52:59 +0200 (CEST)
Date: Thu, 29 Aug 2019 20:52:59 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 3/3] i2c: bcm2835: Add full name of devicetree node to
 adapter name
Message-ID: <20190829185258.GF3740@ninjato>
References: <1566925456-5928-1-git-send-email-wahrenst@gmx.net>
 <1566925456-5928-4-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
In-Reply-To: <1566925456-5928-4-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_115300_381632_D8E94855 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5007886936825014046=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5007886936825014046==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iBwuxWUsK/REspAd"
Content-Disposition: inline


--iBwuxWUsK/REspAd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 07:04:16PM +0200, Stefan Wahren wrote:
> Inspired by Lori Hikichi's patch for iproc, this adds the full name of
> the devicetree node to the adapter name. With the introduction of
> BCM2711 it's very difficult to distinguish between the multiple instances.
>=20
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Applied to for-next, thanks!


--iBwuxWUsK/REspAd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1oHwoACgkQFA3kzBSg
KbaAlhAAn9G0ZUGQTYXFyYIW4w3nIISRT1DCe/hw6DNo3JK7fLdbwHiecrA29Vnx
mgsA5gp2kSreMJlkM6TZRt90QdhCbpswa7MS7r2VH7p+WWtRyBsSD3Uerrkw1vSs
dZJcB/8r/RN9XIo1h3sOChGcS4EoEc9U3aPls3XpUloPhY5lF+XPB/suZnp47tGI
OHCPESXRhFzabYbhr0O16X794BSrLFSe4YIYG7zzuc1hErW5qNTWYGSyOl5t6bar
2vYjvZSf1yyBhsXNDKV+/hwy88Gc0K/VHPU8qcfbIPlnpxYV0l6jYev6ArFEkKN7
st1+LZ7+RPyloqf7ZMkEngYf30cmrLG2AbpRViNjKT5ja+augDMs6vPMh5Uac0Ci
mkc3Xt/YIiVEvE6msBplWGQ7FLIhxAWMmUlZxUVzRg9lSJ35ew3j5UH3pcP1gOcI
XpIFMK73nAx3H83CjFvufIxo4XUkcpJIwaJIsqBC1WN9ygEOp+gJMWNnjYzu8f47
ctklX2fcOSkP1Dy1rTY9qrfsHJeDakD1uYA+eQvYZzLN0wS98kpe2fxEgPYL6+Qj
B4kx98BFaadQIXG3Ae1L8ziOGEWQlSZS/3Rbv1Q3m72Fz9VRNKXmCbJOUdUsfAZi
XFD0Ulkuy16WZYA8gCMe7SU4Ntzm/fGERw+4717jqBRVSxv7utg=
=b2WE
-----END PGP SIGNATURE-----

--iBwuxWUsK/REspAd--


--===============5007886936825014046==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5007886936825014046==--

