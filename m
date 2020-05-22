Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D29E41DEB6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:04:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EIaP2tzas+KcrOmP5rklZmXNxZ7laCR3YKhmqnVCKhE=; b=DC0SLLUQnEY7OtJJZ54Z2B5Y9
	v531qIYKN6xUSN9b1qLHnH/9hCaZjlFkz+qj90I7syidjpko+XNlgkO6s+afiDucNBx0jXFOjDcT4
	BQHQegPCdI7H9x8TQTg1WOBC8exmbbRnM3X4yXr2DNPCheJPchQabvwz/zSiHsQ9bDnG0pcDZHK7o
	SU4hN+BKAZE3+ckSqJZE3V5fOGxgZDJElm9+KU/OBxzzAIbN+itGWrSiChaLvP/LfuPX0D3msH2w2
	X92gfpBSlJOfkKyAM8bnLqIiN0d3Hu0JVrMSI2EQQWT3iKwCIX//3Vs+Dbu/kZwlRiLBOQYNoxGLf
	phuIxgsDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9Du-0007tz-BH; Fri, 22 May 2020 15:04:34 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9Df-0007t9-SI
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:04:21 +0000
Received: from localhost (p5486cea4.dip0.t-ipconnect.de [84.134.206.164])
 by pokefinder.org (Postfix) with ESMTPSA id 19DE52C203F;
 Fri, 22 May 2020 17:04:19 +0200 (CEST)
Date: Fri, 22 May 2020 17:04:18 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] i2c: drivers: Omit superfluous error message in
 efm32_i2c_probe()
Message-ID: <20200522150418.GG5670@ninjato>
References: <20200415135734.14660-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
In-Reply-To: <20200415135734.14660-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_080420_068142_5D0D1CCE 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-kernel@vger.kernel.org,
 Shengju Zhang <zhangshengju@cmss.chinamobile.com>, o.rempel@pengutronix.de,
 linux-i2c@vger.kernel.org, u.kleine-koenig@pengutronix.de, ardb@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5020263672095677741=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5020263672095677741==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nhYGnrYv1PEJ5gA2"
Content-Disposition: inline


--nhYGnrYv1PEJ5gA2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 15, 2020 at 09:57:34PM +0800, Tang Bin wrote:
> In the function efm32_i2c_probe(),when get irq failed,the function
> platform_get_irq() logs an error message,so remove redundant message
> here.
>=20
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>

Applied to for-next, thanks! Please fix the issues Uwe mentioned next
time.


--nhYGnrYv1PEJ5gA2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7H6fIACgkQFA3kzBSg
KbbTkRAAp/bBktGb65OPHwU8EoUeqX5rb9FE+CjDg8L+pI2bqEG50BJdokEsKf9a
8lwJ+WL+Vl0gmek9bC4xRuMJ7JTc1rMSi7JaD+4YWvW+JC/KzC3eVO5BVNYV6TJ6
E7BWb0lI3lYm+WMMDOxG1NbJ8SuhpRKPdVdXuy70a0zGk/czf9EyqZDOXvZOXF1P
TASBupXIKh9zB1Fwa4Sl6NoPKhWu4gzgAFfjAwawRumtFBzxCudr3swcdW7XEX/J
ZrVeXj310miDjF4Tqyd8s9ELATGLmYy77I5gRlv7Y6XShCrY07j0+Ae1pHIhc9v1
PP2fuOYPQbzEcDULuxIviCNsOCPjy2tlBn2/CI6nde6vtsvxDQJpyWTejgslaBZ0
MDyRu+Jnhx9othSUHpG9MTPvrjldJLZAxiuLwwQv7YumjbJ21hi1kIXzv8dG4bYq
HrfoDuLI1IPf2fvXWNh32YpSi1jFj2Lxgcl6oXpaffmNwOkwZCdqnJsDibgc4SLQ
7t7oUjtVYV/+sU/7Rjsvv4d5BuDvKnuVJ3vjUgDucQ/kN7YW6PixgwvKg5nwPbOw
Y69ApdUoX3sSAZ/ZSkGMgjh6fsO/ko+FPPAbcAeO5wSWQYkoISCRwfNHQpG1MBNt
fo4wU8PjjtUJ6Tbo0dQLUk6HKOpl7Kihfng+8k4jV7YdShnr3fA=
=TGs0
-----END PGP SIGNATURE-----

--nhYGnrYv1PEJ5gA2--


--===============5020263672095677741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5020263672095677741==--

