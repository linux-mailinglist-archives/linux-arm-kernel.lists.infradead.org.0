Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFC14368E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:29:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HkmvVtHbYHfk6dPjLSKRKcCtSeNgSULBPFbz6KwZVHA=; b=qLUfLOfeE9yarmlYrD2jBYQjd
	IzeVCmmK8F9I+Vgpz/HVcNCTW+9UfHzB6SXejJZHSruR7raJy/vsLlO48jFWfMUPiYmvP+PEvmooM
	vOV9yoQt2Ht2r7sTfXYk8Gl0UNsZniew4f1z0y4pmEjfqKwzp+8QwtoY11lxGw/rtrpAYklQyKYdG
	tNKCKaZDPnpgUPGe4biuad2cqmFeVvt0phd3L/3yHj5zlMDJ3bPNlwwmAHRvmH4JU3rt9pT3Dl109
	xVkcpfesWpLcBCHFD9RF/gNlO78TJae/UcjuC4ZF+wLaq4CNMKpBG8lXSkhd+8abNHirlZ9OSXve/
	7hIRmGkVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPnO-0006Ee-Cz; Thu, 13 Jun 2019 13:29:38 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPkJ-0003Xv-Ql
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:26:32 +0000
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 465A424000D;
 Thu, 13 Jun 2019 13:26:24 +0000 (UTC)
Date: Thu, 13 Jun 2019 14:50:24 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: Re: [PATCH v3 3/6] drm/modes: Allow to specify rotation and
 reflection on the commandline
Message-ID: <20190613125024.46yiiy6zrrqojajy@flea>
References: <cover.87b91639451f23d4ab68a7c9812f2dd158869025.1555591281.git-series.maxime.ripard@bootlin.com>
 <ba320b3a13c4444102b77c4d00f7c1dc810adc3c.1555591281.git-series.maxime.ripard@bootlin.com>
 <9ccb7573-d46e-4b90-7caa-7b8cd7b8e7a2@tronnes.org>
 <e2edb1dc-f719-93f0-5205-ecb7b44b057e@tronnes.org>
 <20190611132049.njlrgbtobzgyzyzh@flea>
 <c73e9c29-e20b-65e0-553c-67b9c2cd349a@tronnes.org>
MIME-Version: 1.0
In-Reply-To: <c73e9c29-e20b-65e0-553c-67b9c2cd349a@tronnes.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062628_067627_E5EF86DD 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
 Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2784148724339146124=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2784148724339146124==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ydwumpiccsdbmew2"
Content-Disposition: inline


--ydwumpiccsdbmew2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 12, 2019 at 03:21:19PM +0200, Noralf Tr=F8nnes wrote:
> >> The only way I see for that to happen, is to set
> >> ->panel_orientation. And to repeat myself, imo that makes
> >> 'orientation' a better name for this video=3D option.
> >
> > orientation and rotation are two different things to me. The
> > orientation of a panel for example is absolute, while the rotation is
> > a transformation. In this particular case, I think that both the
> > orientation and the rotation should be taken into account, with the
> > orientation being the default state, and the hardware / panel will
> > tell us that, while the rotation would be a transformation from that
> > default to whatever the user wants.
> >
> > More importantly, the orientation is a property of the hardware (ie,
> > how the display has been assembled), while the rotation is a software
> > construct.
> >
> > And if the property being used to expose that is the rotation, I guess
> > it would make sense to just use the same name and remain consistent.
>
> Ok, I see. Based on this, I would assume that rotation would be relative
> to the orientation, but I see that in this patch rotation doesn't take
> orintation into account, it just overwrites it.

Yeah, that's a good point. I've updated the next version to add the
rotation on the command line to the orientation.

> I don't how userspace deals with rotation on top of orientation.

The orientation is exposed through the property, and the result is
available through the plane's rotation, so I guess that it's enough?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ydwumpiccsdbmew2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQJGkAAKCRDj7w1vZxhR
xSzYAP461yNEAGBB4hTUD6C0V9uVqt4QG/X4SknIL59OkTehOgD+I38CsWEUTkXK
TCnMtoCnqwx3576oXEw162ikosk6ow4=
=MGnC
-----END PGP SIGNATURE-----

--ydwumpiccsdbmew2--


--===============2784148724339146124==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2784148724339146124==--

