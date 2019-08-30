Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA56A3075
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmeUJD0a/IXY2iMU/PViIuCkWsbU0aOAXjVj2Vr8c5s=; b=AO4gFi3qfuzs+t
	pw3OlbeiNGoaWqhRik1rAIekXvckxDYSoS0QhyKePBUZ9BJlQaZbKdiZ4c3DivkFlTyvMlokiXzJA
	hZKyxiZQ+POSaUlbyEP3y8TJRpqjc8sTlYu5m/FiMOkMfY5CGS0XYLwj4IaL6Otr4WTHUYM/L8EfI
	iKjScohHhdbj9n/U67P8/7M/KSfyyvJx/x5wYcxO5bE1YzlS91nZvY//Y8pKwixmlBi65d6VK54V0
	XXnEAXOpppgSWjJcboEMm2m4zoAA3NInd75x6Y0Y02EkNptezpteEq6xwpMC2HJDqTHOQMVQ6dX8+
	84IFfCBvhtczQbKLVqKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3b68-0004UT-4g; Fri, 30 Aug 2019 07:13:28 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3b4Y-0003fb-9M
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 07:11:52 +0000
Received: from sntmail14r.snt-is.com (unknown [10.203.32.184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id C7C6667A904;
 Fri, 30 Aug 2019 09:11:42 +0200 (CEST)
Received: from sntmail14r.snt-is.com (10.203.32.184) by sntmail14r.snt-is.com
 (10.203.32.184) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 30 Aug
 2019 09:11:42 +0200
Received: from sntmail14r.snt-is.com ([fe80::c8f3:eae9:52c2:11a8]) by
 sntmail14r.snt-is.com ([fe80::c8f3:eae9:52c2:11a8%3]) with mapi id
 15.01.1713.004; Fri, 30 Aug 2019 09:11:42 +0200
From: Thomas Schaefer <Thomas.Schaefer@kontron.com>
To: Peter Chen <peter.chen@nxp.com>
Subject: AW: [PATCH] ARM: dts: imx7: fix USB controller 'size' parameter
Thread-Topic: [PATCH] ARM: dts: imx7: fix USB controller 'size' parameter
Thread-Index: AQHVXoFUdokxKz8Ei0Gedpn3mUjvkacS1eQAgABrfiA=
Date: Fri, 30 Aug 2019 07:11:42 +0000
Message-ID: <b227eb4da9214b33b44f33b2a84f4205@kontron.com>
References: <20190829154913.2049-1-thomas.schaefer@kontron.com>
 <20190830022539.GA1146@b29397-desktop>
In-Reply-To: <20190830022539.GA1146@b29397-desktop>
Accept-Language: en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.228.0.137]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: C7C6667A904.AA526
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
X-CRM114-CacheID: sfid-20190830_001150_788193_057CC9B7 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
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

Gesendet: Freitag, 30. August 2019 04:26
> On 19-08-29 17:49:13, Thomas Schaefer wrote:
> > Currently the size parameter in the reg property of usbotg and usbh =

> > nodes in imx7s and imx7d dts includes is set to 0x200 which is wrong =

> > for the i.MX7 CPU. According to reference manual, spacing of USB =

> > controller registers is 0x10000 instead.
> > =

> > This patch will fix this and set the 'size' to 0x10000.
> > =

> > Signed-off-by: Thomas Schaefer <thomas.schaefer@kontron.com>
> > ---
> >  arch/arm/boot/dts/imx7d.dtsi | 2 +-
> >  arch/arm/boot/dts/imx7s.dtsi | 4 ++--
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> > =

> > diff --git a/arch/arm/boot/dts/imx7d.dtsi =

> > b/arch/arm/boot/dts/imx7d.dtsi index 42528d2812a2..f1b098d28b6e 100644
> > --- a/arch/arm/boot/dts/imx7d.dtsi
> > +++ b/arch/arm/boot/dts/imx7d.dtsi
> > @@ -117,7 +117,7 @@
> >  &aips3 {
> >  	usbotg2: usb@30b20000 {
> >  		compatible =3D "fsl,imx7d-usb", "fsl,imx27-usb";
> > -		reg =3D <0x30b20000 0x200>;
> > +		reg =3D <0x30b20000 0x10000>;
> >  		interrupts =3D <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> >  		clocks =3D <&clks IMX7D_USB_CTRL_CLK>;
> >  		fsl,usbphy =3D <&usbphynop2>;
> > diff --git a/arch/arm/boot/dts/imx7s.dtsi =

> > b/arch/arm/boot/dts/imx7s.dtsi index c1a4fff5ceda..9e25fccf33f0 100644
> > --- a/arch/arm/boot/dts/imx7s.dtsi
> > +++ b/arch/arm/boot/dts/imx7s.dtsi
> > @@ -1088,7 +1088,7 @@
> >  =

> >  			usbotg1: usb@30b10000 {
> >  				compatible =3D "fsl,imx7d-usb", "fsl,imx27-usb";
> > -				reg =3D <0x30b10000 0x200>;
> > +				reg =3D <0x30b10000 0x10000>;
> >  				interrupts =3D <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
> >  				clocks =3D <&clks IMX7D_USB_CTRL_CLK>;
> >  				fsl,usbphy =3D <&usbphynop1>;
> > @@ -1099,7 +1099,7 @@
> >  =

> >  			usbh: usb@30b30000 {
> >  				compatible =3D "fsl,imx7d-usb", "fsl,imx27-usb";
> > -				reg =3D <0x30b30000 0x200>;
> > +				reg =3D <0x30b30000 0x10000>;
> >  				interrupts =3D <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> >  				clocks =3D <&clks IMX7D_USB_CTRL_CLK>;
> >  				fsl,usbphy =3D <&usbphynop3>;
> =

> Hi Thomos,
> =

> The core controller range is 0x200, from offset 0x200, it is non-core reg=
ister, which is used by usbmisc. Fabio said you met problem at u-boot for t=
his size, what's the problem about it?
> =

> Thanks,
> Peter

Hi Peter,

When porting one of our i.MX7 based modules to u-boot v2019.07, I found tha=
t scanning USB with 'usb start' crashes when trying to scan the _second_ co=
ntroller enabled in the device tree (the first controller was detected prop=
erly). After some investigation I found that the problem was introduced wit=
h Marek Vasuts 'usb: ehci-mx6: Fix bus enumeration for DM case' (u-boot com=
mit 501547cec1f7f0438cae388a104ff60f18576c01). This patch uses the 'reg' pr=
operty in the usbotg and usbh nodes to calculate the device index number fo=
r the driver.

Actually, controller range on i.MX6 is 0x200, thus the calculation is corre=
ct for i.MX6, but on i.MX7 the base addresses of the controller registers d=
iffer by 0x10000 and calculation will fail if more than one USB controller =
is enabled in the device tree. This is why I suggested to fix this problem =
in the imx7s and imx7d device tree include files.

Added Marek to this thread.

Best regards,
Thomas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
