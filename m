Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4F410F9DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 09:33:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npK1BQVXzM5+D65AdyLmDGJXD/kHZSSLruOxM2tyMJE=; b=uYiBgrrEZ5mjjk
	8bEzsCQh8TKZlqscK6WT9gzfOebjAWC8TYD6qYXhxhl2zht0SDo8LEKOgSyp/MOGvXwGSr1mC3SGB
	G4I58lfu3PdIWFH9PhMV/qaTdVf4IY/OnUrdL9jd2pGLhybnJeaVAVRpWW5hQHT1Tfp/9ZrmGUmpu
	X/xoTuLvCi5mEtmPJ3RBwk2Hyv0rfEsgjlNpYdJjpkPlD+KEgASLQmj52T92HjLndgZD8bsaRyCCn
	wBtL0nJmip334/ojiOE7Hw3Mihvqo7eCOR9Otp6Q/mgg14t1FPXj/mZykmGrEI89T9KxEVW7QBeDN
	BO+9BcOM4NRB6UsP0MtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic3cX-00012a-6V; Tue, 03 Dec 2019 08:33:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic3cO-00011R-SK
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 08:33:15 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ic3cJ-0003ra-R5; Tue, 03 Dec 2019 09:33:07 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1ic3cJ-0006zU-Cc; Tue, 03 Dec 2019 09:33:07 +0100
Date: Tue, 3 Dec 2019 09:33:07 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Stefan =?iso-8859-1?Q?Riedm=FCller?= <s.riedmueller@phytec.de>
Subject: Re: [PATCH 1/3] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
Message-ID: <20191203083307.ntoe2bwha7hzlr42@pengutronix.de>
References: <20191129164859.15632-1-m.felsch@pengutronix.de>
 <ec29daf9-d87f-276f-2927-da66b153840f@phytec.de>
 <20191202124200.mvwnsne2vnszyprj@pengutronix.de>
 <b4e1fb4d-6e0f-4501-17a4-ee837548ad86@phytec.de>
 <20191202141406.gvzc3lnxefczd33b@pengutronix.de>
 <dc55f52f-c01b-1f9e-4149-740e2c6d9663@phytec.de>
 <20191202145308.7w5pic3fwpq752mz@pengutronix.de>
 <acdbab96-dfc0-87ab-b759-79c7bfe77c3c@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acdbab96-dfc0-87ab-b759-79c7bfe77c3c@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:19:09 up 17 days, 23:37, 26 users,  load average: 0.02, 0.02, 0.04
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_003313_462995_3D81364F 
X-CRM114-Status: GOOD (  39.88  )
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
Cc: s.christ@phytec.de, chf.fritz@googlemail.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 shawnguo@kernel.org, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On 19-12-03 09:11, Stefan Riedm=FCller wrote:
> Hi Marco,
> =

> On 02.12.19 15:53, Marco Felsch wrote:
> > On 19-12-02 15:30, Stefan Riedm=FCller wrote:
> > > Hi Marco,
> > > =

> > > On 02.12.19 15:14, Marco Felsch wrote:
> > > > Hi Stefan,
> > > > =

> > > > On 19-12-02 14:55, Stefan Riedm=FCller wrote:
> > > > > Hi Marco,
> > > > > =

> > > > > On 02.12.19 13:42, Marco Felsch wrote:
> > > > > > Hi Stefan,
> > > > > > =

> > > > > > On 19-12-02 11:09, Stefan Riedm=FCller wrote:
> > > > > > > Hi Marco,
> > > > > > > =

> > > > > > > your proposed setting is only valid for the LDO enabled case =
but not for the
> > > > > > > case where the LDO's are in bypass mode. Is that intended? In=
 bypass mode it
> > > > > > > actually needs to be 0.925 V min for ARM and 1.15 V min for S=
OC.
> > > > > > =

> > > > > > The case is that the driver doesn't support the bypass mode cur=
rently so
> > > > > > yes it was intended.
> > > > > =

> > > > > Ok, I see.
> > > > > =

> > > > > > =

> > > > > > > Did you experience an issue with the current settings or is t=
his just a
> > > > > > > cosmetic change?
> > > > > > =

