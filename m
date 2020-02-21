Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42888167027
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 08:28:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q105W/oELj8uP0peK3wmApHLXdn8W3IkbenHraN7cTg=; b=Bfs1tYzSR9UBZA
	dR7sg+vtH3L4Zomkw4GFPzREorM3Fp/MTY4DkSbe5uId46t9EtGTEZk1MuqNxvVHCdCyk2XKrnTSp
	pQtemj4hmHaxe6s4jQKIKIrwutvudnHRaDpaEwUUL2Jw2elPK2EMMojOHl0TKbQjcG3FskyC3/ZPp
	asE5qD30Frt2NnWA15HE0dsC47PY2qxSk+LXJqNfG6hSEztr3ZC/DqAa+f/lwp94wUhHvCGdDeWhW
	KjFSekx48XqvyrfvBuKremf6r6XcS2KzQOFkRstSKK9XxgsvnWnDBskn8EsjyEvEutRLqcBOcFnBQ
	Xs1sVmn8LFyyySoESG7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j52jG-00015N-Tt; Fri, 21 Feb 2020 07:28:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j52j8-00014l-Cl
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 07:27:59 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j52j1-00065e-VW; Fri, 21 Feb 2020 08:27:51 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1j52j1-0003Sq-Gc; Fri, 21 Feb 2020 08:27:51 +0100
Date: Fri, 21 Feb 2020 08:27:51 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v3 1/2] ARM: dts: imx6: phycore-som: fix arm and soc
 minimum voltage
Message-ID: <20200221072751.5z7xhlrfecexrwiz@pengutronix.de>
References: <20200116140108.6069-1-m.felsch@pengutronix.de>
 <20200213125940.GP11096@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213125940.GP11096@dragon>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:26:00 up 97 days, 22:44, 122 users,  load average: 0.43, 0.33,
 0.29
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_232758_433808_8B58F2B6 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: s.riedmueller@phytec.de, festevam@gmail.com, chf.fritz@googlemail.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 s.christ@phytec.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On 20-02-13 20:59, Shawn Guo wrote:
> On Thu, Jan 16, 2020 at 03:01:07PM +0100, Marco Felsch wrote:
> > The current set minimum voltage of 730000=B5V seems to be wrong. I don't
> > know the document which specifies that but the imx6qdl datasheets says
> > that the minimum voltage should be 0.925V for VDD_ARM (LDO bypassed,
> > lowest opp) and 1.15V for VDD_SOC (LDO bypassed, lowest opp).
> > =

> > Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i=
.MX 6 SOM")
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> =

> I failed to apply it.  Please rebase and resend.

Which base commit did you use? I rebased the patch on v5.6-rc1 without
problems.

Regards,
  Marco

> Shawn
> =

> > ---
> > v3:
> > - fix commit message
> > v2:
> > - use ldo bypassed values
> > ---
> >  arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > =

> > diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/a=
rm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > index a1e2c5094d58..51a47a242783 100644
> > --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> > @@ -111,14 +111,14 @@
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
