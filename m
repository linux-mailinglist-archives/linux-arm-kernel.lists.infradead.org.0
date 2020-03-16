Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9512318652F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 07:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/CZb8owL9IMqYLK3vajmen0Bujft4mnsqCVxCoxHZ4=; b=svaI+rYrOsin8v
	V7r2rFIjFJm7dfuiKzDVe4iqARXu1DYDvEzj2YyE2//1vK8mKbCV9YlXRI3CBp9nerBMFDsmd0um0
	eLapXYxOw1+hFvBWI8fTuDfg0a9i7SIs28mrPF1n0p3du9b5+MQ9iSQc0A32ifD7QlXiFSYM3Ce59
	iWJUSGddd9M9UpdDQOuLWd7DOxikclqvXmXF+3tECcFUGES516x78XB59ePtyEXqwZYYv0D/eRWns
	vRy8g7giTmjutGv9b/1vWzQdyjg4bxWINdMkNFbL4TX76I2j7cSCBNmV9/Ja+WJP/bthux9Vt+Kh1
	YsX92xPkv+u2OFAlo16A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDjV1-000616-By; Mon, 16 Mar 2020 06:45:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDjUl-0005h1-9V
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 06:45:07 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76BB120674;
 Mon, 16 Mar 2020 06:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584341103;
 bh=45HRX2kButaKESws3Xm5vkgmtdBIZKtTd0w4e4q+taw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ExuG8dEOm07lwytoqRDX1c7JEnS3I6oqEf+wJYTxGdKHZzwKD0HqmT+e217bhd6gQ
 GNe5+igC2J6rv1vqtil8mcNtXCbt1g5LZ4N3BWzWsytd1ndrpRoDG7WMYHi56s89Gg
 6OWEWg8I6OrCaVx+8+vyThhyEBeivarpqmmmaUxY=
Date: Mon, 16 Mar 2020 14:44:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V2 1/2] arm64: dts: imx8qxp-mek: Sort labels alphabetically
Message-ID: <20200316064456.GJ17221@dragon>
References: <1584321993-8642-1-git-send-email-Anson.Huang@nxp.com>
 <20200316060024.GG17221@dragon>
 <DB3PR0402MB3916C7F4D25024A30FF4EABDF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB3916C7F4D25024A30FF4EABDF5F90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_234503_355501_C4BD83CE 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Abel Vesa <abel.vesa@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 06:31:21AM +0000, Anson Huang wrote:
> Hi, Shawn
> 
> > Subject: Re: [PATCH V2 1/2] arm64: dts: imx8qxp-mek: Sort labels
> > alphabetically
> > 
> > On Mon, Mar 16, 2020 at 09:26:32AM +0800, Anson Huang wrote:
> > > Sort the labels alphabetically for consistency.
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > > Changes since V1:
> > > 	- Rebase to latest branch, no code change.
> > > ---
> > >  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 50
> > > ++++++++++++++++-----------
> > >  1 file changed, 30 insertions(+), 20 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > > b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > > index d3d26cc..b1befdb 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > > +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> > > @@ -30,18 +30,7 @@
> > >  	};
> > >  };
> > >
> > > -&adma_lpuart0 {
> > > -	pinctrl-names = "default";
> > > -	pinctrl-0 = <&pinctrl_lpuart0>;
> > > -	status = "okay";
> > > -};
> > > -
> > > -&fec1 {
> > > -	pinctrl-names = "default";
> > > -	pinctrl-0 = <&pinctrl_fec1>;
> > > -	phy-mode = "rgmii-id";
> > > -	phy-handle = <&ethphy0>;
> > > -	fsl,magic-packet;
> > > +&adma_dsp {
> > >  	status = "okay";
> > >
> > >  	mdio {
> > 
> > Here is a rebase issue, i.e. adma_dsp shouldn't get a mdio child node.
> > It came from the conflict with one commit on my fixes branch.  I decided to
> > drop the series for the coming merge window.  Let's start over again after
> > 5.7-rc1 becomes available.
> 
> OK, I am also confused by this conflict, I normally do the patch based on your
> for-next branch, and I did NOT meet the conflict at all, then I redo it based on
> your dt branch I met the conflict and fix it...
> 
> So, do I need to resend the patch series later when 5.7-rc1 available?

You need to resend later.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
