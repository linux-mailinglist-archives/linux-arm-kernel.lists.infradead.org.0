Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8761205D9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:35:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23yMQHYd2UHw4ANPSAkqQIP3nbWl8WXRUBjl1MOKd3o=; b=rfG51RML+OK6TQ
	qfgZMnizZ8q6XL72SSX78XrGO6w3JPInKSXE7ili5deCY/V4k1QtSnVxLUO87X4Yj0EhgT+kt9Iho
	ugkyn6oFNtijzf+vxX6t3jEab+g1+NYV0F+/PP5O058r+9RDCRykrDFRSFg8vqa1Fp2yJgOLqhqed
	gSTw5yeTWdO0LIu8jsDCdte1x0lNrGXtABCugm4iB/hAzyIjh63ZwpkoqDyoSu7IkT7060AZAwdX+
	dJpuKtEtDaixkiNgyfmiiJEP5P31t5Ev33FwZmTijIA3+qU1Vdx7wy0+VFKB4fV8Xhy+K0vn3zrrs
	ctTkD8L1hUAontHEzHJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpal-0002Aq-Cr; Mon, 16 Dec 2019 12:35:15 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpaU-00028W-JD
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 12:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mXT8PBeEReMSOgHvnBy5MAfeGjDb/CwmY3oTPLFEi0w=; b=dljlnK4FFsG7hCEolR4dDdxeZ
 uM6HJ7j1Xg3OJUqaWpOYGz44Xf9vuRPwr8vA7vlqusydLlfDwJGVfECnqSKOR4eDI4gF5pwFegnM8
 ZMvxtDoOnqEEs7gJPxj3JmuZJhH3fPuhYxnZP5MUyNH6EVDRYiouUBYWHD20VHi4QjBIOBkGZlxti
 MkTtrlNNe/n+1wJX73P4OnybhD/Vv4ncfALdKFB/Cg7laO77mIVmqgi6x1TWVXf5PkVqqsK6g3Hpz
 OgmxtxOgL8WTuGmIwlC8ryrX2DZqBhhahKo0kKzbs/OVn69WFsKDuntLAhdya9e5cosGtkleMXHFp
 J2ddif37w==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:53760)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1igpaI-0007NN-2K; Mon, 16 Dec 2019 12:34:46 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1igpaE-0002O5-SD; Mon, 16 Dec 2019 12:34:42 +0000
Date: Mon, 16 Dec 2019 12:34:42 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: lx2160a: add MDIO descriptions
Message-ID: <20191216123442.GG25745@shell.armlinux.org.uk>
References: <20191209120010.GG25745@shell.armlinux.org.uk>
 <E1ieHiP-0004wT-2O@rmk-PC.armlinux.org.uk>
 <20191211073330.GO15858@dragon>
 <20191216110253.GE25745@shell.armlinux.org.uk>
 <20191216113455.GF25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216113455.GF25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_043458_632350_6316860E 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jon Nettleton <jon@solid-run.com>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Rabeeh Khoury <rabeeh@solid-run.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 11:34:56AM +0000, Russell King - ARM Linux admin wrote:
> On Mon, Dec 16, 2019 at 11:02:53AM +0000, Russell King - ARM Linux admin wrote:
> > On Wed, Dec 11, 2019 at 03:33:31PM +0800, Shawn Guo wrote:
> > > On Mon, Dec 09, 2019 at 12:00:37PM +0000, Russell King wrote:
> > > > Add MDIO descriptions to the lx2160a dtsi file, so we can use them in
> > > > the SolidRun Clearfog CX platform.
> > > > 
> > > > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > > > ---
> > > >  .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 20 +++++++++++++++++++
> > > >  1 file changed, 20 insertions(+)
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > > > index 0bd98f179bfa..617e1f1a2339 100644
> > > > --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > > > +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > > > @@ -863,6 +863,26 @@
> > > >  			fsl,extts-fifo;
> > > >  		};
> > > >  
> > > > +		emdio1: mdio@8b96000 {
> > > > +			compatible = "fsl,fman-memac-mdio";
> > > > +			reg = <0x00 0x8b96000 0x00 0x1000>;
> > > > +			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> > > > +			little-endian;
> > > > +			#address-cells = <0x01>;
> > > > +			#size-cells = <0x00>;
> > > > +			status = "disabled";
> > > > +		};
> > > > +
> > > > +		emdio2: mdio@8b97000 {
> > > > +			compatible = "fsl,fman-memac-mdio";
> > > > +			reg = <0x00 0x8b97000 0x00 0x1000>;
> > > > +			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> > > > +			little-endian;
> > > > +			#address-cells = <0x01>;
> > > > +			#size-cells = <0x00>;
> > > > +			status = "disabled";
> > > > +		};
> > > > +
> > > 
> > > Ioana Ciornei already had a patch [1] adding emdio1, but unfortunately,
> > > emdio2 was missing from there.
> > > 
> > > Shawn
> > > 
> > > [1] https://lkml.org/lkml/2019/12/4/675
> > 
> > Okay, I'll wait until after the next merge window before resubmitting.
> > Thanks.
> 
> Just to be clear: the reasons are:
> 1) Ioana's patch was _not_ copied to linux-arm-kernel as it should have
>    been.
> 2) I can't download the patch off lkml.org to sanely rebase on top of it
> 3) I'm not hunting around to try and find it on another archive site
> 4) I'm not digging about in random git trees trying to find it.
> 
> This makes it unnecessarily difficult to progress these patches.

Okay, I finally found it at:

https://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git/patch/?id=6e1b8fae892daa7ffb48570264b8e43b3f807e9a

Note that that was unnecessarily difficult - google was unable to find
it.  Ioana's patch should have been copied to linux-arm-kernel as per
MAINTAINERS, but wasn't.  Is copying the appropriate mailing lists for
a patch now optional?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
