Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DA8189CA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 14:11:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zMSl48OklmoHauYcIXjbau1IquTFFiFBIxOm5t/e2cA=; b=lMZblIAG0FHHDSw3MLn+dhPa+
	AJLmrnzcM2XrG4t388NXitXDzR/EJEEgfUR42l3EDuyD32STekYr897D3zwictL5C+traFU463+lr
	Y8py1jV9kBH8/E1VWxZzV+dMuv5VXyym1/S4z+Ug0oBFmx19dfSAZDNm8p/FXemFercx/ON3hDL8j
	9XAzqmMU1K2u+xSLUsSg4xPinA/INOLQLLYKqYpDmuVdZMeosJHbn+epFnTxrJh76CJQq1J4U9Ttz
	7MfOaIjvfnXqc2rCTly916rrbOB2UxCyrYLgvGzpSdFcAVp7hrJwSum0oXpjh4In8X76BXL6MSsvi
	Y4b87dFFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEYTz-0007bH-Mn; Wed, 18 Mar 2020 13:11:39 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEYTs-0007a1-8U; Wed, 18 Mar 2020 13:11:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alyssa) with ESMTPSA id 1E0CF294B84
Date: Wed, 18 Mar 2020 09:11:14 -0400
From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v5 5/5] drm/panfrost: Register devfreq cooling and
 attempt to add Energy Model
Message-ID: <20200318131114.GA1812@kevin>
References: <20200318114548.19916-1-lukasz.luba@arm.com>
 <20200318114548.19916-6-lukasz.luba@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200318114548.19916-6-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_061132_436113_5C9A2267 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com, festevam@gmail.com,
 Morten.Rasmussen@arm.com, robh@kernel.org, amit.kucheria@verdurent.com,
 lorenzo.pieralisi@arm.com, khilman@kernel.org, agross@kernel.org,
 daniel.lezcano@linaro.org, steven.price@arm.com, cw00.choi@samsung.com,
 mingo@redhat.com, linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de,
 orjan.eide@arm.com, daniel@ffwll.ch, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 mka@chromium.org, rdunlap@infradead.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com, kernel@pengutronix.de,
 sudeep.holla@arm.com, patrick.bellasi@matbug.net, shawnguo@kernel.org
Content-Type: multipart/mixed; boundary="===============1090817428167080784=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1090817428167080784==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Reviewed-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>

On Wed, Mar 18, 2020 at 11:45:48AM +0000, Lukasz Luba wrote:
> Register devfreq cooling device and attempt to register Energy Model. This
> will add the devfreq device to the Energy Model framework. It will create
> a dedicated and unified data structures used i.e. in thermal framework.
> The last NULL parameter indicates that the power model is simplified and
> created based on DT 'dynamic-power-coefficient', voltage and frequency.
>=20
> Reviewed-by: Steven Price <steven.price@arm.com>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>  drivers/gpu/drm/panfrost/panfrost_devfreq.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/panfrost/panfrost_devfreq.c b/drivers/gpu/dr=
m/panfrost/panfrost_devfreq.c
> index 413987038fbf..8759a73db153 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_devfreq.c
> @@ -105,7 +105,7 @@ int panfrost_devfreq_init(struct panfrost_device *pfd=
ev)
>  	}
>  	pfdev->devfreq.devfreq =3D devfreq;
> =20
> -	cooling =3D of_devfreq_cooling_register(dev->of_node, devfreq);
> +	cooling =3D devfreq_cooling_em_register(devfreq, NULL);
>  	if (IS_ERR(cooling))
>  		DRM_DEV_INFO(dev, "Failed to register cooling device\n");
>  	else
> --=20
> 2.17.1
>=20

--BXVAT5kNtrzKuDFl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQ17gm7CvANAdqvY4/v5QWgr1WA0FAl5yHe0ACgkQ/v5QWgr1
WA3gpxAAhQnRoPbq6S2+0Lb7C5bP7Ta67p3aDFRc/xxNEKsqRl5YcErm72knMqpa
ojkyaIkecKFeI6D1QS9UpFtSDzHdq+HsBJSnSBsR8ND6GOlUv3ZQhl7dQAf37exS
Kq64qQnpJfy/kcF5zStxtD145VJDXoX1By4AdnSg+kOuYi2HAKQ2SbQvYDd5ffk0
9fe6YagwE/iaz2o5z0c2EO6nBjstSo91/AKx99MwW7IfgJmgMZCGE0Q4UTduryr2
tFSBzWTStKCWxI2lDsrRQcF7KN4mZ2dZWgNFo4UU5tp36/kGHqKQ+Vzyaay8WWGU
IHgjKW+vo9TH8QyayRCCljtl/iYUbhrEa9n6APCnmW6sNsxPuO6KbZ3vzMz6WkLJ
/W1M+XIchveNFRZB7ku8DG4nLgISikgjMnPCO/F/y0NOQ8YaU7GeyeGj7yRom6LY
e4Oz34cToBULP5m6B1b/KGu013TwkRqwAoc2qHAlB5TXBXm/zOdyLqPo1/pgul30
H4+YKSUEl95b5w8URYnoKvf3sS0wocG4GvdC2pY8IOYRUNSmfsxiPW33Y7wcavgj
WF9YUFO5mRV1b+2QppuWp2UIwSjC7Uuh2lCTFhK4hod+RptE5h1MoKmQa2jSegr8
3uvfCXtDGQskJ+MDv9aUtGYTX14nPfwXUO3RPidKGgMF8r6W3to=
=pczP
-----END PGP SIGNATURE-----

--BXVAT5kNtrzKuDFl--


--===============1090817428167080784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1090817428167080784==--

