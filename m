Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F48B18EA4A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 17:24:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TQC0uidIDE4hF9UecXYKhzserwm8gsZ7R9+qmemg//E=; b=Ql39C9FmIHgTCbwjALbwTN6sK
	B7VEDAxbhaU5+K7YyXb01ZIDWELiElNSp/ZWpQ0dLUcKZqlh6V5Zr6bC/2v3xBe1D3V5llKer2rau
	PwWgrvG2rIkqJV60ZnP0oCwveThpIg+yx7zBdxUkvLJPmCTvBAAKJJ1lwEbq0GNqdJ2e8eYHJVEd5
	nl4sQAmFyyK7b4q0nGF5iXKibu9Tv3+nuUqs9ZZO1P8t/Hr847uyGEE3t2iPD+pKK9Dy+IeBqh/lB
	dkPKExWJfB5pBGSBYQguSq0taLn3a/dXIPrj9ni48Cf12dpb8/pU2n0hn3hjopmSuHQ+YlGAwYIgX
	tVDeZSgcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG3ON-0006xS-31; Sun, 22 Mar 2020 16:24:03 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG3OE-0006xB-9h
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 16:23:55 +0000
Received: from localhost (p54B33042.dip0.t-ipconnect.de [84.179.48.66])
 by pokefinder.org (Postfix) with ESMTPSA id 8EE862C0064;
 Sun, 22 Mar 2020 17:23:53 +0100 (CET)
Date: Sun, 22 Mar 2020 17:23:53 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH] i2c: mxs: Use dma_request_chan() instead
 dma_request_slave_channel()
Message-ID: <20200322162353.GE6766@ninjato>
References: <20191217074505.22527-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
In-Reply-To: <20191217074505.22527-1-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_092354_485397_BF40579B 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, vkoul@kernel.org,
 linux-i2c@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7357709178678820166=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7357709178678820166==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2qXFWqzzG3v1+95a"
Content-Disposition: inline


--2qXFWqzzG3v1+95a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 17, 2019 at 09:45:05AM +0200, Peter Ujfalusi wrote:
> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
>=20
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
>=20
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Applied to for-next, thanks!

This driver is looking for a maintainer! Not much work, but still. So,
if someone who reads this is interested, let me know.


--2qXFWqzzG3v1+95a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl53kRgACgkQFA3kzBSg
KbYpww//ZHuO+vdrwCU/8+E79GAmZOvtmFZavOMa97NDWrNFFvB/RoP2gZPhEoZ3
irMqPrbs9wRlFp1/17zvEfdvTcd/SaG+Eo2/eYFcEu+JTzZ6+CRkqv8VrDfCTKp/
U4KRE9qnn0bQCSlU/PqqnBGZLT/M3UIZBpZETd1woCbry/jb8vtjUhXqOi9fiRvx
7a5N22vNRR29NmafmjOnppWh/GQJwF369apaF/0vXCK09hB98nPCrX9XdJqxfPZZ
eWACcwoyPxEA1KednREw2Si7jqbMNosEdsfN2/+GJZlQstMtDoye6du6JkoCOeOv
XtlHcIX9gC5aViQWsOoxdOAPnCEH3EN+xa+lDveOCwVQSUtyQlCmoCE9DbsNwQCH
1W80a8O4ktMG9KSeWmbjsGmyZOoxE3Oxj8Nwwebp7Fk535GqjXIxZGRnxA0Kynm1
XJR4hcZJvLVzFEG/3yhLtS7meSoXmiVHmmSgRsHFvownE/K3RllREHlOxe4e+18x
zj5j+9BUhDwUuaXlLU7JUcp8RXz0d1cJk4YWdmQqkz5I0KA/TzPORb5V+mrsNM4j
WXaaKFd/LTu7YszYxtes38skel/elO8rH4ONRf0l2JGyQ6iq+xCvJOBNEB4PISi7
vShJaiIv7ez8UE429xH3gzbapalKxjZld+602Obn1ssavQiynyU=
=N00J
-----END PGP SIGNATURE-----

--2qXFWqzzG3v1+95a--


--===============7357709178678820166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7357709178678820166==--

