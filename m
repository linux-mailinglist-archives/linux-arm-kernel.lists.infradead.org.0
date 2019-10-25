Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB1DE4835
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=os6tMKYNc7Xx2BfqKjkgrGMyH+TGgiW8HLY4LYzeuzM=; b=AuY5fhnCJmgnCX
	n1vb5AMYQ2Pr3KgJh0r+n6uaBWJ40UT1qpNl3LXY9PTYNBvq88AhATL8coSNS2vS3YH1UGa2dv/MJ
	XJ39TpUHFvkCeJr/gkSVWqPQI3+Q0sKYz9jImnIHnmeff3z69h6uy7TzD08n16h2v3Lqw2Wms9lX+
	G6bRtBEcAjyknr/dG7BkU0Q939NTG/SO+wprpPm0xwiyg+cnax87Sbs9oFAT9Jq6EgUODPP/M0DkS
	L5ax9zX7m5tWcNk/Iv80OKOk+ilMuOKqLSrqNWpWtMBvCRcyQRM2X/LDnnx4jVskp0GV4pVy+BgAY
	Cpn1SXcAMdbBA9ZsweEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwY4-00033v-09; Fri, 25 Oct 2019 10:10:24 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwXZ-0002sD-96
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 10:09:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YYQQNgawfccK6LNWtTEklH/kQejW+Vx5ShbN7nqdkXE=; b=g1AI5EI/tOmWF44gvc7zJhVYaK
 9dv7t1flx81eGGZ8vAulAcP0qOGEc64dcnLVQQB8ohYNsoMVM4k593XxxYQL9MDDCOBktLl84eRzC
 sRtu1C3zaqRHlTjv/8C/+9hUtNFLVjyiz+sO8CygFxAuRV/Jq56burH1rspqn1xphy7E=;
Received: from p200300ccff09ca001a3da2fffebfd33a.dip0.t-ipconnect.de
 ([2003:cc:ff09:ca00:1a3d:a2ff:febf:d33a] helo=aktux)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1iNwX9-0000h4-Iy; Fri, 25 Oct 2019 12:09:30 +0200
Date: Fri, 25 Oct 2019 12:09:25 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v3 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191025120925.327e70fd@aktux>
In-Reply-To: <20191025091401.GL3208@dragon>
References: <20191010192357.27884-1-andreas@kemnade.info>
 <20191010192357.27884-3-andreas@kemnade.info>
 <20191011065609.6irap7elicatmsgg@pengutronix.de>
 <20191011094148.1376430e@aktux> <20191011142927.GA11490@bogus>
 <20191011170147.1b3c4b25@kemnade.info>
 <20191011152214.v6lq6itwf5lp6j7q@pengutronix.de>
 <20191011181938.185f2a00@kemnade.info>
 <20191011165633.5ty3yux4ljrcycux@pengutronix.de>
 <20191013175644.4fc264d0@kemnade.info>
 <20191025091401.GL3208@dragon>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_030954_173825_B75F987D 
