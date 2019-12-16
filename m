Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD9112034A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:05:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQrATTGVTO33ZvJTKsIqD138gWZZzuFkgFFzPCraJpU=; b=qN2aYyFRZOZurN
	VXBnykmMtf8OrfMH31MS6yfzbTwt/q9bHBQk7d11gWOv5x26TtgT3zNWqfqaqgf0IAesvcz0UYKyZ
	8Eq2a28EZ9+qhKk4P5tx/i7LYB4+OcUZbWOpGV2aJRU7Ma5/ipQycNIY1TnXFstSclS6FPFZJ1KcK
	00CczbBVLCS/yOhW44YNdi4BhyrpLMQ3hkToFr6kIategJevb7Ysov14Izp6BFKPa+OnsrXmfqTtd
	7CaGKzmi5blxTM0g1DCsgExivlTPsDMQo3j9iWu6udpha+C4HUR3JJvuG9WHI1HewYW7LEr/bQWae
	iFXIw4703tDo0mIbnNXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoBk-0006YF-7Z; Mon, 16 Dec 2019 11:05:20 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoBZ-0004e8-NP
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 11:05:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XJ6t/pFlC3K5rIsLbz5VvrPkJShYdpcCpsxUEpi01j4=; b=KYxC1EQCERvt/T7I2Nuflwy4J
 THmLSXt2fNtPkDwzOGvGh7iCsyyALl5kOwP+ZXDnjlI7GusUsG3aVXqTFA0wZMcYfIyA4OEudhIri
 x6koXj2ziETizSNUviSWHw2GlMdrh4jUOiaWUNk3PVO+cmIXc/0iE5CwmXdCacMu6GgLkDuF2ArlE
 dbDJG7I3AKwrpqFmmuVyKZR+IirOo4Fbkw14WAMyr4ctAtGEfcpppGMVnonBOYtP2ii2J1MY4yJTH
 qznEhG2GMETj5nDWIzoGJB4VXGcooACTUCWMGmahSZHggv8cT8Hk6HNdTIBeCo2JLmdv/qdOeoCzF
 JzHBCIatg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42078)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1igo9P-0006r5-0L; Mon, 16 Dec 2019 11:02:55 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1igo9N-0002Ke-Fm; Mon, 16 Dec 2019 11:02:53 +0000
Date: Mon, 16 Dec 2019 11:02:53 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: lx2160a: add MDIO descriptions
Message-ID: <20191216110253.GE25745@shell.armlinux.org.uk>
References: <20191209120010.GG25745@shell.armlinux.org.uk>
 <E1ieHiP-0004wT-2O@rmk-PC.armlinux.org.uk>
 <20191211073330.GO15858@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211073330.GO15858@dragon>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_030509_766391_6F79885E 
X-CRM114-Status: GOOD (  14.32  )
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

On Wed, Dec 11, 2019 at 03:33:31PM +0800, Shawn Guo wrote:
> On Mon, Dec 09, 2019 at 12:00:37PM +0000, Russell King wrote:
> > Add MDIO descriptions to the lx2160a dtsi file, so we can use them in
> > the SolidRun Clearfog CX platform.
> > 
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> >  .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 20 +++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > index 0bd98f179bfa..617e1f1a2339 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > @@ -863,6 +863,26 @@
> >  			fsl,extts-fifo;
> >  		};
> >  
> > +		emdio1: mdio@8b96000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x00 0x8b96000 0x00 0x1000>;
> > +			interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> > +			little-endian;
> > +			#address-cells = <0x01>;
> > +			#size-cells = <0x00>;
> > +			status = "disabled";
> > +		};
> > +
> > +		emdio2: mdio@8b97000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x00 0x8b97000 0x00 0x1000>;
> > +			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
> > +			little-endian;
> > +			#address-cells = <0x01>;
> > +			#size-cells = <0x00>;
> > +			status = "disabled";
> > +		};
> > +
> 
> Ioana Ciornei already had a patch [1] adding emdio1, but unfortunately,
> emdio2 was missing from there.
> 
> Shawn
> 
> [1] https://lkml.org/lkml/2019/12/4/675

Okay, I'll wait until after the next merge window before resubmitting.
Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
