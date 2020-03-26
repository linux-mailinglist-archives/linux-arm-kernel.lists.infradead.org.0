Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 669A7194A70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 22:21:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLJt/gvy4pYL02vw0Gn8rayhsewqrsrRxD22tLs979Y=; b=JWA1v8w24AWrxa
	5+9YQpdgt8LF2QQRapYvnyugSvowaejL60Zbt9pndAVI1RLB4h4iHJOgvl3Um+3xaKOG1Ime0iahj
	oa3vdsrW3T+lVReFDJWB/MvHnQfZmrbkiNVVfy0KaB7UPz+Qp7/OmJbYKQ0PoGFZ1gDz6RoNgZ22L
	aLYGErXvau8RI5fy17QRW8lf6zQsQKZ3IuRgnYB51zdshf7sTPc30L4ZQ+L72Z6jFDOT5/lpgu3Jd
	vuBUemhSNqS2EUcMDWRbVM7FFWv505c/Wuacadt0BQuU+/Uz369hmtJ4zyAlEDCHsdDVBEtz7kY/U
	1B4M3cBTcbDCTQDbF33Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHZwW-0005cV-JY; Thu, 26 Mar 2020 21:21:36 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHZwM-0005bl-Ei
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 21:21:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b7jMbEyQgBchxaYjnbMWehFvMY/YBtuPrMn94qG6tQk=; b=gQYyIFUdaqkeFxtOuw5YOVSw4
 EYRnbTd2281MagMR2RbxpOqSABlL5dEAm7nP9sGfwl5UqKeuR5bzEVyd4ZYxJMDlJuu/9i6xNV0E9
 /r93HysVOAuRlo31GFTKmnssGxwOXE8avmdv6ggcQXwJKx/0GXbSzGICtTq7hIz0yrQ/Ns1n9paxc
 /aGq0m+H0iGMiGoUfNjXQ1EnU2BHwbR058zWgZ0lcBwOs36l0bmAiB5AiEuc0cyAKjo1xT1QmYI4b
 LeJV8Xfl+goiQ2K7XdG5MtmJ5jxm+wf8fx5/h+OX+stWTQQzTGEU7gXzROR7yOahHRH7pAVtjf5lY
 K/kg0dzvQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:41760)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jHZw3-0005cQ-FQ; Thu, 26 Mar 2020 21:21:07 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jHZw0-0003Y9-9h; Thu, 26 Mar 2020 21:21:04 +0000
Date: Thu, 26 Mar 2020 21:21:04 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: Re: [RFC net-next 3/5] arm64: dts: lx2160a: add PCS MDIO nodes
Message-ID: <20200326212104.GE25745@shell.armlinux.org.uk>
References: <20200317144944.GP25745@shell.armlinux.org.uk>
 <E1jEDaS-0008JO-Po@rmk-PC.armlinux.org.uk>
 <DB8PR04MB6828FA55AA75B710BDB53BC8E0CF0@DB8PR04MB6828.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB8PR04MB6828FA55AA75B710BDB53BC8E0CF0@DB8PR04MB6828.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_142126_950463_EAD5AFF4 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 09:14:13PM +0000, Ioana Ciornei wrote:
> > Subject: [RFC net-next 3/5] arm64: dts: lx2160a: add PCS MDIO nodes
> > 
> > *NOT FOR MERGING*
> > 
> > Add PCS MDIO nodes for the LX2160A, which will be used when the MAC is in
> > PHY mode and is using in-band negotiation.
> > 
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> >  .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 144 ++++++++++++++++++
> >  1 file changed, 144 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > index e5ee5591e52b..732af33eec18 100644
> > --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> > @@ -960,6 +960,132 @@
> >  			status = "disabled";
> >  		};
> > 
> > +		pcs_mdio1: mdio@8c07000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c07000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> 
> Are the PCS MDIO buses shareable? I am asking this because in case of QSGMII our structure is a little bit quirky.
> There are 4 MACs but all PCSs sit on the first MACs internal MDIO bus only. The other 3 internal MDIO buses are empty.

I haven't looked at QSGMII yet, I've only considered single-lane setups
and only implemented that. For _this_ part, it doesn't matter as this
is just declaring where the hardware is.  I think that matters more for
the dpmac nodes.

