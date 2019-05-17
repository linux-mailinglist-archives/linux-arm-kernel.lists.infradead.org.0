Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6D721437
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lDvirQBIMQRPI228uJYx5/GxbP+L0VX42xK/F+dfhuk=; b=RlZdHI+jSYeP9jXaFOHZrUHCP
	g+9OQ5relrfS5jTjWzv5VozJkhmog6q/L+w1UQ3FDyw/IGOcLs/GqJYE8feBzR8S8L59GH9RnWkcP
	YAhYC/WcN8ApQhh4ns9zcEVdZvqAQ2vsNWM7j1MOKTEx4srcp3i5UQdCfMdskJrzPkBmhVaeudYAQ
	A8YdsI71wog8tk87R1U2eqzcpTnnnHBv7eF/zDXOy63TxUrJ82sgOR4gcBWfzWdtbaoq8q6zEzu9Q
	EYvZWAe2lexgTCt4FxSdov7ssldZGzm1C01IUb/U99iaDivaobQnyj6I3VZbVK4sXA26lhuUb8Rt8
	+1iaCa8VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXHf-0006CU-4q; Fri, 17 May 2019 07:28:03 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXHW-0006C1-H3
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 07:27:56 +0000
X-Originating-IP: 80.215.154.25
Received: from localhost (unknown [80.215.154.25])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 4AABB2000F;
 Fri, 17 May 2019 07:27:39 +0000 (UTC)
Date: Fri, 17 May 2019 09:27:38 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH 4/4] arm64: DTS: allwinner: a64: enable ANX6345 bridge on
 Teres-I
Message-ID: <20190517072738.deohh5fly4jxms7k@flea>
References: <20190514155911.6C0AC68B05@newverein.lst.de>
 <20190514160241.9EAC768C7B@newverein.lst.de>
 <CA+E=qVfuKBzWK7dpM_eabjU8mLdzOw3zCnYk6Tc1oXdavH7CNA@mail.gmail.com>
 <20190515093141.41016b11@blackhole.lan>
 <CA+E=qVf6K_0T0x2Hsfp6EDqM-ok6xiAzeZPvp6SRg0yt010pKA@mail.gmail.com>
 <20190516154820.GA10431@lst.de>
 <CA+E=qVe5NkAvHXPvVc7iTbZn5sKeoRm0166zPW_s83c2gk7B+g@mail.gmail.com>
 <20190516164859.GB10431@lst.de>
MIME-Version: 1.0
In-Reply-To: <20190516164859.GB10431@lst.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_002754_719815_7290A4BF 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============4459505535352441214=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4459505535352441214==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f4mha6snzgf75knu"
Content-Disposition: inline


--f4mha6snzgf75knu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 16, 2019 at 06:48:59PM +0200, Torsten Duwe wrote:
> On Thu, May 16, 2019 at 09:06:41AM -0700, Vasily Khoruzhick wrote:
> >
> > Driver can talk to the panel over AUX channel only after t1+t3, t1 is
> > up to 10ms, t3 is up to 200ms.
>
> This is after power-on. The boot loader needs to deal with this.

The bootloader can deal with it, but the kernel will also need to. The
bootloader might not be doing this because it's not been updated, the
regulator might have been disabled between the time the kernel was
started and the time the bridge driver probes, etc.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--f4mha6snzgf75knu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN5iagAKCRDj7w1vZxhR
xSOTAQCltYqEUg7d+BcEgl5RN6diNU5EHsL/qXA4yAy1FZI9NwD/epfnmdGcVWie
o0KQWW6HOXO96Su1afZmNzHrEtQffwQ=
=zj1P
-----END PGP SIGNATURE-----

--f4mha6snzgf75knu--


--===============4459505535352441214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4459505535352441214==--

