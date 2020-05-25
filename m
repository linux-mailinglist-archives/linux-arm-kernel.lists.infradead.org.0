Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643281E0E88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 14:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jrNqeQp5gHYoEEhQE4W9BamR2vtP4MJ4sQ4uHfzzM9k=; b=LrPgwFJwQU+qarwPvanVuY5bl
	PB1V1J/1xjpaT6FevpATsqufRls6ndSBEjissIYtVCMW20E8F9H0pWCpTVy91OrMJPQoz6dTYPhIg
	AD7wfWjGewp5Atvn8w5YPDhGCXW4l2s9tC6ieM2Ncaa5EM0c8fbBaJg0p2Hrv4tEDhqup0/RJ9+XW
	hwY4+4wLkwMDSfc0TcsCVnql/MtnOVlxgJPZOK0VBC0Dfoh38vlSs36+IfGsuBz7GUtIEzkxCDhv0
	LckscmAFdBD7CwGp4FQuSJv9QfexJVlmiE9i3h0jFkj+xsCzAZTyg8I1RYAlX89ct+DL8/7QJBMDi
	Uz3fdALBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCMb-0006kb-SX; Mon, 25 May 2020 12:37:53 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCMR-0006k2-6M
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 12:37:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DB97BAD17;
 Mon, 25 May 2020 12:37:42 +0000 (UTC)
Subject: Re: [PATCH 05/21] drm/atmel-hlcdc: Use GEM CMA object functions
To: Sam Ravnborg <sam@ravnborg.org>
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-6-tzimmermann@suse.de>
 <20200522192546.GA1516695@ravnborg.org>
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
Message-ID: <2c220ab0-e96b-2f5a-0d7f-8e770a13ef56@suse.de>
Date: Mon, 25 May 2020 14:37:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200522192546.GA1516695@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_053743_844038_1E2E0FBC 
X-CRM114-Status: GOOD (  21.23  )
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
 narmstrong@baylibre.com, airlied@linux.ie, linus.walleij@linaro.org,
 liviu.dudau@arm.com, stefan@agner.ch, philippe.cornu@st.com,
 paul@crapouillou.net, laurent.pinchart@ideasonboard.com,
 benjamin.gaignard@linaro.org, mihail.atanassov@arm.com, festevam@gmail.com,
 alexandre.torgue@st.com, marex@denx.de, khilman@baylibre.com,
 abrodkin@synopsys.com, ludovic.desroches@microchip.com,
 xinliang.liu@linaro.org, kong.kongxinwei@hisilicon.com, tomi.valkeinen@ti.com,
 james.qian.wang@arm.com, joel@jms.id.au, linux-imx@nxp.com,
 p.zabel@pengutronix.de, puck.chen@hisilicon.com, s.hauer@pengutronix.de,
 alison.wang@nxp.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 john.stultz@linaro.org, jsarha@ti.com, wens@csie.org, vincent.abriou@st.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, noralf@tronnes.org, bbrezillon@kernel.org,
 andrew@aj.id.au, dri-devel@lists.freedesktop.org, yannick.fertre@st.com,
 kieran.bingham+renesas@ideasonboard.com, daniel@ffwll.ch,
 zourongrong@gmail.com, shawnguo@kernel.org, brian.starkey@arm.com
