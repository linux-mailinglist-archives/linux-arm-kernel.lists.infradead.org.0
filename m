Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3CEE46D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5J+e6Gt5rtc8gsLqmZOUZ2LacM49UEVe0A/bT4+Fncw=; b=iZVHxqwleFFRJ1
	XUQwUT13CiRy1DyQo6/FcX6lJqt2LmkVc0LZrq4H0ydg6k7nwuieHGxiZTPro1wB6K8TfyY7eU0iJ
	AVTLfZaVDHfaYvDCLfTXH+9j/+uRpm2KnuFa807z6SIIkgkW8zgOulSKukaAR869ntYyyn3B6KsXq
	4tKL2O4hU3PsmG5dPn+iAExH7lPbJbEdeD+T4lr8Q8H1AdHSbvo8hkO+Z2TJVG+Zb21mYT4ujKC0v
	2nrDTs/xSqW/X1u2yje2fTLogtHuv0JjgryevfCLQQvtCnJgLeXGWNdUKBtwObFndghEn7YOIjBqo
	aLChRGuc0PE3QAcQuWiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvgJ-00036R-Ak; Fri, 25 Oct 2019 09:14:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvfq-0002qZ-8Q
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:14:23 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10EE821929;
 Fri, 25 Oct 2019 09:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571994861;
 bh=3r7YuR6KqKAbgF30VcFbrSfSQsVVA9/SMsTQ81rjTeI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lqR2fnmleW3Eff1LuRkdblVI98d/gUF6Yur2voSItgmeCtms5xacuNlOikafTWrsD
 cro6HbvT8PsqkaU74OVrgAJ/wwKKGuxXM8cDHTOWPdbQ79wtFBd36MYVe1QLBwmvcJ
 sahcvogiCaPkY4p6p9RYCbgkyKnPBsQOfi8+oOAo=
Date: Fri, 25 Oct 2019 17:14:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH v3 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191025091401.GL3208@dragon>
References: <20191010192357.27884-1-andreas@kemnade.info>
 <20191010192357.27884-3-andreas@kemnade.info>
 <20191011065609.6irap7elicatmsgg@pengutronix.de>
 <20191011094148.1376430e@aktux> <20191011142927.GA11490@bogus>
 <20191011170147.1b3c4b25@kemnade.info>
 <20191011152214.v6lq6itwf5lp6j7q@pengutronix.de>
 <20191011181938.185f2a00@kemnade.info>
 <20191011165633.5ty3yux4ljrcycux@pengutronix.de>
 <20191013175644.4fc264d0@kemnade.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191013175644.4fc264d0@kemnade.info>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_021422_343026_7823A64B 
