Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D060E8393
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 09:54:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vb3T+UwBN5r8Sjov6UtmBgJWWkhem7HjbVt56VcYVK8=; b=corkuDShqQ04+YeZEj3uj7za2
	f/0QZf5EIOwQA3iFtPWZy50KzoRv3Qbme5ip9NWJNdUuK6tncuLK6POvxIyBQNAuUhUt6VyDBl9zG
	J82YmHEk/DqaTbnksGd/dtF/xAUI25GrXAouuENoocaJZj7ZHBYU3qL44inbhnuCwN4F0zmMXOXD1
	yfeEsoEJP5kw2gudLVDl9le8uBF1n4TKokoeCVtuv71HBK2UK3fbz8cUIlwJcglml4g32IoEC3nV3
	XwmFXgbywBRPFkZu6C+ILYaVG966tpCOnRsjYPtd2wd1oolKSxOO/yH2CiSFXhvJ3/xcynlwO7IGW
	bUeKFfeWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPNGt-0007A2-Uz; Tue, 29 Oct 2019 08:54:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNGf-00075Y-Ez
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 08:54:22 +0000
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C04E20663;
 Tue, 29 Oct 2019 08:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572339260;
 bh=mkkA0nt6hx3V0z0UwVIpSj9LslS/iQ3ZT+43Z9OvzN0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rvOQbaioo47qLALm3l14AHXxcxc5IYfpvJjlT7KDT/WEkmyjOQKlnSyb7eRV3WHdu
 fT9PRURUDToD06zrggmqZ8s9PCAusIcDS7FYlIzzysiQ+pR5BD6oYTZIy5palfhN14
 W5T1c8taWx9dN6yvQ24GVdJ6SbVbEiiXmQ0VWT9s=
Date: Tue, 29 Oct 2019 09:54:01 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v11 4/7] drm/sun4i: dsi: Handle bus clock explicitly
Message-ID: <20191029085401.gvqpwmmpyml75vis@hendrix>
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
 <20191025175625.8011-5-jagan@amarulasolutions.com>
 <20191028153427.pc3tnoz2d23filhx@hendrix>
 <CAMty3ZCisTrFGjzHyqSofqFAsKSLV1n2xP5Li3Lonhdi0WUZVA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZCisTrFGjzHyqSofqFAsKSLV1n2xP5Li3Lonhdi0WUZVA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_015421_545268_FEB8F933 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============1395371673761147664=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1395371673761147664==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="unkpttpyvqhvobfg"
Content-Disposition: inline


--unkpttpyvqhvobfg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 29, 2019 at 04:03:56AM +0530, Jagan Teki wrote:
> > > explicit handling of common clock would require since the A64
> > > doesn't need to mention the clock-names explicitly in dts since it
> > > support only one bus clock.
> > >
> > > Also pass clk_id NULL instead "bus" to regmap clock init function
> > > since the single clock variants no need to mention clock-names
> > > explicitly.
> >
> > You don't need explicit clock handling. Passing NULL as the argument
> > in regmap_init_mmio_clk will make it use the first clock, which is the
> > bus clock.
>
> Indeed I tried that, since NULL clk_id wouldn't enable the bus clock
> during regmap_mmio_gen_context code, passing NULL triggering vblank
> timeout.

There's a bunch of users of NULL in tree, so finding out why NULL
doesn't work is the way forward.

Maxime

--unkpttpyvqhvobfg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbf+KQAKCRDj7w1vZxhR
xQUaAQCp7d+DSgK2CMprYRTRP+TGzpbEjN4u+W/Tt1seOujvoQEA9cGaIr4yjPsP
iK0Vn3o2jO7HYtqHE03IewfUWRW4OgM=
=D4qQ
-----END PGP SIGNATURE-----

--unkpttpyvqhvobfg--


--===============1395371673761147664==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1395371673761147664==--

