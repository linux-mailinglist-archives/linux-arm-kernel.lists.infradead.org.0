Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57815C1FB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 13:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3IBNFKDcnvFonuNqa4ST8GVLBEF9lxrAiMOaWUjoQU=; b=e7zfSXQq5VATWa
	t4xGcM29aSppUr2Fz+9/NWax+K6W+Gj1AOi/2By7ZL+ttX4HP07qPsab+2lh6yHD50olf4nEd9Y58
	dzmL93y7gycRoftHjsXbVmkuC95zgnzwinCEfo1Vx38KocpicRIy4WjXsTsfbiKhBXfugvU+z9YeS
	5H8AaKGKBxtUAdpTkMFy9hAnYipitom3TPkKfIDJoZoXXutAnFi8zkfAe4E5OH3WN8sVylp/JB/YN
	ULSEgFjxcvDmgDiVX/015nxaLrNoNOMbBMfAAQH6OwyTKTFybzPFXIxeT3gXWZc5xXEpp7Y3MbFSu
	0G4yghtERuIUten9VnDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEtS9-0001IR-Dv; Mon, 30 Sep 2019 11:02:53 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEtS0-0001HJ-7q
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 11:02:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Q2eQSaoD2aHtt1rANXm2Cc6hpmxzVEktPN68KNFqac=; b=OqIAvAlJtHFC+dzBE4XSIO2Ve+
 +GF+kIQuQrXylq0OprfQ77TKbeo5rWyzgbD8EIYC5kpQqJeAxgHlMkqrqqWqxjKj1qgHYWMxv1OKZ
 V+PRUS55Nlw9YUBiwvNrZq7FEJ9FCX8dsBLKX5upiljQVbxbkVaBHoGK2vmqsl1uaaCM=;
Received: from p200300ccff0b4c001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff0b:4c00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iEtRf-0007ix-TS; Mon, 30 Sep 2019 13:02:24 +0200
Date: Mon, 30 Sep 2019 13:02:22 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH 1/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20190930130222.4e1cdf64@aktux>
In-Reply-To: <20190930082715.mplf5ra35ikqmbyr@pengutronix.de>
References: <20190927061423.17278-1-andreas@kemnade.info>
 <20190927061423.17278-2-andreas@kemnade.info>
 <20190927094721.w26ggnli4f5a64uv@pengutronix.de>
 <20190927210807.26439a94@aktux>
 <20190930082715.mplf5ra35ikqmbyr@pengutronix.de>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_040244_429395_96F4858A 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, marex@denx.de, devicetree@vger.kernel.org,
 andrew.smirnov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org, j.neuschaefer@gmx.net,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Sep 2019 10:27:15 +0200
Marco Felsch <m.felsch@pengutronix.de> wrote:

[..]
> > so you disagree with this pattern:
> > in .dtsi
> >  some_device {
> >    pinctrl-0 = <&pinctrl_some_device>;
> >  };
> > 
> > and in .dts (one I sent with this patch series and the tolino/mx6sl one
> > is not ready-cooked yet, will be part of a later series)
> > &iomuxc {
> >    pinctrl_some_device: some_devicegrp {
> >    	fsl,pins = <...>;
> >    };
> > };
> > 
> > ?  
> 
> Yes, because IMHO a dtsi is self contained as well as a dts. If it is
> common for all boards you can move the muxing into the dtsi else it
> should be done within the dts.
> 
well, since imx6sll-pinfunc.h is different than imx6sl-pinfunc.h,
we agree that this belongs to the dts.

> > > > +&snvs_rtc {
> > > > +	status = "disabled";    
> > > 
> > > Same applies here.
> > >   
> > 
> > No, seems to be an exception, it does not have a status = "disabled" in
> > imx6sll.dtsi.  
> 
> Did you mean 6sll or 6ull?
> 
> Okay, is this baseboard only used with a 6ull?
> 

MCIMX6V7DVN10AB and MCIMX6L8DVN10AB
So it is 6sll and 6sl (6sl support will be added in a follow-up patch
series). 

I will send a v2 this evening, so we can all look at better-sorted
things.

Regards,
Andreas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
