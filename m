Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFBC13CE4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 21:52:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fK7X1QhIGXHDuk65Ntw6SnIS+ccHjtWv5bszArBfpE8=; b=elbkjdiMO2YxOnZfw0xhjUJF/
	rb9Jq0wtkUmQacSfMtmjhNFMSL1MvnvpFMfEg2jEjXYanENrSnEe4oqFzepgSdj+Q5MTirg4WTpUd
	Abczmq6vKHywB42gjd7mmxZltEdULWywwORAbFU5w3vD3meV3XuCntPIzOqy2cbXkIt5XKrkiAGMH
	aHX+lqd7WazFXjPy4NqSQpHdzAgn+Uq3yBMtf/8gKoLcL5MpvGy0UNmGy/F5xGzy/osJ9lV7HRgor
	kKmOFZKzV/x+yszzVxNRU0dqBUqYt/WvUP71WZr5341Dc36C7UMv3itUQOgmRsEz4GDSWdQYzG5PT
	Is4MMtyGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irpeP-0002oY-It; Wed, 15 Jan 2020 20:52:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irpeH-0002nh-7B
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 20:52:22 +0000
Received: from earth.universe (dyndsl-095-033-170-011.ewe-ip-backbone.de
 [95.33.170.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C1AE2077B;
 Wed, 15 Jan 2020 20:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579121540;
 bh=YAMT4GqllrslSkD9BR0wa3v1n8fnVFdaxgMWcQCGiFU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KR2jHDWtMzKMC7+luRtgc6uzI7E6RL2RYXkwvgtrQ/OrPejSuosrT52kbz/rj3h7x
 H9tGv4hgT3iLXADTCVU2fbGkm4lfGc7FrLM7D2TM9dT8btIuWYCs5MAzLvx99Ddg0N
 MfRSPDhyfWchBxm2p04Pi62WjWw3G2SuLTo4yUw8=
Received: by earth.universe (Postfix, from userid 1000)
 id 8BE583C0C7C; Wed, 15 Jan 2020 21:52:18 +0100 (CET)
Date: Wed, 15 Jan 2020 21:52:18 +0100
From: Sebastian Reichel <sre@kernel.org>
To: Claudiu.Beznea@microchip.com
Subject: Re: [PATCH v2 0/2] at91-sama5d2_shdwc shutdown controller
Message-ID: <20200115205218.wudf5dai2sj6pvvk@earth.universe>
References: <1576855878-13213-1-git-send-email-claudiu.beznea@microchip.com>
 <3d0c5a04-25fb-5ae6-fd3a-4049e293eab1@microchip.com>
MIME-Version: 1.0
In-Reply-To: <3d0c5a04-25fb-5ae6-fd3a-4049e293eab1@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_125221_279911_8ECF83C1 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, alexandre.belloni@bootlin.com,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7185700359159283196=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7185700359159283196==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yd3evbzfobjk36fk"
Content-Disposition: inline


--yd3evbzfobjk36fk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi

It wasn't lost, I just did not yet collect patches for the next
merge window. I queued the complete patchset to my for-next branch
now.

-- Sebastian

On Tue, Jan 14, 2020 at 10:34:55AM +0000, Claudiu.Beznea@microchip.com wrot=
e:
> Hi Sebastian,
>=20
> I know you may busy, I just want to be sure that you didn't forgot this s=
eries.
>=20
> Thank you,
> Claudiu Beznea
>=20
> On 20.12.2019 17:31, Claudiu Beznea wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know =
the content is safe
> >=20
> > PMC master clock register offset is different b/w sam9x60 and
> > other SoCs. Since there is a need of this register offset in
> > shutdown procedure we need to have it per SoC. This is what
> > this series does.
> >=20
> > Changes in v2:
> > - do not use r5 as intermediary registers in at91_poweroff
> >=20
> > Claudiu Beznea (2):
> >   power: reset: at91-poweroff: introduce struct shdwc_reg_config
> >   power: reset: at91-poweroff: use proper master clock register offset
> >=20
> >  drivers/power/reset/at91-sama5d2_shdwc.c | 72 +++++++++++++++++++++---=
--------
> >  1 file changed, 47 insertions(+), 25 deletions(-)
> >=20
> > --
> > 2.7.4
> >=20
> >=20

--yd3evbzfobjk36fk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl4fe4IACgkQ2O7X88g7
+pop7w//bJTENOImq1Uw2WD17tRxI1UogZR6C7G3iQuBCimiyvw+QTNFwOzSmIkp
P6zhrTeWBvyfYHWOFGynGfA99ISNYf8Ok3mFxLI7ov44JIHJkSoHOcIW6OFjloDz
0G9Udiz88HCZ11gPIidfmhCdS5dLXmic0XCC/C1wiaVs1taJ358wQMStq5c4S7CE
7E+sM/TUvC4/Zx9g3zrW/bitFaqbWVPk80V3odBhl9FFh8i640xbiU+U8uQ/Leak
+J6K/BqO1uI2CVwU9d+NaADCUjSzQJelWM06PG21OkaFq8VFeFiRyxOtvStmQpDd
BXByY4HxHPlGdvhVwSE1+VBSxK+r+NbN3MESBK4rE9jisfPvxvWK8osx8jmoivDM
2VAHluRnUI4OS5Ab/HyxwcecX8tczdrTkmgCvK+EYthhqHZx5GPAKz2k4/qKq6Jo
6+SLbKg2l2tT7vxR+dGLRD4uie8QtQvxHwIReCT1oLXB3qDoWMRc7iqfx5TOQpm6
hYDjshmM2FhqU9+zJpxwXUC1KZUkiccvRpAPPfCyGN9vOEeaD2PLRRTGFrKBGTOd
sA0uh55hfIlwWVh/qNBL6CQs58VeHUgznbDX1C8B9zX3QGmEX0grP7n/Z933d8ZC
o/glSnVJ/+r0L0goB5p+J1PEv7WLs6jbplZXlngyP12Dg4+KZGw=
=F7P+
-----END PGP SIGNATURE-----

--yd3evbzfobjk36fk--


--===============7185700359159283196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7185700359159283196==--

