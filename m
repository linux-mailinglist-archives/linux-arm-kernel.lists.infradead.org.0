Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7413EA1F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 17:44:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+B5lD94L6hoTe8Z4DQBrpDBX3b6m+pWrRzZfeuBc5dg=; b=j7PoQ8GHMWTgXO
	OtzEumkj6mXzncUJefUYzPp8chegcNLjmj6c6aMGeRlJVaXXHx749IMVEOq8690NB4apuzAzDKRPW
	UF/ZQ/GQ6POCJiQJcoDMoYqioAUcvZ1HeBuRNQ7WmyGSb3oP6KGSexsA9xUK3tDxG3nZ7BdsvmGNT
	mssjdW+XbyHETI79O2kijr5/zcJxG2+RUy1jNKr/jskELeo2Feih42xvynUYkQbNtFwACjGu5szZz
	bj2lWqDL/L2Y4bmlvFNKJKhTgfI9qlHn/7cuk9vL4UOTN8NgHVO+YcfrO4xarP+8WpY+C68u3Ud4c
	WEIHmTKP9xcF31XWC/jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPr5P-0000Uf-Dh; Wed, 30 Oct 2019 16:44:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPr5C-0000Tp-NS
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 16:44:32 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1iPr59-0003Yy-U8; Wed, 30 Oct 2019 17:44:27 +0100
Message-ID: <83fa447fc696aa54d2ae8cc82f78b0639f08d196.camel@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: zii-ultra: add i210 ethernet node
From: Lucas Stach <l.stach@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Date: Wed, 30 Oct 2019 17:44:27 +0100
In-Reply-To: <20191028061540.GM16985@dragon>
References: <20191021164200.31051-1-l.stach@pengutronix.de>
 <20191028061540.GM16985@dragon>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_094430_764285_73A218A3 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mo, 2019-10-28 at 14:15 +0800, Shawn Guo wrote:
> On Mon, Oct 21, 2019 at 06:42:00PM +0200, Lucas Stach wrote:
> > Used by the bootloader to patch in the correct MAC address for
> > the ethernet adapter.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi | 11
> > +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > index 087b5b6ebe89..7933c685fe6a 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > @@ -475,6 +475,17 @@
> >  	         <&pcie1_refclk>;
> >  	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
> >  	status = "okay";
> > +
> > +	host@0 {
> 
> Where is the bindings documenting this child node of pcie device?

This is part of the "PCI Bus Binding to: IEEE Std 1275-1994" document,
which is referenced in Documentation/devicetree/bindings/pci/pci.txt.
This is a standard PCIe topology description mapped to DT.

> > +		reg = <0 0 0 0 0>;
> > +
> > +		#address-cells = <3>;
> > +		#size-cells = <2>;
> > +
> > +		i210: i210@0 {
> 
> Can we have generic node name for it?

I would like to avoid this if possible. We are sharing the code to
patch in the MAC address from the bootloader with the RDU2, which has
the same node name and the patching code looks for the specific name. 

Regards,
Lucas

> Shawn
> 
> > +			reg = <0 0 0 0 0>;
> > +		};
> > +	};
> >  };
> >  
> >  &pgc_gpu {
> > -- 
> > 2.20.1
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
