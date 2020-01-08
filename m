Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25285133F7F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:42:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUpxZdsG6ip8xxJji3UoCJ21F24yJPe5/WIurnq1+rY=; b=oTextjKB98BF1b
	gsrxmLoUhWszAAOKQk2GIHQXQSEnEIfcwRIBvEwI67qbJ7Km75UfZ1+zWbopDhCBn2UdrSzaras/r
	qZYGbwC61Ovnd/H34/yCw7Y8yh9UdMSMW9GC3GrKzCf3ja0ansdnLZ7MTjF9J2v1DN2JP2eLRGJTP
	WpTFV5ah3D94iwEuOZm25/xE1hWeeuUty37Ugi/32EwtZJD3jybqQ2jHf/Lnnxhhy8VbNQ8zoeGMS
	QBPZLnxJMkl7TluvH2yGpCCP2Bw4IU68t5UbXjI7Eskw3flZPpwODYp9df+q58CHpxpD97RoQPXcM
	Nq8GIiQub4mxGVSHnU8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip8nV-0001yM-Iu; Wed, 08 Jan 2020 10:42:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip8nO-0001xL-SN
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:42:40 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1ip8nC-00006x-R3; Wed, 08 Jan 2020 11:42:26 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1ip8nB-0001aY-KK; Wed, 08 Jan 2020 11:42:25 +0100
Date: Wed, 8 Jan 2020 11:42:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 1/3] ARM: dts: imx6: phycore-som: fix arm and soc
 minimum voltage
Message-ID: <20200108104225.jvckkowexpmyf2ts@pengutronix.de>
References: <20200108101057.29599-1-m.felsch@pengutronix.de>
 <20200108103407.GL25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108103407.GL25745@shell.armlinux.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:41:21 up 54 days,  1:59, 46 users,  load average: 0.03, 0.02, 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_024238_916216_9B6ECF1C 
X-CRM114-Status: GOOD (  18.92  )
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
Cc: s.riedmueller@phytec.de, s.christ@phytec.de, chf.fritz@googlemail.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 shawnguo@kernel.org, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-01-08 10:34, Russell King - ARM Linux admin wrote:
> On Wed, Jan 08, 2020 at 11:10:55AM +0100, Marco Felsch wrote:
> > The current set minimum voltage of 730000mV seems to be wrong. I don't
> =

> mV =3D milli-volt, /1000th of a volt. So you just said 730V.
> =B5V or uV =3D micro-volt, which I think is what you mean here.

Arg.. you are right thanks for covering that.

> > know the document which specifies that but the imx6qdl datasheets says
> > that the minimum voltage should be 0.925V for VDD_ARM (LDO bypassed,
> > lowest opp) and 1.15V for VDD_SOC (LDO bypassed, lowest opp).
> > =

> > Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i=
.MX 6 SOM")
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> > v2:
> > - use ldo bypassed values
> > - adapt commit message
> > =

> >  arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > =

> > diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/a=
rm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > index 6486df3e2942..f23eef1e54e0 100644
> > --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > @@ -107,14 +107,14 @@
> >  		regulators {
> >  			vdd_arm: buck1 {
> >  				regulator-name =3D "vdd_arm";
> > -				regulator-min-microvolt =3D <730000>;
> > +				regulator-min-microvolt =3D <925000>;
> >  				regulator-max-microvolt =3D <1380000>;
> >  				regulator-always-on;
> >  			};
> >  =

> >  			vdd_soc: buck2 {
> >  				regulator-name =3D "vdd_soc";
> > -				regulator-min-microvolt =3D <730000>;
> > +				regulator-min-microvolt =3D <1150000>;
> >  				regulator-max-microvolt =3D <1380000>;
> >  				regulator-always-on;
> >  			};
> > -- =

> > 2.20.1
> > =

> > =

> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > =

> =

> -- =

> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbp=
s up
> According to speedtest.net: 11.9Mbps down 500kbps up
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
