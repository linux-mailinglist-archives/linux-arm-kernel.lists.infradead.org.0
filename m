Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288511E0E25
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 14:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zWUWAzxB9dzoogggh0uvslthqd5AgG5O8eLbV9q4un0=; b=RVUA9eVjkPSTPwqYAOHTRdnBP
	p8yB0U1L20NhDg8DY/7tNGVkJqTUXCjFZTdhXk3IceOGFJiYpWBMWm3tl0vYF3nDgVmhLBb31Wf/2
	KyTF5JSYFuPfrUL6mdsoufzSRbR6mb79dSz1mzx3Z3IGOTnB0Zx08EIBcwryXDSqut9lUkR5Zi+dx
	bvzk3v1576bhYWMT5fINEkz10F9Ycqz+WeeD7gZBUL+Bm0U6FM+uQTNEO+RIeAGCZZRgUTcJntVcP
	QFpudP6zb7sZyzD5H0NpHH30sNsNDJeJwrFOPlVYxXu1leH9JUs/K6ns+CC+en034paBSxNrfmmzD
	OEj3B6Ykw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBwZ-0006aq-8g; Mon, 25 May 2020 12:10:59 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBwO-0006Zz-RI
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 12:10:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E258DB039;
 Mon, 25 May 2020 12:10:46 +0000 (UTC)
Subject: Re: [PATCH 05/21] drm/atmel-hlcdc: Use GEM CMA object functions
To: Sam Ravnborg <sam@ravnborg.org>
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-6-tzimmermann@suse.de>
 <20200522180824.GB1087580@ravnborg.org>
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 mQENBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAG0J1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPokBVAQTAQgAPhYh
 BHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJbOdLgAhsDBQkDwmcABQsJCAcCBhUKCQgLAgQWAgMB
 Ah4BAheAAAoJEGgNwR1TC3ojR80H/jH+vYavwQ+TvO8ksXL9JQWc3IFSiGpuSVXLCdg62AmR
 irxW+qCwNncNQyb9rd30gzdectSkPWL3KSqEResBe24IbA5/jSkPweJasgXtfhuyoeCJ6PXo
 clQQGKIoFIAEv1s8l0ggPZswvCinegl1diyJXUXmdEJRTWYAtxn/atut1o6Giv6D2qmYbXN7
 mneMC5MzlLaJKUtoH7U/IjVw1sx2qtxAZGKVm4RZxPnMCp9E1MAr5t4dP5gJCIiqsdrVqI6i
 KupZstMxstPU//azmz7ZWWxT0JzgJqZSvPYx/SATeexTYBP47YFyri4jnsty2ErS91E6H8os
 Bv6pnSn7eAq5AQ0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRH
 UE9eosYbT6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgT
 RjP+qbU63Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+R
 dhgATnWWGKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zb
 ehDda8lvhFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r
 12+lqdsAEQEAAYkBPAQYAQgAJhYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJbOdLgAhsMBQkD
 wmcAAAoJEGgNwR1TC3ojpfcIAInwP5OlcEKokTnHCiDTz4Ony4GnHRP2fXATQZCKxmu4AJY2
 h9ifw9Nf2TjCZ6AMvC3thAN0rFDj55N9l4s1CpaDo4J+0fkrHuyNacnT206CeJV1E7NYntxU
 n+LSiRrOdywn6erjxRi9EYTVLCHcDhBEjKmFZfg4AM4GZMWX1lg0+eHbd5oL1as28WvvI/uI
 aMyV8RbyXot1r/8QLlWldU3NrTF5p7TMU2y3ZH2mf5suSKHAMtbE4jKJ8ZHFOo3GhLgjVrBW
 HE9JXO08xKkgD+w6v83+nomsEuf6C6LYrqY/tsZvyEX6zN8CtirPdPWu/VXNRYAl/lat7lSI
 3H26qrE=
