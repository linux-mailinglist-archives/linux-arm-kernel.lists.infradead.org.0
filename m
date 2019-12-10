Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D30118315
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:09:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZ0l3o7w0cUG35JHFImM9LgHOhycnrsakgKmhj/ZKmk=; b=p3GAnFmTTa3B5P
	dWZObYJFVRWKNjhacW6fnv4E3khXYlkJgYOAazW+x1xoe8KcUIwn4R+/NIjKUZk1vdraoxxDR1X3Q
	bQzS2kRAwmsoWD0C6Lxnn1JPaKRZQG+Ay85OALtJvRiXpz9JBLdfiUh0QRde9oxGhp49yiN+x00kt
	8NOx7U08gytEVPt5OvzN9XawYSnA3cUvbQ9ri59NzQGBFtaG7PjzQ0jJU1xGclkjv/NrIXeJdSL5/
	GN1PiIO7QWosB/18G3+e66B1h+2n5dLWj7V9T9wfrwegl04hVzvzUgHfxtZwzZG8YoubZPQRytv31
	wWV3evY4tMWcLgjCK5Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iebWU-0003E0-FQ; Tue, 10 Dec 2019 09:09:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iebWK-0003DM-Ns
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:09:30 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iebWE-00044S-1m; Tue, 10 Dec 2019 10:09:22 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iebWC-0003tR-QV; Tue, 10 Dec 2019 10:09:20 +0100
Date: Tue, 10 Dec 2019 10:09:20 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Stefan =?iso-8859-1?Q?Riedm=FCller?= <s.riedmueller@phytec.de>
Subject: Re: [PATCH 2/3] ARM: dts: imx6: phycore-som: fix emmc supply
Message-ID: <20191210090920.a5aswmgihjzvsk25@pengutronix.de>
References: <20191129164859.15632-1-m.felsch@pengutronix.de>
 <20191129164859.15632-2-m.felsch@pengutronix.de>
 <6eece2d7-4695-ef2a-7376-cff39aaef8be@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6eece2d7-4695-ef2a-7376-cff39aaef8be@phytec.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:44:40 up 25 days, 3 min, 31 users,  load average: 0.00, 0.00, 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_010928_777736_5C86C7D0 
X-CRM114-Status: GOOD (  19.17  )
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

On 19-12-05 13:00, Stefan Riedm=FCller wrote:
> Hi Marco,
> =

> On 29.11.19 17:48, Marco Felsch wrote:
> > Currently the vmmc is supplied by the 1.8V pmic rail but this is wrong.
> > The 1.8V pmic rail is connected to the emmc vccq (vqmmc).
> =

> I just checked the schematics again and actually both VCC and VCCQ are
> connected to the 3.3V power rail. VCCQ can be connected to the 1.8V PMIC
> power rail by solder jumper but default is 3.3V.

That's right.

> So I think either both should be connected to a fixed 3.3V regulator or
> removed, since the default system does not support switching these voltag=
es.

The question is why the regulator output isn't the default case and
setting regulator-max-microvolt to 3.3V and regulator-min-microvolt to
1.8V? The PMIC LDO4 supports output voltages up to 3.6V so this should
be okay.

Anyway dropping both regulators and using dummy-regulators should be
fine too. I only want to remove this issue.

Regards,
  Marco =


> Regards,
> Stefan
> =

> > =

> > Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i=
.MX 6 SOM")
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >   arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/a=
rm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > index 46d4953c5588..44e333848b4d 100644
> > --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > @@ -183,7 +183,7 @@
> >   	pinctrl-0 =3D <&pinctrl_usdhc4>;
> >   	bus-width =3D <8>;
> >   	non-removable;
> > -	vmmc-supply =3D <&vdd_emmc_1p8>;
> > +	vqmmc-supply =3D <&vdd_emmc_1p8>;
> >   	status =3D "disabled";
> >   };
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
