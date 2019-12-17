Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCA8122A8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:46:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y7Mx5twHvN7zI5X9lWEp6MNyV75VPVUD79uiwQmuo5I=; b=kV9qnGFUcPl74JD8dIkvx+ZKl
	iTNy0OctNAlWNvLY5hwuDGVVlP3VmiFF7bAStQYhUcP9jTC0zbbQ9RsKRj8U8sS62wr7MmsZQrFYH
	lQDjDizPz4OHXKEtD5IvphwlQlgRX1Lwln56Y2TMgd5iglaGhzvnwpKOa40zWByQKwJpDJoKSiquw
	uqotsQ5UwK8tViy6GelP5zdhAMbw5Q2gpfIsnVlBVWptAgOhYTnvwV6fevJR/KLMBzd7xMrU6wZCB
	xvfvXyP3fi4cJGWcmQL5mIfolcBazh9EuxyDChZOQKEJOD9ouhpfJrkE2DSfNggaKW+WpwY/FgRaa
	PnNoj4TBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBJ2-0004Qz-BB; Tue, 17 Dec 2019 11:46:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBIl-0004N7-7o
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 11:46:11 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8978E206D7;
 Tue, 17 Dec 2019 11:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576583166;
 bh=FSYmznTCrH/t0FXDFtlTli3TVJHcanlbcCEjLAceibQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z6HHxJ6ZqwDNatYgyHmfxllT2K/L2tpPxT5egMpa/ZGN7FUu3bQqTu7SW6CTV3LlD
 YhbQkwaXcnL6kwJoKZR4EpTJsM8utu6rrMLAY3AJnWrOvxpN5rVvNeN1mEGJkZun6x
 LFgTuzFGYzlwUZzE7I2WDjpRhwwg4ny5/gH3q64Y=
Date: Tue, 17 Dec 2019 12:46:03 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH 1/1] drm/sun4i: hdmi: Check for null pointer before cleanup
Message-ID: <20191217114603.6cyrfx3sekn6uwmp@gilmour.lan>
References: <20191216144348.7540-1-stefan@olimex.com>
 <20191216161258.lmkq2ersfm746t7q@gilmour.lan>
 <cebda755-2649-79a1-fd08-79b13edef1a5@olimex.com>
MIME-Version: 1.0
In-Reply-To: <cebda755-2649-79a1-fd08-79b13edef1a5@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_034607_329769_B70D1709 
X-CRM114-Status: GOOD (  23.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6605491548586344981=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6605491548586344981==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4sf4dxcrkye2odw4"
Content-Disposition: inline


--4sf4dxcrkye2odw4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 17, 2019 at 08:45:07AM +0200, Stefan Mavrodiev wrote:
> Hi,
>
> On 12/16/19 6:12 PM, Maxime Ripard wrote:
> > Hi,
> >
> > On Mon, Dec 16, 2019 at 04:43:48PM +0200, Stefan Mavrodiev wrote:
> > > It's possible hdmi->connector and hdmi->encoder divices to be NULL.
> > > This can happen when building as kernel module and you try to remove
> > > the module.
> > >
> > > This patch make simple null check, before calling the cleanup functions.
> > >
> > > Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
> > > ---
> > >   drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c | 6 ++++--
> > >   1 file changed, 4 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> > > index a7c4654445c7..b61e00f2ecb8 100644
> > > --- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> > > +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> > > @@ -685,8 +685,10 @@ static void sun4i_hdmi_unbind(struct device *dev, struct device *master,
> > >   	struct sun4i_hdmi *hdmi = dev_get_drvdata(dev);
> > >
> > >   	cec_unregister_adapter(hdmi->cec_adap);
> > > -	drm_connector_cleanup(&hdmi->connector);
> > > -	drm_encoder_cleanup(&hdmi->encoder);
> > > +	if (hdmi->connector.dev)
> > > +		drm_connector_cleanup(&hdmi->connector);
> > > +	if (hdmi->encoder.dev)
> > > +		drm_encoder_cleanup(&hdmi->encoder);
> > Hmmm, this doesn't look right. Do you have more information on how you
> > can reproduce it?
>
> Just build sun4i_drm_hdmi as module (CONFIG_DRM_SUN4I_HDMI=m). Then try to
> unload the module:
>
> # rmmod sun4i_drm_hdmi
>
> And you get this:
>
> Unable to handle kernel NULL pointer dereference at virtual address 00000000
> pgd = 6b032436
> [00000000] *pgd=00000000
> Internal error: Oops: 5 [#1] SMP ARM
> Modules linked in: sun4i_drm_hdmi(-)
> CPU: 0 PID: 1081 Comm: rmmod Not tainted 5.5.0-rc1-00030-g6ec417030d93 #33
> Hardware name: Allwinner sun7i (A20) Family
> PC is at drm_connector_cleanup+0x40/0x208
> LR is at sun4i_hdmi_unbind+0x10/0x54 [sun4i_drm_hdmi]
> ...
>
>
> I've tested that with sunxi/for-next branch on A20-OLinuXino board.

Yeah, you detailed the symptoms nicely in the commit log, but my point
was that we shouldn't end up in that situation in the first place.

Your patch works around it, but it doesn't fix the underlying
issue. Is drm_connector_cleanup (or the encoder variant) called twice?

Maxime

--4sf4dxcrkye2odw4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfi/+wAKCRDj7w1vZxhR
xRNjAQC7oJK/mRAOZxDvPrd3U6hA6m9QGzkH2Fe26Ysx5e30KAEA8FrKu+Iex/VN
2gTqC7KjHIhRIdb45q+kWSalzI4FRw4=
=bFhs
-----END PGP SIGNATURE-----

--4sf4dxcrkye2odw4--


--===============6605491548586344981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6605491548586344981==--