Message-ID: <8a1de3a8-05d2-9abc-57e9-e29928b777d3@suse.de>
Date: Mon, 25 May 2020 14:10:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200522180824.GB1087580@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_051049_172353_4748FA56 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: alexandre.belloni@bootlin.com, linux-aspeed@lists.ozlabs.org,
 narmstrong@baylibre.com, airlied@linux.ie, liviu.dudau@arm.com,
 dri-devel@lists.freedesktop.org, paul@crapouillou.net,
 laurent.pinchart@ideasonboard.com, mihail.atanassov@arm.com, marex@denx.de,
 khilman@baylibre.com, abrodkin@synopsys.com, kong.kongxinwei@hisilicon.com,
 xinliang.liu@linaro.org, ludovic.desroches@microchip.com,
 tomi.valkeinen@ti.com, james.qian.wang@arm.com, linux-imx@nxp.com,
 joel@jms.id.au, alexandre.torgue@st.com, puck.chen@hisilicon.com,
 s.hauer@pengutronix.de, alison.wang@nxp.com, jsarha@ti.com, wens@csie.org,
 vincent.abriou@st.com, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, bbrezillon@kernel.org, andrew@aj.id.au,
 philippe.cornu@st.com, yannick.fertre@st.com,
 kieran.bingham+renesas@ideasonboard.com, kernel@pengutronix.de,
 zourongrong@gmail.com, shawnguo@kernel.org
Content-Type: multipart/mixed; boundary="===============3291864553402617530=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3291864553402617530==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="U38GpDWG8bqu4o38LChG0KZAd8Ymn4NmD"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--U38GpDWG8bqu4o38LChG0KZAd8Ymn4NmD
Content-Type: multipart/mixed; boundary="iw0wNETVyIEdJKlpwKb8224o7ZPVboqAx";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: alexandre.belloni@bootlin.com, linux-aspeed@lists.ozlabs.org,
 narmstrong@baylibre.com, airlied@linux.ie, liviu.dudau@arm.com,
 philippe.cornu@st.com, paul@crapouillou.net,
 laurent.pinchart@ideasonboard.com, mihail.atanassov@arm.com,
 alexandre.torgue@st.com, marex@denx.de, khilman@baylibre.com,
 abrodkin@synopsys.com, ludovic.desroches@microchip.com,
 xinliang.liu@linaro.org, kong.kongxinwei@hisilicon.com,
 tomi.valkeinen@ti.com, james.qian.wang@arm.com, joel@jms.id.au,
 linux-imx@nxp.com, puck.chen@hisilicon.com, s.hauer@pengutronix.de,
 alison.wang@nxp.com, jsarha@ti.com, wens@csie.org, vincent.abriou@st.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, bbrezillon@kernel.org, andrew@aj.id.au,
 dri-devel@lists.freedesktop.org, nicolas.ferre@microchip.com,
 yannick.fertre@st.com, kieran.bingham+renesas@ideasonboard.com,
 zourongrong@gmail.com, shawnguo@kernel.org
Message-ID: <8a1de3a8-05d2-9abc-57e9-e29928b777d3@suse.de>
Subject: Re: [PATCH 05/21] drm/atmel-hlcdc: Use GEM CMA object functions
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-6-tzimmermann@suse.de>
 <20200522180824.GB1087580@ravnborg.org>
In-Reply-To: <20200522180824.GB1087580@ravnborg.org>

--iw0wNETVyIEdJKlpwKb8224o7ZPVboqAx
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 22.05.20 um 20:08 schrieb Sam Ravnborg:
> Hi Thomas.
>=20
> On Fri, May 22, 2020 at 03:52:30PM +0200, Thomas Zimmermann wrote:
>> The atmel-hlcdc driver uses the default implementation for CMA functio=
ns. The
>> DRM_GEM_CMA_DRIVER_OPS macro now sets these defaults in struct drm_dri=
ver.
>> All remaining operations are provided by CMA GEM object functions.
>=20
> A nice side-effect of introducing the defualt implementation
> of CMA functions is that this driver is now migrated over to use
> drm_gem_object_funcs, which is why we can replace all these
> helpers with a simple macro that defined only 6 helpers.
>=20
> With an improved changelog:
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
>=20
> And as I said in the other mail, this is really nice.
> It is now much more obvious that this drivers uses
> all the default helpers for CMA.
>=20
> And I can drop one item from my TODO list on top of that.