> > > > > > There is currently no issue because the internally LDO's don't =
try to
> > > > > > apply such a low voltage value. But I think it isn't a cosmetic=
 change
> > > > > > because this value is wrong. We need to specify the valid volta=
ge range.
> > > > > =

> > > > > Please correct me if I'm wrong, but isn't the regulator-min and
> > > > > regulator-max values supposed to reflect the min and max values t=
his
> > > > > regulator can deliver?
> > > > =

> > > > Nope, the constraints are hard coded within the driver e.g. da9062:=
 >
> > > > 8<-----------------------------------------------------------------
> > > > /* Regulator operations */
> > > > =

> > > > /* Current limits array (in uA)
> > > >    * - DA9061_ID_[BUCK1|BUCK3]
> > > >    * - DA9062_ID_[BUCK1|BUCK2|BUCK4]
> > > >    * Entry indexes corresponds to register values.
> > > >    */
> > > > static const unsigned int da9062_buck_a_limits[] =3D {
> > > > 	500000,  600000,  700000,  800000,  900000, 1000000,
> > > > 	1100000, 1200000,
> > > > 	1300000, 1400000, 1500000, 1600000, 1700000,
> > > > 	1800000, 1900000, 2000000
> > > > };
> > > > =

> > > > /* Current limits array (in uA)
> > > >    * - DA9061_ID_BUCK2
> > > >    * - DA9062_ID_BUCK3
> > > >    * Entry indexes corresponds to register values.
> > > >    */
> > > > static const unsigned int
> > > > da9062_buck_b_limits[] =3D {
> > > > 	1500000, 1600000, 1700000, 1800000,
> > > > 	1900000, 2000000, 2100000, 2200000,
> > > > 	2300000, 2400000, 2500000,
> > > > 	2600000, 2700000, 2800000,
> > > > 	2900000, 3000000
> > > > };
> > > > =

> > > > 8<-----------------------------------------------------------------
> > > > =

> > > =

> > > These are the available current limits for the buck regulators. I don=
't see
> > > where they correspond to the min/max settable output voltage. Maybe I=
 missed
> > > something?
> > =

> > Please check the following structs:
> > =

> >   - static const struct da9062_regulator_info local_da9061_regulator_in=
fo[]
> >   - static const struct da9062_regulator_info local_da9062_regulator_in=
fo[]
> > =

> > There you have the min_uV, uV_step, n_voltages so the core can validate
> > if the dt-value is within the range.
> =

> Thanks, that makes more sense.
> =

> > =

> > > The regulator bindings state:
> > > - regulator-min-microvolt: smallest voltage consumers may set
> > > =

> > > - regulator-max-microvolt: largest voltage consumers may set
> > =

> > Yes and according the datasheet I mentionied the current values aren't
> > correct.
> > =

> > > For me that is device depended and not design depended.
> > > =

> > > What is the scenario you're thinking about which would cause the SOC,=
 as a
> > > consumer, to request a lower voltage as it needs?
> > =

> > The thing is that the DT abstracts the HW and these values are not
> > correct. As mentioned in my commit message the values should meet
> > the datasheet restrictions and this isn't the case yet.
> =

> I don't agree. The datasheet you mention is the i.MX 6 datasheet and thus
> the limitation should reside in the i.MX 6 regulators and not in the PMIC=
's.
> This limitation is not just valid in combination with that PMIC but for a=
ll
> i.MX 6.

The datasheet tells you which voltage should be applied to the imx6 and
so you have to set this here. What happens if the internally ldo
request a voltage value below 0.9V? Then the value will be applied
because we specified 0.73V and the system don't work anymore or did you
verified that case?

> If I have this wrong and the maintainers agree with you could you please
> make sure to account for the bypass mode as well since these values from =
the
> datasheet are valid too?

As I said, the bypass mode isn't supported by the driver and all imx6
based devicetrees follow that case. So we don't have to take that into
account. Also we can't meet both contraints with one dt and futhermore
the bypass mode decrease your imx6 lifetime due the the increased ripple
on the arm-core supply. So I think no one wants this setup in the near
future.

