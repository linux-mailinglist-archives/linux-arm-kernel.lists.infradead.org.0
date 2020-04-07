Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8B51A18B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 01:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nftamFf6I5YBjPa3IJebpueX+UFwPeyh7kY/xmuIADo=; b=Mkfi+erFOr58LN
	E0h1CpsfWW3sXvRLKV+kWvyVdHGyFNEx8+Xe+bmwuJ0/VppojR7Q8yevSyBGJcHoJZsfb+jgPGRE/
	IOsdOgPm8Ca2kwz0KDAY890W1gaO9qoN9iOxj7GGIM2FfEg0JqtanKjOt2aPYN9VhJfQII5Mw6QZU
	tpDV9iQkWL2JzgtP0YTuqLFc2tajZ7Ys7BriQkksXspxG5exmKIYqSV5bHnwgbpgoE5jys0fdzy4h
	pQTP9p46mg/Ty5Y9ymabfiNagEvPRy98HfckzOLTkDKW7/5VKU8JE4CHE+bHfj+OuVS+4SbqN/dQg
	e8Xg73KLbBGC3XTNZvyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLxnl-0003wD-9T; Tue, 07 Apr 2020 23:38:41 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLxnb-0003vI-4V
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 23:38:32 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E8F3020004;
 Tue,  7 Apr 2020 23:38:21 +0000 (UTC)
Message-ID: <004a2ef9c1e04f9ffbb9c3cc9907ca656a406713.camel@aparcar.org>
Subject: Re: [PATCH 0/5] arm: dts: linksys: rename codename to model
From: Paul Spooren <mail@aparcar.org>
To: Andrew Lunn <andrew@lunn.ch>
Date: Tue, 07 Apr 2020 13:38:17 -1000
In-Reply-To: <20200407224615.GA359603@lunn.ch>
References: <20200407210816.866084-1-mail@aparcar.org>
 <20200407224615.GA359603@lunn.ch>
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_163831_449312_075A802C 
X-CRM114-Status: GOOD (  24.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net,
 gregory.clement@bootlin.com, linux-kernel@vger.kernel.org,
 daniel@makrotopia.org, freifunk@adrianschmutzler.de, robh+dt@kernel.org,
 kaloz@openwrt.org, linux-arm-kernel@lists.infradead.org,
 sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

thank you very much for the quick response!

On Wed, 2020-04-08 at 00:46 +0200, Andrew Lunn wrote:
> On Tue, Apr 07, 2020 at 11:08:10AM -1000, Paul Spooren wrote:
> > Linksys chose to use codenames for a few of their devices and sell
> > their
> > them under an entirely different name.
> > 
> > codename  model name
> > rango  -> wrt3200acm
> > mamba  -> wrt1900ac
> > cobra  -> wrt1900ac-v2
> > caiman -> wrt1200ac
> > shelby -> wrt1900acs
> 
> Hi Paul
> 
> There was quite a bit of discussion about this when the first board
> was added. If i remember correctly, it was Mamba.
> 
> Imre Kaloz, <kaloz@openwrt.org> was the one arguing for
> the name armada-xp-linksys-mamba.dts.
> 
> So it seems that openwrt.org has now come full circle?

I talked with three currently active OpenWrt core developers and all
were in favor of a unification. I wasn't aware of any previous
discussions nor any pro arguments to keep code names.

I've added Imre via CC so maybe he can share his opinion, too.
> 
> > This introduces some extra loops in OpenWrt, a distribution
> > specialized
> > on embedded Internet facing devices, as both codename and model
> > name are
> > used within the build system. The double naming requires developers
> > to
> > keep track of that mapping and introduces inconsistencies:
> > 
> > To build a specific device in OpenWrt profiles are used, named
> > after the
> > the compatible string for targets using device tree (similar to how
> > .dts
> > files are named in the linux source tree). However, the first item
> > of
> > the DT `compatible` list in this case is `linksys,rango`, which is
> > inconsistent with the model name and not what common users would
> > expect.
> > 
> > Such double naming complicates currently the automatic search for
> > firmware upgrade as the build system does not support such mapping.
> > Ideally the first item of the DT `compatible` list would contain a
> > string suitable to be used as a filename recognizable by normal
> > users to
> > belong to that device.
> > With this patch set the Linksys device tree files are moved from
> > containing the codename to contain a sanitized model name and also
> > use
> > it as first entry of the DT `compatible` list.
> 
> I've no problems adding another compatible to the list. But i don't
> like the idea of renaming the files. The file names could be
> considered ABI! What installers/bootloaders are you going to break by
> renaming them?

Are you okay with adding the new compatible string as first element of
the list? This would already simplify the OpenWrt build system.

What about the changed labels? Are they considered ABI too?

Regarding file names, I'm new to ABI policies. Within OpenWrt this is
all done via a single line patch, I'm not familiar with any other
installers/bootloaders. 

If renaming is a reason not to merge this I'd send a v2 containing only
the the added compatible list and updated labels.

Best,
Paul


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
