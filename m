Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4B5ED406
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 18:32:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Efr/RxIUy4Sg176aQz4uND2fnGxrSM4hUFVZ7TL6p5s=; b=R+/MIl7KQC81nc/rQYLv0Xc2N
	NFFjSrMxmmk+63ufudeSMsccCTEcK/UZB8ajQf334mUzIIJLG87yauf6EqPXNPzjmM1ae98WEY+JK
	iAjvyD5SENA63JbMtmky1nw7Htivr0mrmQ7zbuW4Q4ZJiAedoFl1aPtQuM7hcpBh7T5EKCeQM7ziD
	fsMlXEsVgEdYN1T9s3SZFnYnlq5/5EB5YywGWYlDi6SVfgIWfR7tIoLyIj4O1AjQJCsaJC6gxBehE
	rop5mXV4PkbYYfnigSm4CI+xFJFa/vZpsMqYZwfNeJ7iXd4FT87/WZsgvHwjTegG5Mfs6JD336nlf
	j/LYkUwLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRJjx-0008Fr-AK; Sun, 03 Nov 2019 17:32:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRJjq-0008FP-Tb
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 17:32:32 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6A782080F;
 Sun,  3 Nov 2019 17:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572802350;
 bh=UzLLL1Ca+sjdIQykVRqTI78sHlr2eCUpPuADKt3IhL0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A1fyaYe43+mDax1rBL8Mn178Q81As7bkN3B8ZbBrGbLDS82jKqipE6imQiPJYGnlz
 M+9e1IPNj3aLpjH6GHNqG9sApJmYWFEOAuYOM6PybzHSwjH+lDSQ+ENzyJ1mXiZ7us
 nslC1hLxRXdLoLVYm6Ma8hr3egT4FlCHajlZSJHU=
Date: Sun, 3 Nov 2019 18:32:27 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v11 4/7] drm/sun4i: dsi: Handle bus clock explicitly
Message-ID: <20191103173227.GF7001@gilmour>
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
 <20191025175625.8011-5-jagan@amarulasolutions.com>
 <20191028153427.pc3tnoz2d23filhx@hendrix>
 <CAMty3ZCisTrFGjzHyqSofqFAsKSLV1n2xP5Li3Lonhdi0WUZVA@mail.gmail.com>
 <20191029085401.gvqpwmmpyml75vis@hendrix>
 <CAMty3ZAWPZSHtAZDf_0Dpx588YGGv3pJX1cXMfkZus3+WF94cA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZAWPZSHtAZDf_0Dpx588YGGv3pJX1cXMfkZus3+WF94cA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_093230_993481_AFCCAAC4 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============3343777489528129711=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3343777489528129711==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dFWYt1i2NyOo1oI9"
Content-Disposition: inline


--dFWYt1i2NyOo1oI9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 01, 2019 at 07:42:55PM +0530, Jagan Teki wrote:
> Hi Maxime,
>
> On Tue, Oct 29, 2019 at 2:24 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Tue, Oct 29, 2019 at 04:03:56AM +0530, Jagan Teki wrote:
> > > > > explicit handling of common clock would require since the A64
> > > > > doesn't need to mention the clock-names explicitly in dts since it
> > > > > support only one bus clock.
> > > > >
> > > > > Also pass clk_id NULL instead "bus" to regmap clock init function
> > > > > since the single clock variants no need to mention clock-names
> > > > > explicitly.
> > > >
> > > > You don't need explicit clock handling. Passing NULL as the argument
> > > > in regmap_init_mmio_clk will make it use the first clock, which is the
> > > > bus clock.
> > >
> > > Indeed I tried that, since NULL clk_id wouldn't enable the bus clock
> > > during regmap_mmio_gen_context code, passing NULL triggering vblank
> > > timeout.
> >
> > There's a bunch of users of NULL in tree, so finding out why NULL
> > doesn't work is the way forward.
>
> I'd have looked the some of the users before checking the code as
> well. As I said passing NULL clk_id to devm_regmap_init_mmio_clk =>
> __devm_regmap_init_mmio_clk would return before processing the clock.
>
> Here is the code snippet on the tree just to make sure I'm on the same
> page or not.
>
> static struct regmap_mmio_context *regmap_mmio_gen_context(struct device *dev,
>                                         const char *clk_id,
>                                         void __iomem *regs,
>                                         const struct regmap_config *config)
> {
>         -----------------------
>         --------------
>         if (clk_id == NULL)
>                 return ctx;
>
>         ctx->clk = clk_get(dev, clk_id);
>         if (IS_ERR(ctx->clk)) {
>                 ret = PTR_ERR(ctx->clk);
>                 goto err_free;
>         }
>
>         ret = clk_prepare(ctx->clk);
>         if (ret < 0) {
>                 clk_put(ctx->clk);
>                 goto err_free;
>         }
>         -------------
>         ---------------
> }
>
> Yes, I did check on the driver in the tree before committing explicit
> clock handle, which make similar requirements like us in [1]. this
> imx2 wdt driver is handling the explicit clock as well. I'm sure this
> driver is updated as I have seen few changes related to this driver in
> ML.

I guess we have two ways to go at this then.

Either we remove the return, but it might have a few side-effects, or
we call clk_get with NULL or bus depending on the case, and then call
regmap_mmio_attach_clk.

Maxime

--dFWYt1i2NyOo1oI9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXb8PKwAKCRDj7w1vZxhR
xRo6AQC7cJgPCdmPtwa3+DvnOiO0l+RhF95zulrMO4b+JAewRgEA74E3tqth973g
U2/28LW5VnoPT0M0gUDV7UgvhyVeGQA=
=PgiZ
-----END PGP SIGNATURE-----

--dFWYt1i2NyOo1oI9--


--===============3343777489528129711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3343777489528129711==--

