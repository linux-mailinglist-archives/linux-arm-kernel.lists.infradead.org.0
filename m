Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8F5146436
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:13:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5nCwBpQaq+dd55TM1uq05oaXNHuQS6/gDBJoliDHDck=; b=pAUqZuOzW0b2BKtBLyZj4NubA
	bsSjBKs5v5Qkr6CQIDODv7YyI5iIss9JahkbvJBwOF7NxGozgZ0Ljq0qIOso2xNdBNwX4L6bNNm2D
	15QLV5IWVg629NQChgeqwNG6GF+Stl+X7g+D783ahC6ybWMWrvIcx3citZxtcbtCS6pvyy3BgZPsG
	d4bI24V6XuhESrpNZ3W10+p575fmIb16Fcg7jP/lW/miTA6K6JMqNGJyUWMCcLNtWNPDXmmch/18j
	pjL3zhFNSmxDvTos/g2vsGb16emlOBw66FpInBnm4uslPhg1cCWCD9GNNpJAIkE5ATCzzjUroj2wI
	EIUjZ1KbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuYYj-0002bL-IR; Thu, 23 Jan 2020 09:13:53 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuYYP-0002an-QJ
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 09:13:35 +0000
Received: from localhost (p54B335E9.dip0.t-ipconnect.de [84.179.53.233])
 by pokefinder.org (Postfix) with ESMTPSA id 219732C084D;
 Thu, 23 Jan 2020 10:13:33 +0100 (CET)
Date: Thu, 23 Jan 2020 10:13:32 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 2/2] i2c: exynos: Update Kconfig documentation
Message-ID: <20200123091332.GC1105@ninjato>
References: <1578384779-15487-1-git-send-email-krzk@kernel.org>
 <1578384779-15487-2-git-send-email-krzk@kernel.org>
MIME-Version: 1.0
In-Reply-To: <1578384779-15487-2-git-send-email-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_011334_006670_0281F046 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============3752467838028434114=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3752467838028434114==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kVXhAStRUZ/+rrGn"
Content-Disposition: inline


--kVXhAStRUZ/+rrGn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 07, 2020 at 09:12:59AM +0100, Krzysztof Kozlowski wrote:
> Update the help text to reflect current support devices:
> 1. The Exynos high speed I2C driver supports Exynos5 (ARMv7), Exynos5433
>    and Exynos7 (both ARMv8) SoCs,
> 2. The S3C I2C driver supports S3C, S5Pv210 and Exynos{3,4,5} SoCs.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Looks good. Let's discuss this one question of patch 1 and we are good
to go!


--kVXhAStRUZ/+rrGn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4pY7wACgkQFA3kzBSg
KbbvYhAAmjiDzasn0PDpK65/wMOnzkWYqdzFwh1bqfUK552YcJ0lkmQSNEVJQrkW
myLYK9FMub2vahd1vJLev1Wncl8v9yP6uckZyZkhtnshpyKwR1vPC7YuekA7qC+T
xuw+yKLtrECDcYqPbIrKk/KcTCkBDjNW111vJxKTkteOjnF/hZCEKjJrJ3eQz9tH
HoDEm0Issq4KZDjDHpDw3dQhXkYRfMwKQir3V/RFnAGufUtTr3aW9POipDiDu3W2
pmYwOkNq8LlIDMntuOhNXeUQg6TUTA8BOzmAbbQeoBMvktlATfJY6aahOpuydkbt
uncCCGVV1esQI6zo1gGcChwvP4h+XynXJvTiXy/DjckpI1ubrGpFR5MKWCM/ZrRR
/dyHzvFKtIYXmOj2Qm/Up4nmjuOBSlhhRB1UhgaB4N3j8UJgRniHjVUpx4f1FbmD
V1D8GzyyDtMZhlhw5+wm+wI4WxnzvWNEe1e2i6ED1cQYnzxPXS0zsJFvwFSJONAt
xMYSqPZq6f5dr5PO3SifbcoS7lrF8v2K1Av67V7/nvIkahlZfZxRjHAgaVBqj1zW
86+Ur8gVcsf/BNS2FdZSS/kKq5LBFFKM28Qth/BPhow4/5wSeYHpKV7/hr60wQeO
dMnAljdZdonS88DTyVHC/aarLq7pDWEZt6pQ/CUQKoJW7v7mhgk=
=yZ3g
-----END PGP SIGNATURE-----

--kVXhAStRUZ/+rrGn--


--===============3752467838028434114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3752467838028434114==--

