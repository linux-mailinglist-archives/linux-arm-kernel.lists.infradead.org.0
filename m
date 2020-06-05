Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A941EFA44
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 16:16:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+qJN2iylUJx7ZC243TuSyxnaeb3uZzM+tbeFIyJq4K8=; b=LwSpLazoCNBO2aCSyWQYMpUOl
	f69wnpPt9Td6FC7jAiwPZngviJK8wyug1f/C1eThklFQ+eox9armm4sYbfNpCdzVM2bxLCE1SCCue
	TS7O6PnZ/UUenm/zB/tGBAUI0x70nj40gLgNHYxfeeJXHpWMRKbv46rkt/fIWD34INYlj+wu4t/vB
	AT6N/lAVvLnSnPUTgjacyJrifGrv14vVcMrgbexmpI8hLjF3ex72kwb68qgT3MU+CQ/rxyp9fbHGV
	OcE4PB+lF42K6uuKKVFsTYXkPyaTqb/dvWBBED4/LtQPTxplCBZ+D7x9l/bjdu8nsB9dd0yAw854Q
	dhNL7sJcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhD8b-0002YI-OP; Fri, 05 Jun 2020 14:16:01 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhD8U-0002Ws-9C
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 14:15:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 772EEACF0;
 Fri,  5 Jun 2020 14:15:54 +0000 (UTC)
Subject: Re: [PATCH v3 01/43] drm/cma-helper: Rename symbols from drm_cma_gem_
 to drm_gem_cma_
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200605073247.4057-1-tzimmermann@suse.de>
 <20200605073247.4057-2-tzimmermann@suse.de>
 <20200605084026.GB11426@pendragon.ideasonboard.com>
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
Message-ID: <8e2e8394-4110-9fb6-e99e-0495cf9f7218@suse.de>
Date: Fri, 5 Jun 2020 16:15:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200605084026.GB11426@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_071554_618859_00CCA9DD 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 narmstrong@baylibre.com, airlied@linux.ie, linus.walleij@linaro.org,
 liviu.dudau@arm.com, stefan@agner.ch, philippe.cornu@st.com,
 paul@crapouillou.net, benjamin.gaignard@linaro.org, mihail.atanassov@arm.com,
 sam@ravnborg.org, alexandre.torgue@st.com, marex@denx.de, festevam@gmail.com,
 abrodkin@synopsys.com, ludovic.desroches@microchip.com,
 xinliang.liu@linaro.org, kong.kongxinwei@hisilicon.com, tomi.valkeinen@ti.com,
 james.qian.wang@arm.com, joel@jms.id.au, linux-imx@nxp.com,
 p.zabel@pengutronix.de, puck.chen@hisilicon.com, s.hauer@pengutronix.de,
 alison.wang@nxp.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 john.stultz@linaro.org, jsarha@ti.com, wens@csie.org, vincent.abriou@st.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, noralf@tronnes.org, bbrezillon@kernel.org,
 andrew@aj.id.au, dri-devel@lists.freedesktop.org, yannick.fertre@st.com,
 kieran.bingham+renesas@ideasonboard.com, daniel@ffwll.ch, khilman@baylibre.com,
 zourongrong@gmail.com, shawnguo@kernel.org, brian.starkey@arm.com
Content-Type: multipart/mixed; boundary="===============3368641926591747103=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3368641926591747103==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Fo0Rfk41pB0zhycQCdGhz2P6WUpsxkRhD"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--Fo0Rfk41pB0zhycQCdGhz2P6WUpsxkRhD
Content-Type: multipart/mixed; boundary="iu7IYm41i1uDVeYjHP8g5ymPyU9MN6sYO";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: abrodkin@synopsys.com, airlied@linux.ie, daniel@ffwll.ch,
 james.qian.wang@arm.com, liviu.dudau@arm.com, mihail.atanassov@arm.com,
 brian.starkey@arm.com, joel@jms.id.au, andrew@aj.id.au, sam@ravnborg.org,
 bbrezillon@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, stefan@agner.ch,
 alison.wang@nxp.com, xinliang.liu@linaro.org, zourongrong@gmail.com,
 john.stultz@linaro.org, kong.kongxinwei@hisilicon.com,
 puck.chen@hisilicon.com, p.zabel@pengutronix.de, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, paul@crapouillou.net, linus.walleij@linaro.org,
 narmstrong@baylibre.com, khilman@baylibre.com, marex@denx.de,
 kieran.bingham+renesas@ideasonboard.com, benjamin.gaignard@linaro.org,
 vincent.abriou@st.com, yannick.fertre@st.com, philippe.cornu@st.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com, wens@csie.org,
 jsarha@ti.com, tomi.valkeinen@ti.com, noralf@tronnes.org,
 dri-devel@lists.freedesktop.org, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Message-ID: <8e2e8394-4110-9fb6-e99e-0495cf9f7218@suse.de>
