Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA6C1EFBA7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 16:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=swVvX+VpB4R26m6o9uLlxnAjqgFGTd+H1WfrUfzGRH8=; b=VB0K6CExBimKlvZN3hQD0G0q2
	30tuwhALF3AdSRf1fhJ/uVY4U7OvuyxsJsSd89WpJObOR6xzBxu9YrsjmwzLjuHN7JjRfbh0cKcJT
	t705CXpXeG2YxjK/qpAApcssgJ5rsc80zrp8FAPo/qHujsGaWpl44aFGCy8qp51TfwHz18dygzjHP
	uzSF4coBIqhrlQrD0W0jgybraRM5IsEoqHL2zpqBu+X2I0I9AQqolejNdXMfblr4dsm1iDt0mKE7l
	iUJbNxRXHUPlxUKC4xFC9wUfVEcsoKOqbunwbZH1qjbYh6rU8bw4RfkQYUHGXvtZUmUtEATWzmMDn
	xr7AnlgEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhDWv-0002uS-Fm; Fri, 05 Jun 2020 14:41:09 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhDWn-0002sw-9G
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 14:41:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 0CC6DAAD0;
 Fri,  5 Jun 2020 14:41:02 +0000 (UTC)
Subject: Re: [PATCH v3 01/43] drm/cma-helper: Rename symbols from drm_cma_gem_
 to drm_gem_cma_
To: Sam Ravnborg <sam@ravnborg.org>
References: <20200605073247.4057-1-tzimmermann@suse.de>
 <20200605073247.4057-2-tzimmermann@suse.de>
 <20200605084026.GB11426@pendragon.ideasonboard.com>
 <8e2e8394-4110-9fb6-e99e-0495cf9f7218@suse.de>
 <20200605142351.GA204352@ravnborg.org>
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
Message-ID: <8c7ace93-4fd9-5093-b2fc-bcfe4808fab1@suse.de>
Date: Fri, 5 Jun 2020 16:40:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200605142351.GA204352@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_074101_628286_82226C77 
X-CRM114-Status: GOOD (  20.57  )
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
 narmstrong@baylibre.com, airlied@linux.ie, liviu.dudau@arm.com,
 dri-devel@lists.freedesktop.org, paul@crapouillou.net,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, mihail.atanassov@arm.com,
 marex@denx.de, khilman@baylibre.com, abrodkin@synopsys.com,
 kong.kongxinwei@hisilicon.com, xinliang.liu@linaro.org,
 ludovic.desroches@microchip.com, tomi.valkeinen@ti.com,
 james.qian.wang@arm.com, linux-imx@nxp.com, joel@jms.id.au,
 alexandre.torgue@st.com, puck.chen@hisilicon.com, s.hauer@pengutronix.de,
 alison.wang@nxp.com, jsarha@ti.com, wens@csie.org, vincent.abriou@st.com,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 bbrezillon@kernel.org, andrew@aj.id.au, philippe.cornu@st.com,
 yannick.fertre@st.com, kieran.bingham+renesas@ideasonboard.com,
 kernel@pengutronix.de, zourongrong@gmail.com, shawnguo@kernel.org
Content-Type: multipart/mixed; boundary="===============3799983935868881931=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3799983935868881931==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="kJOPcFYml3oXn3FweWqlOW0VifEalIeQ6"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--kJOPcFYml3oXn3FweWqlOW0VifEalIeQ6
Content-Type: multipart/mixed; boundary="Xo7Ck3pU0UgZxBYhGwDD8OQ26VadCx1R5";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: alexandre.belloni@bootlin.com, linux-aspeed@lists.ozlabs.org,
 narmstrong@baylibre.com, airlied@linux.ie, liviu.dudau@arm.com,
 philippe.cornu@st.com, paul@crapouillou.net,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 mihail.atanassov@arm.com, alexandre.torgue@st.com, marex@denx.de,
 khilman@baylibre.com, abrodkin@synopsys.com,
 ludovic.desroches@microchip.com, xinliang.liu@linaro.org,
 kong.kongxinwei@hisilicon.com, tomi.valkeinen@ti.com,
 james.qian.wang@arm.com, joel@jms.id.au, linux-imx@nxp.com,
 puck.chen@hisilicon.com, s.hauer@pengutronix.de, alison.wang@nxp.com,
 jsarha@ti.com, wens@csie.org, vincent.abriou@st.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 bbrezillon@kernel.org, andrew@aj.id.au, dri-devel@lists.freedesktop.org,
 nicolas.ferre@microchip.com, yannick.fertre@st.com,
 kieran.bingham+renesas@ideasonboard.com, zourongrong@gmail.com,
 shawnguo@kernel.org
Message-ID: <8c7ace93-4fd9-5093-b2fc-bcfe4808fab1@suse.de>
Subject: Re: [PATCH v3 01/43] drm/cma-helper: Rename symbols from drm_cma_gem_
 to drm_gem_cma_
References: <20200605073247.4057-1-tzimmermann@suse.de>
 <20200605073247.4057-2-tzimmermann@suse.de>
 <20200605084026.GB11426@pendragon.ideasonboard.com>
 <8e2e8394-4110-9fb6-e99e-0495cf9f7218@suse.de>
 <20200605142351.GA204352@ravnborg.org>
