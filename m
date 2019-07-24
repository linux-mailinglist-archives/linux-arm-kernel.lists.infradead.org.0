Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B9672968
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oeL3RHD++jhmKoR2QGJ/hfuOZtgFWtdawKaHn8bVORk=; b=M3FQ1nl3lbsK1I8jsI+uQ8epJ
	dS2E7L92oH+AubfxSnRr6/4Zw5R5ZliE6NI0c+Zp4kVf5xX3geBmuwwywLGQAa8FSpMY9VTmvFXsR
	uFSVpa3EfkJ2k3t1x8sJ/4OMEBvYjYq98+VRIZ4qIi8bxtYj1wQcUvapNlajhs/8u2PwlIOsVL8z/
	m3s+KAViiz5FJq9RCAaFDajoteAcDTz0eHdiDz5IHvDZhHlnWQjvrGyXLAlVA31eoS3ayjU/2mZ6o
	Pr2IOE+SCb3SIK88J/4hOgceVCLfZzGgCh2OEnR8yRrdPKTeJa4rNJaVnEvlJMEvMgbD+30Ijv/r/
	wuKF1v0vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCDV-0006Rq-Vm; Wed, 24 Jul 2019 08:01:42 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCD7-0006Qr-A9; Wed, 24 Jul 2019 08:01:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 713EBAD3E;
 Wed, 24 Jul 2019 08:01:13 +0000 (UTC)
Subject: Re: [PATCH v4 14/23] drm/tilcdc: Provide ddc symlink in connector
 sysfs directory
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Sam Ravnborg <sam@ravnborg.org>
References: <cover.1562843413.git.andrzej.p@collabora.com>
 <d1d415022c598fb7acd033f0f322dd67250adaa9.1562843413.git.andrzej.p@collabora.com>
 <20190723090532.GA787@ravnborg.org>
 <3ad60be5-49cf-4017-4b74-53a2d6272deb@collabora.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNKFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmNvbT7CwJQEEwEIAD4W
 IQRyF/usjOnPY0ShaOVoDcEdUwt6IwUCWznTtgIbAwUJA8JnAAULCQgHAgYVCgkICwIEFgID
 AQIeAQIXgAAKCRBoDcEdUwt6I7D7CACBK42XW+7mCiK8ioXMEy1NzGbXC51RzGea8N83oEJS
 1KVUtQxrkDxgrW/WLSl/TfqHFsJpdEFOv1XubWbleun3uKPy0e5vZCd5UjZPkeNjnqfCYTDy
 hVVsdOuFbtWDppJyJrThLqr9AgSFmoCNNUt1SVpYEEOLNE6C32BhlnSq21VLC+YXTgO/ZHTa
 YXkq54hHj63jwrcjkBSCkXLh37kHeqnl++GHpN+3R+o3w2OpwHAlvVjdKPT27v1tVkiydsFG
 65Vd0n3m/ft+IOrGgxQM1C20uqKvsZGB4r3OGR50ekAybO7sjEJJ1Obl4ge/6RRqcvKz4LMb
 tGs85D6tPIeFzsBNBFs50uABCADGJj+DP1fk+UWOWrf4O61HTbC4Vr9QD2K4fUUHnzg2B6zU
 R1BPXqLGG0+lzK8kfYU/F5RjmEcClsIkAaFkg4kzKP14tvY1J5+AV3yNqcdg018HNtiyrSwI
 E0Yz/qm1Ot2NMZ0DdvVBg22IMsiudQ1tx9CH9mtyTbIXgACvl3PW2o9CxiHPE/bohFhwZwh/
 kXYYAE51lhinQ3oFEeQZA3w4OTvxSEspiQR8dg8qJJb+YOAc5IKk6sJmmM7JfFMWSr22satM
 23oQ3WvJb4RV6HTRTAIEyyZS7g2DhiytgMG60t0qdABG5KXSQW+OKlZRpuWwKWaLh3if/p/u
 69dvpanbABEBAAHCwHwEGAEIACYWIQRyF/usjOnPY0ShaOVoDcEdUwt6IwUCWznS4AIbDAUJ
 A8JnAAAKCRBoDcEdUwt6I6X3CACJ8D+TpXBCqJE5xwog08+Dp8uBpx0T9n1wE0GQisZruACW
 NofYn8PTX9k4wmegDLwt7YQDdKxQ4+eTfZeLNQqWg6OCftH5Kx7sjWnJ09tOgniVdROzWJ7c
 VJ/i0okazncsJ+nq48UYvRGE1Swh3A4QRIyphWX4OADOBmTFl9ZYNPnh23eaC9WrNvFr7yP7
 iGjMlfEW8l6Lda//EC5VpXVNza0xeae0zFNst2R9pn+bLkihwDLWxOIyifGRxTqNxoS4I1aw
 VhxPSVztPMSpIA/sOr/N/p6JrBLn+gui2K6mP7bGb8hF+szfArYqz3T1rv1VzUWAJf5Wre5U
 iNx9uqqx