Regards,
  Marco

> Regards,
> Stefan
> =

> > =

> > Regards,
> >    Marco
> > =

> > > Regards,
> > > Stefan
> > > =

> > > > So you have to specify the min/max voltage for your design.
> > > > =

> > > > Regards,
> > > >     Marco
> > > > =

> > > > > Maybe your change is better placed in the anatop regulators. Btw =
they also
> > > > > have a 0.725 V minimum voltage:
> > > > > =

> > > > >   From arch/arm/boot/dts/imx6qdl.dtsi:
> > > > > =

> > > > >                                   reg_arm: regulator-vddcore {
> > > > > =

> > > > >                                           compatible =3D "fsl,ana=
top-regulator";
> > > > >                                           regulator-name =3D "vdd=
arm";
> > > > > =

> > > > >                                           regulator-min-microvolt=
 =3D <725000>;
> > > > > =

> > > > >                                           regulator-max-microvolt=
 =3D <1450000>;
> > > > >                                           regulator-always-on;
> > > > > =

> > > > >                                           anatop-reg-offset =3D <=
0x140>;
> > > > > =

> > > > >                                           anatop-vol-bit-shift =
=3D <0>;
> > > > > =

> > > > >                                           anatop-vol-bit-width =
=3D <5>;
> > > > > =

> > > > >                                           anatop-delay-reg-offset=
 =3D <0x170>;
> > > > > =

> > > > >                                           anatop-delay-bit-shift =
=3D <24>;
> > > > > =

> > > > >                                           anatop-delay-bit-width =
=3D <2>;
> > > > > =

> > > > >                                           anatop-min-bit-val =3D =
<1>;
> > > > > =

> > > > >                                           anatop-min-voltage =3D =
<725000>;
> > > > > =

> > > > >                                           anatop-max-voltage =3D =
<1450000>;
> > > > > =

> > > > >                                   };
> > > > > =

> > > > > =

> > > > > Regards,
> > > > > Stefan
> > > > > =

> > > > > > =

> > > > > > Regards,
> > > > > >      Marco
> > > > > > =

> > > > > > > Regards,
> > > > > > > Stefan
> > > > > > > =

> > > > > > > =

> > > > > > > On 29.11.19 17:48, Marco Felsch wrote:
> > > > > > > > The current set minimum voltage of 730000mV seems to be wro=
ng. I don't
> > > > > > > > know the document which specifies that but the imx6qdl data=
sheets says
> > > > > > > > that the minimum voltage should be 1.05V for VDD_ARM (LDO e=
nabled, lowest
> > > > > > > > opp) and 1.275V for VDD_SOC (LDO enabled, lowest opp).
> > > > > > > > =

> > > > > > > > Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support f=
or phyCORE-i.MX 6 SOM")
> > > > > > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > > > > > ---
> > > > > > > >      arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 =
++--
> > > > > > > >      1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > > > > =

> > > > > > > > diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.d=
tsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > > > > > > > index 6486df3e2942..46d4953c5588 100644
> > > > > > > > --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > > > > > > > +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > > > > > > > @@ -107,14 +107,14 @@
> > > > > > > >      		regulators {
> > > > > > > >      			vdd_arm: buck1 {
> > > > > > > >      				regulator-name =3D "vdd_arm";
> > > > > > > > -				regulator-min-microvolt =3D <730000>;
> > > > > > > > +				regulator-min-microvolt =3D <1050000>;
> > > > > > > >      				regulator-max-microvolt =3D <1380000>;
> > > > > > > >      				regulator-always-on;
> > > > > > > >      			};
> > > > > > > >      			vdd_soc: buck2 {
> > > > > > > >      				regulator-name =3D "vdd_soc";
> > > > > > > > -				regulator-min-microvolt =3D <730000>;
> > > > > > > > +				regulator-min-microvolt =3D <1275000>;
> > > > > > > >      				regulator-max-microvolt =3D <1380000>;
> > > > > > > >      				regulator-always-on;
> > > > > > > >      			};
> > > > > > > > =

> > > > > > > =

> > > > > > =

> > > > > =

> > > > =

> > > =

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