X-CRM114-Status: GOOD (  27.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>, marex@denx.de,
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, s.hauer@pengutronix.de,
 angus@akkea.ca, Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 manivannan.sadhasivam@linaro.org, j.neuschaefer@gmx.net,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Oct 13, 2019 at 05:56:44PM +0200, Andreas Kemnade wrote:
> On Fri, 11 Oct 2019 18:56:33 +0200
> Marco Felsch <m.felsch@pengutronix.de> wrote:
> 
> > On 19-10-11 18:19, Andreas Kemnade wrote:
> > > On Fri, 11 Oct 2019 17:22:14 +0200
> > > Marco Felsch <m.felsch@pengutronix.de> wrote:
> > >   
> > > > On 19-10-11 17:05, Andreas Kemnade wrote:  
> > > > > On Fri, 11 Oct 2019 09:29:27 -0500
> > > > > Rob Herring <robh@kernel.org> wrote:
> > > > >     
> > > > > > On Fri, Oct 11, 2019 at 09:41:48AM +0200, Andreas Kemnade wrote:    
> > > > > > > On Fri, 11 Oct 2019 08:56:09 +0200
> > > > > > > Marco Felsch <m.felsch@pengutronix.de> wrote:
> > > > > > >       
> > > > > > > > Hi Andreas,
> > > > > > > > 
> > > > > > > > On 19-10-10 21:23, Andreas Kemnade wrote:      
> > > > > > > > > The Netronix board E60K02 can be found some several Ebook-Readers,
> > > > > > > > > at least the Kobo Clara HD and the Tolino Shine 3. The board
> > > > > > > > > is equipped with different SoCs requiring different pinmuxes.
> > > > > > > > > 
> > > > > > > > > For now the following peripherals are included:
> > > > > > > > > - LED
> > > > > > > > > - Power Key
> > > > > > > > > - Cover (gpio via hall sensor)
> > > > > > > > > - RC5T619 PMIC (the kernel misses support for rtc and charger
> > > > > > > > >   subdevices).
> > > > > > > > > - Backlight via lm3630a
> > > > > > > > > - Wifi sdio chip detection (mmc-powerseq and stuff)
> > > > > > > > > 
> > > > > > > > > It is based on vendor kernel but heavily reworked due to many
> > > > > > > > > changed bindings.
> > > > > > > > > 
> > > > > > > > > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > > > > > > > > ---
> > > > > > > > > Changes in v3:
> > > > > > > > > - better led name
> > > > > > > > > - correct memory size
> > > > > > > > > - comments about missing devices
> > > > > > > > > 
> > > > > > > > > Changes in v2:
> > > > > > > > > - reordered, was 1/3
> > > > > > > > > - moved pinmuxes to their actual users, not the parents
> > > > > > > > >   of them
> > > > > > > > > - removed some already-disabled stuff
> > > > > > > > > - minor cleanups        
> > > > > > > > 
> > > > > > > > You won't change the muxing, so a this dtsi can be self contained?
> > > > > > > >       
> > > > > > > So you want me to put a big 
> > > > > > > #if defined(MX6SLL)       
> > > > > > 
> > > > > > Not sure what the comment meant, but no, don't do this. C defines in dts 
> > > > > > files are for symbolic names for numbers and assembling bitfields and 
> > > > > > that's it.    
> > > > > 
> > > > > yes, that is also my opinion. For now, there is only one user
> > > > > of this .dtsi, but I have another one in preparation. That is the
> > > > > reason for splitting things between .dts and .dtsi to avoid such ugly
> > > > > ifdefs    
> > > > 
> > > > Then IMHO the pnictrl-* entries shouldn't appear in the dsti.
> > > >   
> > > hmm, maybe now I understand your idea:
> > > You do not want only to have
> > > 
> > >   pinctrl_lm3630a_bl_gpio: lm3630a_bl_gpio_grp {
> > >                         fsl,pins = <
> > >                                 MX6SLL_PAD_EPDC_PWR_CTRL3__GPIO2_IO10   0x10059 /* HWEN */  
> > >                         >;  
> > >                 };
> > > in dts, but also  do not have these in .dtsi:
> > > 
> > >                 pinctrl-names = "default";
> > >                 pinctrl-0 = <&pinctrl_lm3630a_bl_gpio>;
> > > 
> > > and instead have in dts:
> > > &lm3630a {
> > >  	pinctrl-names = "default";
> > >         pinctrl-0 = <&pinctrl_lm3630a_bl_gpio>;
> > > 	
> > > };
> > > 
> > > 
> > > just to make sure I get it right before doing the restructuring work. That way of structuring things did not come to my mind, but then the .dtsi is self-contained.  
> > 
> > That is what I mean but wait for Shawn's comments. It's just my opinion
> > that .dtsi and .dts files should be self-contained.
> 
> for files like the imx6sll.dtsi, I would clearly agree, here it might
> hide errors like missing pinmuxes in the dts, so it is not so clear.
> But if there is is consensus about .dtsi being self-contained I will not
> refuse to restructurize my work.

Yes, I would appreciate the effort of keep .dtsi being self-contained.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
