Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9DD4368C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:29:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1wUeXDZ4mTaTt2Wep0bI2dp8Q9U7H24WYRywOkvVg5g=; b=dJw/ADP3Wjv4fnv1GDNoK12Bj
	pGCCZdgDO6x+r0jND/zlEXeCDUPO3UVxu/iKmIinsFUpz04NKTPDPOaFwwDQGrF+yz0MvfT02T8Aq
	F3T445ikYTFc4/m6OEVDsUVvus4ovLGroSVPZfbj+BPsipAL3/22bGZWUIBxppEhijjNGTD8BtOrt
	giSySIm2cSJW+aueMO/Iht9wGdSh2/IUgVTNO08dD+XyApF1s9eWv9wqODJiWry/+allF5kj2d3KA
	8f1evJpXon8YSBwiFzIpZ9X7zVZlxKXEE3GtYsGfDbjvkUNw9qF66U3rNe9EvaEqBO1qdunZ2MEX6
	SkGhTb1LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPmo-0005lH-Pw; Thu, 13 Jun 2019 13:29:02 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPkJ-0003X2-5n
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:26:30 +0000
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 88D46240015;
 Thu, 13 Jun 2019 13:26:09 +0000 (UTC)
Date: Wed, 12 Jun 2019 17:54:06 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: Re: [PATCH v3 3/6] drm/modes: Allow to specify rotation and
 reflection on the commandline
Message-ID: <20190612155406.kjv6z7jk74bblfts@flea>
References: <cover.87b91639451f23d4ab68a7c9812f2dd158869025.1555591281.git-series.maxime.ripard@bootlin.com>
 <ba320b3a13c4444102b77c4d00f7c1dc810adc3c.1555591281.git-series.maxime.ripard@bootlin.com>
 <9ccb7573-d46e-4b90-7caa-7b8cd7b8e7a2@tronnes.org>
 <20190611124933.2g6l3d7nx6lqft6k@flea>
 <1d0d6259-54cb-9a26-003d-2a35b8a40f3f@tronnes.org>
MIME-Version: 1.0
In-Reply-To: <1d0d6259-54cb-9a26-003d-2a35b8a40f3f@tronnes.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062627_475612_F1FD832B 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
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
Content-Type: multipart/mixed; boundary="===============7099746419947884823=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7099746419947884823==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3wxmvvtbskp5zcmd"
Content-Disposition: inline


--3wxmvvtbskp5zcmd
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 12, 2019 at 02:43:44PM +0200, Noralf Tr=F8nnes wrote:
> Den 11.06.2019 14.49, skrev Maxime Ripard:
> >>> +		} else if (!strncmp(option, "reflect_x", delim - option)) {
> >>> +			rotation |=3D DRM_MODE_REFLECT_X;
> >>> +			sep =3D delim;
> >>> +		} else if (!strncmp(option, "reflect_y", delim - option)) {
> >>
> >> I think you should drop reflect_x and _y for now since they're not
> >> supported. People like me that only reads code and not documentation
> >> (ahem..) will get the impression that this should work.
> >
> > I'm not sure what you mean here, this is definitely supposed to
> > work. Is there a limitation you're thinking of?
> >
>
> It's this one in drm_client_panel_rotation() which limits rotation to
> DRM_MODE_ROTATE_180:
>
> 	/*
> 	 * TODO: support 90 / 270 degree hardware rotation,
> 	 * depending on the hardware this may require the framebuffer
> 	 * to be in a specific tiling format.
> 	 */
> 	if (*rotation !=3D DRM_MODE_ROTATE_180 || !plane->rotation_property)
> 		return false;

Indeed, it doesn't work anymore since I rebased on your work. I'll fix
this, thanks!

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--3wxmvvtbskp5zcmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQEgHgAKCRDj7w1vZxhR
xVtoAP4s4HFc5+Xz+AXPD/wlio4qU+eBrbfl4+JEmTmEajYFegD/ZE7kOWnv9p2h
CSwUuDXLN0UExixZ6eKQuhZLzV4pdAg=
=axG9
-----END PGP SIGNATURE-----

--3wxmvvtbskp5zcmd--


--===============7099746419947884823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7099746419947884823==--

