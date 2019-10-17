Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FE1DA6FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVp6f6nXhcQPeviyX3jXCEY5L1SfHOpoFVv3dt8VAR4=; b=B4rl7DQa49yG86
	OZUCd3NHUQd6FGsASg/kPAqBAmlYR+0egXYbsuFAzMje7jVOHLENtzQIEgnS0ejRXFQ8bOZSkr4DI
	cXRm7hlYtq0bdtualda5uvJ9ZSBD35/i78WgI87zXVOXMT8cGlJ+et1fagVii0e6YaG2iGDRXyJvj
	lDowmLE2OIHA3snIAeY7ibdUwJb+5S0MVyWqR2f0h9A2WWLJGqNtIAh7E7w4BMPZvbjdtPN3OCU27
	qpqEw4PP49Ihufee1w5+cabVP4ofV+KNwIeF9+y09KPjeQ0yRucEglpF9WCIJ2JMQYIo1WepqeESt
	iDZllDEmLq/pV1VRd27A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0rx-0000CF-5i; Thu, 17 Oct 2019 08:10:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0rn-0000B8-Tq
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 08:10:42 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iL0rg-0005Vf-3w; Thu, 17 Oct 2019 10:10:32 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iL0rd-0005p9-Jl; Thu, 17 Oct 2019 10:10:29 +0200
Date: Thu, 17 Oct 2019 10:10:29 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Rui Miguel Silva <rmfrfs@gmail.com>
Subject: Re: [PATCH v2] media: imx7-mipi-csis: Add a check for
 devm_regulator_get
Message-ID: <20191017081029.q2czy7y5zlbj4ogr@pengutronix.de>
References: <20191015135915.6530-1-hslester96@gmail.com>
 <20191016090628.7l5u4ytdqr2jlasg@pengutronix.de>
 <m336fsst40.fsf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m336fsst40.fsf@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:04:20 up 152 days, 14:22, 99 users,  load average: 0.12, 0.11,
 0.05
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_011041_400183_233E9D9E 
X-CRM114-Status: GOOD (  20.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rui,

On 19-10-16 14:43, Rui Miguel Silva wrote:
> Hi Marco,
> On Wed 16 Oct 2019 at 10:06, Marco Felsch wrote:
> > Hi Chuhong,
> >
> > On 19-10-15 21:59, Chuhong Yuan wrote:
> >> devm_regulator_get may return an error but mipi_csis_phy_init misses
> >> a check for it.
> >> This may lead to problems when regulator_set_voltage uses the unchecked
> >> pointer.
> >> This patch adds a check for devm_regulator_get to avoid potential risk.
> >>
> >> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> >> ---
> >> Changes in v2:
> >>   - Add a check in mipi_csis_probe for the modified mipi_csis_phy_init.
> >
> > Did you miss the check for -EPROBE_DEFER?
> >
> 
> I think nothing special is really needed to do in case of
> EPROBE_DEFER, or am I missing something?
> It just return to probe and probe returns also. I just talked
> about it because it was not cover in the original code.

Yes, your are right... I shouldn't comment on anything I read with one
eye. Sorry.

Regards,
  Marco

> ---
> Cheers,
> 	Rui
> 
> >
> > Regards,
> >   Marco
> >
> >>
> >>  drivers/staging/media/imx/imx7-mipi-csis.c | 8 +++++++-
> >>  1 file changed, 7 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
> >> index 73d8354e618c..e8a6acaa969e 100644
> >> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
> >> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
> >> @@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
> >>  static int mipi_csis_phy_init(struct csi_state *state)
> >>  {
> >>  	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
> >> +	if (IS_ERR(state->mipi_phy_regulator))
> >> +		return PTR_ERR(state->mipi_phy_regulator);
> >>
> >>  	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
> >>  				     1000000);
> >> @@ -966,7 +968,10 @@ static int mipi_csis_probe(struct platform_device *pdev)
> >>  		return ret;
> >>  	}
> >>
> >> -	mipi_csis_phy_init(state);
> >> +	ret = mipi_csis_phy_init(state);
> >> +	if (ret < 0)
> >> +		return ret;
> >> +
> >>  	mipi_csis_phy_reset(state);
> >>
> >>  	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >> --
> >> 2.20.1
> >>
> >>
> >>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
