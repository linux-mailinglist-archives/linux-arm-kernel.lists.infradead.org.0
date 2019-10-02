Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D46C4894
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 09:33:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luRtyY+4OIqvUZRpfyqsiYfOA33zf2RGLe0rrO+oED4=; b=jMpkE5h/HPqXIP
	iPc11uTPceQcJO1vS7mleuOf05SniqJM3JFwjiRENX24T+pGhR3SOw6xk4OX6dZOVJmST08ASySI2
	NyUrbAoNA2pPCJ723BgbY78B/xWDFjxPdc2aQqhFFz3gf8LYpe/DTvdlBabEZ3vSAoS8Rb++ywfs2
	mJ4rrCztG4NmmIzrrh7f2TS/bI1K5rTTj3WBIOqx7F8WYV21M8QTfgvvA0zxaAY09OCtCqxQzpPwT
	k+t6i/rtzsd8ZMzWJ5AczE++lE6hT6aIQykPxqOtcHPRlkwFFDziGfTjnT7QBI7wPSuB5mvP5sAs7
	/raYPYPlMqNsta/Hkruw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFZ8g-0002As-E0; Wed, 02 Oct 2019 07:33:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFZ8a-0002AB-EE
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 07:33:29 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iFZ8T-0006eS-7W; Wed, 02 Oct 2019 09:33:21 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iFZ8S-0006Cj-0p; Wed, 02 Oct 2019 09:33:20 +0200
Date: Wed, 2 Oct 2019 09:33:19 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: David Laight <David.Laight@ACULAB.COM>
Subject: Re: [PATCH] pwm: pwm-imx27: Use 'dev' instead of dereferencing it
 repeatedly
Message-ID: <20191002073319.tv55olneh6i6x4ir@pengutronix.de>
References: <1569315593-769-1-git-send-email-Anson.Huang@nxp.com>
 <6cfb1595992b46dc884731555e6f0334@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6cfb1595992b46dc884731555e6f0334@AcuMS.aculab.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_003328_478912_95689D13 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 'Anson Huang' <Anson.Huang@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "Linux-imx@nxp.com" <Linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 09:46:20AM +0000, David Laight wrote:
> From: Anson Huang
> > Sent: 24 September 2019 10:00
> > Add helper variable dev =3D &pdev->dev to simply the code.
> > =

> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/pwm/pwm-imx27.c | 13 +++++++------
> >  1 file changed, 7 insertions(+), 6 deletions(-)
> > =

> > diff --git a/drivers/pwm/pwm-imx27.c b/drivers/pwm/pwm-imx27.c
> > index 434a351..3afee29 100644
> > --- a/drivers/pwm/pwm-imx27.c
> > +++ b/drivers/pwm/pwm-imx27.c
> > @@ -290,27 +290,28 @@ MODULE_DEVICE_TABLE(of, pwm_imx27_dt_ids);
> > =

> >  static int pwm_imx27_probe(struct platform_device *pdev)
> >  {
> > +	struct device *dev =3D &pdev->dev;
> >  	struct pwm_imx27_chip *imx;
> > =

> > -	imx =3D devm_kzalloc(&pdev->dev, sizeof(*imx), GFP_KERNEL);
> > +	imx =3D devm_kzalloc(dev, sizeof(*imx), GFP_KERNEL);
> >  	if (imx =3D=3D NULL)
> >  		return -ENOMEM;
> > =

> >  	platform_set_drvdata(pdev, imx);
> > =

> > -	imx->clk_ipg =3D devm_clk_get(&pdev->dev, "ipg");
> > +	imx->clk_ipg =3D devm_clk_get(dev, "ipg");
> >  	if (IS_ERR(imx->clk_ipg)) {
> > -		dev_err(&pdev->dev, "getting ipg clock failed with %ld\n",
> > +		dev_err(dev, "getting ipg clock failed with %ld\n",
> >  				PTR_ERR(imx->clk_ipg));
> >  		return PTR_ERR(imx->clk_ipg);
> >  	}
> > =

> > -	imx->clk_per =3D devm_clk_get(&pdev->dev, "per");
> > +	imx->clk_per =3D devm_clk_get(dev, "per");
> >  	if (IS_ERR(imx->clk_per)) {
> >  		int ret =3D PTR_ERR(imx->clk_per);
> > =

> >  		if (ret !=3D -EPROBE_DEFER)
> > -			dev_err(&pdev->dev,
> > +			dev_err(dev,
> >  				"failed to get peripheral clock: %d\n",
> >  				ret);
> =

> Hopefully the compiler will optimise this back otherwise you've added ano=
ther
> local variable which may cause spilling to stack.

I wonder that in reply to this comment nobody actually tried. I just did
that and applying the patch doesn't change the resulting binary. (Tested
with gcc 7.3.1).

> For a setup function it probably doesn't matter, but in general it might
> have a small negative performance impact.
> =

> In any case this doesn't shorten any lines enough to remove line-wrap
> and using &pdev->dev is really one less variable to mentally track
> when reading the code.

On the other hand having a variable named "dev" is so usual that I
personally slightly prefer using it instead of &pdev->dev. So I think
(given there is no effect on the compiled result) this is really just
about personal taste and so to actually switch from one preference to
the other needs a better justification IMHO.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