There's still more to do. The current macro still sets
=2Egem_object_create to a CMA default. But that pointer is the interface
where drivers can override some of the CMA object defaults, so it should
not be set by CMA helpers.

After the other CMA drivers have been converted to GEM object functions,
this setting can be kept to zero and __drm_gem_cma_create() can set the
default object functions. SHMEM and VRAM helpers already work this way.

Best regards
Thomas

>=20
> 	Sam
>=20
>>
>> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>> ---
>>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c | 11 +----------
>>  1 file changed, 1 insertion(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c b/drivers/gp=
u/drm/atmel-hlcdc/atmel_hlcdc_dc.c
>> index 112aa5066ceed..871293d1aeeba 100644
>> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
>> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
>> @@ -821,16 +821,7 @@ static struct drm_driver atmel_hlcdc_dc_driver =3D=
 {
>>  	.irq_preinstall =3D atmel_hlcdc_dc_irq_uninstall,
>>  	.irq_postinstall =3D atmel_hlcdc_dc_irq_postinstall,
>>  	.irq_uninstall =3D atmel_hlcdc_dc_irq_uninstall,
>> -	.gem_free_object_unlocked =3D drm_gem_cma_free_object,
>> -	.gem_vm_ops =3D &drm_gem_cma_vm_ops,
>> -	.prime_handle_to_fd =3D drm_gem_prime_handle_to_fd,
>> -	.prime_fd_to_handle =3D drm_gem_prime_fd_to_handle,
>> -	.gem_prime_get_sg_table =3D drm_gem_cma_prime_get_sg_table,
>> -	.gem_prime_import_sg_table =3D drm_gem_cma_prime_import_sg_table,
>> -	.gem_prime_vmap =3D drm_gem_cma_prime_vmap,
>> -	.gem_prime_vunmap =3D drm_gem_cma_prime_vunmap,
>> -	.gem_prime_mmap =3D drm_gem_cma_prime_mmap,
>> -	.dumb_create =3D drm_gem_cma_dumb_create,
>> +	DRM_GEM_CMA_DRIVER_OPS,
>>  	.fops =3D &fops,
>>  	.name =3D "atmel-hlcdc",
>>  	.desc =3D "Atmel HLCD Controller DRM",
>> --=20
>> 2.26.2
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--iw0wNETVyIEdJKlpwKb8224o7ZPVboqAx--

--U38GpDWG8bqu4o38LChG0KZAd8Ymn4NmD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl7Ltb8ACgkQaA3BHVML
eiPDQQf+LLWilJwCpadkL31CKP+yGXfzoxgqIEyM2LBJZ+bRCVyhvyY05jJNfyHR
AFJvBw5uc6c0nHd2Tjll5lwBfDlC8nYfXT5UuQB5LqN7/bz0m04rbkCsmy2RJe6b
3pnrWkyP8ubuMDv7SPY8p6gvVk4w3D7b6zBkznsrtxkvLevXVoHUmLce/6w+fvQ5
ubkKQQZ+T5dKwkcQzFNv08obQesd1nyND+Q5BWRp8/r6fGnnfIAKonI9rLe0gL18
n+RGtq5zm6SZcQnzkxOT08L1ct5dP6p2zxX1K1rZ31TBNRBbFEuFWYGfWACMB5MX
/rGGppCA11bS0KyMk5OZe51d08++Ng==
=bdN1
-----END PGP SIGNATURE-----

--U38GpDWG8bqu4o38LChG0KZAd8Ymn4NmD--


--===============3291864553402617530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3291864553402617530==--

