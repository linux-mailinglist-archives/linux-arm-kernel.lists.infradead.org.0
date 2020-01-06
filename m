Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953001313C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 15:35:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XXV+wxDbIiClR3e5Ccei9Io3LFI3FyswdQm9wMGgOck=; b=VZUi5EjAZi4bPFsdH0ky7YuCh
	C21em2vckcU1MPoECwQR1R534wFqTKcoTwyK7fKGHj9qkR5fnNndml5xffCzDjw/Zy80zAekOIlNT
	gDz0B94rElveXx/3q+SiYFC+58XVXmPe8SSwWQIjCU/NcMwPWsBECt34wONGDebVtk6QkTSLiOhPC
	TAOzl5sqXGm3WHMKa27XooCSmFM0Smu13FhXd9QBbSmdRu5FkufC4VyGIynPbijIArvFAbQAe3KDO
	IQPj7McVYu+rbAukgPp05+tfuozk0WEa68xgOzv4LQjsHA0utkqBs7ldaDr4eVAFv2KrQL3X+Lz9I
	73K96rg/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioTTq-0005bs-82; Mon, 06 Jan 2020 14:35:42 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioTTY-0005Y5-82
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 14:35:25 +0000
Received: from localhost (p54B338AC.dip0.t-ipconnect.de [84.179.56.172])
 by pokefinder.org (Postfix) with ESMTPSA id 8748D2C3939;
 Mon,  6 Jan 2020 15:35:23 +0100 (CET)
Date: Mon, 6 Jan 2020 15:35:23 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v3 3/4] i2c: at91: remote default value initialization
Message-ID: <20200106143522.GE1290@ninjato>
References: <1575886763-19089-1-git-send-email-eugen.hristev@microchip.com>
 <1575886763-19089-3-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
In-Reply-To: <1575886763-19089-3-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_063524_441911_51962459 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
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
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org,
 Codrin.Ciubotariu@microchip.com, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1058736018273586198=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1058736018273586198==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ExXT7PjY8AI4Hyfa"
Content-Disposition: inline


--ExXT7PjY8AI4Hyfa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 09, 2019 at 10:20:05AM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
>=20
> Platform data structs are initialized by default with zero values.
> Thus it becomes redundant to initialize them manually to zero (false).
> Remove extra false initialization for field members in structs.
>=20
> Suggested-by: Wolfram Sang <wsa@the-dreams.de>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> Reviewed-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Applied to for-next, thanks!


--ExXT7PjY8AI4Hyfa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4TRaoACgkQFA3kzBSg
Kbagqg/6As3fDG4Iew73Uzbcyv+kp15feuCUauZDWD+l4BIlWjKtEJe1IYMwsdm2
DNXgWDRrosK+AZWMfxDKxa3DCQ3GfYmo0OeVDM/ATCiZUmH4p56MNNW0JoGTb5MX
85d8qCAZQVD9n22KZw14MImJYlyE+eDlKeyCWA1L97K7PcQKmRmHgU6+UHepjZH/
dY9fgr9P8FL1HJEsVAJwCqAla43F0jV0zXxVwA2avGR45ZaiHwrl/vHC26FyNZ0Z
VPuWQ4Ya8gqfmZhJejxOt2zkhrJWLX5h4dseDuVQopAbhEXnjZV39cEiQCmHxnXF
cB4EZrmCuIGe/cw7Sn5z2hruIQKyF75kJdyOTmqOqTvKN/USyHxU7DTJntIh0yv9
D0ujd9s2O10vJXqCYH+mP3RLCkPzfpaCPekNkVsDoW+EXbCuOr0v/NcoKTqRcH5K
qEOUWTwn63Bobpf2GWtbl1VBwnu2aSyd/w2TViL+SDL4AF09ERPoEFoRwXctA5+7
kNMTPbdwQeBR4iq2k/Tx6w3I1IFMEkihNXMV7nacJdSk4zhy7/F0rDC/MwEOsMBe
3QNchHy6xPiCF07ZgMZhQqKD7JNQwj/E7a6HvtpJ9LwUX2iWN4roa1w+jFhLRg6/
8iVzH/RnK5VOKESh7HdR0VyVTWVHcAwQqAW+y5uzy8EijfC4BaI=
=AjHb
-----END PGP SIGNATURE-----

--ExXT7PjY8AI4Hyfa--


--===============1058736018273586198==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1058736018273586198==--