Message-ID: <acfd895d-ab59-0190-e25c-1827bd8d214b@suse.de>
Date: Wed, 24 Jul 2019 10:01:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3ad60be5-49cf-4017-4b74-53a2d6272deb@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_010117_643806_437E08D3 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Sean Paul <sean@poorly.run>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Dave Airlie <airlied@redhat.com>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jyri Sarha <jsarha@ti.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Vincent Abriou <vincent.abriou@st.com>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: multipart/mixed; boundary="===============5324708907169624954=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============5324708907169624954==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="3hEKoYM3ihXgipFwLohglgI6I6K0PHVBV"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--3hEKoYM3ihXgipFwLohglgI6I6K0PHVBV
Content-Type: multipart/mixed; boundary="KIKXUXCjxjc3xDRil2vLGI4WFDOmJ9a2q";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Sam Ravnborg <sam@ravnborg.org>
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 Douglas Anderson <dianders@chromium.org>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Vincent Abriou <vincent.abriou@st.com>, Krzysztof Kozlowski
 <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Dave Airlie <airlied@redhat.com>, freedreno@lists.freedesktop.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jyri Sarha <jsarha@ti.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Message-ID: <acfd895d-ab59-0190-e25c-1827bd8d214b@suse.de>
Subject: Re: [PATCH v4 14/23] drm/tilcdc: Provide ddc symlink in connector
 sysfs directory
References: <cover.1562843413.git.andrzej.p@collabora.com>
 <d1d415022c598fb7acd033f0f322dd67250adaa9.1562843413.git.andrzej.p@collabora.com>
 <20190723090532.GA787@ravnborg.org>
 <3ad60be5-49cf-4017-4b74-53a2d6272deb@collabora.com>
In-Reply-To: <3ad60be5-49cf-4017-4b74-53a2d6272deb@collabora.com>

--KIKXUXCjxjc3xDRil2vLGI4WFDOmJ9a2q
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 23.07.19 um 14:44 schrieb Andrzej Pietrasiewicz:
> Hi Sam,
>=20
> W dniu 23.07.2019 o=C2=A011:05, Sam Ravnborg pisze:
>> Hi Andrzej
>>
>> On Thu, Jul 11, 2019 at 01:26:41PM +0200, Andrzej Pietrasiewicz wrote:=

>>> Use the ddc pointer provided by the generic connector.
>>>
>>> Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
>>> ---
>>> =C2=A0 drivers/gpu/drm/tilcdc/tilcdc_tfp410.c | 1 +
>>> =C2=A0 1 file changed, 1 insertion(+)
>>>
>>> diff --git a/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
>>> b/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
>>> index 62d014c20988..c373edb95666 100644
>>> --- a/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
>>> +++ b/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
>>> @@ -219,6 +219,7 @@ static struct drm_connector
>>> *tfp410_connector_create(struct drm_device *dev,
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tfp410_connector->mod =3D mod;
>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 connector =3D &tfp410_connector=
->base;
>>> +=C2=A0=C2=A0=C2=A0 connector->ddc =3D mod->i2c;
>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 drm_connector_init(dev, connect=
or, &tfp410_connector_funcs,
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 DRM_MODE_CONNECTOR_DVID);
>>
>> When reading this code, it looks strange that we set connector->ddc
>> *before* the call to init the connector.
>> One could risk that drm_connector_init() used memset(..) to clear all
>> fields or so, and it would break this order.
>=20
> I verified the code of drm_connector_init() and cannot find any memset(=
)
> invocations there. What is your actual concern?

I think this echoes my concern about the implicit order of operation. It
seems too easy to get this wrong. If you don't want to add an additional
interface for setting the ddc field, why not add a dedicated initializer
function that sets the ddc field? Something like this.

int drm_connector_init_with_ddc(connector, funcs, ..., ddc)
{
	ret =3D drm_connector_init(connector, funcs, ...);
	if (ret)
		return ret;

	if (!ddc)
		return 0;

	connector->ddc =3D ddc;
	/* set up sysfs */

	return 0;
}

Best regards
Thomas

> Andrzej
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Linux GmbH, Maxfeldstrasse 5, 90409 Nuernberg, Germany
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=C3=BCrnberg)


--KIKXUXCjxjc3xDRil2vLGI4WFDOmJ9a2q--

--3hEKoYM3ihXgipFwLohglgI6I6K0PHVBV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl04EEEACgkQaA3BHVML
eiNRWAf8CYxCmH/26EWFNpq9GZQjDMvAU5wdcW44Lnp0dMtgf/nqPvbEtkPYWt1D
lMAlcSy9rrFFtW3E2HFwK5V9QbW9LvxdRaA7gK0ypMrYgmO5QECHQGMCaRxb/DpK
02ZW59khdYpqNbLfjZ3toTs6BiHuBS2OF5tHq4SbvHwdva4pzOQtwQ90TVrNcOp+
8kSGLB/0+CcOvKhgjd1uyw1w5lE/cILPT4sfXYlutlSRsHTCA7FwXHwhoqMyfYK4
xlDAr72YN6/Lt9gLuKqWSFX9O9vvSpMMjp6nnzFwCguc+Nz53L4ra49cJ8qPP6dY
wBV/ccooRzGp27r8ENmXR8wKLfTP8g==
=ol/N
-----END PGP SIGNATURE-----

--3hEKoYM3ihXgipFwLohglgI6I6K0PHVBV--


--===============5324708907169624954==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5324708907169624954==--

