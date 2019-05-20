Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC50B22E0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:11:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uKe+tXkktAyckLNXmRqfEhdyiAYbX/O3USeSb+sAqgY=; b=QOawvhqdQaCKzoGhpVrAWhhhE
	GRjw3WfFg2yIlFC22yAdFfMC8jtNdGMuOc5uCq6g5Pjk37+TOEp7ry33oCN2gMMt9fXWwcV+Rk49M
	m95Iaa+41xmmEJNBfbM+DrNb+VW/S0de90ib3F+85zxwU28oSZ9zkWn7RD4C7bpA29f2+WGOrr6yL
	S/aqPJO8OOnrasKoJcJ2/g8729MhmW0tQdnb5ExZ+R2oI9aItghLhgpTmlugU6EnLLKe1MjPD/0pF
	HULFKhfOZpdpJ+PJ2UM0v7O67M04D58iy2Yftv8NUqqs6qtg7+jEPRH1WDZ3H7y5MHD3Af007I3uV
	C0y/S0V+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdOK-0000s9-VS; Mon, 20 May 2019 08:11:28 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdN0-0006YT-5l
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:10:08 +0000
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 5533010000C;
 Mon, 20 May 2019 08:09:42 +0000 (UTC)
Date: Mon, 20 May 2019 10:09:42 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v2 3/4] arm64: DTS: allwinner: a64: Enable audio on Teres-I
Message-ID: <20190520080942.s27zv6yfv2zo5tc3@flea>
References: <20190516154943.239E668B05@newverein.lst.de>
 <20190516155139.E6EE568C65@newverein.lst.de>
 <CAGb2v64xKk1r1iqSVm5pVvHVkyQ175MUFB7JPUkvQX9ecOZDDQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v64xKk1r1iqSVm5pVvHVkyQ175MUFB7JPUkvQX9ecOZDDQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_011006_378178_6F1985D5 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Archit Taneja <architt@codeaurora.org>, David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============4813320795022391781=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4813320795022391781==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4whjn4knj7qddsth"
Content-Disposition: inline


--4whjn4knj7qddsth
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 20, 2019 at 03:56:13PM +0800, Chen-Yu Tsai wrote:
> On Thu, May 16, 2019 at 11:52 PM Torsten Duwe <duwe@lst.de> wrote:
> >
> > From: Harald Geyer <harald@ccbib.org>
> >
> > The TERES-I has internal speakers (left, right), internal microphone
> > and a headset combo jack (headphones + mic), "CTIA" (android) pinout.
> >
> > The headphone and mic detect lines of the A64 are connected properly,
> > but AFAIK currently unsupported by the driver.
> >
> > Signed-off-by: Harald Geyer <harald@ccbib.org>
> > Signed-off-by: Torsten Duwe <duwe@suse.de>
>
> Looks good to me.
>
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--4whjn4knj7qddsth
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOJgxgAKCRDj7w1vZxhR
xbSXAP926FlqO6XCiMyZJenTVBmpT/A0W2UCps/VqpRJuj0aagD/exOJs05ag5un
BMT9ii0aqMgO8x6CqBc2f5EQ6uIRagg=
=Md6e
-----END PGP SIGNATURE-----

--4whjn4knj7qddsth--


--===============4813320795022391781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4813320795022391781==--

