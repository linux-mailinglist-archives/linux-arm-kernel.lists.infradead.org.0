Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D723B9F4E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 23:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dg3oW7k4U2Sk+7yW8oMq/vHYSff52vTiNIxZFwlweYs=; b=luqu2a+1byIn4j
	vt9iEBL/DPlGjb3NPkf3POOU3EH9yDd68kDzr6UJYoIUg5bs88KYANYIK2yXMExKjuyH2mrj4O+y7
	U5stg371g+7Yj9sdqeWYRlpvXPY6ybL/SGNJ+iWFWye1gqygQDnYJHMu9bRcPHsQdLllAGe+nb5Km
	irJwd0Vkv8vtdQNimU6UXYaEjCQtMEZ5tgOGSVky48eWogbpH2qb4NvGIrWnf6KyU9/sRE8MtC+xT
	QPI8gAeEiAN7bxpTbNx66qEw9wfzh9BaJ2z6q029h6B1KJQ9sm9Tvy/72Q32cEE2z2ibwf8iCoRIV
	/JQWJdCzAcW9M0nkPyRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ipL-0008Bz-PK; Tue, 27 Aug 2019 21:16:31 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ip8-0008B1-8t
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 21:16:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BNQgl8BXmDinA3/U5qi90mgN02ztpsNcfJjDKC7Jswk=; b=eo2x2tz3u+pHlB2Uk761ZEgQe
 hOUhU0oDfXDzrQh5Ow4isbPRbctYV/QTHIPCdlkGF8v6IJBtNDWppbeFwBq3TXYqh5G6uSjbJFtDw
 HL9SOsUw/41VrBvdBEgF1bRKE5um63SBrhyTvje70W3XYmJBSBlNg1119PrQfybSQ6jycpnoWf/Iz
 IZNR63vpGwrh2kHQj77V8FK5be474OckRHvY2rxUZEhCstLANTUN97jU16pGoJEiqu/xZBiXptItJ
 qv/6MRPCyJ9zAKpl8gOMAbnXwTegmyVouWJkCUvks63rGtTrpT9/EjEvWp/VrrLqtWBqvIh/5ZFgY
 CEI3D5siA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:55352)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i2ios-0006nH-B5; Tue, 27 Aug 2019 22:16:02 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i2ion-00063o-Pz; Tue, 27 Aug 2019 22:15:57 +0100
Date: Tue, 27 Aug 2019 22:15:57 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Subject: Re: [PATCH v9 1/8] ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
Message-ID: <20190827211557.GP13294@shell.armlinux.org.uk>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
 <20190712034904.5747-2-chris.packham@alliedtelesis.co.nz>
 <20190823104621.GY13294@shell.armlinux.org.uk>
 <20190823105020.GZ13294@shell.armlinux.org.uk>
 <836653f04f526333e8dbd45361329731f8dfe2ea.camel@alliedtelesis.co.nz>
 <20190827091336.GI13294@shell.armlinux.org.uk>
 <b1e2e5b325b3c4453e2ed63c17e1e11d6b24f099.camel@alliedtelesis.co.nz>
 <20190827210713.GO13294@shell.armlinux.org.uk>
 <0e9c7c7cb17b6fdea8d49b06925badb0b3d2ff8b.camel@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e9c7c7cb17b6fdea8d49b06925badb0b3d2ff8b.camel@alliedtelesis.co.nz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_141618_317294_DA11A047 
X-CRM114-Status: GOOD (  23.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "jlu@pengutronix.de" <jlu@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "patches@armlinux.org.uk" <patches@armlinux.org.uk>,
 "gregory.clement@free-electrons.com" <gregory.clement@free-electrons.com>,
 "bp@alien8.de" <bp@alien8.de>, "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 09:13:11PM +0000, Chris Packham wrote:
> On Tue, 2019-08-27 at 22:07 +0100, Russell King - ARM Linux admin
> wrote:
> > On Tue, Aug 27, 2019 at 08:56:05PM +0000, Chris Packham wrote:
> > > On Tue, 2019-08-27 at 10:13 +0100, Russell King - ARM Linux admin
> > > wrote:
> > > > Just send the single patch to the patch tracker - having it against
> > > > 5.3-rc is fine (I don't think anything has changed for a long time
> > > > with that file.)
> > > 
> > > Done 
> > > https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=8902/1
> > > 
> > > I'm still not entirely sure what to put for the KernelVersion tag. In
> > > hindsight think I misinterpreted your comment above and set it to 5.3rc
> > > (where you meant a series based on 5.3-rcX should apply cleanly). It
> > > probably should have been next or master because it's way past the
> > > merge window for 5.3.
> > 
> > Think about it as "which kernel version was _this_ patch generated
> > against" - it's a guide for me to know which kernel version it
> > should be applied to.  The nearest Linus release (rc or final) is
> > generally sufficient.
> > 
> > If it doesn't apply to my current base, then I might check out that
> > version, apply it there, and then merge it in, resolving any
> > conflicts during the merge.
> > 
> > It started off with a different purpose: when we had the older
> > development system, such as the 2.x series kernels, we would have
> > even x being the current stable kernels, and concurrently we'd
> > also have x+1 as the development series.  When someone sent me a
> > patch back then, it was important to know which kernel series it
> > was meant for.
> > 
> > I decided not to get rid of it because it provides useful
> > information when patches don't apply, and gives more options
> > than me just discarding the patch with a comment saying it
> > doesn't apply.
> > 
> 
> Thanks for the info. So 5.3-rc is not as wrong as I thought it was.
> 
> One could even summarize the above as.
> 
>   git format-patch --add-header \
>       "KernelVersion: $(git describe --abbrev=0 HEAD)"

Yep, I should probably update the patch system help with that, and
actually strip out everything about the old diff and patch way of
working.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
