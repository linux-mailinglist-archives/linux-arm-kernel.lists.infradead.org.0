Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88945122A97
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 12:49:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WvLaYPDq0inNB5eKnim1q0VJr5cYuf886VmMVlkSL44=; b=AurS6v8uBhPMljmE2mOTUe0G8
	8UKuWAQ0TJituSjs38f4ep+YOQz+MS5XLIraifCZlP2CCoomYh8Ag7s2UlTu6xxAfKt0g5cOr17r8
	NyhL9uqI79ttwajSQVyg6rTAS9RyjXsczALrX4Cy6QWrkEvQ5NBvqQmgsl40bloqsifqpzmMTirZJ
	gdrQTA7uuw5S23AIpZG5OMKkzYuCQghS4T+f1rloaFWWvihMi/APXxUkFj0qs5WpR4HKqngHkjHp8
	T/2OVkqLfsW6l7s4n6hGtn2KUKWi//SH+RPflXxZLNkg/YuiDA5HxlKJk5jy/mTpukNKd7lhz8IbF
	PVvlFWYLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBLp-0004yd-Bg; Tue, 17 Dec 2019 11:49:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBLg-0004xq-O7
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 11:49:10 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2643206D7;
 Tue, 17 Dec 2019 11:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576583348;
 bh=2J70F6C7HThMohp6hexcftYPaKF2bBqf66lsLnEu/jQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Uxx2X/R1VWWIPE2VNX+Yfg2RXBEThICqQfrPgYhUZGP3L5DdrEu2//EN6iOKh38yF
 XewtqHRkHEOIghkvae6B3yMoRvFgczI9P00GhxG5X6b792lzgFx+d6EDxi0bn+rQEo
 NoE6pOk7cLhLfqH7fp0YILuyJZncSUaJFEuMALME=
Date: Tue, 17 Dec 2019 12:49:06 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH 1/1] drm/sun4i: hdmi: Check for null pointer before cleanup
Message-ID: <20191217114906.lrjup35tngrjhwuj@gilmour.lan>
References: <20191216144348.7540-1-stefan@olimex.com>
 <20191216161258.lmkq2ersfm746t7q@gilmour.lan>
 <cebda755-2649-79a1-fd08-79b13edef1a5@olimex.com>
 <20191217114603.6cyrfx3sekn6uwmp@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20191217114603.6cyrfx3sekn6uwmp@gilmour.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_034908_823288_65FEDE6C 
X-CRM114-Status: GOOD (  25.88  )
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
Content-Type: multipart/mixed; boundary="===============0865301181333401900=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0865301181333401900==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x4e47sjyijubg4zy"
Content-Disposition: inline


--x4e47sjyijubg4zy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Dec 17, 2019 at 12:46:03PM +0100, Maxime Ripard wrote:
> On Tue, Dec 17, 2019 at 08:45:07AM +0200, Stefan Mavrodiev wrote:
> > Hi,
> >
> > On 12/16/19 6:12 PM, Maxime Ripard wrote:
> > > Hi,
> > >
> > > On Mon, Dec 16, 2019 at 04:43:48PM +0200, Stefan Mavrodiev wrote:
> > > > It's possible hdmi->connector and hdmi->encoder divices to be NULL.
> > > > This can happen when building as kernel module and you try to remove
> > > > the module.
> > > >
> > > > This patch make simple null check, before calling the cleanup functions.
> > > >
> > > > Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
> > > > ---
> > > >   drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c | 6 ++++--
> > > >   1 file changed, 4 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> > > > index a7c4654445c7..b61e00f2ecb8 100644
> > > > --- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> > > > +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
> > > > @@ -685,8 +685,10 @@ static void sun4i_hdmi_unbind(struct device *dev, struct device *master,
> > > >   	struct sun4i_hdmi *hdmi = dev_get_drvdata(dev);
> > > >
> > > >   	cec_unregister_adapter(hdmi->cec_adap);
> > > > -	drm_connector_cleanup(&hdmi->connector);
> > > > -	drm_encoder_cleanup(&hdmi->encoder);
> > > > +	if (hdmi->connector.dev)
> > > > +		drm_connector_cleanup(&hdmi->connector);
> > > > +	if (hdmi->encoder.dev)
> > > > +		drm_encoder_cleanup(&hdmi->encoder);
> > > Hmmm, this doesn't look right. Do you have more information on how you
> > > can reproduce it?
> >
> > Just build sun4i_drm_hdmi as module (CONFIG_DRM_SUN4I_HDMI=m). Then try to
> > unload the module:
> >
> > # rmmod sun4i_drm_hdmi
> >
> > And you get this:
> >
> > Unable to handle kernel NULL pointer dereference at virtual address 00000000
> > pgd = 6b032436
> > [00000000] *pgd=00000000
> > Internal error: Oops: 5 [#1] SMP ARM
> > Modules linked in: sun4i_drm_hdmi(-)
> > CPU: 0 PID: 1081 Comm: rmmod Not tainted 5.5.0-rc1-00030-g6ec417030d93 #33
> > Hardware name: Allwinner sun7i (A20) Family
> > PC is at drm_connector_cleanup+0x40/0x208
> > LR is at sun4i_hdmi_unbind+0x10/0x54 [sun4i_drm_hdmi]
> > ...
> >
> >
> > I've tested that with sunxi/for-next branch on A20-OLinuXino board.
>
> Yeah, you detailed the symptoms nicely in the commit log, but my point
> was that we shouldn't end up in that situation in the first place.
>
> Your patch works around it, but it doesn't fix the underlying
> issue. Is drm_connector_cleanup (or the encoder variant) called twice?

Answering myself, yes it is. It's both the destroy call back and
called in unbind. We should just remove the one in the unbind then.

Maxime

--x4e47sjyijubg4zy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfjAsgAKCRDj7w1vZxhR
xdyqAP48+VUD35AMD+lYrDHGy8nwWeoETOhudHWv+4jZULK4iAD+IOpWP8AOPNa1
ZqqSU6C6EKgGY/RZIne7Ot32AFRyiAU=
=+e4W
-----END PGP SIGNATURE-----

--x4e47sjyijubg4zy--


--===============0865301181333401900==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0865301181333401900==--

