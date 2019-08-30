Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B4BA35D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 13:37:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hsEbWVGgFxXpwmkKoHuFAdmXveehKjQKe8W+W0/G/Bw=; b=jhRF801cGfD5KA
	LzGi5dpAHdNFa1ATuGLac3akz3ivFQIeMGl4ADDyKmPosFd5UecPfNOKSQP7xmqykjUeM6KJ8hEpA
	4Mc5BpbT2Bh97nthp/q5YNNHe/vVnK1s8i6uvhVgTGyYTb3KSwjthCvPv9OOHlKm+mYbChp2toUjz
	iRCEVJ8srVvUWrTtaWT4SytI4YTFZvmD+LFHlAbhEvUVh4Tc51D12O0W4Tmhaog0CpJH5rWXrrxFH
	NDR87Rd3sUQ4pvJp5FoHzGS6QBRp8cE/JUkpfSQQNEPY0FCqfftgRufgvaOFZbws0BvVIXKTAIiWP
	3Pd6x+1PUKc6NymBt8Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3fE0-0002b6-3L; Fri, 30 Aug 2019 11:37:52 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3fDt-0002ag-4Y
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 11:37:47 +0000
Received: from sntmail14r.snt-is.com (unknown [10.203.32.184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id A671D67A8DA;
 Fri, 30 Aug 2019 13:37:41 +0200 (CEST)
Received: from sntmail14r.snt-is.com (10.203.32.184) by sntmail14r.snt-is.com
 (10.203.32.184) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 30 Aug
 2019 13:37:41 +0200
Received: from sntmail14r.snt-is.com ([fe80::c8f3:eae9:52c2:11a8]) by
 sntmail14r.snt-is.com ([fe80::c8f3:eae9:52c2:11a8%3]) with mapi id
 15.01.1713.004; Fri, 30 Aug 2019 13:37:41 +0200
From: Thomas Schaefer <Thomas.Schaefer@kontron.com>
To: Peter Chen <peter.chen@nxp.com>
Subject: AW: [PATCH] ARM: dts: imx7: fix USB controller 'size' parameter
Thread-Topic: [PATCH] ARM: dts: imx7: fix USB controller 'size' parameter
Thread-Index: AQHVXoFUdokxKz8Ei0Gedpn3mUjvkacS1eQAgABrfiCAAAwdgIAAQ0hg
Date: Fri, 30 Aug 2019 11:37:41 +0000
Message-ID: <ac85e371bc3b4a62b49f2c83745a6aa7@kontron.com>
References: <20190829154913.2049-1-thomas.schaefer@kontron.com>
 <20190830022539.GA1146@b29397-desktop>
 <b227eb4da9214b33b44f33b2a84f4205@kontron.com>
 <20190830093345.GA25865@b29397-desktop>
In-Reply-To: <20190830093345.GA25865@b29397-desktop>
Accept-Language: en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.228.0.137]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: A671D67A8DA.AE265
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: thomas.schaefer@kontron.com
X-SnT-MailScanner-To: festevam@gmail.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 marex@denx.de, peter.chen@nxp.com, s.hauer@pengutronix.de,
 shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_043745_511254_DD1B941F 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
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
Cc: "marex@denx.de" <marex@denx.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

-----Urspr=FCngliche Nachricht-----
Von: Peter Chen <peter.chen@nxp.com> =

Gesendet: Freitag, 30. August 2019 11:34
> On 19-08-30 07:11:42, Thomas Schaefer wrote:
> > -----Urspr=FCngliche Nachricht-----
> > Von: Peter Chen <peter.chen@nxp.com>
> > Gesendet: Freitag, 30. August 2019 04:26
> > > On 19-08-29 17:49:13, Thomas Schaefer wrote:
> > > > Currently the size parameter in the reg property of usbotg and =

> > > > usbh nodes in imx7s and imx7d dts includes is set to 0x200 which =

> > > > is wrong for the i.MX7 CPU. According to reference manual, spacing =

> > > > of USB controller registers is 0x10000 instead.
> > > > =

> > > > This patch will fix this and set the 'size' to 0x10000.
> > > > =

> > > > Signed-off-by: Thomas Schaefer <thomas.schaefer@kontron.com>
> > > > ---
> > > >  arch/arm/boot/dts/imx7d.dtsi | 2 +-  arch/arm/boot/dts/imx7s.dtsi =

> > > > | 4 ++--
> > > >  2 files changed, 3 insertions(+), 3 deletions(-)
> > > > =

> > > > diff --git a/arch/arm/boot/dts/imx7d.dtsi =

> > > > b/arch/arm/boot/dts/imx7d.dtsi index 42528d2812a2..f1b098d28b6e =

> > > > 100644
> > > > --- a/arch/arm/boot/dts/imx7d.dtsi
> > > > +++ b/arch/arm/boot/dts/imx7d.dtsi
> > > > @@ -117,7 +117,7 @@
> > > >  &aips3 {
> > > >  	usbotg2: usb@30b20000 {
> > > >  		compatible =3D "fsl,imx7d-usb", "fsl,imx27-usb";
> > > > -		reg =3D <0x30b20000 0x200>;
> > > > +		reg =3D <0x30b20000 0x10000>;
> > > >  		interrupts =3D <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> > > >  		clocks =3D <&clks IMX7D_USB_CTRL_CLK>;
> > > >  		fsl,usbphy =3D <&usbphynop2>;
> > > > diff --git a/arch/arm/boot/dts/imx7s.dtsi =

> > > > b/arch/arm/boot/dts/imx7s.dtsi index c1a4fff5ceda..9e25fccf33f0 =

> > > > 100644
> > > > --- a/arch/arm/boot/dts/imx7s.dtsi
> > > > +++ b/arch/arm/boot/dts/imx7s.dtsi
> > > > @@ -1088,7 +1088,7 @@
> > > >  =

> > > >  			usbotg1: usb@30b10000 {
> > > >  				compatible =3D "fsl,imx7d-usb", "fsl,imx27-usb";
> > > > -				reg =3D <0x30b10000 0x200>;
> > > > +				reg =3D <0x30b10000 0x10000>;
> > > >  				interrupts =3D <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
> > > >  				clocks =3D <&clks IMX7D_USB_CTRL_CLK>;
> > > >  				fsl,usbphy =3D <&usbphynop1>;
> > > > @@ -1099,7 +1099,7 @@
> > > >  =

> > > >  			usbh: usb@30b30000 {
> > > >  				compatible =3D "fsl,imx7d-usb", "fsl,imx27-usb";
> > > > -				reg =3D <0x30b30000 0x200>;
> > > > +				reg =3D <0x30b30000 0x10000>;
> > > >  				interrupts =3D <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> > > >  				clocks =3D <&clks IMX7D_USB_CTRL_CLK>;
> > > >  				fsl,usbphy =3D <&usbphynop3>;
> > > =

> > > Hi Thomos,
> > > =

> > > The core controller range is 0x200, from offset 0x200, it is non-core=
 register, which is used by usbmisc. Fabio said you met problem at u-boot f=
or this size, what's the problem about it?
> > > =

> > > Thanks,
> > > Peter
> > =

> > Hi Peter,
> > =

> > When porting one of our i.MX7 based modules to u-boot v2019.07, I found=
 that scanning USB with 'usb start' crashes when trying to scan the _second=
_ controller enabled in the device tree (the first controller was detected =
properly). After some investigation I found that the problem was introduced=
 with Marek Vasuts 'usb: ehci-mx6: Fix bus enumeration for DM case' (u-boot=
 commit 501547cec1f7f0438cae388a104ff60f18576c01). This patch uses the 'reg=
' property in the usbotg and usbh nodes to calculate the device index numbe=
r for the driver.
> > =

> > Actually, controller range on i.MX6 is 0x200, thus the calculation is c=
orrect for i.MX6, but on i.MX7 the base addresses of the controller registe=
rs differ by 0x10000 and calculation will fail if more than one USB control=
ler is enabled in the device tree. This is why I suggested to fix this prob=
lem in the imx7s and imx7d device tree include files.
> > =

> =

> At dts, each USB controller has its reg property to describe its base add=
ress, we do not need additional calculation.
> =

> For controller index, it is only needed for imx6 since we share non-core =
register from 0x800 among controllers. From imx7, we have dedicate non-core=
 region for each controller, it can be described at dts well.
> =

> At dts, we use usbmisc to describe the non core part, and the related Lin=
ux code is at drivers/usb/chipidea/usbmisc_imx.c
> =

> -- =

> =

> Thanks,
> Peter Chen
>

OK. Understood. This is not the right place to fix this problem in u-boot.

Thomas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
