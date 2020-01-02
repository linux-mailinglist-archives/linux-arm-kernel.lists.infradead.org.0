Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AEE12E51D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 11:54:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QHSqQN8MqKn7qWM5Dif2v11RH69uIOkCe1BT/SNgsUY=; b=SFaaNK+Ix+KB4PTdJuajIx0h5
	gWhwoVSWV66xzI5sHCV2k5tChOlP8PClv0kXP9zrsuM0TL38urWMBNKBWYA4Mcq44j6b5k1QTJf7j
	SC8eAJOm4VRFk78uHj90tMsdNCwWXEfHhNqeoRkah3zegKNvjdt1Kc4lLxnzEns9zXRTyyE4/2OD3
	XzKbZE/uSZ6acFadiq10EzDUpsutXL9kklBsGcltXjRJrhoF+R7Q4K9zAcgRxpeTo/mbWgpGS4lsA
	dY/Ksl2ospABDOJD38asYMMrT9toTBHrcoHYYPN0siYdlPUN1ZWQGHwUkFxGr10rMmpVpN6BKIAoP
	iDbskXiSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imy7p-0000Y6-Ql; Thu, 02 Jan 2020 10:54:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imy7Y-0000V7-5m
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 10:54:29 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF7D9215A4;
 Thu,  2 Jan 2020 10:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577962467;
 bh=Fy88OIUGBdZink3Zu23Vq6yGNZlM5ZZ5JWMt1esy4l0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cnBsvJ05p3Ds7yL0MLHCjR87NT9t5mzkYeGJmJgiMgDmK713FdzWNghkKaALIVWW8
 ny0IgEDcvmNZlpP1KD/cpc1Mfb22aSVqvYBbBCl6JFyO01yO0qH8Db4VwIO8YGlSGX
 A7guAbA1c1PsU6M9qAgFuqHPTe5Z55brL7JTtrX4=
Date: Thu, 2 Jan 2020 11:54:24 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v3 2/9] drm/sun4i: tcon: Add TCON LCD support for R40
Message-ID: <20200102105424.kmte7aooh2gkrcnu@gilmour.lan>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
 <20191231130528.20669-3-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20191231130528.20669-3-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_025428_266149_B7C51067 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Jernej Skrabec <jernej.skrabec@siol.net>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6200152144594623530=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6200152144594623530==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3yo7gd5amqttw6gt"
Content-Disposition: inline


--3yo7gd5amqttw6gt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 31, 2019 at 06:35:21PM +0530, Jagan Teki wrote:
> TCON LCD0, LCD1 in allwinner R40, are used for managing
> LCD interfaces like RGB, LVDS and DSI.
>
> Like TCON TV0, TV1 these LCD0, LCD1 are also managed via
> tcon top.
>
> Add support for it, in tcon driver.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v3:
> - none
>
>  drivers/gpu/drm/sun4i/sun4i_tcon.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> index fad72799b8df..69611d38c844 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> @@ -1470,6 +1470,13 @@ static const struct sun4i_tcon_quirks sun8i_a83t_tv_quirks = {
>  	.has_channel_1		= true,
>  };
>
> +static const struct sun4i_tcon_quirks sun8i_r40_lcd_quirks = {
> +	.supports_lvds		= true,
> +	.has_channel_0		= true,
> +	/* TODO Need to support TCON output muxing via GPIO pins */
> +	.set_mux		= sun8i_r40_tcon_tv_set_mux,

What is this muking about? And why is it a TODO?

Maxime

--3yo7gd5amqttw6gt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg3L4AAKCRDj7w1vZxhR
xRZOAPoCD7Z/HWJ+sNCuLAC4kWMalabFj+9JAxw7wHzW3V/8/AD/Rh1zt1mpPjmK
b5SrQ6eKprPdUtwD1w0Aefuflq6U4QM=
=r3km
-----END PGP SIGNATURE-----

--3yo7gd5amqttw6gt--


--===============6200152144594623530==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6200152144594623530==--

