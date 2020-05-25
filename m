Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C811E0EB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 14:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tUY6vHWDboMBkqONZCqSKsLaHzUO4GVktYtgODaKa6A=; b=jJdj4DrNFd7cMDFJ4EGxu6IB3
	dy8ahkaSKDOsX+1jWplyHXitVSWIyd7P4UsFZcnLsMCTkGNck/2sBNGxIlN1RvuOdVSPVQeH7VmnA
	bJN97qP2DAVZMd+aO3ZQfnnNYaQTLMuVEEPHjTpdwuyDJO4oS9jAUMBHGwmKxVXESe660jJ5OdU+G
	oeD93RtmSmllBRxUz8zR2ll4dvS4jt4LHcX1FUP849ay9hzWh7HDaPWLnWcHf1ffheKmp+Jbi9Za5
	BRTfHQyoxdHFo4bNKnPZyPO7IevHwwak/z1puc7Rz8u9v7G45+4WMHnq0mnYpoD8m2qRkt30Vq9nz
	LBFRee8dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCa9-00085m-FD; Mon, 25 May 2020 12:51:53 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCZy-00085H-Eo
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 12:51:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 4928DAB89;
 Mon, 25 May 2020 12:51:42 +0000 (UTC)
Subject: Re: [PATCH 12/21] drm/mcde: Use GEM CMA object functions
To: Linus Walleij <linus.walleij@linaro.org>
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-13-tzimmermann@suse.de>
 <CACRpkdaHuRHiNjisai2d-karW6y11M2qsPkx5Hn0sfc8T6B_qQ@mail.gmail.com>
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
Message-ID: <402b57b6-0827-2659-b676-dc633bf6c444@suse.de>
Date: Mon, 25 May 2020 14:51:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdaHuRHiNjisai2d-karW6y11M2qsPkx5Hn0sfc8T6B_qQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_055142_789274_CE42B33C 
X-CRM114-Status: GOOD (  14.85  )
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Neil Armstrong <narmstrong@baylibre.com>, Dave Airlie <airlied@linux.ie>,
 Liviu Dudau <liviu.dudau@arm.com>, Stefan Agner <stefan@agner.ch>,
 Philippe Cornu <philippe.cornu@st.com>, Paul Cercueil <paul@crapouillou.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mihail Atanassov <mihail.atanassov@arm.com>, Sam Ravnborg <sam@ravnborg.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Marek Vasut <marex@denx.de>,
 Fabio Estevam <festevam@gmail.com>, abrodkin@synopsys.com,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 k00278426 <kong.kongxinwei@hisilicon.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, james.qian.wang@arm.com,
 Joel Stanley <joel@jms.id.au>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "Chenfeng \(puck\)" <puck.chen@hisilicon.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Alison Wang <alison.wang@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, John Stultz <john.stultz@linaro.org>,
 Jyri Sarha <jsarha@ti.com>, Chen-Yu Tsai <wens@csie.org>,
 Vincent Abriou <vincent.abriou@st.com>, Sascha Hauer <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 Boris Brezillon <bbrezillon@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Yannick Fertre <yannick.fertre@st.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Kevin Hilman <khilman@baylibre.com>,
 Rongrong Zou <zourongrong@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Brian Starkey <brian.starkey@arm.com>
Content-Type: multipart/mixed; boundary="===============2117003861907919174=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2117003861907919174==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="zJ8L5GO5K4xmz0sawC0VQVEZtsEfn0mxN"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--zJ8L5GO5K4xmz0sawC0VQVEZtsEfn0mxN
Content-Type: multipart/mixed; boundary="NSN7BNSi5GVQPSnhJLZi5A5t0JGH3UaDL";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: abrodkin@synopsys.com, Dave Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, james.qian.wang@arm.com,
 Liviu Dudau <liviu.dudau@arm.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>,
 Brian Starkey <brian.starkey@arm.com>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@aj.id.au>, Sam Ravnborg <sam@ravnborg.org>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Alison Wang <alison.wang@nxp.com>, Xinliang Liu <xinliang.liu@linaro.org>,
 Rongrong Zou <zourongrong@gmail.com>, John Stultz <john.stultz@linaro.org>,
 k00278426 <kong.kongxinwei@hisilicon.com>,
 "Chenfeng (puck)" <puck.chen@hisilicon.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Paul Cercueil <paul@crapouillou.net>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman
 <khilman@baylibre.com>, Marek Vasut <marex@denx.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Vincent Abriou <vincent.abriou@st.com>,
 Yannick Fertre <yannick.fertre@st.com>,
 Philippe Cornu <philippe.cornu@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>, Chen-Yu Tsai <wens@csie.org>,
 Jyri Sarha <jsarha@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Message-ID: <402b57b6-0827-2659-b676-dc633bf6c444@suse.de>
Subject: Re: [PATCH 12/21] drm/mcde: Use GEM CMA object functions
References: <20200522135246.10134-1-tzimmermann@suse.de>
 <20200522135246.10134-13-tzimmermann@suse.de>
 <CACRpkdaHuRHiNjisai2d-karW6y11M2qsPkx5Hn0sfc8T6B_qQ@mail.gmail.com>
In-Reply-To: <CACRpkdaHuRHiNjisai2d-karW6y11M2qsPkx5Hn0sfc8T6B_qQ@mail.gmail.com>

--NSN7BNSi5GVQPSnhJLZi5A5t0JGH3UaDL
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 25.05.20 um 13:36 schrieb Linus Walleij:
> On Fri, May 22, 2020 at 3:52 PM Thomas Zimmermann <tzimmermann@suse.de>=
 wrote:
>=20
>> The mcde driver uses the default implementation for CMA functions. The=

>> DRM_GEM_CMA_DRIVER_OPS macro now sets these defaults in struct drm_dri=
ver.
>> All remaining operations are provided by CMA GEM object functions.
>>
>> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>=20
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Could you boot-test with the patchset applied?

Best regards
Thomas

>=20
> Yours,
> Linus Walleij
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--NSN7BNSi5GVQPSnhJLZi5A5t0JGH3UaDL--

--zJ8L5GO5K4xmz0sawC0VQVEZtsEfn0mxN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl7Lv1oACgkQaA3BHVML
eiNO5wf+LrZINJDg9UtSTltNV/eAjgWGe7pSyVg9mN11PdInfbThjd6P7/oA9omu
onztvCu6MJKLzMQzhZvthKOh0G0EZMa/bMkPKecl9CPlU1b6UEtS8LMe4mFprzdB
CH2xrjLzXhkqXf9wiZcNoh38uLyKsZiaNK4CI8H6szgRX3xPzlwvuXxOU2ikmPqi
lvaM6oSgGprgt3pJv+MAWpGypQgyGrpgoYtPZ2kxDI88r9qBMijDHn3SvHmwHDdt
Dt192X8r4j1zlyR3Qnv3si1txQT6bUW3ksOu/BWeJHZcc+bGxg2KDpXNeqQ1gFj5
bwypUozB3N79k5xT0xMxWVvwHBCNFw==
=Pgfx
-----END PGP SIGNATURE-----

--zJ8L5GO5K4xmz0sawC0VQVEZtsEfn0mxN--


--===============2117003861907919174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2117003861907919174==--

