Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C31A1BFDB0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zed0cU3qiljCYkBu2yuikmALL6DhTVvsfR4ItFb7Oek=; b=ddabVdkx4vmpZrVq7ArKhwL62
	7SHowP/EUlauuRAtQwL2SuX7j+rWUXIsvuOmlRTvGNy3viY9dAOsxJZKaJFua0vG9RJwlK1j2H36F
	zPQckuuzDpqQWSH7DuT5u0bOxT5G/aBLmX0Dt9p0W5P0vOLmRLOLePtTQavYl4+AxuIUf23pxguLu
	rvEnFuFGKIDPmzHCDauwtODPW2pGcNitDceVuGz9XRC0ulH20FEMv9PftIEUTSMhPm4HaBhBl7Sn2
	yoCg+YRfbNL3/070gl5DGBtPmBQpVdxqJBgvtYHy/sPQpeJ0hzJ3wFSkXiWgTHax2R+N7QFc+brNM
	zJls5W1GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUA0C-0000To-0T; Thu, 30 Apr 2020 14:17:24 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9zu-0000ON-CH
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:17:08 +0000
Received: from localhost (p5486CDDB.dip0.t-ipconnect.de [84.134.205.219])
 by pokefinder.org (Postfix) with ESMTPSA id 865B62C08FC;
 Thu, 30 Apr 2020 16:17:01 +0200 (CEST)
Date: Thu, 30 Apr 2020 16:17:01 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: ryan_chen <ryan_chen@aspeedtech.com>
Subject: Re: [PATCH v0 linux master] i2c/busses: Avoid i2c interrupt status
 clear race condition.
Message-ID: <20200430141701.GC3355@ninjato>
References: <20200429033737.2781-1-ryan_chen@aspeedtech.com>
MIME-Version: 1.0
In-Reply-To: <20200429033737.2781-1-ryan_chen@aspeedtech.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_071706_582485_D5405CEA 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0300273201972299178=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0300273201972299178==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1SQmhf2mF2YjsYvc"
Content-Disposition: inline


--1SQmhf2mF2YjsYvc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 29, 2020 at 11:37:37AM +0800, ryan_chen wrote:
> In AST2600 there have a slow peripheral bus between CPU
>  and i2c controller.
> Therefore GIC i2c interrupt status clear have delay timing,
> when CPU issue write clear i2c controller interrupt status.
> To avoid this issue, the driver need have read after write
>  clear at i2c ISR.
>=20
> Signed-off-by: ryan_chen <ryan_chen@aspeedtech.com>

Applied to for-current with a Fixes tag, thanks! Please, try to add one
next time and please also check how the subsystem formats the $subject
line.


--1SQmhf2mF2YjsYvc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6q3d0ACgkQFA3kzBSg
KbaoUQ//QVc//2TXd44pz2LgsMx+qUkEgZNrrJKgAGlXr1KGtLR1Km4XWzGzEutz
cQCYsZtGWucGPt93oJeSXYx9FWagTYPrR47XbX0U5gCQyVY7XtQc4Wj9LXFOgfi4
c/QQVEAtO38HiNGcWumxxc8Td57nbEuvDfMQltBqsuNXeo4BDLl39xvbzFIWHVDE
9D4Re0pWNf4Y4sYFB4kR8hHdaQkYfki1jE0j99sXskuC6pMcVzSMKUIzrISs4BAe
LUCDcrSFokr1W0eqBT6uFvHk4SErXjY0OH+jWxugBXgVliAvSER22FBg2kwqvHC3
fH9CGDi7Ns3RdOoW7d9bTLiHgeaRLBbmTUyuzzKOgXrBJqBnT0AucMfa+X6Is7vC
DS4ojD5tVuP3cMQb+sqVxufPIDPVGRXd7Ee2upMtkNNrd9U6W1cun8jPto6hg5Zu
G/llTNEsGQaYXrSNXJ6mO3p8BL2EhhvSyaOCItGWKvzGudpNCIR47bMiobK1mZwM
F/tkz9xTiXnNipwRMmoQwcon/XoDdVcMs6VoVRIdKk0llGks5kfuZA+zTqc2Kv+h
UvuYl+dTFHH9QEbVN/guogoINdM+Fn0+NMaZWcg7D09tUxRFbbRB/eoyD5q8ms7n
O/NsT911s4Uw1axbcH/+iF4Ys1dnQlRuDglr/xiqogiibdbkfTY=
=f9co
-----END PGP SIGNATURE-----

--1SQmhf2mF2YjsYvc--


--===============0300273201972299178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0300273201972299178==--

