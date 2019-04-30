Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC50CFEA7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:17:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TN536l/4Z00D+tA7f379QJ9Tyvb2AecFomFZSu43V0c=; b=HMhRgKt9Vj8d7y
	HMrGYj87qYxeSOFIQ0Ms5TLL+JNx9uQbZ+EuPGvvkwUwy7Lfjq2JabDz6M/Og5h8VoBsG4PLy68xl
	QjzhqnqQXKh+byM50Q/ce4HL0H5hQCekYWjh4lWPpjCHnf02t86/gDsseSyBz8vJLo75WbeDWCrXe
	Mfh9LQitnTZC612aAoaNANf7qMmLAUIXBGq8BqiA9P3Sj0sRVDTaAhMfJDABHy8L3+t+oS5J4r3oH
	5D49aPOllgJI7VVBEiVnEtv0wkUqMs76PfmvfId6xNh6gTZJpsFjLsu3ONdss2SXtn47cPgR5wPwo
	4nM1fl8fhzfCakh+fTxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWNO-0002ri-03; Tue, 30 Apr 2019 17:17:06 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWNH-0002rK-PD
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:17:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 66E3CFB03;
 Tue, 30 Apr 2019 19:16:58 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mwgHcBd5cvLL; Tue, 30 Apr 2019 19:16:57 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 1B80D4027E; Tue, 30 Apr 2019 19:16:57 +0200 (CEST)
Date: Tue, 30 Apr 2019 19:16:57 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: imx8mq: Add a node for irqsteer
Message-ID: <20190430171657.GA1513@bogon.m.sigxcpu.org>
References: <a08a0a2fdd2090f4f42fe50d8ed70ee08b2fbcaf.1556631673.git.agx@sigxcpu.org>
 <1556632204.2560.20.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556632204.2560.20.camel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_101659_972933_D2A2433C 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Daniel Baluta <daniel.baluta@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lucas,
On Tue, Apr 30, 2019 at 03:50:04PM +0200, Lucas Stach wrote:
> Am Dienstag, den 30.04.2019, 15:41 +0200 schrieb Guido G=FCnther:
> > Add a node for the irqsteer interrupt controller found on the iMX8MQ
> > SoC.
> > =

> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > ---
> > =A0arch/arm64/boot/dts/freescale/imx8mq.dtsi | 21 +++++++++++++++++++++
> > =A01 file changed, 21 insertions(+)
> > =

> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boo=
t/dts/freescale/imx8mq.dtsi
> > index 2cc939cfbd75..ce0e137ec8ee 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > @@ -798,6 +798,27 @@
> > =A0			};
> > =A0		};
> > =A0
> > +		bus@32c00000 { /* AIPS4 */
> > +			compatible =3D "fsl,imx8mq-aips-bus", "simple-bus";
> > +			#address-cells =3D <1>;
> > +			#size-cells =3D <1>;
> > +			ranges =3D <0x32c00000 0x32c00000 0x400000>;
> > +
> > +			irqsteer: interrupt-controller@32e2d000 {
> > +				compatible =3D "fsl,imx8m-irqsteer",
> > +					=A0=A0=A0=A0=A0"fsl,imx-irqsteer";
> =

> This fits on a single line, right?

It went past the 80 char limit but it seems the dts is not super picky
about that so I changed that in v2.

> =

> > +				reg =3D <0x32e2d000 0x1000>;
> > +				interrupts =3D <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
> > +				clocks =3D <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
> > +				clock-names =3D "ipg";
> > +				fsl,channel =3D <0>;
> > +				fsl,num-irqs =3D <64>;
> > +				interrupt-controller;
> > +				interrupt-parent =3D <&gic>;
> =

> This is wrong, the irqsteer upstream IRQ is routed through the GPC like
> all the other peripheral interrupts. You can just drop this property.

Fixed in v2. Thanks,
 -- Guido

> =

> With this fixed:
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> =

> Regards,
> Lucas
> =

> > +				#interrupt-cells =3D <1>;
> > +			};
> > +		};
> > +
> > =A0		gpu: gpu@38000000 {
> > =A0			compatible =3D "vivante,gc";
> > =A0			reg =3D <0x38000000 0x40000>;
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
