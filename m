Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B4819253F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 11:17:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQl4eqTyTQaZBO5fKtXnCxquQDon/TcWOWJJiGlrrng=; b=cMjIO17oOZh+hM
	IkAX9Tk0nrqQxcGbrUlzti8T9rouQwp9zxSdPDuhc4OYeUQJPyg3DBom5AYJOjUq1H/cxBzVdtdXs
	ML81GPf1mMumx9Uzp1tReU9Jf1XAMWXxttX/prquwKwnDVpCbgNB024mSqIVyeyVPvxVZyvANYQOx
	IO//BLxY9SVejEpx/rv+eLL0b9jdNmgXdLhWBUP4UWZ4u2tVjCn+SLsC651pOD1RxkFWtcJXt8iut
	l4C/CEOc1Ew5zqc6TDQFnRww9T3Vlch3r1/sdwpvFHqzDWQf/KoV3+4vtEjm9W656VmKWVE8ptqXz
	qPz1KOlMIKD7/xbJymWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH35u-0007VW-79; Wed, 25 Mar 2020 10:17:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH35l-0007V2-KR
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 10:16:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8114E31B;
 Wed, 25 Mar 2020 03:16:56 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 71DA83F52E;
 Wed, 25 Mar 2020 03:16:55 -0700 (PDT)
Date: Wed, 25 Mar 2020 10:16:52 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] arm64: mm: make CONFIG_ZONE_DMA configurable without
 EXPERT
Message-ID: <20200325101652.GJ3901@mbp>
References: <1583844526-24229-1-git-send-email-peng.fan@nxp.com>
 <20200324174134.GH3901@mbp>
 <AM0PR04MB44819E95EB1FABF09DEE682788CE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB44819E95EB1FABF09DEE682788CE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_031657_722745_0BBB6A3E 
X-CRM114-Status: GOOD (  22.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "will@kernel.org" <will@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "nsaenzjulienne@suse.de" <nsaenzjulienne@suse.de>,
 dl-linux-imx <linux-imx@nxp.com>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 12:34:15AM +0000, Peng Fan wrote:
> > On Tue, Mar 10, 2020 at 08:48:46PM +0800, peng.fan@nxp.com wrote:
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > commit 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
> > > enables both ZONE_DMA and ZONE_DMA32. The lower 1GB memory will be
> > > occupied by ZONE_DMA, this will cause CMA allocation fail on some
> > > platforms, because CMA area could not across different type of memory
> > > zones.
> > >
> > > Make CONFIG_ZONE_DMA configurable without EXPERT option could let
> > > people build non debug kernel image with CONFIG_ZONE_DMA disabled.
> > 
> > While I see why you need to toggle this feature, I'd rather try to figure out
> > whether there is a better solution that does not break the single kernel image
> > aim (i.e. the same config works for all supported SoCs).
> > 
> > When we decided to go ahead with a static 1GB ZONE_DMA for Raspberry Pi
> > 4, we thought that other platforms would be fine, ZONE_DMA32 allocations
> > fall back to ZONE_DMA. We missed the large CMA case.
> > 
> > I see a few potential options:
> > 
> > a) Ensure the CMA is contained within a single zone. 
> 
> This will break legacy dts with new version kernel.
> 
> > How large is it in your case? 
> 
> It is 1GB
> 
> > Is it allocated by the kernel dynamically or a fixed start set by
> > the boot loader?
> 
> We use alloc-ranges and size in kernel dts.
> 
> But there is only 2GB DRAM in the board.

So I guess without changing the dts, option (a) doesn't really work.

> > b) Change the CMA allocator to allow spanning multiple zones (last time
> >    I looked it wasn't trivial since it relied on some per-zone lock).
> > 
> > c) Make ZONE_DMA dynamic on arm64 and only enable it if RPi4.
> 
> Option c seems a bit easier to me :)
> 
> I will try to explore both, but if you have time to help, that would be
> appreciated.

I don't have time but option (c) was already discussed and there are
patches from Nicolas on the list:

https://lore.kernel.org/linux-arm-kernel/20190820145821.27214-5-nsaenzjulienne@suse.de/

The above series was checking whether the platform is RPi4 and limiting
the ZONE_DMA size to 1GB (otherwise 4GB with ZONE_DMA32 empty). We ended
up with a static 1GB for ZONE_DMA but we missed the fact that it may
break existing platforms.

So I don't think it would be too hard to revive the above series (most
of it was already merged).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
