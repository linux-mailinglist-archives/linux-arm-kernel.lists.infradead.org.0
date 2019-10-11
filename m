Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A8BD440D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 17:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZ3x1+Mbkz7rvnMQ3NdcoxHql9zPa8jreLbOPZd4Rv8=; b=HvWoa2U4yNznG6
	T939K4RGXy3f4PpUEgo6KKFz0uDXn25EMLJg6DFdUiqmTQLDxouBForSUl+FAyCYFnOxNxjkeMY2R
	PgN3m2nV0fDd5p/f52S7XL8AtF/SG+8CQ/IJGQDq7d/YaBwAu/NYyYWA3jG8K/B9OFrFS1pMPahgn
	35eFYyFuqb9NU+WLHnXqBi850m6EekuV/5iMh2VFo4gQEjew1r3bSJDxdzjSxpBr8+BgLMRYnFNRf
	gaTaOG/LfuBESZsS+9e9ny8V29rVs7PpUehEhV3BtEfvKeUU+sRlNi4THgvG7L35uOgK+wgU96Rfz
	T/QVi6Eys29cDufTdJgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIwkV-0007Pe-Vt; Fri, 11 Oct 2019 15:22:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIwkO-0007Oz-Co
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 15:22:29 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iIwkD-00044O-8R; Fri, 11 Oct 2019 17:22:17 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iIwkA-0004HX-Ik; Fri, 11 Oct 2019 17:22:14 +0200
Date: Fri, 11 Oct 2019 17:22:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH v3 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191011152214.v6lq6itwf5lp6j7q@pengutronix.de>
References: <20191010192357.27884-1-andreas@kemnade.info>
 <20191010192357.27884-3-andreas@kemnade.info>
 <20191011065609.6irap7elicatmsgg@pengutronix.de>
 <20191011094148.1376430e@aktux> <20191011142927.GA11490@bogus>
 <20191011170147.1b3c4b25@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011170147.1b3c4b25@kemnade.info>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:20:39 up 146 days, 21:38, 99 users,  load average: 0.06, 0.01,
 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_082228_435335_4AACC2FA 
X-CRM114-Status: GOOD (  22.03  )
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>, marex@denx.de,
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, festevam@gmail.com,
 s.hauer@pengutronix.de, angus@akkea.ca, linux-kernel@vger.kernel.org,
 j.neuschaefer@gmx.net, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-10-11 17:05, Andreas Kemnade wrote:
> On Fri, 11 Oct 2019 09:29:27 -0500
> Rob Herring <robh@kernel.org> wrote:
> 
> > On Fri, Oct 11, 2019 at 09:41:48AM +0200, Andreas Kemnade wrote:
> > > On Fri, 11 Oct 2019 08:56:09 +0200
> > > Marco Felsch <m.felsch@pengutronix.de> wrote:
> > >   
> > > > Hi Andreas,
> > > > 
> > > > On 19-10-10 21:23, Andreas Kemnade wrote:  
> > > > > The Netronix board E60K02 can be found some several Ebook-Readers,
> > > > > at least the Kobo Clara HD and the Tolino Shine 3. The board
> > > > > is equipped with different SoCs requiring different pinmuxes.
> > > > > 
> > > > > For now the following peripherals are included:
> > > > > - LED
> > > > > - Power Key
> > > > > - Cover (gpio via hall sensor)
> > > > > - RC5T619 PMIC (the kernel misses support for rtc and charger
> > > > >   subdevices).
> > > > > - Backlight via lm3630a
> > > > > - Wifi sdio chip detection (mmc-powerseq and stuff)
> > > > > 
> > > > > It is based on vendor kernel but heavily reworked due to many
> > > > > changed bindings.
> > > > > 
> > > > > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > > > > ---
> > > > > Changes in v3:
> > > > > - better led name
> > > > > - correct memory size
> > > > > - comments about missing devices
> > > > > 
> > > > > Changes in v2:
> > > > > - reordered, was 1/3
> > > > > - moved pinmuxes to their actual users, not the parents
> > > > >   of them
> > > > > - removed some already-disabled stuff
> > > > > - minor cleanups    
> > > > 
> > > > You won't change the muxing, so a this dtsi can be self contained?
> > > >   
> > > So you want me to put a big 
> > > #if defined(MX6SLL)   
> > 
> > Not sure what the comment meant, but no, don't do this. C defines in dts 
> > files are for symbolic names for numbers and assembling bitfields and 
> > that's it.
> 
> yes, that is also my opinion. For now, there is only one user
> of this .dtsi, but I have another one in preparation. That is the
> reason for splitting things between .dts and .dtsi to avoid such ugly
> ifdefs

Then IMHO the pnictrl-* entries shouldn't appear in the dsti.

Regards,
  Marco

> Regards,
> Andreas



> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