In-Reply-To: <20200605142351.GA204352@ravnborg.org>

--Xo7Ck3pU0UgZxBYhGwDD8OQ26VadCx1R5
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 05.06.20 um 16:23 schrieb Sam Ravnborg:
> On Fri, Jun 05, 2020 at 04:15:46PM +0200, Thomas Zimmermann wrote:
>> Hi
>>
>> Am 05.06.20 um 10:40 schrieb Laurent Pinchart:
>>> Hi Thomas,
>>>
>>> Thank you for the patch.
>>>
>>> On Fri, Jun 05, 2020 at 09:32:05AM +0200, Thomas Zimmermann wrote:
>>>> This fixes the naming of several symbols within CMA helpers. No func=
tional
>>>> changes are made.
>>>>
>>>> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>>>
>>> Thank you for the patch.
>>>
>>> Speaking of naming, I wish we could rename drm_gem_cma_* to something=

>>> else, as those helpers don't use CMA directly (and may not use it at
>>> all), but I think that would be too much intrusive changes for too
>>> little gain :-(
>>
>> I agree. Calling them GEM DMA helpers would be more precise. But I don=
't
>> really see an easy solution without either a big patch that touches
>> everything, or a lot of small patches with ugly intermediate states.
>>
>> IMHO the best option would probably be an additional header file
>> drm_gem_dma_helper.h that defines a dma name for each cma name. Driver=
s
>> could then be converted individually with a single per-driver patch.
>=20
> From todo.rst:
>=20
> "
> Rename CMA helpers to DMA helpers
> ---------------------------------
>=20
> CMA (standing for contiguous memory allocator) is really a bit an accid=
ent of
> what these were used for first, a much better name would be DMA helpers=
=2E In the
> text these should even be called coherent DMA memory helpers (so maybe =
CDM, but
> no one knows what that means) since underneath they just use dma_alloc_=
coherent.
>=20
> Contact: Laurent Pinchart, Daniel Vetter
>=20
> Level: Intermediate (mostly because it is a huge tasks without good par=
tial
> milestones, not technically itself that challenging)
> "
>=20
> The same?

Yes, I've been thinking of this. That would be a good task for someone
to get familiar with the DRM code.

Best regards
Thomas

>=20
> 	Sam
>=20
>>
>> Best regards
>> Thomas
>>
>>>
>>>> ---
>>>>  drivers/gpu/drm/aspeed/aspeed_gfx_drv.c |  2 +-
>>>>  drivers/gpu/drm/drm_gem_cma_helper.c    | 10 +++++-----
>>>>  include/drm/drm_gem_cma_helper.h        |  4 ++--
>>>>  3 files changed, 8 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c b/drivers/gpu/d=
rm/aspeed/aspeed_gfx_drv.c
>>>> index 6b27242b9ee3c..5e7ea0459d018 100644
>>>> --- a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
>>>> +++ b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
>>>> @@ -188,7 +188,7 @@ DEFINE_DRM_GEM_CMA_FOPS(fops);
>>>> =20
>>>>  static struct drm_driver aspeed_gfx_driver =3D {
>>>>  	.driver_features        =3D DRIVER_GEM | DRIVER_MODESET | DRIVER_A=
TOMIC,
>>>> -	.gem_create_object	=3D drm_cma_gem_create_object_default_funcs,
>>>> +	.gem_create_object	=3D drm_gem_cma_create_object_default_funcs,
>>>>  	.dumb_create		=3D drm_gem_cma_dumb_create,
>>>>  	.prime_handle_to_fd	=3D drm_gem_prime_handle_to_fd,
>>>>  	.prime_fd_to_handle	=3D drm_gem_prime_fd_to_handle,
>>>> diff --git a/drivers/gpu/drm/drm_gem_cma_helper.c b/drivers/gpu/drm/=
drm_gem_cma_helper.c
>>>> index b3db3ca7bd7a7..842e2fa332354 100644
>>>> --- a/drivers/gpu/drm/drm_gem_cma_helper.c
>>>> +++ b/drivers/gpu/drm/drm_gem_cma_helper.c
>>>> @@ -572,7 +572,7 @@ void drm_gem_cma_prime_vunmap(struct drm_gem_obj=
ect *obj, void *vaddr)
>>>>  }
>>>>  EXPORT_SYMBOL_GPL(drm_gem_cma_prime_vunmap);
>>>> =20
>>>> -static const struct drm_gem_object_funcs drm_cma_gem_default_funcs =
=3D {
>>>> +static const struct drm_gem_object_funcs drm_gem_cma_default_funcs =
=3D {
>>>>  	.free =3D drm_gem_cma_free_object,
>>>>  	.print_info =3D drm_gem_cma_print_info,
>>>>  	.get_sg_table =3D drm_gem_cma_prime_get_sg_table,
>>>> @@ -581,7 +581,7 @@ static const struct drm_gem_object_funcs drm_cma=
_gem_default_funcs =3D {
>>>>  };
>>>> =20
>>>>  /**
>>>> - * drm_cma_gem_create_object_default_funcs - Create a CMA GEM objec=
t with a
>>>> + * drm_gem_cma_create_object_default_funcs - Create a CMA GEM objec=
t with a
>>>>   *                                           default function table=

>>>>   * @dev: DRM device
>>>>   * @size: Size of the object to allocate
>>>> @@ -593,7 +593,7 @@ static const struct drm_gem_object_funcs drm_cma=
_gem_default_funcs =3D {
>>>>   * A pointer to a allocated GEM object or an error pointer on failu=
re.
>>>>   */
>>>>  struct drm_gem_object *
>>>> -drm_cma_gem_create_object_default_funcs(struct drm_device *dev, siz=
e_t size)
>>>> +drm_gem_cma_create_object_default_funcs(struct drm_device *dev, siz=
e_t size)
>>>>  {
>>>>  	struct drm_gem_cma_object *cma_obj;
>>>> =20
>>>> @@ -601,11 +601,11 @@ drm_cma_gem_create_object_default_funcs(struct=
 drm_device *dev, size_t size)
>>>>  	if (!cma_obj)
>>>>  		return NULL;
>>>> =20
>>>> -	cma_obj->base.funcs =3D &drm_cma_gem_default_funcs;
>>>> +	cma_obj->base.funcs =3D &drm_gem_cma_default_funcs;
>>>> =20
>>>>  	return &cma_obj->base;
>>>>  }
>>>> -EXPORT_SYMBOL(drm_cma_gem_create_object_default_funcs);
>>>> +EXPORT_SYMBOL(drm_gem_cma_create_object_default_funcs);
>>>> =20
>>>>  /**
>>>>   * drm_gem_cma_prime_import_sg_table_vmap - PRIME import another dr=
iver's
>>>> diff --git a/include/drm/drm_gem_cma_helper.h b/include/drm/drm_gem_=
cma_helper.h
>>>> index 947ac95eb24a9..64b7e9d42129a 100644
>>>> --- a/include/drm/drm_gem_cma_helper.h
>>>> +++ b/include/drm/drm_gem_cma_helper.h
>>>> @@ -107,7 +107,7 @@ void *drm_gem_cma_prime_vmap(struct drm_gem_obje=
ct *obj);
>>>>  void drm_gem_cma_prime_vunmap(struct drm_gem_object *obj, void *vad=
dr);
>>>> =20
>>>>  struct drm_gem_object *
>>>> -drm_cma_gem_create_object_default_funcs(struct drm_device *dev, siz=
e_t size);
>>>> +drm_gem_cma_create_object_default_funcs(struct drm_device *dev, siz=
e_t size);
>>>> =20
>>>>  /**
>>>>   * DRM_GEM_CMA_VMAP_DRIVER_OPS - CMA GEM driver operations ensuring=
 a virtual
>>>> @@ -118,7 +118,7 @@ drm_cma_gem_create_object_default_funcs(struct d=
rm_device *dev, size_t size);
>>>>   * imported buffers.
>>>>   */
>>>>  #define DRM_GEM_CMA_VMAP_DRIVER_OPS \
>>>> -	.gem_create_object	=3D drm_cma_gem_create_object_default_funcs, \
>>>> +	.gem_create_object	=3D drm_gem_cma_create_object_default_funcs, \
>>>>  	.dumb_create		=3D drm_gem_cma_dumb_create, \
>>>>  	.prime_handle_to_fd	=3D drm_gem_prime_handle_to_fd, \
>>>>  	.prime_fd_to_handle	=3D drm_gem_prime_fd_to_handle, \
>>>
>>
>> --=20
>> Thomas Zimmermann
>> Graphics Driver Developer
>> SUSE Software Solutions Germany GmbH
>> Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
>> (HRB 36809, AG N=C3=BCrnberg)
>> Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer
>>
>=20
>=20
>=20
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


--Xo7Ck3pU0UgZxBYhGwDD8OQ26VadCx1R5--

--kJOPcFYml3oXn3FweWqlOW0VifEalIeQ6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl7aWXYACgkQaA3BHVML
eiNX1AgAkDU3+pzg+9HZ/yntRayz42PbDYcS4/YwgIViFohUy7i+uaEGgjR4xuVM
wp8ll0hTlYLdy3uuPzXEEegij0Alz7f3J2+LF62vDf3IdqMtyJnmZqo1uo2+smDm
twvTJJVGQ6dV5iNmo4VfSiYb4dYyR3ZEw2UJOdRkCwqV8lqlq0DV0kzcRq06MY1l
6CdaFmTsKW9yRtoyhohKUDc74Sap61sLmC2D+XdWxmX0GwG4RoZjeQCXOixVr7w2
JGKoCLYKsGaXa1T2dZothuvN29wcs+eEyKjkM6AFmRiTOhqXdHdfIJFYhanrvpcC
TerpbRVFmabfVc5/XRvVteqZY+Z2Lw==
=NfU/
-----END PGP SIGNATURE-----

--kJOPcFYml3oXn3FweWqlOW0VifEalIeQ6--


--===============3799983935868881931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3799983935868881931==--

