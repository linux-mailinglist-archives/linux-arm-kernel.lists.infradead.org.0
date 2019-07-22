Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281D4702AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TEWQXIe0PkXNraghjwsSMiE+ZmwOLPLADTBGDx6+BAo=; b=m5J3L6/4HEl3IPTnxp45/2qSv
	N2LsTJn8VAjPt7b+0fPGYQ0VmpUCjFe2IhRpACVhR60nkWJD5E6snWT7t+tLqA4ksz7MUjpIkNeoE
	uQikQP/KiRV7iEhJkQBcOagw9jFcQNwY3jo1lVal68YNj3zjDyRympjxOI9md+ucltK8SYckxALjp
	NM7mzKTnNahoN+GBAx4IYdV/L4ElTkjx96VbW/MrR60zMBAjEHp7gEdqmcFERgGXGXVS9VbDJJMse
	fIRvMKSawU4bk1zLdkzrEd7d9NvGTJ4ZsfS0Q70gmlIu89BbheeqV2G2ppPcklWX7DtvAhra5dgXX
	is7GYjcEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZeX-0000pz-Kp; Mon, 22 Jul 2019 14:51:01 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZeH-0000pQ-3S
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:50:46 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id E2EFB60003;
 Mon, 22 Jul 2019 14:50:41 +0000 (UTC)
Date: Mon, 22 Jul 2019 16:50:41 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 1/2] ARM: dts: sunxi: Unify the DE2 bus clocks order
Message-ID: <20190722145041.fc5gep5jialgcaea@flea>
References: <20190722140817.21608-1-maxime.ripard@bootlin.com>
 <CAGb2v67QRQ4748U00o+V=-L06KEb5qwCraZD_V0CO-JT18yk9g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v67QRQ4748U00o+V=-L06KEb5qwCraZD_V0CO-JT18yk9g@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_075045_307098_BCF7353D 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8530324060702285970=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8530324060702285970==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dnzyy5ibtphnp4my"
Content-Disposition: inline


--dnzyy5ibtphnp4my
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 22, 2019 at 10:16:07PM +0800, Chen-Yu Tsai wrote:
> On Mon, Jul 22, 2019 at 10:08 PM Maxime Ripard
> <maxime.ripard@bootlin.com> wrote:
> >
> > The DE2 bus takes two clocks, named bus and mod according to the binding.
> >
> > However, the order of these clocks change from one SoC to another. Even
> > though it might not be an issue in most cases, having consistency will help
> > if we ever need to have some code to deal with deprecated bindings, and in
> > general it's just better.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Acked-by: Chen-Yu Tsai <wens@csie.org>
>
> for both patches.

Applied both, thanks

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--dnzyy5ibtphnp4my
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTXNQQAKCRDj7w1vZxhR
xdd5AQC5hdW64/C4BNv14BCDl30ASC283GEI/aYXfebys6Ve2wEAnZ1CRYRSizSr
vK4HOrtfExWWfhMGpXbVLoxiF4qZkA8=
=VdgM
-----END PGP SIGNATURE-----

--dnzyy5ibtphnp4my--


--===============8530324060702285970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8530324060702285970==--