X-CRM114-Status: GOOD (  28.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Shawn,

On Fri, 25 Oct 2019 17:14:04 +0800
Shawn Guo <shawnguo@kernel.org> wrote:

> On Sun, Oct 13, 2019 at 05:56:44PM +0200, Andreas Kemnade wrote:
> > On Fri, 11 Oct 2019 18:56:33 +0200
> > Marco Felsch <m.felsch@pengutronix.de> wrote:
> >   
> > > On 19-10-11 18:19, Andreas Kemnade wrote:  
> > > > On Fri, 11 Oct 2019 17:22:14 +0200
> > > > Marco Felsch <m.felsch@pengutronix.de> wrote:
> > > >     
> > > > > On 19-10-11 17:05, Andreas Kemnade wrote:    
> > > > > > On Fri, 11 Oct 2019 09:29:27 -0500
> > > > > > Rob Herring <robh@kernel.org> wrote:
> > > > > >       
> > > > > > > On Fri, Oct 11, 2019 at 09:41:48AM +0200, Andreas Kemnade wrote:      
> > > > > > > > On Fri, 11 Oct 2019 08:56:09 +0200
> > > > > > > > Marco Felsch <m.felsch@pengutronix.de> wrote:
> > > > > > > >         
> > > > > > > > > Hi Andreas,
> > > > > > > > > 
> > > > > > > > > On 19-10-10 21:23, Andreas Kemnade wrote:        
> > > > > > > > > > The Netronix board E60K02 can be found some several Ebook-Readers,
> > > > > > > > > > at least the Kobo Clara HD and the Tolino Shine 3. The board
> > > > > > > > > > is equipped with different SoCs requiring different pinmuxes.
> > > > > > > > > > 
> > > > > > > > > > For now the following peripherals are included:
> > > > > > > > > > - LED
> > > > > > > > > > - Power Key
> > > > > > > > > > - Cover (gpio via hall sensor)
> > > > > > > > > > - RC5T619 PMIC (the kernel misses support for rtc and charger
> > > > > > > > > >   subdevices).
> > > > > > > > > > - Backlight via lm3630a
> > > > > > > > > > - Wifi sdio chip detection (mmc-powerseq and stuff)
> > > > > > > > > > 
> > > > > > > > > > It is based on vendor kernel but heavily reworked due to many
> > > > > > > > > > changed bindings.
> > > > > > > > > > 
> > > > > > > > > > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > > > > > > > > > ---
> > > > > > > > > > Changes in v3:
> > > > > > > > > > - better led name
> > > > > > > > > > - correct memory size
> > > > > > > > > > - comments about missing devices
> > > > > > > > > > 
> > > > > > > > > > Changes in v2:
> > > > > > > > > > - reordered, was 1/3
> > > > > > > > > > - moved pinmuxes to their actual users, not the parents
> > > > > > > > > >   of them
> > > > > > > > > > - removed some already-disabled stuff
> > > > > > > > > > - minor cleanups          
> > > > > > > > > 
> > > > > > > > > You won't change the muxing, so a this dtsi can be self contained?
> > > > > > > > >         
> > > > > > > > So you want me to put a big 
> > > > > > > > #if defined(MX6SLL)         
> > > > > > > 
> > > > > > > Not sure what the comment meant, but no, don't do this. C defines in dts 
> > > > > > > files are for symbolic names for numbers and assembling bitfields and 
> > > > > > > that's it.      
> > > > > > 
> > > > > > yes, that is also my opinion. For now, there is only one user
> > > > > > of this .dtsi, but I have another one in preparation. That is the
> > > > > > reason for splitting things between .dts and .dtsi to avoid such ugly
> > > > > > ifdefs      
> > > > > 
> > > > > Then IMHO the pnictrl-* entries shouldn't appear in the dsti.
> > > > >     
> > > > hmm, maybe now I understand your idea:
> > > > You do not want only to have
> > > > 
> > > >   pinctrl_lm3630a_bl_gpio: lm3630a_bl_gpio_grp {
> > > >                         fsl,pins = <
> > > >                                 MX6SLL_PAD_EPDC_PWR_CTRL3__GPIO2_IO10   0x10059 /* HWEN */    
> > > >                         >;    
> > > >                 };
> > > > in dts, but also  do not have these in .dtsi:
> > > > 
> > > >                 pinctrl-names = "default";
> > > >                 pinctrl-0 = <&pinctrl_lm3630a_bl_gpio>;
> > > > 
> > > > and instead have in dts:
> > > > &lm3630a {
> > > >  	pinctrl-names = "default";
> > > >         pinctrl-0 = <&pinctrl_lm3630a_bl_gpio>;
> > > > 	
> > > > };
> > > > 
> > > > 
> > > > just to make sure I get it right before doing the restructuring work. That way of structuring things did not come to my mind, but then the .dtsi is self-contained.    
> > > 
> > > That is what I mean but wait for Shawn's comments. It's just my opinion
> > > that .dtsi and .dts files should be self-contained.  
> > 
> > for files like the imx6sll.dtsi, I would clearly agree, here it might
> > hide errors like missing pinmuxes in the dts, so it is not so clear.
> > But if there is is consensus about .dtsi being self-contained I will not
> > refuse to restructurize my work.  
> 
> Yes, I would appreciate the effort of keep .dtsi being self-contained.

ok, then I will restructurize as proposed and create a v4 this weekend.

Regards,
Andreas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
