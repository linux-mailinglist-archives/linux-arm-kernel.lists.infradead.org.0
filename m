Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D265D6B44
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 23:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8VStDZfKI+w3IXvOYICb+FhRkbnZkeeuqJOd2MUufXU=; b=lV04Yt3nDvuY4zKivLN5UpNC/
	aGOWMf+pexW9Ld82x4bhA78wRY8GABM3PSZgxud0MSLpn1sPT0u4rtAcivmhSZzJUn4QitaflrtUf
	5VsT6w+7EbV4iqrxi1vlM9jYt3G2q/Gw0AxJFiq8LIu1qSeoDjmerrGEgHRjOaAFrA2uGyjpAaztg
	bLuHEhmP7TrVLzCT59F64UySrqeQGkCsy/XDahRgJ+HCFw9/LZ1Rr+bC5v9+PZHMnPsOl1apcw09J
	2n0VqiSHaQhHLKG+kjOx5QL2BNg6rSYl+qShsyz7BJhyneW39JthIaxA/ZupQO3kwXj0pPcmLKge/
	PQffOoMAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK7rl-0003nb-1Q; Mon, 14 Oct 2019 21:26:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK7rd-0003mZ-Iq
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 21:26:50 +0000
Received: from earth.universe (eth-west-pareq2-46-193-2-41.wb.wifirst.net
 [46.193.2.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC19121721;
 Mon, 14 Oct 2019 21:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571088408;
 bh=Rz8xhmL935mXLtSudYn8Yr1PvTUCjNWwAoCjj8yI2QU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RtIJQllrBy84L7sEf7yZJPleBJieDdrmJp+JZFafMLwgj1hir8qaGHMg7mLI57x7b
 feOHpfR8QSh2iK5kyt430OLvgPI9KQNfF+dBkXYBfQaenzFnRWbda/23AWQXGn2Uyw
 xmB8qrjCC2yS7grSoCGzYdRaD4lOSwxi5njohQ0U=
Received: by earth.universe (Postfix, from userid 1000)
 id 1147F3C0CAA; Mon, 14 Oct 2019 08:59:13 +0200 (CEST)
Date: Mon, 14 Oct 2019 08:59:13 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH] power: reset: at91-poweroff: lookup for proper PMC DT node
Message-ID: <20191014065913.k244l6gdgfiu4jsk@earth.universe>
References: <1569493537-7612-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
In-Reply-To: <1569493537-7612-1-git-send-email-claudiu.beznea@microchip.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_142649_665678_51F8066D 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [46.193.2.41 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alexandre.belloni@bootlin.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1253646414836440357=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1253646414836440357==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d46ovw6gybmflark"
Content-Disposition: inline


--d46ovw6gybmflark
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Sep 26, 2019 at 01:25:37PM +0300, Claudiu Beznea wrote:
> Driver has been enabled also for SAM9X60. At the moment the patch which d=
id
> this has been sent to mainline the PMC for SAM9X60 wasn't integrated.
> SAM9X60 has a new PMC compatible (see commit 01e2113de9a5
> ("clk: at91: add sam9x60 pmc driver")). Do to this we have to
> look for proper PMC compatible here, in SHDWC driver.
>=20
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---

Thanks, queued.

-- Sebastian

>  drivers/power/reset/at91-sama5d2_shdwc.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/power/reset/at91-sama5d2_shdwc.c b/drivers/power/res=
et/at91-sama5d2_shdwc.c
> index e341cc5c0ea6..1c18f465a245 100644
> --- a/drivers/power/reset/at91-sama5d2_shdwc.c
> +++ b/drivers/power/reset/at91-sama5d2_shdwc.c
> @@ -269,6 +269,12 @@ static const struct of_device_id at91_shdwc_of_match=
[] =3D {
>  };
>  MODULE_DEVICE_TABLE(of, at91_shdwc_of_match);
> =20
> +static const struct of_device_id at91_pmc_ids[] =3D {
> +	{ .compatible =3D "atmel,sama5d2-pmc" },
> +	{ .compatible =3D "microchip,sam9x60-pmc" },
> +	{ /* Sentinel. */ }
> +};
> +
>  static int __init at91_shdwc_probe(struct platform_device *pdev)
>  {
>  	struct resource *res;
> @@ -313,7 +319,7 @@ static int __init at91_shdwc_probe(struct platform_de=
vice *pdev)
> =20
>  	at91_shdwc_dt_configure(pdev);
> =20
> -	np =3D of_find_compatible_node(NULL, NULL, "atmel,sama5d2-pmc");
> +	np =3D of_find_matching_node(NULL, at91_pmc_ids);
>  	if (!np) {
>  		ret =3D -ENODEV;
>  		goto clk_disable;
> --=20
> 2.7.4
>=20

--d46ovw6gybmflark
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl2kHMAACgkQ2O7X88g7
+pq7ohAAmySmtlvTEoMtu+Eg6ZkyLhWE91QzJjC093TI4eHPf9Qq1kRKpJvzf7w4
ft7/1dtdHaMh3WZ7QnzcqTRvYWuHqjWQn3vF/gNuuXkCbo0LBUI+zuJozc6+83Xp
XMRehD0muqSMEEPaceJAXw1uUiTn2oygLr5mDYBZpZtShk5qF5aNBRWccf8V1Npj
ZeZOj/whAqHAR5ixz3XaKOYuC9w5LWn63IrmTCtbWeJkuR3pfcjSJJkOH9MH3TYR
TipTLYjdsMGfrT6YWAFH/ay5dKKUALWYnyxkAwyis/BZuaxtUuJwLuEpXAd2WO6Q
qBrAI3XMeWvf2csWXiJ/o6Dp1TnPWh4bNwaBM3McBNbgWdPNpfYZxH1db/GpXbds
ipP/ntBN/DKtQ07VfK/2JziQ3D+bR7fi5aTueLo+5+WtzlV/poBLooTWVMRWfRQn
ljaAUWw4EkIy2W97u1/u4ZRQHbNw8FUT2zn/zlOaDDA+HGMYU0etfb7aaY45QCUe
nzQaC+QkMvKLFJe+LYnkN7ZP+Aj28pP+A4Bejc14qN4p7PHwqPWHTHF7v/SfKS5T
xXc5lezAd+uBvTZkUpXEFBw/lW3RJFgF4HbiOaU6soNYW6IhXOgKrn57GYPuOuZE
XYk2VReN/wl+jhjh96z3rM51pdkSJT9eOOxNhOQTs3diaOvsPBY=
=lBa6
-----END PGP SIGNATURE-----

--d46ovw6gybmflark--


--===============1253646414836440357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1253646414836440357==--

