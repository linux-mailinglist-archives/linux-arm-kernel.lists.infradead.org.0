Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A1EDDE89
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 15:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9CbOgT8zjOcXYZM5xD5J57MTMxJG/4DrDBykEDY0MlM=; b=WZGWMqLzOudlNYq9e6muzF2CM
	y3uqqfG7x5P6mN8Xuw182vpljy/PsWFkTO+AtqsqrWh7kSAZx6DXMcSpJrli9TJK2+EZ32pFcZL6m
	HHG0xQXhR2XKwuZ4aEUa96x4fYn3+GtfwMkVqiQk8VzZnNNygLa4IoJYjkZ2eBzAIL0XMRPT/K2/M
	A8z2Uj10iw+tHfYRvR7CwKgKSUYOqA1AfsmYSQcA0msvBVciSBSmGZmi5OkyN7iBf3FuWHHgr1EgI
	jOsz77plPSIqks2Phh6vInFKRr29o60pnQrwHYx1ZnLUAMWjwPIxP50a2+AmB2s933+cWFxm3Z4O3
	6fSg1p4cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMAtG-0000Qs-NJ; Sun, 20 Oct 2019 13:04:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMAt9-0000PI-0T
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 13:04:52 +0000
Received: from earth.universe (tmo-104-243.customers.d1-online.com
 [80.187.104.243])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F1D82067B;
 Sun, 20 Oct 2019 13:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571576685;
 bh=BaaDNZa2WmdDajtlcOe5NfEpuESOd1YfNMU6+cnGh1g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KLL5FwKkE4nV/CejVY0RNccB3WPxc8ji0b3bduxUuMyld8kk5RojAOV4XNPwg9DIj
 LGIBcDEux2tgEIO9wit3CezvjaPZC9aIf2cK64nYDmeUWIrTmEa6QDyGHQ5DvSLNg+
 kJeY4EXj0bjXdqGwHpclQwt0JTMGneqfO6CQS5wA=
Received: by earth.universe (Postfix, from userid 1000)
 id 9455A3C09B1; Sun, 20 Oct 2019 15:04:40 +0200 (CEST)
Date: Sun, 20 Oct 2019 15:04:40 +0200
From: Sebastian Reichel <sre@kernel.org>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] power: reset: fix __le32 cast in reset code
Message-ID: <20191020130440.k5o5vxwuzb354e7w@earth.universe>
References: <20191015155414.25267-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
In-Reply-To: <20191015155414.25267-1-ben.dooks@codethink.co.uk>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_060451_090937_BA90FBE8 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@lists.codethink.co.uk,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5429995743883431062=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5429995743883431062==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r3yb7dqh5bru6ocf"
Content-Disposition: inline


--r3yb7dqh5bru6ocf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 15, 2019 at 04:54:14PM +0100, Ben Dooks (Codethink) wrote:
> The writel() takes standard integers, not __le32 so
> fix the following sparse warnings by removing the
> cpu_to_le32() calls.
>=20
> drivers/power/reset/at91-reset.c:134:9: warning: cast from restricted __l=
e32
> drivers/power/reset/at91-reset.c:143:9: warning: cast from restricted __l=
e32
>=20
> This has made no code changes, the md5sums pre and post applying
> this patch are the same. The at91 should be natively little endian
> anyway.
>=20
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---

Thanks, queued.

-- Sebastian

> Cc: Sebastian Reichel <sre@kernel.org>
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Cc: linux-pm@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/power/reset/at91-reset.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/power/reset/at91-reset.c b/drivers/power/reset/at91-=
reset.c
> index 44ca983a49a1..d94e3267c3b6 100644
> --- a/drivers/power/reset/at91-reset.c
> +++ b/drivers/power/reset/at91-reset.c
> @@ -131,7 +131,7 @@ static int at91sam9g45_restart(struct notifier_block =
*this, unsigned long mode,
>  static int sama5d3_restart(struct notifier_block *this, unsigned long mo=
de,
>  			   void *cmd)
>  {
> -	writel(cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST=
),
> +	writel(AT91_RSTC_KEY | AT91_RSTC_PERRST | AT91_RSTC_PROCRST,
>  	       at91_rstc_base);
> =20
>  	return NOTIFY_DONE;
> @@ -140,9 +140,7 @@ static int sama5d3_restart(struct notifier_block *thi=
s, unsigned long mode,
>  static int samx7_restart(struct notifier_block *this, unsigned long mode,
>  			 void *cmd)
>  {
> -	writel(cpu_to_le32(AT91_RSTC_KEY | AT91_RSTC_PROCRST),
> -	       at91_rstc_base);
> -
> +	writel(AT91_RSTC_KEY | AT91_RSTC_PROCRST, at91_rstc_base);
>  	return NOTIFY_DONE;
>  }
> =20
> --=20
> 2.23.0
>=20

--r3yb7dqh5bru6ocf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl2sW2gACgkQ2O7X88g7
+po77Q/8DXDRvmluSTIuWXt4yW2I8ioJJsNAyPINMtbsKQWIp6yoMWWgsFlQtV74
nWgBHDRsViRUsqqLzcSYEdnJ3rQDUoTpovAg7HqaQi9xuJ9XtOwUJ2+DHEq8MGj/
dml/EwfXMhKfS93+odQFgappZUvpucZhbqtqFQ7x5ZhzeRBdepnjU8BvqKMJEMRJ
/n1HfVW9CX9Zy81Cber5c5AV27YXHpKrftImAQ4fDxKDDL9iGarOIJmDxEpRl+vn
xR0atYdvh4kPNZw/NYEF6JHAk1E2uoctohI9zURrbUDKVHj44QiwNuOOZtnKEm75
p1mj6NiMTcPNXg0r4wYlZNyjsuFqL3lEJYEHoMW5yNJYocj78t3cEu+sN/zLGRLZ
vogOiSoO6ctMezShxXZq+6eEOcA+3EPASEb6BOI/hKgLANzrQkwzD3xlVS771ynq
E/paOFVeh4qE1xuyloS7/nMzBsPO2i/hDXACNK9EjsNgqn17LUFMHEod/tDng026
Vbk9JYMndymgnnDN6UcdWBRww3UxzCWoS9L1XlHxD171+urfTw55HDGwKGvL+u4M
VJjfpHMA6ShAIjtSgPgLz9lXR9mQAlXemw/BSR+KFs8/Y1YpOHdHmd/oArR0NYBE
1rt1766kCtdOZ2/Tw6fntCh/yERsL5N124Q8Nvgv6fCxQnhwnZA=
=kzwk
-----END PGP SIGNATURE-----

--r3yb7dqh5bru6ocf--


--===============5429995743883431062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5429995743883431062==--

