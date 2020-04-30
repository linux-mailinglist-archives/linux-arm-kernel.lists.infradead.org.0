Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01FC1C02F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iurdLvFTsRFwtH/2qBSdg1MsWzcd7BizPCyF6NEd0WY=; b=F1917v1haTM1U0Xq2Lu05C2J4
	QcX8WKm7UK/KlyfL+mRmw49CBCA/LnCLWNWMEbvMaecC1kP0LJHOkN28XSB7rdQB8pxynTsBJ2d3F
	QCepIN8ptmWXz34b/GJPVh2xMUzS+sgRhr95WR1KNeJD6nlTSBuN1tILVYmekq/RED8AuzK/31JV/
	p/OBX1bZG13eRHZBhVOuaFKT71qesHh3GL/E3krzK/qWmL+6bYkp8GhvIjACPbFsyHKjDd6G30B/e
	B/fPhsviGdO5QD3fyL+3/TxfZOWtF6DN7acsIPvvEl7yXa399niVlIkfEGbIqq4qf8tFfc3krBUbs
	vdc9mxC1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCIs-0007nL-TV; Thu, 30 Apr 2020 16:44:50 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCHu-0006mM-29; Thu, 30 Apr 2020 16:43:54 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id CB8E11BF203;
 Thu, 30 Apr 2020 16:43:43 +0000 (UTC)
Date: Thu, 30 Apr 2020 18:43:43 +0200
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2 4/4] media: rockchip: rga: Only set output CSC mode
 for RGB input
Message-ID: <20200430164343.GB1526319@aptenodytes>
References: <20200423200937.1039257-1-paul.kocialkowski@bootlin.com>
 <20200423200937.1039257-5-paul.kocialkowski@bootlin.com>
 <c49a060e7f5da9564e375fdd47117d3f901e5d00.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <c49a060e7f5da9564e375fdd47117d3f901e5d00.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_094350_404608_4B37DF9B 
X-CRM114-Status: GOOD (  23.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, justin.swartz@risingedge.co.za,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hansverk@cisco.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Johan Jonker <jbx6244@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2275823511697230659=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2275823511697230659==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eRtJSFbw+EEWtPj3"
Content-Disposition: inline


--eRtJSFbw+EEWtPj3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ezequiel,

On Sat 25 Apr 20, 10:46, Ezequiel Garcia wrote:
> Hi Paul,
>=20
> Thanks a lot for the patch.
>=20
> I haven't had the chance to test this,
> but I'd say you are fixing a long time issue here.
>=20
> I really appreciate that.
>=20
> On Thu, 2020-04-23 at 22:09 +0200, Paul Kocialkowski wrote:
> > Setting the output CSC mode is required for a YUV output, but must not
> > be set when the input is also YUV. Doing this (as tested with a YUV420P
> > to YUV420P conversion) results in wrong colors.
> >=20
> > Adapt the logic to only set the CSC mode when the output is YUV and the
> > input is RGB.
> >=20
> > Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  drivers/media/platform/rockchip/rga/rga-hw.c | 18 +++++++++++-------
> >  1 file changed, 11 insertions(+), 7 deletions(-)
> >=20
> > diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/med=
ia/platform/rockchip/rga/rga-hw.c
> > index 4be6dcf292ff..cbffcf986ccf 100644
> > --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> > +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> > @@ -216,13 +216,17 @@ static void rga_cmd_set_trans_info(struct rga_ctx=
 *ctx)
> >  	}
> > =20
> >  	if (ctx->out.fmt->hw_format >=3D RGA_COLOR_FMT_YUV422SP) {
>=20
> Since we are already here touching this code, would you mind
> adding another patch, to do some cleaning first?
>=20
> First, replace the nested ifs with a boolean operator.
> Then, introduce some IS_YUV (or IS_RGB) macro, making the above test
> more like IS_YUV(out_hw_format).
>=20
> Finally, perhaps a comment along the lines of your commit message:
>=20
> """
> Setting the output CSC mode is required for a YUV output,
> but must not be set when the input is also YUV.
> """
>=20
> Details up to you :-)
>=20
> After the clean-up patch, which would be just cosmetics,
> your fix should be cleaner and more clear.

All done in v3, thanks for the feedback :)

Cheers,

Paul

> Thanks,
> Ezequiel
> =20
> > -		switch (ctx->out.colorspace) {
> > -		case V4L2_COLORSPACE_REC709:
> > -			dst_info.data.csc_mode =3D RGA_SRC_CSC_MODE_BT709_R0;
> > -			break;
> > -		default:
> > -			dst_info.data.csc_mode =3D RGA_DST_CSC_MODE_BT601_R0;
> > -			break;
> > +		if (ctx->in.fmt->hw_format < RGA_COLOR_FMT_YUV422SP) {
> > +			switch (ctx->out.colorspace) {
> > +			case V4L2_COLORSPACE_REC709:
> > +				dst_info.data.csc_mode =3D
> > +					RGA_SRC_CSC_MODE_BT709_R0;
> > +				break;
> > +			default:
> > +				dst_info.data.csc_mode =3D
> > +					RGA_DST_CSC_MODE_BT601_R0;
> > +				break;
> > +			}
> >  		}
> >  	}
> > =20
>=20
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--eRtJSFbw+EEWtPj3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl6rAD8ACgkQ3cLmz3+f
v9EZUgf/ZXVht/wSchF8mkR6JIJf2Oywvx2GVKvvg/AmHfOt1XTsRKHpmGz8hQEH
NbOjsdq8EVD+tGKnOgP/DyjN4cTtkpNFJj89Bi95hb+7AyBu+ixbDH25hV2jYija
hYHjahA0/MqEN6hFxB4JKlYtd642n5RZ14NCxWqerWKha6LmfsLFT5tdytpQQ/8W
2DTfATXGqnDr5Mmds+uFfRoXGhN9D9OxH+XLSmKsVOtsYurEShfPLIXscec00Mdn
gjvMhqTTat/ttKD1OWnT6C3wuxAE0QrxHg0VvZ2LchjGq4VZbRdF/iQ+DJ4TlASi
5NDfLWJCRezzUYzh000lLcAHVxOAQw==
=2n7E
-----END PGP SIGNATURE-----

--eRtJSFbw+EEWtPj3--


--===============2275823511697230659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2275823511697230659==--

