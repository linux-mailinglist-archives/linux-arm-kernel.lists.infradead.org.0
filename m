Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF3C1A271E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 18:24:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fRadc8eZ34FP6zFInJ8PmjoLfzRXLtsahHOMVgfMeU=; b=oja4i5KefW4b3T
	9jaF0U0nXUREwwRujXbOkQtUZ9P5v/E5liGgNNqLUt3OEX6SQMpoTCrl3+t7jTfEGdspRPa/5Cn3V
	vBBdHPdA5GX2FpWHDMNIWhNJSjVM2vhibnLQbZ5nvbItINXO5JxaDFwBwXWOboIrefautXahVIKVy
	kgcPGRU2PWCs2gLxU25qb6I0PxLi3TtQiFumfudQSRAgd43AhFsLDyGLfgqa4ET9tVYLgPrr7EtRM
	I+5aEoe3U6+BluBKGTnt697727/ksTesVHAvItxak8YwOJ3FYN1YuMG2+Swac+brCz8RvHx8Ht7qm
	AUL1B5/XKKwhubDvW/gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMDVM-0006jn-8U; Wed, 08 Apr 2020 16:24:44 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMDVF-0006jM-Ix
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 16:24:39 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jMDUv-0002ru-7m; Wed, 08 Apr 2020 18:24:19 +0200
Date: Wed, 8 Apr 2020 17:23:49 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Imre Kaloz <kaloz@dune.hu>
Subject: Re: [PATCH 0/5] arm: dts: linksys: rename codename to model
Message-ID: <20200408162009.GC1995@makrotopia.org>
References: <20200407210816.866084-1-mail@aparcar.org>
 <20200407224615.GA359603@lunn.ch>
 <004a2ef9c1e04f9ffbb9c3cc9907ca656a406713.camel@aparcar.org>
 <ecf4dc01-81f8-a33d-b4a7-2065748993ed@gmail.com>
 <VI1PR02MB5325621D39BF0FFAFE3993C4A0C00@VI1PR02MB5325.eurprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR02MB5325621D39BF0FFAFE3993C4A0C00@VI1PR02MB5325.eurprd02.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_092437_621742_CC330239 
