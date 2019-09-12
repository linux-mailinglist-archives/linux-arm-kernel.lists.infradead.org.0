Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3C2B0C59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 12:12:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2TrABeU/BWUPaYvW7lPjIbuOkeYUkbL8+EEc6FpJaE=; b=nKIASl8F8+RTzO
	xkLwykeO95c95vb0gZkLHBmksr3fpLhXpUs/QHNFT/ndCyUrWDVVrzK5DggVw9ZrhAcAtxCKA80OJ
	XCdCE25vrGCLDYbuG8fIKgBBV5DcfIhgtS6S4iW/nZjGkgozthKQE+3Sprg4PuYe7yEpcvfDzIh4D
	HYGUUB68o54t+GFsFGwaLKx3hmzJfr8K2YdCZxgg0GFMLh2McuJpxS5EcZ2IlNwJkLuE8MhiD2QnI
	YUXPBaxwih0eLV87GRJ54od4PlK7yha4QcBd4QWTdU2bVK/v95EjjOA73xxL8zu/mpHpNKim9lucf
	It0Adh718tiYXviG42yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8M5v-0005Wg-N0; Thu, 12 Sep 2019 10:12:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8M5j-0005WD-LE
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 10:12:45 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1i8M5h-0001Ib-VH; Thu, 12 Sep 2019 12:12:41 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1i8M5g-0007GA-TS; Thu, 12 Sep 2019 12:12:40 +0200
Date: Thu, 12 Sep 2019 12:12:40 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Gilles Doffe <gilles.doffe@savoirfairelinux.com>
Subject: Re: [PATCH v2] arm: dts: imx6qdl: add gpio expander pca9535
Message-ID: <20190912101240.ml5jmdei5rvzesap@pengutronix.de>
References: <20190719104615.5329-1-gilles.doffe@savoirfairelinux.com>
 <20190722075341.e4ve45rneusiogtk@pengutronix.de>
 <978100557.7721358.1568282514403.JavaMail.zimbra@savoirfairelinux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <978100557.7721358.1568282514403.JavaMail.zimbra@savoirfairelinux.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:08:06 up 117 days, 16:26, 67 users,  load average: 0.19, 0.17,
 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_031243_699716_64F61939 
X-CRM114-Status: GOOD (  24.72  )
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
Cc: mark rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, shawnguo <shawnguo@kernel.org>,
 s hauer <s.hauer@pengutronix.de>, rennes <rennes@savoirfairelinux.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, robh+dt <robh+dt@kernel.org>,
 linux-imx <linux-imx@nxp.com>, kernel <kernel@pengutronix.de>,
 =?iso-8859-1?Q?J=E9rome?= Oufella <jerome.oufella@savoirfairelinux.com>,
 festevam <festevam@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Gilles,

On 19-09-12 06:01, Gilles Doffe wrote:
> Hi Marco,
> =

> Thanks for your reply and sorry about the delay.

No worries ;)

> ----- Le 22 Juil 19, =E0 9:53, Marco Felsch m.felsch@pengutronix.de a =E9=
crit :
> =

> > Hi Gilles,
> > =

> > can you adapt the patch title, I assumed that the base dtsi is adding a
> > gpio-expander which makes no sense.
> =

> My first intent was to add the gpio-expander pca9535 into the imx6q-rex-p=
ro.dts and in a future imx6qp-rex-ultra.dts
> However I noticed that the sgtl5000 was already in the dtsi.
> It is maybe due to the fact that like the pca9535, the sgtl5000 is presen=
t on the baseboard not on the SOM.
> Thus I guess that baseboard stuff common to all rex SOM should be in imx6=
qdl-rex.dtsi and not in the dts.
> Does-it seem correct to you ?

Yes this is correct what Shawn and I mean is that you should adapt the
commit title. Shawn already give you an example.

> > =

> > On 19-07-19 12:46, Gilles DOFFE wrote:
> >> The pca9535 gpio expander is present on the Rex baseboard, but missing
> >> from the dtsi.
> >> =

> >> Add the new gpio controller and the associated interrupt line
> >> MX6QDL_PAD_NANDF_CS3__GPIO6_IO16.
> >> =

> >> Signed-off-by: Gilles DOFFE <gilles.doffe@savoirfairelinux.com>
> >> ---
> > =

> > Having a changelog would be nice too.
> > =

> >>  arch/arm/boot/dts/imx6qdl-rex.dtsi | 19 +++++++++++++++++++
> >>  1 file changed, 19 insertions(+)
> >> =

> >> diff --git a/arch/arm/boot/dts/imx6qdl-rex.dtsi
> >> b/arch/arm/boot/dts/imx6qdl-rex.dtsi
> >> index 97f1659144ea..b517efb22fcb 100644
> >> --- a/arch/arm/boot/dts/imx6qdl-rex.dtsi
> >> +++ b/arch/arm/boot/dts/imx6qdl-rex.dtsi
> >> @@ -136,6 +136,19 @@
> >>  		compatible =3D "atmel,24c02";
> >>  		reg =3D <0x57>;
> >>  	};
> >> +
> >> +	pca9535: gpio8@27 {
> >> +		compatible =3D "nxp,pca9535";
> >> +		reg =3D <0x27>;
> > =

> > The i2c devices are orderd by their i2c-addresses starting from the
> > lowest.
> >
> =

> Ack.
> =

> >> +		gpio-controller;
> >> +		#gpio-cells =3D <2>;
> >> +		pinctrl-names =3D "default";
> >> +		pinctrl-0 =3D <&pinctrl_pca9535>;
> >> +		interrupt-parent =3D <&gpio6>;
> >> +		interrupts =3D <16 IRQ_TYPE_LEVEL_LOW>;
> >> +		interrupt-controller;
> >> +		#interrupt-cells =3D <2>;

As you pointed out above this device isn't available on the
imx6dl-rex-basic? You should add: 'status =3D "disabled";' if this is the
case.

Regards,
  Marco

> >> +	};
> >>  };
> >>  =

> >>  &i2c3 {
> >> @@ -237,6 +250,12 @@
> >>  			>;
> >>  		};
> >>  =

> >> +		pinctrl_pca9535: pca9535 {
> >> +			fsl,pins =3D <
> >> +				MX6QDL_PAD_NANDF_CS3__GPIO6_IO16	0x00017059
> > =

> > The pinmux below don't use the leading zero's if you are the first I
> > would drop that.
> > =

> > Regards,
> >  Marco
> >
> =

> Ack.
> =

> Regards,
> Gilles
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
