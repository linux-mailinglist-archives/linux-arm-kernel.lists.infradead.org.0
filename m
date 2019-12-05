Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CAB113C32
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 08:20:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QtXiSGPRAQA/DsJW8SH7ZeEed0q8EATkSHiNCzR3Zpg=; b=JQZUCGLG7G07lg
	HbpwFCeI0LZpMMW7oe0ke0um40yRsSJbJDYaCBOLW9KIdoyK5HJshz0IikD2c6cchn1MuY0VhYRKt
	uxCCC3R3HF7E3kioz4LHW1Ycx2FQCkp/zSQRD2W8p01O/AvDJeGQGyWLLwawa6pL9UC/w6hO4eWZ3
	NQCJyGISfGiwu9WVQgOCmOtkYyXIYWW5Ql0j6GjIb4hERDAu2XlRA6Q9BdZgmiJx4eHr/Le0nihHC
	TuRfecFAs8KxgTSyIRN8iEhrK7Do5JHyF21abNO7jskLnhogcU3wGsi99elv/uPJHF8BApNgIHUrN
	phg6FvjkofbbGZgOTKmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iclQX-0003Uq-I4; Thu, 05 Dec 2019 07:19:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iclQO-0003U6-Sc
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 07:19:46 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iclQF-0003vJ-9A; Thu, 05 Dec 2019 08:19:35 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iclQE-0006xb-J5; Thu, 05 Dec 2019 08:19:34 +0100
Date: Thu, 5 Dec 2019 08:19:34 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Stefan =?iso-8859-1?Q?Riedm=FCller?= <s.riedmueller@phytec.de>
Subject: Re: [PATCH 1/3] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
Message-ID: <20191205071934.fkslkkkjuwrnxmbt@pengutronix.de>
References: <ec29daf9-d87f-276f-2927-da66b153840f@phytec.de>
 <20191202124200.mvwnsne2vnszyprj@pengutronix.de>
 <b4e1fb4d-6e0f-4501-17a4-ee837548ad86@phytec.de>
 <20191202141406.gvzc3lnxefczd33b@pengutronix.de>
 <dc55f52f-c01b-1f9e-4149-740e2c6d9663@phytec.de>
 <20191202145308.7w5pic3fwpq752mz@pengutronix.de>
 <acdbab96-dfc0-87ab-b759-79c7bfe77c3c@phytec.de>
 <20191203083307.ntoe2bwha7hzlr42@pengutronix.de>
 <895eb269794c200e7c04161188787b3933e3ee0c.camel@pengutronix.de>
 <21bdac21-d5e0-ea84-57b4-5998f64899e9@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21bdac21-d5e0-ea84-57b4-5998f64899e9@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:15:47 up 19 days, 22:34, 29 users,  load average: 0.06, 0.06, 0.02
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_231944_925939_6525AA22 
X-CRM114-Status: GOOD (  22.59  )
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
Cc: festevam@gmail.com, shawnguo@kernel.org, chf.fritz@googlemail.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 s.christ@phytec.de, linux-arm-kernel@lists.infradead.org,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On 19-12-03 13:37, Stefan Riedm=FCller wrote:
> Hi Lucas, hi Marco,
> =

> On 03.12.19 12:44, Lucas Stach wrote:

...

> > =

> > The DT constraints are supposed to reflect absolute maximum ratings of
> > the board design. The regulator driver already knows the limits of the
> > PMIC chip, so there is no point in duplicating this information in the
> > DT.
> > =

> > The DT constraints are there to make sure the regulator core can
> > constrain the voltage setting to something safe for the specific
> > design. A consumer driver bug must never be able to set a voltage that
> > is outside of the absolute maximum ratings of _all_ consumers of this
> > specific power rail. I know that a lot of DTs get this detail wrong,
> > but we shouldn't block patches to fix this. :)
> =

> Thanks for the clarification and the example. I got it now and will keep =
it
> in mind for the future.
> =

> > =

> > > > If I have this wrong and the maintainers agree with you could you p=
lease
> > > > make sure to account for the bypass mode as well since these values=
 from the
> > > > datasheet are valid too?
> > > =

> > > As I said, the bypass mode isn't supported by the driver and all imx6
> > > based devicetrees follow that case. So we don't have to take that into
> > > account. Also we can't meet both contraints with one dt and futhermore
> > > the bypass mode decrease your imx6 lifetime due the the increased rip=
ple
> > > on the arm-core supply. So I think no one wants this setup in the near
> > > future.
> > =

> > As a violation of the minimum voltage setting is very unlikely to cause
> > any permanent damage to the design (expect if you got reverse voltage
> > flows somewhere) I think it is safe to include the LDO bypass supply
> > limits as the lower bound in the DT constraints, even if this mode
> > isn't currently used anywhere.
> =

> Sounds good to me.

Okay, I will use the bypass value and add a comment. Stefan can you take
a look at the other patches as well?

Regards,
  Marco

> Regards,
> Stefan
> =

> > =

> > Regards,
> > Lucas
> > =

> =


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
