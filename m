Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79C1121B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 20:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qwOLYgOQPpxBjWsjui2U4VIsC7+bwJlStNhAUi/f0pQ=; b=uFd2EdnAwN3ox45xf05XgETC0
	xXRbx3qp6mYN6N68Xh8S8O3CdOvf3TmDT+wTRNEmEIUcXjzEIfEdlCOQ9RDJdY7F/DoxHdo5Wy376
	6kWQPNlogUh7AM5+lesZNupk4l1Nc259DwAS/qRZAAnqR1v1k3mhSC6QHsVRJI/gJaVcvWs9ukSkf
	AplHoEQXSqM1ybgHVbm3KLkIn4nj1FVJhvZjSQi9CFZ0jfTKykAlKii5fHP3uW9z50NKH1t7eIDnr
	FjXnLJY2aVaFuPdpo2zP7Ljh57DS973DaD1fPGl2Pz1fOiHz98yKdVk1R6l0pZuPoVHQoIDHSn5QZ
	Qiik103CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMGAT-0000Mb-Oa; Thu, 02 May 2019 18:10:49 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMGAM-0000MF-Dw
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 18:10:44 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 0A753200006;
 Thu,  2 May 2019 18:10:29 +0000 (UTC)
Date: Thu, 2 May 2019 20:10:29 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: add PIO VCC bank supplies for
 Pine H64
Message-ID: <20190502181029.dy4bu2v3qdqljejs@flea>
References: <20190424062543.61852-1-icenowy@aosc.io>
 <20190502074303.g3px63n4v4o7xade@flea>
 <8CB1EDA4-E4B7-486D-8BCD-884E0025C6EA@aosc.io>
MIME-Version: 1.0
In-Reply-To: <8CB1EDA4-E4B7-486D-8BCD-884E0025C6EA@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_111042_624379_F6D2F283 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-sunxi@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2577561173692239624=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2577561173692239624==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ogx5tjikbf2c3v7p"
Content-Disposition: inline


--ogx5tjikbf2c3v7p
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 02, 2019 at 03:46:17PM +0800, Icenowy Zheng wrote:
>
>
> =E4=BA=8E 2019=E5=B9=B45=E6=9C=882=E6=97=A5 GMT+08:00 =E4=B8=8B=E5=8D=883=
:43:03, Maxime Ripard <maxime.ripard@bootlin.com> =E5=86=99=E5=88=B0:
> >Hi,
> >
> >On Wed, Apr 24, 2019 at 02:25:43PM +0800, Icenowy Zheng wrote:
> >> The Allwinner H6 SoC features tweakable VCC for PC, PD, PG, PL and PM
> >> banks.
> >>
> >> This patch adds supplies for PC and PD banks on Pine H64 board. PG
> >and
> >> PM banks are used for Wi-Fi and should be added when Wi-Fi is added
> >
> >Not really. The regulator is still there, whether we use it or not. If
> >it's not used, then it will be left disabled so it doesn't really
> >change anything.
>
> Okay, I will include them in the next revision.
>
> >
> >> PL bank is where PMIC is attached, and currently if a PMIC regulator
> >> is added for it a dependency loop will happen.
> >
> >I guess we should fix that somehow
>
> But this patch is needed for eMMC to be functional again in HS200 mode, s=
o I hope
> it can get applied before this get fixed.

Yep, sure

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ogx5tjikbf2c3v7p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMsylQAKCRDj7w1vZxhR
xeoiAP44NHYBSHTIGLN3XJxbGfAnItMHslGpuTmzgJu/MEen1AD/UKdw+42VNQ70
d3em7IPxIATxVLFG4eOlrhX6/oqsBQM=
=G4jo
-----END PGP SIGNATURE-----

--ogx5tjikbf2c3v7p--


--===============2577561173692239624==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2577561173692239624==--

