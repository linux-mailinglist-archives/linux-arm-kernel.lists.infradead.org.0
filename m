Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA3E880A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 18:57:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FiC1gZao3+7CGp62iWAle8s+vSYGof/9wS7Mdt0cMgE=; b=gxuI3xLCf2133OY4pewcZyH7/
	cUFpn/BgTUjaCirOT7m8M91sPsUzrq1ot/OK9EeQZ+AWwBar/vtbz9ztUay2rv+qBkLoiuRBWVSBy
	U4a9uAbzqu9u/hBRvMwd52x/mzDh+mVV1FjiVlFMY3KdW8sngtzdlkTxUBO/4aqC9ZYAkkxUOKtwM
	iUIbSRi5jyYSxwPtBJtJKl9VkpdE+k9dlNsO3x7yLq4CQOokUS54nG4VUeAsW2F3HDYO3g2uAoW/E
	x17Ipas5djZDPCKU7RPlgJ9mNJjo6w0WZ3F0BzKIRBrHDaK6hNV9BeopDFu9t4Wkmp7/na7WeotJl
	lGgqt3Vtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8D1-0005x6-3w; Fri, 09 Aug 2019 16:57:43 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8Cr-0005wJ-1J
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 16:57:34 +0000
Received: from localhost (p54B333D4.dip0.t-ipconnect.de [84.179.51.212])
 by pokefinder.org (Postfix) with ESMTPSA id CE01D2C3014;
 Fri,  9 Aug 2019 18:57:31 +0200 (CEST)
Date: Fri, 9 Aug 2019 18:57:31 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 1/7] [RFC] ARM: remove Intel iop33x and iop13xx support
Message-ID: <20190809165731.GD5099@ninjato>
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20190809163334.489360-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_095733_227878_02AB7EF5 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 linux-i2c@vger.kernel.org, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5836483378488815178=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5836483378488815178==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ycz6tD7Th1CMF4v7"
Content-Disposition: inline


--Ycz6tD7Th1CMF4v7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 09, 2019 at 06:33:15PM +0200, Arnd Bergmann wrote:
> There are three families of IOP machines we support in Linux: iop32x
> (which includes EP80219), iop33x and iop13xx (aka IOP34x aka WP8134x).
>=20
> All products we support in the kernel are based on the first of these,
> iop32x, the other families only ever supported the Intel reference
> boards but no actual machine anyone could ever buy.
>=20
> While one could clearly make them all three work in a single kernel
> with some work, this takes the easy way out, removing the later two
> platforms entirely, under the assumption that there are no remaining
> users.
>=20
> Earlier versions of OpenWRT and Debian both had support for iop32x
> but not the others, and they both dropped iop32x as well in their 2015
> releases.
>=20
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Wolfram Sang <wsa@the-dreams.de> # for I2C parts


--Ycz6tD7Th1CMF4v7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1NpfcACgkQFA3kzBSg
KbYo3xAAoUFahZppsWnQT+posnK7OdanH8eP9bFsX9jA3vLm1Z8xByrQrxVnTPYp
97VYfI7Czhue+5wf/ceACt4Q3XkAwKIQXkcqJgdBFfErPboWdL6yvrvIHhLbnfRr
HBw+/UiJSf7MisT3PutST0VFWRgJ0sv4LphNT+qbRDnX+3olTmhLax9NeETmzvBz
2MNNUTTerfJGsuORhlubz0TKccORwFqKERhq/NS48U4qdJnHcROBaMd/xyX37YEx
qBTS7eC5XWD4QiXyG6386DXhoLJi47uBdVuOTde1QF9Vuif/454Gg7uyenHpHndF
7hGT/5wSCKLFaFJJi1GABp2addD3DYdibkM2rueAbjCjb8d9g6YNFhuDOnSR2L+n
aV/QXEyTUe6j8JaX50cEeAPLAJ5MjqGRU9csYB16zfTpsty9aPkaEr75eiK+XTjt
wo6glb84+WYdsX7PZKbzYXmLpoFZAx1zkycp3Cf4DA0fxaDmYVDts0plkwQ7AR5D
jPG1Q8qxby/Y4yPceGfKHzV0MkMkrPSEDZEeg2NpnQiVRpvRR33okKu6xftMGxc1
4Z6ovgHtXBP9PUGOcdn0AmGHDNsHDYBEfCQDESQlwWaDEC9Q6IhGD9UTjsnUjLSj
AwXK137vfKLiWohLLeZbrWquBKJoV6vBJ9ByYrMtgRadv9qA5/Y=
=zEyv
-----END PGP SIGNATURE-----

--Ycz6tD7Th1CMF4v7--


--===============5836483378488815178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5836483378488815178==--

