Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFBC1B8DBE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 10:01:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=avhInuJeeFyvDppWfqCPX6HZfTcOKfcTp1fTVVE+AEI=; b=slcPDxtJml6py4VbSZAcCINS2
	epACAwfwkZNSjP3Hk3UClV3yNkILZQ1Iggaj6wzydg5msltKG17UkgP8d49lfEQnVxmSTOe/+0gie
	XFV/vQjYScMqNKE8Z0hJWMTeVS37dG1mDVpjqBUfSRjXEV4oRnccwYkPnZkPFFQ3rqeCAdc03SSJH
	4Whn0MhqIOBtYA+NZNPiuT0ZzK1OWKK1z8+K8WKJriGfI3OPN/Ja6GsX4iN2oMEP5w1vFbb0ARsj1
	OQJHKonpA1abmtay6pqN71NbTTdZakgwB1dffBSa9M2xw7RohgsI+5XXF7H/0V3BEMZL1kIWOjH75
	im5KfIWBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jScEG-00029H-OB; Sun, 26 Apr 2020 08:01:32 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jScE6-00028m-3Y
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 08:01:23 +0000
Received: from localhost (p54B33954.dip0.t-ipconnect.de [84.179.57.84])
 by pokefinder.org (Postfix) with ESMTPSA id 5199A2C01E8;
 Sun, 26 Apr 2020 10:01:21 +0200 (CEST)
Date: Sun, 26 Apr 2020 10:01:21 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: [PATCH] i2c: brcmstb: Fix handling of optional interrupt
Message-ID: <20200426080121.GG1262@kunai>
References: <1587850687-23675-1-git-send-email-stefan.wahren@i2se.com>
MIME-Version: 1.0
In-Reply-To: <1587850687-23675-1-git-send-email-stefan.wahren@i2se.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_010122_297802_60EB3412 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7841057142926510375=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7841057142926510375==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JbKQpFqZXJ2T76Sg"
Content-Disposition: inline


--JbKQpFqZXJ2T76Sg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 25, 2020 at 11:38:07PM +0200, Stefan Wahren wrote:
> From: Dave Stevenson <dave.stevenson@raspberrypi.com>
>=20
> If there is no interrupt defined then an error is logged due
> to the use of platform_get_irq. The driver handles not having
> the interrupt by falling back to polling, therefore make
> the appropriate call when claiming it.
>=20
> Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Applied to for-next, thanks!


--JbKQpFqZXJ2T76Sg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6lP9AACgkQFA3kzBSg
KbZ7iBAAjYBS14DsJeRROcVmhMYxiz/wh3pq/aNyN2EI+5xwzBolb/pXu30Y+8dZ
tQwRgKlsBHyWN5qoxYXGh76KFA4joX3p7biO5BiltTMVmumC1OvSsk9V0+7dcUeT
mnzEHmPRTa3cqNQvOy+EraIQbH+NnMLmOLSZ1Ot542bcn/pNB3GOrkfP7vsoIGzd
GwGnPsJMHTx7sUXjGy1j4Zn0YFstyImNG/ie1EetWZaQgTaxnjCTKBVQqeaYKYvU
Nr+y0j7JKaxSw2KEI1V6JGAEm8f4ZcjeJd7VvKxfj6dii/8egghskY1l6AAsIXib
vNgmqyhXPTXluNjQL50HAI1FRr6DUx8+uEOgmR5VVmcS2L2NAlfy8wjcFhmyDqN4
SOpPPLbHTSHlCcPXYKV6YWDwBLMR5SxHXTalbkkO1kBA8zYyeFN9dxRh3NFkClBP
9DCtXcN2v9qKcmDd88ZH8ZW3bT0AvqyEFrPOGCYcz+53m7izoTWG9sasX8GoqtaX
1Zh8yV1gHPFyyXI+ImAFhPVkd7kKHxcn8cOKPibO6+MuqwJKOJL/OZfS00/f+o8a
qr8esQzZPu2cMMuNiJRksBpK8E8OkpVk71HNXJIbocTYFOCng4VIhcrRsBmqqd3t
PbskfWvLXn6vWcKAevg2QmFdP6/bzLa/wey3yJ60h6nzE99IdhA=
=HQQR
-----END PGP SIGNATURE-----

--JbKQpFqZXJ2T76Sg--


--===============7841057142926510375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7841057142926510375==--

