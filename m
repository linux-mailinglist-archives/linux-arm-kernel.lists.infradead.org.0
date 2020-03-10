Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C36C17F20D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 09:37:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2Sq61sRs83SGN1O5vppYLXtHj4vbMUZkBvtuUcikWc=; b=hn1sHzBXi1nUUs
	MrIk4anmF1QYJhFy3J6sov2HSKykAOK3kAkkqQ37xb/SLXRHqlSa3HXzk9+LgeATfAQjv5PE8WEF+
	mtAaOMbOJBKloy1ZSP/L2+3yb5zwRseQ20XQ/2UjZxSh6tarF/z+1giuXvK0jeFMdJeqHAOI8eSr9
	wQ9PI5kVFBSTg2OPthsAwGiDYbQ2buSZTOu9rYj717dtLzboylhgYyFq+vBXFnM0+m5v/p8Y2n+MH
	SLo7ViieYldSB+QFfkFV6FCiOh68xPdUdtiJaqORTU3qL/McMW1+HymcDWc5PLj8QN2BKnXG2sXok
	lBhj7DJ7VGrZJaFiMBdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBaOY-00074s-Br; Tue, 10 Mar 2020 08:37:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBaOR-00073y-5E
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 08:37:40 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jBaOF-0008Uo-Lg; Tue, 10 Mar 2020 09:37:27 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jBaOD-00047A-I9; Tue, 10 Mar 2020 09:37:25 +0100
Date: Tue, 10 Mar 2020 09:37:25 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [RESEND v6  06/13] spi: imx: fix ERR009165
Message-ID: <20200310083725.sb6cufp5wznvxcji@pengutronix.de>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
 <1583839922-22699-7-git-send-email-yibin.gong@nxp.com>
 <20200310073920.GR3335@pengutronix.de>
 <VE1PR04MB66384DA6732A840FE1D80C1989FF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB66384DA6732A840FE1D80C1989FF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_013739_199441_C2346B84 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Tue, Mar 10, 2020 at 08:27:41AM +0000, Robin Gong wrote:
> On 2020/03/10 Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Tue, Mar 10, 2020 at 07:31:55PM +0800, Robin Gong wrote:
> > >  	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
> > >
> > > @@ -612,12 +613,14 @@ static int mx51_ecspi_prepare_transfer(struct
> > > spi_imx_data *spi_imx,
> > >
> > >  static void mx51_setup_wml(struct spi_imx_data *spi_imx)  {
> > > +	u32 tx_wml =3D 0;
> > > +
> > >  	/*
> > >  	 * Configure the DMA register: setup the watermark
> > >  	 * and enable DMA request.
> > >  	 */
> > >  	writel(MX51_ECSPI_DMA_RX_WML(spi_imx->wml - 1) |
> > > -		MX51_ECSPI_DMA_TX_WML(spi_imx->wml) |
> > > +		MX51_ECSPI_DMA_TX_WML(tx_wml) |
> > =

> > tx_wml is never assigned any other value than 0. Drop the variable.
> That's prepared for 07/13 patch which may assign spi_imx->wml to tx_wml.

Then this belongs into patch 7, right?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
