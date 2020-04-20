Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7BD1B119F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 18:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5VMmkrTKzjvcgHTj2Re19XsFty/GySJdTRk+4K8IDdI=; b=RQOxC+1GBOOruX
	iMNKTKiUHT/1od5xnUFqyEy8gUK3zwTJy4pndD9YdO1cyFR2mVotDMXgh9DivFJo/qjqg26QoVZtb
	ZRes3hDbechkihibFiIrVIALXsCvi92SALs8FlvzAgLAeIB7kucbcC+92QUqoy/8nMvCbn2e1N89d
	o6sh68VQtrHkqBHlqVRP7r5EIlwxkcvdZjuxUppHN2Qzb7O7vBZ/1uojo7x9aj2gSkcT2b4r0hwKk
	lN10mlNLBUaYxJSGdym2prpA46QilkadI33zmEAjCs+gHMEm2VfFlJ4MUFtsYqd8qp/yuaM1uxOqt
	mj75YAK59i9biIeD66eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZLc-0004ZA-MO; Mon, 20 Apr 2020 16:32:40 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZLS-0004WI-RI
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 16:32:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 380E6FB03;
 Mon, 20 Apr 2020 18:32:26 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f8gHlc_cdbh4; Mon, 20 Apr 2020 18:32:25 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 5748D400FB; Mon, 20 Apr 2020 18:32:24 +0200 (CEST)
Date: Mon, 20 Apr 2020 18:32:24 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] arm64: dts: imx8mq-librem5-devkit: Use 0.9V for VDD_GPU
Message-ID: <20200420163224.GA44571@bogon.m.sigxcpu.org>
References: <d9bfb11e3d66376792089d54d7d52fe3778efa33.1584636213.git.agx@sigxcpu.org>
 <20200420145459.GE32419@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420145459.GE32419@dragon>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_093231_042403_9A17411E 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Martin Kepplinger <martink@posteo.de>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Mon, Apr 20, 2020 at 10:54:59PM +0800, Shawn Guo wrote:
> On Thu, Mar 19, 2020 at 05:46:02PM +0100, Guido G=FCnther wrote:
> > According to the imx8mq data sheet running VDD_GPU at 0.9V is enough
> > when not overclocking to 1GHz (which we currently don't do).
> > =

> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> =

> It doesn't apply to my branch.

This was against linux next when i sent it, can you link to the branch
it should apply to please?
 -- Guido

> =

> Shawn
> =

> > ---
> >  arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/=
arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> > index c47a26cf8e43..736b250bc9c2 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
> > @@ -318,7 +318,7 @@
> >  				regulator-min-microvolt =3D <700000>;
> >  				regulator-max-microvolt =3D <1300000>;
> >  				regulator-always-on;
> > -				rohm,dvs-run-voltage =3D <1000000>;
> > +				rohm,dvs-run-voltage =3D <900000>;
> >  			};
> >  =

> >  			buck4_reg: BUCK4 {
> > -- =

> > 2.23.0
> > =

> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
