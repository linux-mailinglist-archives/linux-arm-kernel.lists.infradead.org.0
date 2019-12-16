Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D51712040D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:35:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29W9pzZdTK2/wLBABNKJUhQLCWwc036bmPPN37efFzE=; b=Gx9pSVvQNmZKDd
	J7QK38ptG+D0pJUBnoxdt9fe+cxoZmH7uHhHE0CoEME7f9BPB7d+LSpYcdofycMJK72odU8iJM2ON
	Y9UzBDfE/AUY0xjYS80S0liPB7tjIIYLAGGVltO/OV7tJTB2B5HRq62tULwyZN3hthTj9/WM7w88i
	BrcWKj11HJpd1RNmKgYhqBc2dH4+IhJIHmu5rlSo2Otc8+uUoUbIz4Fq5X1bn5nppHQU4imwrtcTC
	CuvYWeZ6zpEfOjoFAYiO4QS2ZnTEUbs0uduG3kU7yOFHLC9PuIhum5MslfZhYFIFQYCyLMNbSnU8I
	9etTXslL73x5rp+eMZ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igof5-0006PI-0d; Mon, 16 Dec 2019 11:35:39 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoef-0005Um-R6
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 11:35:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n73CyjMCqSKZkVyvGTrxdoiHOlBdDgdbZjZVrU1/nds=; b=MqiaVdcPcT+aDlGgSmzA23X2j
 4lQ3aor0A63huFN55+D8c+fuJDw3Yu4rqaXrBrkh+0RWc4IYJ5YqCGKlGzBDdidftrXXEMLvec0Ig
 XiJiv0h/psysHKVNfzOChb/zy/1qkDtLgquM8HSpRaJMzFc3lb0QxoVHmrAAj+xG9U+J9mgZIOfLW
 SnJCibte+pAyicnUgnkgkWsP/JDdU/h3PSpsmCuLtwAM2DiBxEleMTs9ncKAa7Vn6e54AcH3uWs1f
 cv0Fk+0bogaTVXEerQCZSe30lAm8oGSnBfCJFRmj+hd++YLQxafICyWdY7FArpffMqWzO2T17FqQs
 gSmHe4P/Q==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:49602)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1igoeQ-00072Q-BP; Mon, 16 Dec 2019 11:34:58 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1igoeO-0002Ln-1S; Mon, 16 Dec 2019 11:34:56 +0000
Date: Mon, 16 Dec 2019 11:34:56 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: lx2160a: add MDIO descriptions
Message-ID: <20191216113455.GF25745@shell.armlinux.org.uk>
References: <20191209120010.GG25745@shell.armlinux.org.uk>
 <E1ieHiP-0004wT-2O@rmk-PC.armlinux.org.uk>
 <20191211073330.GO15858@dragon>
 <20191216110253.GE25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216110253.GE25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_033513_904721_CB6BDD08 
X-CRM114-Status: GOOD (  17.61  )
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
 Jon Nettleton <jon@solid-run.com>, Rabeeh Khoury <rabeeh@solid-run.com>,
 Rob Herring <robh+dt@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 11:02:53AM +0000, Russell King - ARM Linux admin wrote:
> On Wed, Dec 11, 2019 at 03:33:31PM +0800, Shawn Guo wrote:
> > On Mon, Dec 09, 2019 at 12:00:37PM +0000, Russell King wrote:
> > > Add MDIO descriptions to the lx2160a dtsi file, so we can use them in
> > > the SolidRun Clearfog CX platform.
> > > 
> > > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > > ---
> > >  .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 20 +++++++++++++++++++
> > >  1 file changed, 20 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > > index 0bd98f179bfa..617e1f1a2339 100644
> > > --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > > @@ -863,6 +863,26 @@
> > >  			fsl,extts-fifo;
> > >  		};
> > >  
> > > +		emdio1: mdio@8b96000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x00 0x8b96000 0x00 0x1000>;
> > > +			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> > > +			little-endian;
> > > +			#address-cells = <0x01>;
> > > +			#size-cells = <0x00>;
> > > +			status = "disabled";
> > > +		};
> > > +
> > > +		emdio2: mdio@8b97000 {
> > > +			compatible = "fsl,fman-memac-mdio";
> > > +			reg = <0x00 0x8b97000 0x00 0x1000>;
> > > +			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> > > +			little-endian;
> > > +			#address-cells = <0x01>;
> > > +			#size-cells = <0x00>;
> > > +			status = "disabled";
> > > +		};
> > > +
> > 
> > Ioana Ciornei already had a patch [1] adding emdio1, but unfortunately,
> > emdio2 was missing from there.
> > 
> > Shawn
> > 
> > [1] https://lkml.org/lkml/2019/12/4/675
> 
> Okay, I'll wait until after the next merge window before resubmitting.
> Thanks.

Just to be clear: the reasons are:
1) Ioana's patch was _not_ copied to linux-arm-kernel as it should have
   been.
2) I can't download the patch off lkml.org to sanely rebase on top of it
3) I'm not hunting around to try and find it on another archive site
4) I'm not digging about in random git trees trying to find it.

This makes it unnecessarily difficult to progress these patches.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