Content-Type: multipart/mixed; boundary="===============3783541498284452456=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3783541498284452456==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="VjBal5iuObJoSYxMzBgz8Y0G7T7qTunJk"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--VjBal5iuObJoSYxMzBgz8Y0G7T7qTunJk
Content-Type: multipart/mixed; boundary="XRnLKugHzCTbIFGd4ORGUEKTw5g4TfP04";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: abrodkin@synopsys.com, airlied@linux.ie, daniel@ffwll.ch,
 james.qian.wang@arm.com, liviu.dudau@arm.com, mihail.atanassov@arm.com,
 brian.starkey@arm.com, joel@jms.id.au, andrew@aj.id.au,
 bbrezillon@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, stefan@agner.ch,
 alison.wang@nxp.com, xinliang.liu@linaro.org, zourongrong@gmail.com,
 john.stultz@linaro.org, kong.kongxinwei@hisilicon.com,
 puck.chen@hisilicon.com, p.zabel@pengutronix.de, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, paul@crapouillou.net, linus.walleij@linaro.org,
 narmstrong@baylibre.com, khilman@baylibre.com, marex@denx.de,
 laurent.pinchart@ideasonboard.com, kieran.bingham+renesas@ideasonboard.com,
 benjamin.gaignard@linaro.org, vincent.abriou@st.com, yannick.fertre@st.com,
 philippe.cornu@st.com, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 wens@csie.org, jsarha@ti.com, tomi.valkeinen@ti.com, noralf@tronnes.org,
 dri-devel@lists.freedesktop.org, linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Message-ID: <2c220ab0-e96b-2f5a-0d7f-8e770a13ef56@suse.de>
Subject: Re: [PATCH 05/21] drm/atmel-hlcdc: Use GEM CMA object functions
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-6-tzimmermann@suse.de>
 <20200522192546.GA1516695@ravnborg.org>
In-Reply-To: <20200522192546.GA1516695@ravnborg.org>

--XRnLKugHzCTbIFGd4ORGUEKTw5g4TfP04
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 22.05.20 um 21:25 schrieb Sam Ravnborg:
> Hi Thomas.
>=20
> On Fri, May 22, 2020 at 03:52:30PM +0200, Thomas Zimmermann wrote:
>> The atmel-hlcdc driver uses the default implementation for CMA functio=
ns. The
>> DRM_GEM_CMA_DRIVER_OPS macro now sets these defaults in struct drm_dri=
ver.
>> All remaining operations are provided by CMA GEM object functions.
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
>=20
>> -	.gem_prime_mmap =3D drm_gem_cma_prime_mmap,
> When using DRM_GEM_CMA_DRIVER_OPS gem_prime_mmap is set to
> drm_gem_prime_mmap.
> Why is this the same as drm_gem_cma_prime_mmap?
>=20
> Maybe this is all obvious when you know all the CMA stuff,
> but this puzzeled me.

Following through the calls is far from easy.

I took the macro from the aspeed driver. I had some doubts about the
mmap code, but expected the driver to be working correctly. Maybe we
should set that field to drm_gem_cma_prime_mmap or implement the mmap
object function.

Best regards
Thomas



>=20
> 	Sam
>=20
>=20
>> -	.dumb_create =3D drm_gem_cma_dumb_create,
>> +	DRM_GEM_CMA_DRIVER_OPS,
>>  	.fops =3D &fops,
>>  	.name =3D "atmel-hlcdc",
>>  	.desc =3D "Atmel HLCD Controller DRM",
>> --=20
>> 2.26.2

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--XRnLKugHzCTbIFGd4ORGUEKTw5g4TfP04--

--VjBal5iuObJoSYxMzBgz8Y0G7T7qTunJk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl7LvA0ACgkQaA3BHVML
eiMnAwf+LTwppQdiTg588g9FUkJ7vVkZR6KH1V1hkzL55ZWDsbGiNHfGbkLe1wve
drB3+l79mIk7BfKLHldTBYhXxY58JaI2Rirqf5zBuB6fRHNjFwhwCy050AT68xdA
L2Js+mw+C2FIRT0Zm+l4Yd2UtT+6gDWGgIV03zhjnS0NUWTbh6psLfbJfvsBWeDJ
7Qfyp28tm5MBENniOV3QHcxEJ1IfHaLeXMjTj/fxtmguW++Bhbs/Xs0Kk4s6rSOE
9l/8sbB1Mi1i8ewRCHlsoWKPBZDhbk/dHjj7orPBbS0kZIguqBrT/rAqPX2UTqwy
8OKe6UaHCHiiKTbEBu8VlyazKtOALA==
=C3yP
-----END PGP SIGNATURE-----

--VjBal5iuObJoSYxMzBgz8Y0G7T7qTunJk--


--===============3783541498284452456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3783541498284452456==--

