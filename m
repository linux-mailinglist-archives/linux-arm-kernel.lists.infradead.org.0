Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2336F10EA2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 13:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mI6fnTbs/WnQumc1oUt1NUJAVFc+7G/Xw333nMWcmGY=; b=UQj9d2FDkioHHv
	zfACkE2plKx1LB/Mbg/2FncBpQxP50gy0Ag8W/MSk0+bAiyb0xZFH0rwo2DtomLafo+dsFvF1KrWw
	F4VMIa27va+3VOQbV3ycJ6Z8vjowFnCkBvXggFvyteWVbjChrBPO+nQsv1b4puhVU+Y6+a6fa+vpU
	abw0PjCszn7asfssT355jgftZLb+rvhLo7zEUt0mrpmjJ91tmcFBnCb9ttSXJQnm47F3h4VxpsXEP
	Wk4pevqLtcXH3C8wIP4ntawExG2SoxSxMlCEAJtowMkxYLaYwgJD9PMa6Wjg059oBmEJ/F7lRkKsR
	jZr23ObF3cLz2sLnXx1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibl1s-0005ki-GN; Mon, 02 Dec 2019 12:42:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibl1m-0005jz-7j
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 12:42:11 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ibl1d-0004FV-RW; Mon, 02 Dec 2019 13:42:01 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1ibl1c-0000lH-Gy; Mon, 02 Dec 2019 13:42:00 +0100
Date: Mon, 2 Dec 2019 13:42:00 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Stefan =?iso-8859-1?Q?Riedm=FCller?= <s.riedmueller@phytec.de>
Subject: Re: [PATCH 1/3] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
Message-ID: <20191202124200.mvwnsne2vnszyprj@pengutronix.de>
References: <20191129164859.15632-1-m.felsch@pengutronix.de>
 <ec29daf9-d87f-276f-2927-da66b153840f@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ec29daf9-d87f-276f-2927-da66b153840f@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:34:55 up 17 days,  3:53, 30 users,  load average: 0.22, 0.07, 0.02
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_044210_274093_4C712668 
X-CRM114-Status: GOOD (  21.14  )
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

On 19-12-02 11:09, Stefan Riedm=FCller wrote:
> Hi Marco,
> =

> your proposed setting is only valid for the LDO enabled case but not for =
the
> case where the LDO's are in bypass mode. Is that intended? In bypass mode=
 it
> actually needs to be 0.925 V min for ARM and 1.15 V min for SOC.

The case is that the driver doesn't support the bypass mode currently so
yes it was intended.

> Did you experience an issue with the current settings or is this just a
> cosmetic change?

There is currently no issue because the internally LDO's don't try to
apply such a low voltage value. But I think it isn't a cosmetic change
because this value is wrong. We need to specify the valid voltage range.

Regards,
  Marco

> Regards,
> Stefan
> =

> =

> On 29.11.19 17:48, Marco Felsch wrote:
> > The current set minimum voltage of 730000mV seems to be wrong. I don't
> > know the document which specifies that but the imx6qdl datasheets says
> > that the minimum voltage should be 1.05V for VDD_ARM (LDO enabled, lowe=
st
> > opp) and 1.275V for VDD_SOC (LDO enabled, lowest opp).
> > =

> > Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i=
.MX 6 SOM")
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >   arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ++--
> >   1 file changed, 2 insertions(+), 2 deletions(-)
> > =

> > diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/a=
rm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > index 6486df3e2942..46d4953c5588 100644
> > --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > @@ -107,14 +107,14 @@
> >   		regulators {
> >   			vdd_arm: buck1 {
> >   				regulator-name =3D "vdd_arm";
> > -				regulator-min-microvolt =3D <730000>;
> > +				regulator-min-microvolt =3D <1050000>;
> >   				regulator-max-microvolt =3D <1380000>;
> >   				regulator-always-on;
> >   			};
> >   			vdd_soc: buck2 {
> >   				regulator-name =3D "vdd_soc";
> > -				regulator-min-microvolt =3D <730000>;
> > +				regulator-min-microvolt =3D <1275000>;
> >   				regulator-max-microvolt =3D <1380000>;
> >   				regulator-always-on;
> >   			};
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
