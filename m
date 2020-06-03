Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE7E1ECACB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 09:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wQ66v6j1YaF0BUhlezkjv4vto41P1bZzPUGE0HJoK1w=; b=N2tV00EmCqqQ3UfFhqISg5h8q
	3yNJa7pwG7Ztd/QT0IHnE//CvACD5l6P3HdSE3oAU9o85KWl651DK25tsV72s2tNSAMas7mABDDyj
	N7j3W2nRwbucsWvjpqEL6NdOHyB+PJycioyz9xaZv0nZn3xUqfUlRtHPI8p3XupFZ2CuTggAIlidY
	hiNIp7j973kUkaRjkGXig18hVr4+3NjgslGm0A+1kJwJzKASyf3xK5dYnaAjCNTgyf5eMMohfRi3S
	zDylpEOkiRjnnCAFJN3CXLAxcuLFPwujd4+UPRTI7TUw4veuXoIAGD+Me+l49GxRWaQvemZvzGdQo
	e7kN/g7aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgO8o-00082F-JK; Wed, 03 Jun 2020 07:48:50 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgO8h-00081k-NQ
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 07:48:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6C642ADAB;
 Wed,  3 Jun 2020 07:48:37 +0000 (UTC)
Subject: Re: [PATCH 15/21] drm/rcar-du: Use GEM CMA object functions
To: kieran.bingham+renesas@ideasonboard.com,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-16-tzimmermann@suse.de>
 <20200522201240.GE5824@pendragon.ideasonboard.com>
 <816a8a0e-bb98-ea6c-5016-94b18e045fb5@suse.de>
 <50d76988-f627-037d-a8bc-d18f6662c981@ideasonboard.com>
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
Message-ID: <32d4e4cb-9b5d-4d69-67d1-1b1953e977c5@suse.de>
Date: Wed, 3 Jun 2020 09:48:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <50d76988-f627-037d-a8bc-d18f6662c981@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_004844_058761_630468B8 
X-CRM114-Status: GOOD (  21.91  )
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
 mihail.atanassov@arm.com, sam@ravnborg.org, marex@denx.de,
 khilman@baylibre.com, abrodkin@synopsys.com, kong.kongxinwei@hisilicon.com,
 xinliang.liu@linaro.org, ludovic.desroches@microchip.com,
 tomi.valkeinen@ti.com, james.qian.wang@arm.com, joel@jms.id.au,
 linux-imx@nxp.com, alexandre.torgue@st.com, puck.chen@hisilicon.com,
 s.hauer@pengutronix.de, alison.wang@nxp.com, jsarha@ti.com, wens@csie.org,
 vincent.abriou@st.com, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, bbrezillon@kernel.org, andrew@aj.id.au,
 philippe.cornu@st.com, yannick.fertre@st.com, kernel@pengutronix.de,
 zourongrong@gmail.com, shawnguo@kernel.org
Content-Type: multipart/mixed; boundary="===============8014709259960470470=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8014709259960470470==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="IWdH7tzjbDO3z3IDWxiPmmaSLT31RLyEz"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--IWdH7tzjbDO3z3IDWxiPmmaSLT31RLyEz
Content-Type: multipart/mixed; boundary="EMHPb4qyJW3lmGBFN4qh2YWv6vqV5xaw4";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: kieran.bingham+renesas@ideasonboard.com,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: alexandre.belloni@bootlin.com, linux-aspeed@lists.ozlabs.org,
 narmstrong@baylibre.com, airlied@linux.ie, liviu.dudau@arm.com,
 philippe.cornu@st.com, paul@crapouillou.net, mihail.atanassov@arm.com,
 sam@ravnborg.org, alexandre.torgue@st.com, marex@denx.de,
 abrodkin@synopsys.com, ludovic.desroches@microchip.com,
 xinliang.liu@linaro.org, kong.kongxinwei@hisilicon.com,
 tomi.valkeinen@ti.com, james.qian.wang@arm.com, joel@jms.id.au,
 linux-imx@nxp.com, puck.chen@hisilicon.com, s.hauer@pengutronix.de,
 alison.wang@nxp.com, jsarha@ti.com, wens@csie.org, vincent.abriou@st.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, bbrezillon@kernel.org, andrew@aj.id.au,
 dri-devel@lists.freedesktop.org, nicolas.ferre@microchip.com,
 yannick.fertre@st.com, khilman@baylibre.com, zourongrong@gmail.com,
 shawnguo@kernel.org
