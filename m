Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E17E2C9DAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 13:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bX5/0I16XjozXpStma2KXDpbbne+phFpJYWX27k6EGQ=; b=jmrkPHzaHp7oG8hJvsuvEJ3yp
	Dr3AjcqgSQnaEb36DfgMAnlEHbzG+t45+Bd7vUwDmJdwyxGuLuWhl2Ti+gfFsLWgEqvCrkCjhPPR8
	J42Hq0kFRpLL1y60OSTClnZD2aSOKtWWqV2w7WS/Xbf8MVHeBRtNLPIjr0G9WQvDsflHeCLvZlzJz
	dbFiyuaDgUu0EoA3rD6yUWXhq9Tvicoq370rzKKkR8ma5QAl6P4c/WlvQW9gXZcUp6K99k31VmAsr
	yL4deebquRNEswH33EKXo2sT9356Xl8lKkRy0VlmjfPwwWikumluuUrm+cSJbmlKN5ijLpcgqj75n
	iqzRWdwqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFzZJ-0005t3-Ps; Thu, 03 Oct 2019 11:46:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFzZ9-0005s6-Vx
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 11:46:41 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 219D02070B;
 Thu,  3 Oct 2019 11:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570103199;
 bh=rZXyTCe8Ve7vHC9DAOD50UwJrWsPWN27OLElnsbF2ak=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Fk9TfOQdKkrfXA+BV72LZAo2ee2u/I18By1yu0xrL3XqvxyZjSzev1gLHO9UUztUu
 6NIe7cp3hszcjq6mMOIgl4++kDKGi7oJEcY1Iy7Fx2FawPbfs9RVn3LDu2TFYf1Ky8
 j0SbtjERUcdTGZg6ppk9VV0F1amb0UDG6Ku7c2RQ=
Date: Thu, 3 Oct 2019 13:46:37 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v11 5/7] drm/sun4i: sun6i_mipi_dsi: Add VCC-DSI regulator
 support
Message-ID: <20191003114637.qd723p4jviwbns26@gilmour>
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
 <20191003064527.15128-6-jagan@amarulasolutions.com>
 <CAGb2v64RJeHXSDknPvH3RrDLqPzSvR-p2k2vA73Zt1xsOd5TSw@mail.gmail.com>
 <CAMty3ZBmY+wZ4MZD1ipjnfhVy3gBRCqsAXGqF79mo+eaX=L2fA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZBmY+wZ4MZD1ipjnfhVy3gBRCqsAXGqF79mo+eaX=L2fA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_044640_065312_C3053282 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============5763676494675925068=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5763676494675925068==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sioambykdk554e5i"
Content-Disposition: inline


--sioambykdk554e5i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 03, 2019 at 12:31:31PM +0530, Jagan Teki wrote:
> On Thu, Oct 3, 2019 at 12:26 PM Chen-Yu Tsai <wens@csie.org> wrote:
> >
> > On Thu, Oct 3, 2019 at 2:46 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > >
> > > Allwinner MIPI DSI controllers are supplied with SoC
> > > DSI power rails via VCC-DSI pin.
> > >
> > > Add support for this supply pin by adding voltage
> > > regulator handling code to MIPI DSI driver.
> > >
> > > Tested-by: Merlijn Wajer <merlijn@wizzup.org>
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 14 ++++++++++++++
> > >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  2 ++
> > >  2 files changed, 16 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > index 446dc56cc44b..fe9a3667f3a1 100644
> > > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > > @@ -1110,6 +1110,12 @@ static int sun6i_dsi_probe(struct platform_device *pdev)
> > >                 return PTR_ERR(base);
> > >         }
> > >
> > > +       dsi->regulator = devm_regulator_get(dev, "vcc-dsi");
> > > +       if (IS_ERR(dsi->regulator)) {
> > > +               dev_err(dev, "Couldn't get VCC-DSI supply\n");
> > > +               return PTR_ERR(dsi->regulator);
> > > +       }
> > > +
> > >         dsi->regs = devm_regmap_init_mmio_clk(dev, "bus", base,
> > >                                               &sun6i_dsi_regmap_config);
> > >         if (IS_ERR(dsi->regs)) {
> > > @@ -1183,6 +1189,13 @@ static int sun6i_dsi_remove(struct platform_device *pdev)
> > >  static int __maybe_unused sun6i_dsi_runtime_resume(struct device *dev)
> > >  {
> > >         struct sun6i_dsi *dsi = dev_get_drvdata(dev);
> > > +       int err;
> > > +
> > > +       err = regulator_enable(dsi->regulator);
> > > +       if (err) {
> > > +               dev_err(dsi->dev, "failed to enable VCC-DSI supply: %d\n", err);
> > > +               return err;
> > > +       }
> > >
> > >         reset_control_deassert(dsi->reset);
> > >         clk_prepare_enable(dsi->mod_clk);
> > > @@ -1215,6 +1228,7 @@ static int __maybe_unused sun6i_dsi_runtime_suspend(struct device *dev)
> > >
> > >         clk_disable_unprepare(dsi->mod_clk);
> > >         reset_control_assert(dsi->reset);
> > > +       regulator_disable(dsi->regulator);
> > >
> > >         return 0;
> > >  }
> > > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > index 5c3ad5be0690..a01d44e9e461 100644
> > > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
> > > @@ -12,6 +12,7 @@
> > >  #include <drm/drm_connector.h>
> > >  #include <drm/drm_encoder.h>
> > >  #include <drm/drm_mipi_dsi.h>
> > > +#include <linux/regulator/consumer.h>
> >
> > You don't need to include the header file since you are only
> > including a pointer to the struct, and nothing else.
>
> Yes, make sense. I will drop it.
>
> >
> > Otherwise,
> >
> > Reviewed-by: Chen-Yu Tsai <wens@csie.org>
>
> thanks.

I've moved the include to the driver that was lacking it while
applying, thanks!

Maxime

--sioambykdk554e5i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZXfnQAKCRDj7w1vZxhR
xdo1AP9qbRxlDAMsATrfD1TcpRGv8AL/+bvjh0JOK0bF9TnEsAD/cPQeOM7j0eND
SGuUJnDS/wwejedPPPjCzS3+gawyeQo=
=fbpL
-----END PGP SIGNATURE-----

--sioambykdk554e5i--


--===============5763676494675925068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5763676494675925068==--

