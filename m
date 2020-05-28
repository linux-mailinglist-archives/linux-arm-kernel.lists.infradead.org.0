Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA121E66F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 17:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4N47R+wUko4nywRhb2CDYOZbs2o4rgXoBDP50Fvl804=; b=oA8Rd/81hA2dwx
	lpftJdbjrBaMeo+ecIqVC5E8eVWCbsGvUuUHjVvedQtkyrUyevTM76YzYJXGQwlvgZy9WhQ+tYTKR
	LcFF8Zj+qzw5XFDPupmMVZJ6q8MR2/ePPz2OwZbFP9b41qS15EnZ5k8QnxoNKV6HWtfvaiedmjUnX
	IztVqQZvV+zx3hDz5LuDVLgM2rcpSUmqtfURvz8qkmqy3KsUUrmWi+MVjIFx8K6H7loCH8YYqZ2+d
	Dgi+Y+1/g5GMc+GY5295ZMyf/FHxQ40RYxcDGdlbN5R0qTB22yS+F4forqtZVIR5PRcaG3CPXglqc
	f6bNWeTeFoan6A7IxDkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeKv8-00043c-5T; Thu, 28 May 2020 15:58:14 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeKux-00043G-Vt
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 15:58:05 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 2442B80BF;
 Thu, 28 May 2020 15:58:53 +0000 (UTC)
Date: Thu, 28 May 2020 08:57:59 -0700
From: Tony Lindgren <tony@atomide.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: omap2: drop broken broadcast timer hack
Message-ID: <20200528155759.GP37466@atomide.com>
References: <20200528091923.2951100-1-arnd@arndb.de>
 <20200528134621.GN37466@atomide.com>
 <20200528135057.GO37466@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528135057.GO37466@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_085804_060568_9C22A0D4 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, arm@kernel.org, Olof Johansson <olof@lixom.net>,
 linux-omap@vger.kernel.org, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tony Lindgren <tony@atomide.com> [200528 13:51]:
> * Tony Lindgren <tony@atomide.com> [200528 13:47]:
> > * Arnd Bergmann <arnd@arndb.de> [200528 09:20]:
> > > The OMAP4 timer code had a special hack for using the broadcast timer
> > > without SMP. Since the dmtimer is now gone, this also needs to be dropped
> > > to avoid a link failure for non-SMP AM43xx configurations:
> > > 
> > > kernel/time/tick-broadcast.o: in function `tick_device_uses_broadcast':
> > > tick-broadcast.c:(.text+0x130): undefined reference to `tick_broadcast'
> > 
> > Hmm this sounds like a regression though. Isn't this needed for using
> > the ARM local timers on non-SMP SoC, so a separate timer from dmtimer?
> > 
> > I've probably removed something accidentally to cause this.
> 
> Sounds like arch/arm/mach-omap2/Makefile change needs to be removed
> to always still build in timer.o. And probably timer.c needs back
> the ifdef for CONFIG_SOC_HAS_REALTIME_COUNTER.
> 
> I'll take a look today.

I've sent a patch along those lines as:

[PATCH] ARM: OMAP2+: Fix regression for using local timer on non-SMP SoCs

A link for the patch at [0] below.

Regards,

Tony

[0] https://lore.kernel.org/linux-omap/20200528155453.8585-1-tony@atomide.com/T/#u

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
