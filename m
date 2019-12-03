Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B34B10FC9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 12:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJ5jMGDXutiGEcaJnesb6tqNEgugoT/DRRr6tW2mWbw=; b=BfkxRY0RU2lnZ5
	eHxdR/6NxojXdApnZEWK2xe0mZPxtLUR4EFkmuYnnBRmxmUqtBwlXqPPDOb2Oe63uNQ2TbmIyp9vK
	EYNjXR8uauos79JEzwaB/PObpPOhciRbDo4EY41rmN+BiG/tBdYk06N47fk0oFgaPdUB9p6TirNi5
	u0BaVdRYOcZZa7xV50zpbipIjYTI80Qzw8HFpkcDcMrhGBkm8mAG02oWIMbYf+OOwaE9zpSM0lPiM
	NQiKnu9VoryPSj9YGRoXgyWt/ElAoPR7V+0nivI/WmZ60n95tK5eIkToQiVe9VvPYqHU6+mLWWfxo
	1m9tIGVMtiUiLtT0yEMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6bc-0007BO-O0; Tue, 03 Dec 2019 11:44:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6bV-0007B3-LR
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 11:44:31 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1ic6bP-0007A3-EI; Tue, 03 Dec 2019 12:44:23 +0100
Message-ID: <895eb269794c200e7c04161188787b3933e3ee0c.camel@pengutronix.de>
Subject: Re: [PATCH 1/3] ARM: dts: imx6: phycore-som: fix arm and soc
 minimum voltage
From: Lucas Stach <l.stach@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>, Stefan
 =?ISO-8859-1?Q?Riedm=FCller?= <s.riedmueller@phytec.de>
Date: Tue, 03 Dec 2019 12:44:18 +0100
In-Reply-To: <20191203083307.ntoe2bwha7hzlr42@pengutronix.de>
References: <20191129164859.15632-1-m.felsch@pengutronix.de>
 <ec29daf9-d87f-276f-2927-da66b153840f@phytec.de>
 <20191202124200.mvwnsne2vnszyprj@pengutronix.de>
 <b4e1fb4d-6e0f-4501-17a4-ee837548ad86@phytec.de>
 <20191202141406.gvzc3lnxefczd33b@pengutronix.de>
 <dc55f52f-c01b-1f9e-4149-740e2c6d9663@phytec.de>
 <20191202145308.7w5pic3fwpq752mz@pengutronix.de>
 <acdbab96-dfc0-87ab-b759-79c7bfe77c3c@phytec.de>
 <20191203083307.ntoe2bwha7hzlr42@pengutronix.de>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_034429_703471_E7E661AB 
X-CRM114-Status: GOOD (  24.61  )
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
Cc: festevam@gmail.com, shawnguo@kernel.org, chf.fritz@googlemail.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 s.christ@phytec.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Di, 2019-12-03 at 09:33 +0100, Marco Felsch wrote:
[...]
> > > Please check the following structs:
> > > 
> > >   - static const struct da9062_regulator_info local_da9061_regulator_info[]
> > >   - static const struct da9062_regulator_info local_da9062_regulator_info[]
> > > 
> > > There you have the min_uV, uV_step, n_voltages so the core can validate
> > > if the dt-value is within the range.
> > 
> > Thanks, that makes more sense.
> > 
> > > > The regulator bindings state:
> > > > - regulator-min-microvolt: smallest voltage consumers may set
> > > > 
> > > > - regulator-max-microvolt: largest voltage consumers may set
> > > 
> > > Yes and according the datasheet I mentionied the current values aren't
> > > correct.
> > > 
> > > > For me that is device depended and not design depended.
> > > > 
> > > > What is the scenario you're thinking about which would cause the SOC, as a
> > > > consumer, to request a lower voltage as it needs?
> > > 
> > > The thing is that the DT abstracts the HW and these values are not
> > > correct. As mentioned in my commit message the values should meet
> > > the datasheet restrictions and this isn't the case yet.
> > 
> > I don't agree. The datasheet you mention is the i.MX 6 datasheet and thus
> > the limitation should reside in the i.MX 6 regulators and not in the PMIC's.
> > This limitation is not just valid in combination with that PMIC but for all
> > i.MX 6.
> 
> The datasheet tells you which voltage should be applied to the imx6 and
> so you have to set this here. What happens if the internally ldo
> request a voltage value below 0.9V? Then the value will be applied
> because we specified 0.73V and the system don't work anymore or did you
> verified that case?

The DT constraints are supposed to reflect absolute maximum ratings of
the board design. The regulator driver already knows the limits of the
PMIC chip, so there is no point in duplicating this information in the
DT.

The DT constraints are there to make sure the regulator core can
constrain the voltage setting to something safe for the specific
design. A consumer driver bug must never be able to set a voltage that
is outside of the absolute maximum ratings of _all_ consumers of this
specific power rail. I know that a lot of DTs get this detail wrong,
but we shouldn't block patches to fix this. :)

> > If I have this wrong and the maintainers agree with you could you please
> > make sure to account for the bypass mode as well since these values from the
> > datasheet are valid too?
> 
> As I said, the bypass mode isn't supported by the driver and all imx6
> based devicetrees follow that case. So we don't have to take that into
> account. Also we can't meet both contraints with one dt and futhermore
> the bypass mode decrease your imx6 lifetime due the the increased ripple
> on the arm-core supply. So I think no one wants this setup in the near
> future.

As a violation of the minimum voltage setting is very unlikely to cause
any permanent damage to the design (expect if you got reverse voltage
flows somewhere) I think it is safe to include the LDO bypass supply
limits as the lower bound in the DT constraints, even if this mode
isn't currently used anywhere.

Regards,
Lucas


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