X-CRM114-Status: GOOD (  29.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Paul Spooren <mail@aparcar.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "freifunk@adrianschmutzler.de" <freifunk@adrianschmutzler.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
 "kaloz@openwrt.org" <kaloz@openwrt.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Imre,

On Wed, Apr 08, 2020 at 08:32:41AM +0000, Imre Kaloz wrote:
> Hi,
> 
> I'm on the same page here - this has not an issue for years. The common sense and policy was always to reject kernel changes that would only make the userland's job easier - and here were are not even talking about the userland, but a script that's being used for image generation.
> 
> The reason codenames are preffered to marketing names is simple: the same board can be sold under multiple marketing names.
> 
> The Linksys Viper has been sold as E4200v2 and EA4500. The Linksys Focus as EA6100 and EA5800. The LeMans is the EA6300 and the EA6200. The Macan is both EA7500 and EA7400 - on the other hand, the EA7500v2 and the EA7400v2 are the Savannah.

What Paul, Adian and others are trying to achieve here is consistency.
See also the debate on openwrt-devel:

http://lists.infradead.org/pipermail/openwrt-devel/2020-April/022567.html

The goal is to make it easier for users and semi-automated processes
to identify the right OpenWrt image for a specific device.
This especially becomes necessary for OTA updates and we have invested
quite a bit of work to no longer need to scrape and translate that
with additional layers of abstraction but simply use the first (ie.
most significant) compatible from DTS to indentify the right image.

As product-name aliases are indeed very common, we usually deal with it
in a way that the first product name which hits the OpenWrt tree is
used for model, compatible, DTS- and image filenames. We then add
aliases to that in our build-scripts which allows web-based wizards and
such to match the alternative names as well when entered by the user.


> 
> 
> Best,
> 
> Imre
> 
> ________________________________
> From: Florian Fainelli <f.fainelli@gmail.com>
> Sent: Wednesday, April 8, 2020 2:07:38 AM
> To: Paul Spooren <mail@aparcar.org>; Andrew Lunn <andrew@lunn.ch>
> Cc: devicetree@vger.kernel.org <devicetree@vger.kernel.org>; jason@lakedaemon.net <jason@lakedaemon.net>; gregory.clement@bootlin.com <gregory.clement@bootlin.com>; linux-kernel@vger.kernel.org <linux-kernel@vger.kernel.org>; daniel@makrotopia.org <daniel@makrotopia.org>; freifunk@adrianschmutzler.de <freifunk@adrianschmutzler.de>; robh+dt@kernel.org <robh+dt@kernel.org>; kaloz@openwrt.org <kaloz@openwrt.org>; linux-arm-kernel@lists.infradead.org <linux-arm-kernel@lists.infradead.org>; sebastian.hesselbarth@gmail.com <sebastian.hesselbarth@gmail.com>
> Subject: Re: [PATCH 0/5] arm: dts: linksys: rename codename to model
> 
> 
> 
> On 4/7/2020 4:38 PM, Paul Spooren wrote:
> > Hi Andrew,
> >
> > thank you very much for the quick response!
> >
> > On Wed, 2020-04-08 at 00:46 +0200, Andrew Lunn wrote:
> >> On Tue, Apr 07, 2020 at 11:08:10AM -1000, Paul Spooren wrote:
> >>> Linksys chose to use codenames for a few of their devices and sell
> >>> their
> >>> them under an entirely different name.
> >>>
> >>> codename  model name
> >>> rango  -> wrt3200acm
> >>> mamba  -> wrt1900ac
> >>> cobra  -> wrt1900ac-v2
> >>> caiman -> wrt1200ac
> >>> shelby -> wrt1900acs
> >>
> >> Hi Paul
> >>
> >> There was quite a bit of discussion about this when the first board
> >> was added. If i remember correctly, it was Mamba.
> >>
> >> Imre Kaloz, <kaloz@openwrt.org> was the one arguing for
> >> the name armada-xp-linksys-mamba.dts.
> >>
> >> So it seems that openwrt.org has now come full circle?
> >
> > I talked with three currently active OpenWrt core developers and all
> > were in favor of a unification. I wasn't aware of any previous
> > discussions nor any pro arguments to keep code names.
> >
> > I've added Imre via CC so maybe he can share his opinion, too.
> >>
> >>> This introduces some extra loops in OpenWrt, a distribution
> >>> specialized
> >>> on embedded Internet facing devices, as both codename and model
> >>> name are
> >>> used within the build system. The double naming requires developers
> >>> to
> >>> keep track of that mapping and introduces inconsistencies:
> >>>
> >>> To build a specific device in OpenWrt profiles are used, named
> >>> after the
> >>> the compatible string for targets using device tree (similar to how
> >>> .dts
> >>> files are named in the linux source tree). However, the first item
> >>> of
> >>> the DT `compatible` list in this case is `linksys,rango`, which is
> >>> inconsistent with the model name and not what common users would
> >>> expect.
> >>>
> >>> Such double naming complicates currently the automatic search for
> >>> firmware upgrade as the build system does not support such mapping.
> >>> Ideally the first item of the DT `compatible` list would contain a
> >>> string suitable to be used as a filename recognizable by normal
> >>> users to
> >>> belong to that device.
> >>> With this patch set the Linksys device tree files are moved from
> >>> containing the codename to contain a sanitized model name and also
> >>> use
> >>> it as first entry of the DT `compatible` list.
> >>
> >> I've no problems adding another compatible to the list. But i don't
> >> like the idea of renaming the files. The file names could be
> >> considered ABI! What installers/bootloaders are you going to break by
> >> renaming them?
> >
> > Are you okay with adding the new compatible string as first element of
> > the list? This would already simplify the OpenWrt build system.
> 
> Having a mapping table between model names in OpenWrt profiles and .dts
> file names in the kernel sources is not that complicated to maintain,
> changing the kernel for that reason sounds a bit weak IMHO.
> --
> Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
