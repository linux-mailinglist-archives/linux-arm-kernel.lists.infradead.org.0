Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5833E113A45
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 04:16:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d4ry4QRZnwRUbmF0XDFRN3nTIlNoJr6Iiq7a5HmWRsQ=; b=NysTIA8dncPZgt
	gb2YKHxgVl2tei/5/MCkPhIPCJKvtXpgBMRe02j17lEDnTNyLib2O3j0K8ksjws0sMS7WCyu6IGvw
	JbPKK1EtnLyDKzpZUCZurttsRqcNqCdozlUIAw4rlhriuODf9QJHQqghdXb1gA6s8+as1E1z2okf3
	kr9oVJzSTQlbgkJV405AvzhcgHZNGgcw8WqSSgZxisZEgpd6mad1X6VYHWhpG0d+bPNkV3Hkw9laM
	383RqFSzdpaXUXjMzDMs64vG060tVCrX7dIysBAxy2OHxdaU8/+kPQssZ6KKm5aaGpDaqWdXjp3lX
	ewhudaf4r4sU4c6LCNJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ichcU-000672-Lu; Thu, 05 Dec 2019 03:15:58 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ichcL-00066C-Tx
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 03:15:52 +0000
Received: by mail-io1-xd43.google.com with SMTP id x1so2032578iop.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 19:15:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4rq2BJZhNOEuuzLU02HzB8M493P6N6+V/gQh4jwiaHE=;
 b=S2dIQj0nTQmFcq11dgqMrtTbRUHNAKCUlMCO2MQqgkoVFwVNFY/QBMyJSqrSWZfV2u
 G077FZCLInZjM66KsukFRg/28j+rwyun2iVf0r4kCs3v25HFQd1RltmyhH2xPTWcVyQz
 mOKySLfyhid4ptvSoVQcjqrFjnSXeUJPK5w5gXkRX5jb44WM/dMIipHQdJoHVj0cnE38
 XIfced7OHX1Vkb6XIB+csC4FbOWIvFscxCJzjkNSZPFOYei8pan38xHEMNHylUGkO8ny
 r9aMDdeFqjSLaxoZbk4EOcQDuYMOkHc85ZWuvrnfQVIWPJqmzl2aHBcBRD+q9fval8HH
 RieA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4rq2BJZhNOEuuzLU02HzB8M493P6N6+V/gQh4jwiaHE=;
 b=MJAd4hgPxCUMdCu+CSnGE6Uz8djbpXgQ09Ge0wvJT64BezSvVqBhESxHnlfSOK8znd
 tRMVuIokbPaKDrAEh8fRqhpYNIU2izfdKCrdvGttWBjXs9tG5YfleU90RTFsDL9RfCQK
 RSnAhnAkC17gIDjovQQ3XmUX+DwI5nujmhoBjnOjaIIyF/kUKR81s7onnYkyM36YLHdx
 +JuJLeDeuEHhr0+BZxMTb1ipSzogndMTjIHAuljTO5Ja9N/8eyff8VBXr9JeRlupuXhU
 OaGdaTihE7vXLVd4oGAklU6V4qpE3rbyXVKE1jLh7LoADqE6QaeQWzUrK2PhePkwreQp
 HHIg==
X-Gm-Message-State: APjAAAXrewtTUlKn6zbAP0BGb9YFhV9HAGQUHzon6A4n5SP8g/r2NWSx
 o7WM+vy7SKxG058t17g5YRL9iVc9xByKez7x27Y=
X-Google-Smtp-Source: APXvYqzA6x95/jEC5NspnWmfwG71rVSkxJrtiBiE16XWfNxWiXgjBk5LXMFVrb7iQ7I9+KP4K/03ei+gMG3m6W4sNqw=
X-Received: by 2002:a6b:7316:: with SMTP id e22mr4838252ioh.205.1575515748972; 
 Wed, 04 Dec 2019 19:15:48 -0800 (PST)
MIME-Version: 1.0
References: <20191205021924.25188-1-aford173@gmail.com>
 <20191205021924.25188-6-aford173@gmail.com>
 <DB7PR04MB517877B39D4659568F69B813875C0@DB7PR04MB5178.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB517877B39D4659568F69B813875C0@DB7PR04MB5178.eurprd04.prod.outlook.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 4 Dec 2019 21:15:37 -0600
