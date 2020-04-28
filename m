Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00D51BC439
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 17:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pyOZg+tVy7U6BAt4yFG+7aVW8uqfUvPOcV0V1G2f59s=; b=FmAQZcTVuBzpARQwDs5WR1Zv4
	uqxHRguWE8VnH3AOO2TgJny0tHmgoZDI65w/2aaopC8YNDCiI0todNUzGxaEcHLpBMAYk8JgjE1m6
	engx3h8d3KW7B3uN1b/bDeeofy5wsErOKrWNPmHqWNereIksaZc6HlrxKqLZJqUS8xM+ImRg1VdbD
	fGRpIlH5pgqSrTWAdNPpIgmUK6gnAQeP9K9Z7xICYgjKWEJbkowmvFlXdJAoP7QJNUNUXKHGZ7FbX
	Qh6+cufdBqyx8A76+0+fNv7jX56y9AkFV1nxrsvIvXQIrgHchm2Vp7Jl0WAvPATPMWMHH5bI0SGVm
	uqfmLGhjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSc8-0003Y4-4h; Tue, 28 Apr 2020 15:57:40 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTSbu-0003W3-Fm; Tue, 28 Apr 2020 15:57:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 59D541C2;
 Tue, 28 Apr 2020 11:57:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 28 Apr 2020 11:57:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=UeapUTooUsi8NUN5twL9bPAz6Yg
 /DJgy7xJgqDr5Y6c=; b=RLk9EM1C9TJEvZCAU5DJZ0cCSNanK5z1+QD4E7Ut9d4
 +iLj2VcNxVMWt0IJGCua/Ffy2XMG65Cr0smcaCNQ6MfefND1JC0eaQv3v6t+ene8
 vIbhO6SStety36zyW+DYBAOxRJk3ZNdbNDjUh2TVPJbvjSNnsy9x0e0xu1c2M8wf
 jc173DzSwV6rhtL7J6GPBJWzAYYYmxaq+88t2FREtl6AsvVKpYLpeb8N8g5ZpOoB
 iMh+V5KaT9jpgHvadzvQUNW494RbSEbKw9iWkBglIbr+KvkYquNwqq6F3Plrq3wJ
 Ks0h3MR/LSe0I+LjgNooNj8NJ/LvKOxkPJ1GFb+8mTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=UeapUT
 ooUsi8NUN5twL9bPAz6Yg/DJgy7xJgqDr5Y6c=; b=hgDtuLchjXMz1TEkEUCBHw
 bUfyNf/9vo+YS+uAIhVpeb8q7R3LMXDl/lb40k0Yt35l9djrIarWIMJXKgBcn/qf
 67PtECtSJghbPBtG/65qpIsI9X0MMxzmVRqiXYulD3S9L4yq9qeZ280l5EbUpnjD
 Y1ouItmn4dfEKTg3de42m3Ovn7cu1dN7C6Vv3Mc7vcmI/zjP7kxiLTlAwqCW2/c8
 o6wX7AjobJ5utOh6qX4GU94rb6jyg1tbHjjI7USQF8COu5oNZ9sMumCVrrV+4zZF
 SbWZ91JdnCT7dKWMkFvd/Y04TiIBeuXSDtbI/cQAYEzaXjPjej4ziGKLpI4KW8Zg
 ==
X-ME-Sender: <xms:XlKoXlpiljCRuyEbI1P70oZLf3sZF27Th0b5wKxhdtwWIzMKTKT1lg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedugdelgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:XlKoXvITVDvxYw84oLi5IlO3HLnZEoiWzIY9G9SS3fmcuVrK0M6bbQ>
 <xmx:XlKoXoQAdJX7pouiH8Y4iaruQDf4vGU9llAm7J0U8G1xj9sxbGty0Q>
 <xmx:XlKoXu_ZOxxw57ufXt3rtmZHB_MTP2GeFsXio4LbpWm4q2IasfX4Xw>
 <xmx:YVKoXoxrLRzekRuL-T3mPvgCesyROqCeLee8hFDJ57WjMcKqHEWEGOqitAg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 124523280068;
 Tue, 28 Apr 2020 11:57:17 -0400 (EDT)
Date: Tue, 28 Apr 2020 17:57:11 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: [PATCH v2 79/91] drm/vc4: hdmi: Deal with multiple debugfs files
Message-ID: <20200428155711.efpq6vbqcq52gjk5@gilmour.lan>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <4cd617827cc28875ef36f3632122a83cff2ea4a7.1587742492.git-series.maxime@cerno.tech>
 <63f9e71a-1beb-7a67-ea48-dbc579fa3161@i2se.com>
MIME-Version: 1.0
In-Reply-To: <63f9e71a-1beb-7a67-ea48-dbc579fa3161@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_085726_782785_C2B270A4 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============3048463841235700224=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3048463841235700224==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6nlx63qexjyyiyf5"
Content-Disposition: inline


--6nlx63qexjyyiyf5
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Stefan,

On Sat, Apr 25, 2020 at 11:26:31PM +0200, Stefan Wahren wrote:
> Am 24.04.20 um 17:35 schrieb Maxime Ripard:
> > The HDMI driver was registering a single debugfs file so far with the n=
ame
> > hdmi_regs.
> >
> > Obviously, this is not going to work anymore when will have multiple HD=
MI
> > controllers since we will end up trying to register two files with the =
same
> > name.
> >
> > Let's use the ID to avoid that name conflict.
>=20
> even with this patch there is a name conflict in debugfs using Linux
> 5.7-rc1. Dave Stevenson addressed this by using different card names
> [1]. Since this patch won't apply anymore here is my suggestion:
>=20
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdm=
i.c
> index 29287ab..7209397 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> @@ -1181,9 +1181,14 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi
> *vc4_hdmi)
> =A0
> =A0=A0=A0=A0 card->dai_link =3D dai_link;
> =A0=A0=A0=A0 card->num_links =3D 1;
> -=A0=A0=A0 card->name =3D "vc4-hdmi";
> =A0=A0=A0=A0 card->dev =3D dev;
> =A0
> +=A0=A0=A0 if (vc4_hdmi->variant->encoder_type =3D=3D VC4_ENCODER_TYPE_HD=
MI1) {
> +=A0=A0=A0 =A0=A0=A0 card->name =3D "vc4-hdmi1";
> +=A0=A0=A0 } else {
> +=A0=A0=A0 =A0=A0=A0 card->name =3D "vc4-hdmi";
> +=A0=A0=A0 }
> +

Thinking about this some more, we don't really need VC4_ENCODER_TYPE_HDMI0 =
and
HDMI1, and it can all work with the same encoder type for both, so I'll drop
them.

To address this issue though, we can add a card name string to the variant,=
 like
I did for debugfs. Is that alright for you?

Maxime

--6nlx63qexjyyiyf5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqhSVwAKCRDj7w1vZxhR
xXjUAP4soMkyOTFFSXXn/qMZXtJpGyIJR6qHlIruzu9KCXFNogEAqHA7EpmVcFbT
+9FFfp7tSgB32/xDKpblWqG4wa8yaAY=
=nBTY
-----END PGP SIGNATURE-----

--6nlx63qexjyyiyf5--


--===============3048463841235700224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3048463841235700224==--

