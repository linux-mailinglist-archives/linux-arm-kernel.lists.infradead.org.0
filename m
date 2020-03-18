Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7533A18A91B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 00:19:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YX2Q/udDgbtOAjy/sKQG68MUP5sT5Km2vJ0mgYi+3hs=; b=YuUDMUZ0f38DtM
	AriHKjxIdyt45H25aY54aKO9/IVih3vDHYG9VWxI2LYmUPt/dyqBtG9UCde/XupW02f/HfTe5u6GQ
	DVtUlZTLOim2DzGxK5k4uW9GmQCv1uNTVnhYCV52sRqWSYw3eDiplZXvJGXfXYD4Rv0iq4Mh+THXA
	uL0vBJmAzp0bjSLjhG2gvd/cXJcOkEHFylSLxJG1hkwtk1rcVBq70hIzZy6Yw/Ww1utIpA/nb1lsx
	AICphOYvBYqqEsvjsEjRR1Bsz/CcnPJLFQM6bQsqBDxYHETyFDLWhLwiT4e8FTJWSK4pst7YEO/3D
	1u3D9cRF+GTCoDWRbKXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhxz-0005WS-WB; Wed, 18 Mar 2020 23:19:16 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhxp-0005Vl-SN
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 23:19:07 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6269B5F;
 Thu, 19 Mar 2020 00:19:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584573542;
 bh=/zedXgBTnib8ZFBNicYJfz7d9YDzUXZrVfIpem0oI00=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X3wMKCohj+Eri0noSK4cxXv2J+Tdk+etLcebTplD2XwAu0mnpUCJBz9JoBTVtgKyB
 BuYND21PycYFWMRG2CDc0GZ8rvrsDLqV+vZKMIO3R3FRv4+AgQPZ59Gq234fNiH5Z5
 CrBG+MYpU8w1RzkF6O4stmkROcCdhibfo+U67x8I=
Date: Thu, 19 Mar 2020 01:18:56 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH v3 3/4] media: i2c: ov5645: Set maximum leverage of
 external clock frequency to 24480000
Message-ID: <20200318231856.GI24538@pendragon.ideasonboard.com>
References: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1584133954-6953-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200313212345.GM4751@pendragon.ideasonboard.com>
 <OSBPR01MB359079EAA32E0DCBF63C6886AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OSBPR01MB359079EAA32E0DCBF63C6886AAFA0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_161906_069706_6EFD3D2D 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Magnus Damm <magnus.damm@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Fri, Mar 13, 2020 at 09:31:25PM +0000, Prabhakar Mahadev Lad wrote:
> On 13 March 2020 21:24, Laurent Pinchart wrote:
> > On Fri, Mar 13, 2020 at 09:12:33PM +0000, Lad Prabhakar wrote:
> > > While testing on Renesas RZ/G2E platform, noticed the clock frequency
> > > to be 24242424 as a result the probe failed. However increasing the
> > > maximum leverage of external clock frequency to 24480000 fixes this
> > > issue. Since this difference is small enough and is insignificant set
> > > the same in the driver.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > ---
> > >  drivers/media/i2c/ov5645.c | 6 ++++--
> > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/media/i2c/ov5645.c b/drivers/media/i2c/ov5645.c
> > > index 4fbabf3..b49359b 100644
> > > --- a/drivers/media/i2c/ov5645.c
> > > +++ b/drivers/media/i2c/ov5645.c
> > > @@ -1107,8 +1107,10 @@ static int ov5645_probe(struct i2c_client *client)
> > >  }
> > >
> > >  xclk_freq = clk_get_rate(ov5645->xclk);
> > > -/* external clock must be 24MHz, allow 1% tolerance */
> > > -if (xclk_freq < 23760000 || xclk_freq > 24240000) {
> > > +/* external clock must be 24MHz, allow a minimum 1% and a maximum of 2%
> > > + * tolerance
> >
> > So where do these numbers come from ? I understand that 2% is what you
> > need to make your clock fit in the range, but why -1%/+2% instead of -
> > 2%/+2% ? And why not 2.5 or 3% ? The sensor datasheet documents the
> > range of supported xvclk frequencies to be 6MHz to 54MHz. I understand
> > that PLL parameters depend on the clock frequency, but could they be
> > calculated instead of hardcoded, to avoid requiring an exact 24MHz input
> > frequency ?
>
> To be honest I don't have the datasheet for ov5645, the flyer says 6-54Mhz but the
> logs/comment says 24Mhz.

The OV5645 clock topology is fairly complex, with two PLLs and different
set of output dividers. It however shouldn't be impossible to calculate
the PLL configuration in the driver, but would require some dedication,
and is probably not worth it.

I've discussed the matter with Sakari, and we concluded that this is
just a sanity check. We advise increasing the tolerance by a bigger
amount to avoid patching this for every new board (completely
arbitrarily, +/- 5%), and turning the fatal error into a dev_warn,
dropping the return -EINVAL statement.

> > > + */
> > > +if (xclk_freq < 23760000 || xclk_freq > 24480000) {
> > >  dev_err(dev, "external clock frequency %u is not supported\n",
> > >  xclk_freq);
> > >  return -EINVAL;

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
