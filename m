Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE37F4354
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:31:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UIK9LuKlP4PpohqRoOVij9XLJMhg9W/6eBde+HIMEfQ=; b=J+3NzCqKrQxDNhGXY4cijfWB2
	mx9jHEqfTh33+2sw5rVIAt/+b7GXDiCbJjMBb6grtMIuBEJwhZknWQCPLuD63MO2z45FyG6A0czko
	olOeA4ER9QyvnMmQLv3uPfX8Vy1KKMRPUoLNMyWKBmh1dYDVXy5Fjpv1f5UT9RFY917P9mwoEexGS
	tKONMAY2thMaBe2UMqwIfzKXaONmzJRvMjSkRJMmy0FWWz0c+5wYmLrXRyim8urKSzZp7uvK1ap34
	NKMkEljzpAmgtxZzWKYH4uBVCrRdNJD2hRDwPCQkBnkbd49FWFLVWxZj7TUoemnc6NYEVRdMrrLOt
	+k/vK/0XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0cF-000122-06; Fri, 08 Nov 2019 09:31:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0c6-00011I-En
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 09:31:31 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B305D214DA;
 Fri,  8 Nov 2019 09:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573205487;
 bh=2T3Ba/HzcnTOuzzt5o+FEiAJPzM/l6yorQVOheFyKdo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E5/QlUVw4HFCIXEX+ccAEyig5qjAsz2QnssGieCtqvgV6SriyjSz5YHdiSJtqAZyc
 tDN3I2HsDNCYL45f6eF1YEsh+u2WoYCDuaAKxnwgsVzuyb45yZG2oGnSvpwXEDpAhn
 1yfKWPSPYFegSowkz7v6+tZjwAGuqFz0F8uvzs7M=
Date: Fri, 8 Nov 2019 10:31:24 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH v5 0/7][rebased] Add anx6345 DP/eDP bridge for Olimex
 Teres-I
Message-ID: <20191108093124.GD4345@gilmour.lan>
References: <20191107135018.0A04068BE1@verein.lst.de>
MIME-Version: 1.0
In-Reply-To: <20191107135018.0A04068BE1@verein.lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_013130_518918_8FD5E911 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============3529449965172616408=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3529449965172616408==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jL2BoiuKMElzg3CS"
Content-Disposition: inline


--jL2BoiuKMElzg3CS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 04, 2019 at 11:34:23AM +0100, Torsten Duwe wrote:
> On Wed, Nov 06, 2019 at 04:21:31PM +0100, Maxime Ripard wrote:
> >
> > Please resend the whole series rebased on top of either linux-next or
> > drm-misc-next.
>
> Here it is. Applies cleanly to both, modulo those patches already in.

applied, thanks!
Maxime
--jL2BoiuKMElzg3CS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcU17AAKCRDj7w1vZxhR
xVqMAQCIfvK3vHGIOLtlR1wZJ1qhlXxRXFOgO5OH2g2LK36KCgD/Tyu1aY0jCKQN
IvSTgB2bS8dNe6KkrPg33wCTDFFKtw8=
=KfZB
-----END PGP SIGNATURE-----

--jL2BoiuKMElzg3CS--


--===============3529449965172616408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3529449965172616408==--