Message-ID: <32d4e4cb-9b5d-4d69-67d1-1b1953e977c5@suse.de>
Subject: Re: [PATCH 15/21] drm/rcar-du: Use GEM CMA object functions
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-16-tzimmermann@suse.de>
 <20200522201240.GE5824@pendragon.ideasonboard.com>
 <816a8a0e-bb98-ea6c-5016-94b18e045fb5@suse.de>
 <50d76988-f627-037d-a8bc-d18f6662c981@ideasonboard.com>
In-Reply-To: <50d76988-f627-037d-a8bc-d18f6662c981@ideasonboard.com>

--EMHPb4qyJW3lmGBFN4qh2YWv6vqV5xaw4
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 25.05.20 um 17:38 schrieb Kieran Bingham:
> On 25/05/2020 13:49, Thomas Zimmermann wrote:
>> Hi
>>
>> Am 22.05.20 um 22:12 schrieb Laurent Pinchart:
>>> Hi Thomas,
>>>
>>> Thank you for the patch.
>>>
>>> On Fri, May 22, 2020 at 03:52:40PM +0200, Thomas Zimmermann wrote:
>>>> The rcar-du driver uses the default implementation for CMA functions=
;
>>>> except for the .dumb_create callback. The __DRM_GEM_CMA_DRIVER_OPS m=
acro
>>>> now sets these defaults and .dumb_create in struct drm_driver. All
>>>> remaining operations are provided by CMA GEM object functions.
>>>>
>>>> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>>>> ---
>>>>  drivers/gpu/drm/rcar-du/rcar_du_drv.c | 11 +----------
>>>>  1 file changed, 1 insertion(+), 10 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/rcar-du/rcar_du_drv.c b/drivers/gpu/drm=
/rcar-du/rcar_du_drv.c
>>>> index 3e67cf70f0402..3728038cec1d1 100644
>>>> --- a/drivers/gpu/drm/rcar-du/rcar_du_drv.c
>>>> +++ b/drivers/gpu/drm/rcar-du/rcar_du_drv.c
>>>> @@ -476,16 +476,7 @@ DEFINE_DRM_GEM_CMA_FOPS(rcar_du_fops);
>>>> =20
>>>>  static struct drm_driver rcar_du_driver =3D {
>>>>  	.driver_features	=3D DRIVER_GEM | DRIVER_MODESET | DRIVER_ATOMIC,
>>>> -	.gem_free_object_unlocked =3D drm_gem_cma_free_object,
>>>> -	.gem_vm_ops		=3D &drm_gem_cma_vm_ops,
>>>> -	.prime_handle_to_fd	=3D drm_gem_prime_handle_to_fd,
>>>> -	.prime_fd_to_handle	=3D drm_gem_prime_fd_to_handle,
>>>> -	.gem_prime_get_sg_table	=3D drm_gem_cma_prime_get_sg_table,
>>>> -	.gem_prime_import_sg_table =3D drm_gem_cma_prime_import_sg_table,
>>>> -	.gem_prime_vmap		=3D drm_gem_cma_prime_vmap,
>>>> -	.gem_prime_vunmap	=3D drm_gem_cma_prime_vunmap,
>>>> -	.gem_prime_mmap		=3D drm_gem_cma_prime_mmap,
>>>> -	.dumb_create		=3D rcar_du_dumb_create,
>>>> +	__DRM_GEM_CMA_DRIVER_OPS(rcar_du_dumb_create),
>>>
>>> Your __DRM_GEM_CMA_DRIVER_OPS is defined as
>>>
>>> #define __DRM_GEM_CMA_DRIVER_OPS(__dumb_create) \
>>>         .gem_create_object      =3D drm_cma_gem_create_object_default=
_funcs, \
>>>         .dumb_create            =3D (__dumb_create), \
>>>         .prime_handle_to_fd     =3D drm_gem_prime_handle_to_fd, \
>>>         .prime_fd_to_handle     =3D drm_gem_prime_fd_to_handle, \
>>>         .gem_prime_import_sg_table =3D drm_gem_cma_prime_import_sg_ta=
ble_vmap, \
>>>         .gem_prime_mmap         =3D drm_gem_prime_mmap
>>>
>>> The patch thus introduces several changes:
>>>
>>> - drm_gem_cma_prime_import_sg_table_vmap() is used instead of
>>>   drm_gem_cma_prime_import_sg_table() combined with .gem_prime_vmap()=

>>>   and .gem_prime_vunmap(). I believe that's fine, but splitting that
>>>   change in a separate commit, or at the very least explaining it in
>>>   details in the commit message, would make review easier.
>>>
>>> - .gem_create_object() is now set. That seems to be OK, but I'm not s=
ure
>>>   to grasp all the implications. This should also be explained in the=

>>>   commit message, and ideally split to a separate patch.
>>
>> That's relevant during object creation and sets the object functions.
>> See one of my other replies for how this can go away after all CMA
>> drivers have been updated to GEM object functions.
>>
>>
>>>
>>> - drm_gem_cma_prime_mmap() is replaced with drm_gem_prime_mmap(). Sam=
e
>>>   comments :-)
>>
>> I relied on the aspeed driver to be correct. After Sam's comment on
>> that, I read the code once again several times. The original
>> implementation clears VM_PFNMAP. And I cannot find that code any longe=
r.
>> Going back to the original function might be better.
>>
>>
>>>
>>> This patch hides way too many changes in what is documented as just
>>> innocent refactoring. It seems other drivers are affected too.
>>
>> Could you test the patchset? I don't have the HW.
>=20
> Digging out the branch you provided elsewhere in this thread:
>=20
>>>> Could you boot-test with the patchset applied?
>>>
>>> Yes, if you have a git branch I can just build and boot I can
>>> do it quickly!
>>
>> Fantastic! It's the cma-objfuncs branch of
>>
>> https://gitlab.freedesktop.org/tzimmermann/linux.git
>=20
> I have successfully run our display tests with your patches here on an
> R-Car H3 Salvator-XS(-es2).
>=20
> Tested-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

