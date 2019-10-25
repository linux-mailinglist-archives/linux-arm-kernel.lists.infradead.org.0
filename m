Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A48B2E4AD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APjR36SLt7Scn94hnHjPpSMhwog6PNUKijc+jjLW/bA=; b=bbb2WbETpxiwc3
	7c6E1aEnfCH9ASxtBkvXOYrQpu8ZiQ7qirHl/mT80lhpm8FvoDFO/HqEv6pL8T/gYUy/1Qwhu4Eh8
	8+gWQHdM0hIJcuzX+X6QEb/z2Gm9GaA0bwXLbYr0NgRPTA4hJZBaLjQD0K+MvFpSaTXH1jsIkWASW
	fsr5RpD7RnFs191ACj2vOh77k44Oe4rg8CYo+dHRp1oeh0u0tUcfqA5ciDIYt6vGSHKZiiiPyNrYf
	yQgVOA3bpO+z2u3wBAJnGVvPP3SuM3n5XVxg8dDp1GfNJhGVsJRWzBan4RIoweId7b+pJQdMoOxV5
	/sdsxJ1tvly6I4FnyI7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyV7-0003bo-13; Fri, 25 Oct 2019 12:15:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyUu-0003az-5k
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:15:17 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iNyUn-0003GB-Qv; Fri, 25 Oct 2019 14:15:09 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iNyUm-0002Xw-N4; Fri, 25 Oct 2019 14:15:08 +0200
Date: Fri, 25 Oct 2019 14:15:08 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 1/3] dt-bindings: arm: Add devicetree binding for Thor96
 Board
Message-ID: <20191025121508.s6gl77cydd74aaju@pengutronix.de>
References: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
 <20191024144235.3182-2-manivannan.sadhasivam@linaro.org>
 <20191025062659.fyze6zt4jg6uzqxz@pengutronix.de>
 <20191025071927.GA19873@mani>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025071927.GA19873@mani>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:13:43 up 160 days, 18:31, 100 users,  load average: 0.21, 0.13,
 0.05
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_051516_216788_3C78E881 
X-CRM114-Status: GOOD (  17.32  )
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
Cc: devicetree@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

On 19-10-25 12:49, Manivannan Sadhasivam wrote:
> 
> Hi Marco,
> 
> On Fri, Oct 25, 2019 at 08:26:59AM +0200, Marco Felsch wrote:
> > Hi Manivannan,
> > 
> > On 19-10-24 20:12, Manivannan Sadhasivam wrote:
> > > Add devicetree binding for Thor96 Board from Einfochips. This board is
> > > one of the 96Boards Consumer Edition platform powered by NXP i.MX8MQ SoC.
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > ---
> > >  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > index 1b4b4e6573b5..8016174d5e49 100644
> > > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > > @@ -239,6 +239,7 @@ properties:
> > >          items:
> > >            - enum:
> > >                - boundary,imx8mq-nitrogen8m # i.MX8MQ NITROGEN Board
> > > +              - einfochips,imx8mq-thor96  # i.MX8MQ Thor96 Board
> > 
> > Do we need to add a vendor patch too?
> > 
> 
> Do you mean a patch for adding vendor prefix? If yes, then I have added it
> already for AI_ML board and it is in mainline now!
> 
> https://elixir.bootlin.com/linux/v5.4-rc2/source/Documentation/devicetree/bindings/vendor-prefixes.yaml#L276

Ah, okay thanks for the hint. Feel free to add my:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco

> Thanks,
> Mani
> 
> > Regards,
> >   Marco
> > 
> > >                - fsl,imx8mq-evk            # i.MX8MQ EVK Board
> > >                - purism,librem5-devkit     # Purism Librem5 devkit
> > >                - solidrun,hummingboard-pulse # SolidRun Hummingboard Pulse
> > > -- 
> > > 2.17.1
> > > 
> > > 
> > > 
> > 
> > -- 
> > Pengutronix e.K.                           |                             |
> > Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
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
