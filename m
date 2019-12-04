Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CED11121E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 04:39:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dT8udCvYC7maJk8bcQ0SdliAD5UVc2bp6ad5TbE2TdY=; b=ig6onRpOPAZ0jE
	YnhI/YjoqTeY9PyGM6Xg4IRvTEHMaCuyKf8cLBR1G6l8LT4BEydNxWwDR/ttzlzdCiV3924mgDwOG
	VoCaa3bpIP8y9DQ7jgYTmKB83E3SYWvdyDV7/XMKapOGJFiyQ2L2QKLzdZKQIpegxzKEX8WOuaL+v
	2devEsmzjrluppdQcyF/t2iKJmTkl6sPcwByPrlRre5fkG7VbX7ejM0O6i+aConazuQ+XVSIz5YLF
	WD26RwWqsMjgf5sDOw4Mr2x7Ti+yMzxGYeMDVLPM8Xny/KbcnAFU2uatxNy/DNmN+/svh9DNTg3gZ
	0In9Hj7UFU9b5Gbp8pPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icLVd-0006mS-9u; Wed, 04 Dec 2019 03:39:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icLVW-0006lW-FQ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 03:39:20 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BCEC2068E;
 Wed,  4 Dec 2019 03:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575430753;
 bh=Ky6bsT95qtRty+Gu8aLwwJEri2buBfTIALVlR4MSuHw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XoxJiwxD8uWYFJuQIdSZ3Z/qxFfj6napAEMB5UEQuuoKTNw5QzVbAHMWTyi5qHFIQ
 3HEgJ/TAS/sVWDiTTdwcW7YnhlhG0WyNYn2vra2Ouql2RO3VuhcovLzqNHFrLPD6IW
 y/cmK3TplVD7kfhaI7p/ygSowbyXdES+F1W3z7zw=
Date: Wed, 4 Dec 2019 11:39:05 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 3/3] ARM: dts: imx6sll: Add Rev A board support
Message-ID: <20191204033904.GA3365@dragon>
References: <1573033650-11848-1-git-send-email-Anson.Huang@nxp.com>
 <1573033650-11848-3-git-send-email-Anson.Huang@nxp.com>
 <20191204023920.GO9767@dragon>
 <AM6PR0402MB39111817A837FD03558B0E79F55D0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM6PR0402MB39111817A837FD03558B0E79F55D0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_193918_563289_63317888 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 02:52:11AM +0000, Anson Huang wrote:
> 
> 
> > Subject: Re: [PATCH 3/3] ARM: dts: imx6sll: Add Rev A board support
> > 
> > On Wed, Nov 06, 2019 at 05:47:30PM +0800, Anson Huang wrote:
> > > i.MX6SLL EVK Rev A board is same with latest i.MX6SLL EVK board except
> > > eMMC can ONLY run at HS200 mode, add support for this board.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  arch/arm/boot/dts/Makefile             |  1 +
> > >  arch/arm/boot/dts/imx6sll-evk-reva.dts | 12 ++++++++++++
> > >  2 files changed, 13 insertions(+)
> > >  create mode 100644 arch/arm/boot/dts/imx6sll-evk-reva.dts
> > >
> > > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > > index 71f08e7..3845bbf 100644
> > > --- a/arch/arm/boot/dts/Makefile
> > > +++ b/arch/arm/boot/dts/Makefile
> > > @@ -557,6 +557,7 @@ dtb-$(CONFIG_SOC_IMX6SL) += \
> > >  	imx6sl-warp.dtb
> > >  dtb-$(CONFIG_SOC_IMX6SLL) += \
> > >  	imx6sll-evk.dtb \
> > > +	imx6sll-evk-reva.dtb \
> > >  	imx6sll-kobo-clarahd.dtb
> > >  dtb-$(CONFIG_SOC_IMX6SX) += \
> > >  	imx6sx-nitrogen6sx.dtb \
> > > diff --git a/arch/arm/boot/dts/imx6sll-evk-reva.dts
> > > b/arch/arm/boot/dts/imx6sll-evk-reva.dts
> > > new file mode 100644
> > > index 0000000..7ca2563
> > > --- /dev/null
> > > +++ b/arch/arm/boot/dts/imx6sll-evk-reva.dts
> > > @@ -0,0 +1,12 @@
> > > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > > +/*
> > > + * Copyright 2016 Freescale Semiconductor, Inc.
> > > + * Copyright 2017-2019 NXP.
> > > + *
> > > + */
> > > +
> > > +#include "imx6sll-evk.dts"
> > > +
> > > +&usdhc2 {
> > > +	compatible = "fsl,imx6sll-usdhc", "fsl,imx6sx-usdhc";
> > 
> > It looks odd to me that we need to deal with a board level difference with a
> > SoC level compatible.  The USDHC compatible should be solely determined by
> > the IP programming model, not the board level capability.
> 
> So how to handle such scenario? Current usdhc driver uses SoC compatible to distinguish
> different functions of uSDHC IP, if some boards can NOT support dedicated function due to
> board design regardless of the IP inside, the easy way is just to downgrade the SoC compatible,
> or need uSDHC driver to provide some DT properties for such case? 

So you are saying this is a complete board design limitation, not SoC/IP
related?  In that case, IMO, we need a board level DT property to deal
with it.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