Subject: Re: [PATCH v3 01/43] drm/cma-helper: Rename symbols from drm_cma_gem_
 to drm_gem_cma_
References: <20200605073247.4057-1-tzimmermann@suse.de>
 <20200605073247.4057-2-tzimmermann@suse.de>
 <20200605084026.GB11426@pendragon.ideasonboard.com>
In-Reply-To: <20200605084026.GB11426@pendragon.ideasonboard.com>

--iu7IYm41i1uDVeYjHP8g5ymPyU9MN6sYO
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 05.06.20 um 10:40 schrieb Laurent Pinchart:
> Hi Thomas,
>=20
> Thank you for the patch.
>=20
> On Fri, Jun 05, 2020 at 09:32:05AM +0200, Thomas Zimmermann wrote:
>> This fixes the naming of several symbols within CMA helpers. No functi=
onal
>> changes are made.
>>
>> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>=20
> Thank you for the patch.
>=20
> Speaking of naming, I wish we could rename drm_gem_cma_* to something
> else, as those helpers don't use CMA directly (and may not use it at
> all), but I think that would be too much intrusive changes for too
> little gain :-(

I agree. Calling them GEM DMA helpers would be more precise. But I don't
really see an easy solution without either a big patch that touches
everything, or a lot of small patches with ugly intermediate states.

IMHO the best option would probably be an additional header file
drm_gem_dma_helper.h that defines a dma name for each cma name. Drivers
could then be converted individually with a single per-driver patch.

Best regards
Thomas

>=20
>> ---
>>  drivers/gpu/drm/aspeed/aspeed_gfx_drv.c |  2 +-
>>  drivers/gpu/drm/drm_gem_cma_helper.c    | 10 +++++-----
>>  include/drm/drm_gem_cma_helper.h        |  4 ++--
>>  3 files changed, 8 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c b/drivers/gpu/drm=
/aspeed/aspeed_gfx_drv.c
>> index 6b27242b9ee3c..5e7ea0459d018 100644
>> --- a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
>> +++ b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
>> @@ -188,7 +188,7 @@ DEFINE_DRM_GEM_CMA_FOPS(fops);
>> =20
>>  static struct drm_driver aspeed_gfx_driver =3D {
>>  	.driver_features        =3D DRIVER_GEM | DRIVER_MODESET | DRIVER_ATO=
MIC,
>> -	.gem_create_object	=3D drm_cma_gem_create_object_default_funcs,
>> +	.gem_create_object	=3D drm_gem_cma_create_object_default_funcs,
>>  	.dumb_create		=3D drm_gem_cma_dumb_create,
>>  	.prime_handle_to_fd	=3D drm_gem_prime_handle_to_fd,
>>  	.prime_fd_to_handle	=3D drm_gem_prime_fd_to_handle,
>> diff --git a/drivers/gpu/drm/drm_gem_cma_helper.c b/drivers/gpu/drm/dr=
m_gem_cma_helper.c
>> index b3db3ca7bd7a7..842e2fa332354 100644
>> --- a/drivers/gpu/drm/drm_gem_cma_helper.c
>> +++ b/drivers/gpu/drm/drm_gem_cma_helper.c
>> @@ -572,7 +572,7 @@ void drm_gem_cma_prime_vunmap(struct drm_gem_objec=
t *obj, void *vaddr)
>>  }
>>  EXPORT_SYMBOL_GPL(drm_gem_cma_prime_vunmap);
>> =20
>> -static const struct drm_gem_object_funcs drm_cma_gem_default_funcs =3D=
 {
>> +static const struct drm_gem_object_funcs drm_gem_cma_default_funcs =3D=
 {
>>  	.free =3D drm_gem_cma_free_object,
>>  	.print_info =3D drm_gem_cma_print_info,
>>  	.get_sg_table =3D drm_gem_cma_prime_get_sg_table,
>> @@ -581,7 +581,7 @@ static const struct drm_gem_object_funcs drm_cma_g=
em_default_funcs =3D {
>>  };
>> =20
>>  /**
>> - * drm_cma_gem_create_object_default_funcs - Create a CMA GEM object =
with a
>> + * drm_gem_cma_create_object_default_funcs - Create a CMA GEM object =
with a
>>   *                                           default function table
>>   * @dev: DRM device
>>   * @size: Size of the object to allocate
>> @@ -593,7 +593,7 @@ static const struct drm_gem_object_funcs drm_cma_g=
em_default_funcs =3D {
>>   * A pointer to a allocated GEM object or an error pointer on failure=
=2E
>>   */
>>  struct drm_gem_object *
>> -drm_cma_gem_create_object_default_funcs(struct drm_device *dev, size_=
t size)
>> +drm_gem_cma_create_object_default_funcs(struct drm_device *dev, size_=
t size)
>>  {
>>  	struct drm_gem_cma_object *cma_obj;
>> =20
>> @@ -601,11 +601,11 @@ drm_cma_gem_create_object_default_funcs(struct d=
rm_device *dev, size_t size)
>>  	if (!cma_obj)
>>  		return NULL;
>> =20
>> -	cma_obj->base.funcs =3D &drm_cma_gem_default_funcs;
>> +	cma_obj->base.funcs =3D &drm_gem_cma_default_funcs;
>> =20
>>  	return &cma_obj->base;
>>  }
>> -EXPORT_SYMBOL(drm_cma_gem_create_object_default_funcs);
>> +EXPORT_SYMBOL(drm_gem_cma_create_object_default_funcs);
>> =20
>>  /**
>>   * drm_gem_cma_prime_import_sg_table_vmap - PRIME import another driv=
er's
>> diff --git a/include/drm/drm_gem_cma_helper.h b/include/drm/drm_gem_cm=
a_helper.h
>> index 947ac95eb24a9..64b7e9d42129a 100644
>> --- a/include/drm/drm_gem_cma_helper.h
>> +++ b/include/drm/drm_gem_cma_helper.h
>> @@ -107,7 +107,7 @@ void *drm_gem_cma_prime_vmap(struct drm_gem_object=
 *obj);
>>  void drm_gem_cma_prime_vunmap(struct drm_gem_object *obj, void *vaddr=
);
>> =20
>>  struct drm_gem_object *
>> -drm_cma_gem_create_object_default_funcs(struct drm_device *dev, size_=
t size);
>> +drm_gem_cma_create_object_default_funcs(struct drm_device *dev, size_=
t size);
>> =20
>>  /**
>>   * DRM_GEM_CMA_VMAP_DRIVER_OPS - CMA GEM driver operations ensuring a=
 virtual
>> @@ -118,7 +118,7 @@ drm_cma_gem_create_object_default_funcs(struct drm=
_device *dev, size_t size);
>>   * imported buffers.
>>   */
>>  #define DRM_GEM_CMA_VMAP_DRIVER_OPS \
>> -	.gem_create_object	=3D drm_cma_gem_create_object_default_funcs, \
>> +	.gem_create_object	=3D drm_gem_cma_create_object_default_funcs, \
>>  	.dumb_create		=3D drm_gem_cma_dumb_create, \
>>  	.prime_handle_to_fd	=3D drm_gem_prime_handle_to_fd, \
>>  	.prime_fd_to_handle	=3D drm_gem_prime_fd_to_handle, \
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--iu7IYm41i1uDVeYjHP8g5ymPyU9MN6sYO--

--Fo0Rfk41pB0zhycQCdGhz2P6WUpsxkRhD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl7aU5UACgkQaA3BHVML
eiMF1Qf9FdTuPO8q6LJ17Hbgc2yesqmXvva/3ml4chAnb/NzTd4n/fhDazgAE14X
6cod5wenHTmPzRysYheP8SQNz6e8J46MOL9BIOGriAJXa4UT4xzpSjg4SlU0GYwt
Kv4FZaqn8G/KIAOKhOhQd5vOAPLJTe00Z55MYwSJ5FLmpR7nHMnV1HBTUR2Z3q6f
sFttanv+ivngeJskbaPMa8fDt6G2DzoAGUA5ycJXy5BtMYSG+BcWl+x5979hJVoS
iLivMmTrfS68LZtEdXJr3Ue5pIZi9D/02w++ByI3P5DDm56pxybdBUV4/krfU/rn
Pcd0pk6rKOHk/ACNJsUuLWUvDZAgNw==
=BU+O
-----END PGP SIGNATURE-----

--Fo0Rfk41pB0zhycQCdGhz2P6WUpsxkRhD--


--===============3368641926591747103==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3368641926591747103==--

