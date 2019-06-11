Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E220E3CC20
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 14:50:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/19Jl2aQU3hCR5k+4Yme6rWoQCvEDo8uJvSrkz9BtfA=; b=IRqMglMOkChBnc/RH3bcXJlMc
	zWAaYMzCsrKuskQU6nrowoR8NV8fooplSQJsWEMvw68uNWTtkf5PzCzfLj9W1R2SFJYL5NpFsaiZo
	MqaWQkfV2oTIzDh51PEKKAsxEN3AV1a+gXi692pwqNjyzRl3ozPFFPi8OOejXNbzP5vXrR6h44d08
	AgyzEJfOzM6HykpWk0yeoA/zvuNMqdTNeIH7HH8aQnZBbb27gFRlq3OjBO7NHd2VILnZd46CWvVTX
	uV2SpghBSrn+EJauYqHPS5MsvmS7wF0uBxNHLtuAbZmfq2dTdAl7goEeks4Q3o76rRlUX3kyOios1
	n7uvsoEiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hagE4-0000Cc-Mz; Tue, 11 Jun 2019 12:50:08 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hagDo-0000CC-2g
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 12:49:53 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 6E576E000B;
 Tue, 11 Jun 2019 12:49:33 +0000 (UTC)
Date: Tue, 11 Jun 2019 14:49:33 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: Re: [PATCH v3 3/6] drm/modes: Allow to specify rotation and
 reflection on the commandline
Message-ID: <20190611124933.2g6l3d7nx6lqft6k@flea>
References: <cover.87b91639451f23d4ab68a7c9812f2dd158869025.1555591281.git-series.maxime.ripard@bootlin.com>
 <ba320b3a13c4444102b77c4d00f7c1dc810adc3c.1555591281.git-series.maxime.ripard@bootlin.com>
 <9ccb7573-d46e-4b90-7caa-7b8cd7b8e7a2@tronnes.org>
MIME-Version: 1.0
In-Reply-To: <9ccb7573-d46e-4b90-7caa-7b8cd7b8e7a2@tronnes.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_054952_279164_2B3D7000 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: eben@raspberrypi.org, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2756287580686673464=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2756287580686673464==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qcampvemx35tqlo2"
Content-Disposition: inline


--qcampvemx35tqlo2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Noralf,

On Thu, Apr 18, 2019 at 06:40:42PM +0200, Noralf Tr=F8nnes wrote:
> Den 18.04.2019 14.41, skrev Maxime Ripard:
> > +	/**
> > +	 * We want the rotation on the command line to overwrite
> > +	 * whatever comes from the panel.
> > +	 */
> > +	cmdline =3D &connector->cmdline_mode;
> > +	if (cmdline->specified &&
> > +	    cmdline->rotation !=3D DRM_MODE_ROTATE_0)
>
> I believe you need to drop that second check, otherwise rotate=3D0 will
> not overwrite panel rotation.

Good catch :)

> > +		} else if (!strncmp(option, "reflect_x", delim - option)) {
> > +			rotation |=3D DRM_MODE_REFLECT_X;
> > +			sep =3D delim;
> > +		} else if (!strncmp(option, "reflect_y", delim - option)) {
>
> I think you should drop reflect_x and _y for now since they're not
> supported. People like me that only reads code and not documentation
> (ahem..) will get the impression that this should work.

I'm not sure what you mean here, this is definitely supposed to
work. Is there a limitation you're thinking of?

> Documentation/fb/modedb.txt needs to be updated with this new video=3D op=
tion.

Will do, thanks!

maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--qcampvemx35tqlo2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXP+jXQAKCRDj7w1vZxhR
xfvrAP9E0DKrTicqOvNTKzLaonrYJBPMZrJqQy+sMFs5mjktOQEAt/lC2+QSLYLS
AvMY9R0PCv5cW1OINZYN9NIDKX6x/wM=
=SS1e
-----END PGP SIGNATURE-----

--qcampvemx35tqlo2--


--===============2756287580686673464==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2756287580686673464==--

