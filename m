Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186B52AB95
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 20:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p7whc7yi8dql+XutKtmTRhb7JRPsc1iRS0cXJ8ekObk=; b=YPm8rjWGDCNWrAf8titbepP9a
	jsAKDPQBPawcQjXrvQj+o3mVFYD6HapS1MztxKEAZUPH1qIgs3nMw5xLmR6naLxU6xAE3hdMTVqug
	VFmhkKzORDFrfreyXqlrdqb20oRjYnBOLrfGmjBVK3RqN2axO/dKSUPhHoz5YPHaGcxVUNg5/4jlz
	TSyjNxOAvVR918/v2tccPxGlP28mVzMXvGq84dRGGU+3GWy7DPtlv3wilafkcvQ4IxQs3LhnnXZp0
	I84qrKg9i9+z9nSe6kqscgyPKUH9YDt6n6DXmmLI+Ft4Pkgfkm8+UDVe5PiB7rhCBY7+2wPsz2OnV
	SZOOMrdbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUxo5-0003Ho-Oo; Sun, 26 May 2019 18:23:41 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUxo0-0003HU-10
 for linux-arm-kernel@bombadil.infradead.org; Sun, 26 May 2019 18:23:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uVbfJLvHTTvvEszDRktFpGvSpFBY4OxaxAKX4WdST/4=; b=WvKDy0cprVaZ0AGcu7sYaTgxs
 KgYul1p5Ir7y1sY56xvUG9sbC3k0uLW8gOoTdAtxEJyg6V4VR0BmHZEP1uGCdRfIlKf6XPySKsnTB
 2slBRmq8v8yzyAY3uNMBqZvytFog0VNyjMnBJej32LatkdK7CfeECemdxY+42pgO+37Otto16UKG9
 1UuP6q5EbVv8Whqs2pY8rp5yCC1AogB42rTB9JA/UEmjrZHCZoGvX3cBFD44ULNJKaNIqEgBGZC1j
 HjkZunRipUES0iTnROhWaLb5DdWWsXlivEKwMhzqqiTECn66h35Nb+tWHJz9lQJIEB8uA8Qr21B9m
 JqZO0iH+A==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUxnw-00051N-H2
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 18:23:33 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 7CA4DC0003;
 Sun, 26 May 2019 18:22:49 +0000 (UTC)
Date: Sun, 26 May 2019 20:22:49 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 2/7] ASoC: sun4i-spdif: Move quirks to the top
Message-ID: <20190526182249.nx7ql7bghzuah7rd@flea>
References: <20190525162323.20216-1-peron.clem@gmail.com>
 <20190525162323.20216-3-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190525162323.20216-3-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_142332_680878_2EE83BEB 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -1.1 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8032984834590049836=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8032984834590049836==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6o7q3ljfvpuo6cyn"
Content-Disposition: inline


--6o7q3ljfvpuo6cyn
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 25, 2019 at 06:23:18PM +0200, Cl=E9ment P=E9ron wrote:
> The quirks are actually defines in the middle of the file with
> short explanation.
>
> Move this at the top and add a section to have coherency with
> sun4i-i2s.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--6o7q3ljfvpuo6cyn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOrZeQAKCRDj7w1vZxhR
xYznAQCG1ejGnz0/Amek60TIzTGn7GCQXJ14lwLZt7fBCIsxdgD9FkDn/kl+sLzC
xhVYYDDY3qXuamvmvEtLHOuGs4SYgQM=
=+pbe
-----END PGP SIGNATURE-----

--6o7q3ljfvpuo6cyn--


--===============8032984834590049836==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8032984834590049836==--