Thanks for testing.

>=20
>=20
>=20
>> Best regards
>> Thomas
>>
>>>
>>>>  	.fops			=3D &rcar_du_fops,
>>>>  	.name			=3D "rcar-du",
>>>>  	.desc			=3D "Renesas R-Car Display Unit",
>>>
>>
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--EMHPb4qyJW3lmGBFN4qh2YWv6vqV5xaw4--

--IWdH7tzjbDO3z3IDWxiPmmaSLT31RLyEz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl7XVc0ACgkQaA3BHVML
eiMRXggAsQNKs6QgFKnHYaP4gBBAY8g/kU80bJEDlOqrwFdri8o+Z4OI/ByaWuLq
MSJ24HHSfQU7mkSOllkshZDecQ7Z8Njva+WE1zk/obMz6On30OHb7RmrqkcIlAdi
2sP3y0KLl4oXDFwltFYG/+gQdlucvI3vN5tEIZyvscH3ExeR6CJMa+Scr9EK9l5c
cKhJ5DB1d0cHutKPT19pfLRWhCRvdbRVA6NFhVkYmIw+7OjVn4iNMDBTqLTLG17U
LrUSuZsoJsHJOegRZr7tDbFhRXb2Iq150vqstQzso6AGE0sZL9KJaf9+Nx9W2NJL
+lcarQYp60Ly8kFH/gzEDvDD6KZnpw==
=tMDV
-----END PGP SIGNATURE-----

--IWdH7tzjbDO3z3IDWxiPmmaSLT31RLyEz--


--===============8014709259960470470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8014709259960470470==--