> > +
> > +		pcs_mdio2: mdio@8c0b000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c0b000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio3: mdio@8c0f000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c0f000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio4: mdio@8c13000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c13000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio5: mdio@8c17000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c17000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio6: mdio@8c1b000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c1b000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio7: mdio@8c1f000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c1f000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio8: mdio@8c23000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c23000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio9: mdio@8c27000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c27000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio10: mdio@8c2b000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c2b000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio11: mdio@8c2f000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c2f000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio12: mdio@8c33000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c33000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio13: mdio@8c37000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c37000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio14: mdio@8c3b000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c3b000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio15: mdio@8c3f000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c3f000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio16: mdio@8c43000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c43000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio17: mdio@8c47000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c47000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> > +		pcs_mdio18: mdio@8c4b000 {
> > +			compatible = "fsl,fman-memac-mdio";
> > +			reg = <0x0 0x8c4b000 0x0 0x1000>;
> > +			little-endian;
> > +			status = "disabled";
> > +		};
> > +
> 
> Please sort the nodes alphabetically.

Huh?  The nodes in this file are already sorted according to address,
and this patch preserves that sorting.  The hex address field also
happens to be alphabetical.

Or do you mean the label for these modes - I've never heard of sorting
by label for a SoC file.

> >  		fsl_mc: fsl-mc@80c000000 {
> >  			compatible = "fsl,qoriq-mc";
> >  			reg = <0x00000008 0x0c000000 0 0x40>, @@ -988,91
> > +1114,109 @@
> >  				dpmac1: dpmac@1 {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0x1>;
> > +					pcs-mdio = <&pcs_mdio1>;
> >  				};
> > 
> >  				dpmac2: dpmac@2 {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0x2>;
> > +					pcs-mdio = <&pcs_mdio2>;
> >  				};
> > 
> >  				dpmac3: dpmac@3 {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0x3>;
> > +					pcs-mdio = <&pcs_mdio3>;
> >  				};
> > 
> >  				dpmac4: dpmac@4 {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0x4>;
> > +					pcs-mdio = <&pcs_mdio4>;
> >  				};
> > 
> >  				dpmac5: dpmac@5 {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0x5>;
> > +					pcs-mdio = <&pcs_mdio5>;
> >  				};
> > 
> >  				dpmac6: dpmac@6 {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0x6>;
> > +					pcs-mdio = <&pcs_mdio6>;
> >  				};
> > 
> >  				dpmac7: dpmac@7 {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0x7>;
> > +					pcs-mdio = <&pcs_mdio7>;
> >  				};
> > 
> >  				dpmac8: dpmac@8 {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0x8>;
> > +					pcs-mdio = <&pcs_mdio8>;
> >  				};
> > 
> >  				dpmac9: dpmac@9 {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0x9>;
> > +					pcs-mdio = <&pcs_mdio9>;
> >  				};
> > 
> >  				dpmac10: dpmac@a {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0xa>;
> > +					pcs-mdio = <&pcs_mdio10>;
> >  				};
> > 
> >  				dpmac11: dpmac@b {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0xb>;
> > +					pcs-mdio = <&pcs_mdio11>;
> >  				};
> > 
> >  				dpmac12: dpmac@c {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0xc>;
> > +					pcs-mdio = <&pcs_mdio12>;
> >  				};
> > 
> >  				dpmac13: dpmac@d {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0xd>;
> > +					pcs-mdio = <&pcs_mdio13>;
> >  				};
> > 
> >  				dpmac14: dpmac@e {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0xe>;
> > +					pcs-mdio = <&pcs_mdio14>;
> >  				};
> > 
> >  				dpmac15: dpmac@f {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0xf>;
> > +					pcs-mdio = <&pcs_mdio15>;
> >  				};
> > 
> >  				dpmac16: dpmac@10 {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0x10>;
> > +					pcs-mdio = <&pcs_mdio16>;
> >  				};
> > 
> >  				dpmac17: dpmac@11 {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0x11>;
> > +					pcs-mdio = <&pcs_mdio17>;
> >  				};
> > 
> >  				dpmac18: dpmac@12 {
> >  					compatible = "fsl,qoriq-mc-dpmac";
> >  					reg = <0x12>;
> > +					pcs-mdio = <&pcs_mdio18>;
> >  				};
> >  			};
> >  		};
> > --
> > 2.20.1
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
