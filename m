Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F67E2FA9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 13:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EgVvhIAg81Mo01xbnNz3H7EP804gQhMeQMLoMI1GWQM=; b=WKr8Aef5deBdB1
	VA8v4b7gnco7YGir0n+Cc4+zVzYYMWzSqsrDejmw3H6QI+ODIKJC2qVoRyEjmXXbvPB+eSmQmkWuE
	E24EgyC9MC9IdeV7GoR4em+hNS0L3065KVwAc1OnSCxlPnXLtskPwjUm4F18wpWvBO1lIv9B+N/nC
	kDQKIb/y+vHgL/DmOxEOhI+2E1pMOBCP0bmgP5qca9U2GAftEi+1dfErFe70quUzUAjJ6wIzvmC5+
	wXHXUOLwEsGm6YtlRi9qsBYU/qrpr36lZlPB3xHoCyFyk5bp2PXut9GTz2Ui8LT9PNhl7sLfHtvFG
	kyyGqTLpRfG+nxbJgyHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWIos-0004no-DR; Thu, 30 May 2019 11:02:02 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWIol-0004nN-Fx
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 11:01:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D174374;
 Thu, 30 May 2019 04:01:53 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2538E3F5AF;
 Thu, 30 May 2019 04:01:52 -0700 (PDT)
Date: Thu, 30 May 2019 12:01:45 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] arm: dts: vexpress-v2p-ca15_a7: disable NOR flash node
 by default
Message-ID: <20190530110145.GA20028@e107155-lin>
References: <20190530091139.11643-1-sudeep.holla@arm.com>
 <CACRpkdZZkfRPTH1h1EOC=YWt7tdqbOp3hpfFou8thsUf8_EqSA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdZZkfRPTH1h1EOC=YWt7tdqbOp3hpfFou8thsUf8_EqSA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_040155_538202_DEAB7A47 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 12:50:12PM +0200, Linus Walleij wrote:
> On Thu, May 30, 2019 at 11:11 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> 
> > Accessing the NOR flash memory from the kernel will disrupt CPU sleep/
> > idles states and CPU hotplugging. We need to disable this DT node by
> > default. Setups that want to access the flash can modify this entry to
> > enable the flash again but also ensuring to disable CPU idle states and
> > CPU hotplug.
> >
> > The platform firmware assumes the flash is always in read mode while
> > Linux kernel driver leaves NOR flash in "read id" mode after
> > initialization. If it gets used actively, it can be in some other state.
> >
> > So far we had not seen this issue as the NOR flash drivers in kernel
> > were not enabled by default. However it was enable in multi_v7 config by
> > Commit 5f068190cc10 ("ARM: multi_v7_defconfig: Enable support for CFI NOR FLASH")
> >
> > So, let's mark the NOR flash disabled so that the platform can boot
> > again. This based on:
> > Commit 980bbff018f6 ("ARM64: juno: disable NOR flash node by default")
> >
> > Cc: Liviu Dudau <liviu.dudau@arm.com>
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
>

Thanks.

> It's a bit sad that this cannot be easily fixed (I don't know if it can even
> be fixed with firmware updates?), it's kind of useful to be able to
> update the flash from within Linux, as that mimics what pretty much
> every IoT device (such as routers) is doing and would be nince for
> an OpenWrt port.
>

IMO, it issue with partitioning of the system. Basically these traditional
NOR flash don't support partitions at hardware level so that one accessed
by firmware/secure side is protected from another accessed from non-secure.

I like the eMMC boot partitions in that ways as these are hardware
partitions and the device state is separate for these.

Also, ideally firmware/secure side should just restrict themselves to
Secure ROM, but as a record we consistently ensure firmware on SROM is
busted and use non-secure ROM/NOR Flash as bypass :) which then makes
it tricky to deal with such scenarios in Linux. Hope we fill have some
system with everything working *one day* :D

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
