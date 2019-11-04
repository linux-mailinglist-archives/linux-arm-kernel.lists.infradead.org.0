Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E363ED6C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:04:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22VYfbg5rozDFv8OaJ7WceXtSFP1BEkne/2xvvm2ZUU=; b=qO5oyUdg06g5wc
	7gdfXKdJNfCyRmYTfKfKdxs8YqbaXsaCSyaQ1OvGWcPNzvmYLBZy2MDBQv+l5eSn84uMAWsUjwtn2
	wXPZ3Cwf7nS3m6YA/LxnK2mYKqbqOXQfZEDCZyhwPHjQYAAGGpDo1SSrolpNS6tWaS0XJUxQwTDsg
	APxfCU56zMTy8Gz5PmnhADRu8HowVvTU6VHPh9219lPUxCOJWh7JibYiW5IfOk/t/DF5rm0W9860F
	wiQzOnVT3GVzRRhnOPZsmLTON5x5hSeL+DcH/KNvs+oCymDD/BePY0dqXU/DF96Fv70k/K+6DNPeG
	6huP4G98ViRxUqhgQFzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRQnT-0002QB-Pz; Mon, 04 Nov 2019 01:04:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRQnM-0002Ph-NN
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 01:04:38 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A7E4222D1;
 Mon,  4 Nov 2019 01:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572829476;
 bh=7aNT1bgIwWXGU2Itf8DBGqAbKMUTpr8BEd0Q7YO4DN4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZL8NwmxpCp2TJSd5vYpMNKoCk/+0nU05/Bj82Avmrl7l4Q95jSOrfM2Jz5MHHmPeJ
 ORCa1KvCHyTGGqYlLCeu0n3WjVA5PH6k4MMUcqhU355AtfuNNSAf/yMUXhKiLwKlo9
 8Fpj15FUoe2ebwKisfVKWeMFbm3RoLEwyqhob5Ec=
Date: Mon, 4 Nov 2019 09:04:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: zii-ultra: add i210 ethernet node
Message-ID: <20191104010346.GC24620@dragon>
References: <20191021164200.31051-1-l.stach@pengutronix.de>
 <20191028061540.GM16985@dragon>
 <83fa447fc696aa54d2ae8cc82f78b0639f08d196.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83fa447fc696aa54d2ae8cc82f78b0639f08d196.camel@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_170436_784176_A8ADAB53 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de, patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 05:44:27PM +0100, Lucas Stach wrote:
> On Mo, 2019-10-28 at 14:15 +0800, Shawn Guo wrote:
> > On Mon, Oct 21, 2019 at 06:42:00PM +0200, Lucas Stach wrote:
> > > Used by the bootloader to patch in the correct MAC address for
> > > the ethernet adapter.
> > > 
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > ---
> > >  arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi | 11
> > > +++++++++++
> > >  1 file changed, 11 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > > b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > > index 087b5b6ebe89..7933c685fe6a 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
> > > @@ -475,6 +475,17 @@
> > >  	         <&pcie1_refclk>;
> > >  	clock-names = "pcie", "pcie_aux", "pcie_phy", "pcie_bus";
> > >  	status = "okay";
> > > +
> > > +	host@0 {
> > 
> > Where is the bindings documenting this child node of pcie device?
> 
> This is part of the "PCI Bus Binding to: IEEE Std 1275-1994" document,
> which is referenced in Documentation/devicetree/bindings/pci/pci.txt.
> This is a standard PCIe topology description mapped to DT.

Please resend the patch to include DT and PCI folks and list.

Shawn

> 
> > > +		reg = <0 0 0 0 0>;
> > > +
> > > +		#address-cells = <3>;
> > > +		#size-cells = <2>;
> > > +
> > > +		i210: i210@0 {
> > 
> > Can we have generic node name for it?
> 
> I would like to avoid this if possible. We are sharing the code to
> patch in the MAC address from the bootloader with the RDU2, which has
> the same node name and the patching code looks for the specific name. 
> 
> Regards,
> Lucas
> 
> > Shawn
> > 
> > > +			reg = <0 0 0 0 0>;
> > > +		};
> > > +	};
> > >  };
> > >  
> > >  &pgc_gpu {
> > > -- 
> > > 2.20.1
> > > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
