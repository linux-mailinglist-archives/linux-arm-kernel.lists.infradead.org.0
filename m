Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6845CFAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 14:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yD7Xc9NUPsXxO4EBR3CfhPFwsLf3T7c4NPAhUtgAuJg=; b=Pk5L/Uas5lXtvb
	OLS2D4jPVHHL/y/mNSHdLmjBNkDcOpn2HmnXYPjU1+k52E+jeg6cPY5xIShI1Q8KTzdX4lhhWZoZv
	D8y/9MwkOXvNyWp74rtY6BYW0VPics+UdVshXyTHLt8aKciT9IAgO7Ag+3a+jxMk6H9rlGS/TtOq+
	JviNq0LOh4d1ipj79Ldr4K+ro3KSisv6fYji3gE34viWKYIa2W28+t4F0akbMMyIw+zFlXkA/FnBU
	IXqn+lp1asMyvJWjvEUN1p3dphRn0ZO7wi5hKVUEju3hFFMJfowyi76Nhb8JcsKGpKPpM1CIdWQev
	G8IwF+jMc/IXJF4/IEWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiI5d-0001wG-Go; Tue, 02 Jul 2019 12:40:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiI5O-0001vE-Gh
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 12:40:39 +0000
Received: by mail-wr1-x444.google.com with SMTP id n9so17694198wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 05:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XWX5YYP1CNCT9e/dIGU0i3ZnwA5tEC0AyVRX+7SK6lw=;
 b=b/XwH55NMOZSeol8hUdl7s8+9MNvt25FwAvIKkjn8gLsUeAd8wx8U4In9vAjQGNQ66
 xYdpJP0am9FkBYaK54YKsNF01TFgWk2QfTmy5tHtf5nkg3MuXYQpV/8XCXNcHQFTy0Qm
 kMTJoAKR3BZmkJgsesFPmjKdASQG2RzkFRvw0Eo7QQ9hbk+jeXm28flyeoXL0idx9d4g
 Dwcpf2R+vKAYLFmmprGBnLTCsMflKJ4FSdgxmFCUjhMSTYG5E0Z/oicFe/U5L4gtkf3A
 yv7CpnzFlTy+sYMa0C/XUIxZqtiTmKVglM3VdtHNpkctEOku/xGln9sSUikdUov+mcwA
 kxDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XWX5YYP1CNCT9e/dIGU0i3ZnwA5tEC0AyVRX+7SK6lw=;
 b=gyE2UVz1vdP8vHDnDhxSZuQ/YLpaCowjHWLqeu1Cp2uNb+gJBK1xcJA+Mgw3HEgSnT
 VUPXQhsOMXc3SgcmiR2Nxy6T9Z+GYY6e32+Ye3TDO7yMxeUBTHxeBRlrkdRfTpTC42pX
 NFMPtjoLLku32ijK2NMu9WHSY3Nbr8g53ZbHgdcSLjZEFLQpxd1tpmK+pYRnFdf8LurR
 nS4jpu+oREz7mwJ5CjQ8VB0F8QwEdTh59uD7pQgDzC53Z+PO2VYJPb6qruKKlq7ebKoR
 zW//bFuo4ALK3ZK5FOvW4eVgQg4a2y3hX1/763g4cwjnEfv4iCzMJN5CzH9d0Hqt28a2
 EV9A==
X-Gm-Message-State: APjAAAVuaaX/qSNDOQqmaWAiRYUln9SpCY5d2YWzNb3sjEfSZjnqFh0E
 mqTOR37SJwzEthQN5KgHoHn88tGkIxNq9qhCRHo=
X-Google-Smtp-Source: APXvYqwN7H5OuDdNXdoNXzu2dimkV8ct5pJbj57BHREg3taMw4HvwJusECpbPxShilr7quxy0JxRfexKoEAdrV0/3UU=
X-Received: by 2002:adf:b69a:: with SMTP id j26mr15952442wre.93.1562071234542; 
 Tue, 02 Jul 2019 05:40:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190702114102.1254-1-andradanciu1997@gmail.com>
 <20190702114542.2eoc6nm2kyhode43@fsr-ub1664-175>
In-Reply-To: <20190702114542.2eoc6nm2kyhode43@fsr-ub1664-175>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 2 Jul 2019 15:40:23 +0300
Message-ID: <CAEnQRZBtAOzuF0L1iKKTRdR_A5skbnZFb=B1io8f_pdHcnvbyg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mq: Add sai6 node
To: Abel Vesa <abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_054038_558626_890FD902 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Andra Danciu <andradanciu1997@gmail.com>, Anson Huang <anson.huang@nxp.com>,
 "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 2, 2019 at 2:46 PM Abel Vesa <abel.vesa@nxp.com> wrote:
>
> On 19-07-02 14:41:02, Andra Danciu wrote:
>
> Missing commit message here. Please add one.

Agree. Also, please add SAI3. As you noticed our pico pi board has
pins exposed on for SAI2/SAI3.

As for the description you can say:

SAI3/6 supports up to 2-channels TX (1 dataline) and 2-channels RX (1 dataline).

>
> > Cc: Daniel Baluta <daniel.baluta@nxp.com>
> > Signed-off-by: Andra Danciu <andradanciu1997@gmail.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > index d09b808eff87..1ff664523f56 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> > @@ -278,6 +278,20 @@
> >                       #size-cells = <1>;
> >                       ranges = <0x30000000 0x30000000 0x400000>;
> >
> > +                     sai6: sai@30030000 {
> > +                             compatible = "fsl,imx8mq-sai",
> > +                                     "fsl,imx6sx-sai";
> > +                             reg = <0x30030000 0x10000>;
> > +                             interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> > +                             clocks = <&clk IMX8MQ_CLK_SAI6_IPG>,
> > +                                     <&clk IMX8MQ_CLK_SAI6_ROOT>,
> > +                                     <&clk IMX8MQ_CLK_DUMMY>, <&clk IMX8MQ_CLK_DUMMY>;
> > +                             clock-names = "bus", "mclk1", "mclk2", "mclk3";
> > +                             dmas = <&sdma2 4 24 0>, <&sdma2 5 24 0>;
> > +                             dma-names = "rx", "tx";
> > +                             status = "disabled";
> > +                     };
> > +
> >                       gpio1: gpio@30200000 {
> >                               compatible = "fsl,imx8mq-gpio", "fsl,imx35-gpio";
> >                               reg = <0x30200000 0x10000>;
> > --
> > 2.11.0
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