Message-ID: <CAHCN7xLwJvqb=Pc8oOxdRLOExjw-cDKaEmm4-bR3Yt=t+OwY6Q@mail.gmail.com>
Subject: Re: [PATCH 5/7] arm64: dts: imx8mm: add GPC power domains
To: Jacky Bai <ping.bai@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_191550_934374_204A7E32 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 8:37 PM Jacky Bai <ping.bai@nxp.com> wrote:
>
> > -----Original Message-----
> > From: Adam Ford <aford173@gmail.com>
> > Sent: Thursday, December 5, 2019 10:19 AM
> > To: linux-arm-kernel@lists.infradead.org
> > Cc: Adam Ford <aford173@gmail.com>; Rob Herring <robh+dt@kernel.org>;
> > Mark Rutland <mark.rutland@arm.com>; Shawn Guo
> > <shawnguo@kernel.org>; Sascha Hauer <s.hauer@pengutronix.de>;
> > Pengutronix Kernel Team <kernel@pengutronix.de>; Fabio Estevam
> > <festevam@gmail.com>; dl-linux-imx <linux-imx@nxp.com>;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org
> > Subject: [PATCH 5/7] arm64: dts: imx8mm: add GPC power domains
> >
> > There is a power domain controller on the i.XM8M Mini used for handling
> > interrupts and controlling certain peripherals like USB OTG and PCIe, which
> > are currently unavailable.
> >
> > This patch enables support the controller itself to the help facilitate enabling
> > additional peripherals.
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mm.dtsi | 82
> > ++++++++++++++++++++++-
> >  1 file changed, 81 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > index 23c8fad7932b..d05c5b617a4d 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> > @@ -4,6 +4,7 @@
> >   */
> >
> >  #include <dt-bindings/clock/imx8mm-clock.h>
> > +#include <dt-bindings/power/imx8m-power.h>
> >  #include <dt-bindings/gpio/gpio.h>
> >  #include <dt-bindings/input/input.h>
> >  #include <dt-bindings/interrupt-controller/arm-gic.h>
> > @@ -13,7 +14,7 @@
> >
> >  / {
> >       compatible = "fsl,imx8mm";
> > -     interrupt-parent = <&gic>;
> > +     interrupt-parent = <&gpc>;
>
> NACK, for imx8mm, imx8mn & future i.MX8M SOC, we don't treat GPC as interrupt controller in linux anymore.
> Above change will break the low power mode support(suspend/resume)

What makes it different than the i.MX8MQ?  The I basically copied this
from the i.MX8MQ and updated the bit locations and tried to leave
everything else the same.

I'm OK with removing the interrupt controller stuff, but if that's
required, I'd like to understand why it's still in the i.MX8Q.

adam
>
> BR
> Jacky Bai
>
> >       #address-cells = <2>;
> >       #size-cells = <2>;
> >
> > @@ -495,6 +496,85 @@
> >                               interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> >                               #reset-cells = <1>;
> >                       };
> > +
> > +                     gpc: gpc@303a0000 {
> > +                             compatible = "fsl,imx8mm-gpc";
> > +                             reg = <0x303a0000 0x10000>;
> > +                             interrupt-parent = <&gic>;
> > +                             interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
> > +                             interrupt-controller;
> > +                             #interrupt-cells = <3>;
> > +
> > +                             pgc {
> > +                                     #address-cells = <1>;
> > +                                     #size-cells = <0>;
> > +
> > +                                     pgc_mipi: power-domain@0 {
> > +                                             #power-domain-cells = <0>;
> > +                                             reg = <IMX8MM_POWER_DOMAIN_MIPI>;
> > +                                     };
> > +
> > +                                     pgc_pcie: power-domain@1 {
> > +                                             #power-domain-cells = <0>;
> > +                                             reg = <IMX8MM_POWER_DOMAIN_PCIE>;
> > +                                     };
> > +
> > +                                     pgc_otg1: power-domain@2 {
> > +                                             #power-domain-cells = <0>;
> > +                                             reg =
> > <IMX8MM_POWER_DOMAIN_USB_OTG1>;
> > +                                     };
> > +
> > +                                     pgc_otg2: power-domain@3 {
> > +                                             #power-domain-cells = <0>;
> > +                                             reg =
> > <IMX8MM_POWER_DOMAIN_USB_OTG2>;
> > +                                     };
> > +
> > +                                     pgc_ddr1: power-domain@4 {
> > +                                             #power-domain-cells = <0>;
> > +                                             reg = <IMX8MM_POWER_DOMAIN_DDR1>;
> > +                                     };
> > +
> > +                                     pgc_gpu2d: power-domain@5 {
> > +                                             #power-domain-cells = <0>;
> > +                                             reg = <IMX8MM_POWER_DOMAIN_GPU2D>;
> > +                                     };
> > +
> > +                                     pgc_gpu: power-domain@6 {
> > +                                             #power-domain-cells = <0>;
> > +                                             reg = <IMX8MM_POWER_DOMAIN_GPU>;
> > +                                     };
> > +
> > +                                     pgc_vpu: power-domain@7 {
> > +                                             #power-domain-cells = <0>;
> > +                                             reg = <IMX8MM_POWER_DOMAIN_VPU>;
> > +                                     };
> > +
> > +                                     pgc_gpu3d: power-domain@8 {
> > +                                             #power-domain-cells = <0>;
> > +                                             reg = <IMX8MM_POWER_DOMAIN_GPU3D>;
> > +                                     };
> > +
> > +                                     pgc_disp: power-domain@9 {
> > +                                             #power-domain-cells = <0>;
> > +                                             reg = <IMX8MM_POWER_DOMAIN_DISP>;
> > +                                     };
> > +
> > +                                     pgc_vpu_g1: power-domain@a {
> > +                                             #power-domain-cells = <0>;
> > +                                             reg = <IMX8MM_POWER_VPU_G1>;
> > +                                     };
> > +
> > +                                     pgc_vpu_g2: power-domain@b {
> > +                                             #power-domain-cells = <0>;
> > +                                             reg = <IMX8MM_POWER_VPU_G2>;
> > +                                     };
> > +
> > +                                     pgc_vpu_h1: power-domain@c {
> > +                                             #power-domain-cells = <0>;
> > +                                             reg = <IMX8MM_POWER_VPU_H1>;
> > +                                     };
> > +                             };
> > +                     };
> >               };
> >
> >               aips2: bus@30400000 {
> > --
> > 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
