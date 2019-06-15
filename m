Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E5146F7E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 12:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwU4dcFvsGDi6BrIoXxlXCVvVFUp3AlI3y7sJDZrmo4=; b=sN7FHpYLIZOKNt
	DXuvn3iYh5LrznJ9u9IMvRJl3BNisKkLFV1PdBZdHL5C5Vhks/SRSPuZK4RsZxjKVIxcAr0iEe8vK
	18v0nDKbzI11rXMEo1do3WkieaZpJ/wA/2tBC9tqEjvfyqdwrbLVjXJS5hKmb87rK94kKVl+NEwSL
	SrZMyqHyDi0HPFK7K61gy99PXps+Z8V0GWhxFcW38lVmMCZf5hMq3kbJHDHPO2/OoM/rML3DLhit5
	fHXdz32rEUD6GD2l/Zq/Y8v7xf/NkBh/kcnyD6hkYEEeGjkRoQ/o04MqpHwyBZVzCjCNWrUuRiJLM
	8+qGz5pGEwbgiCvjuEDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc5gs-0006lU-I2; Sat, 15 Jun 2019 10:13:42 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc5gc-0006kW-Tg
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 10:13:28 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0DBE5E0005;
 Sat, 15 Jun 2019 10:13:15 +0000 (UTC)
Message-ID: <deb847beb643d43e6617f52eae7b15ee368d7ff8.camel@bootlin.com>
Subject: Re: [PATCH] security: do not enable CONFIG_GCC_PLUGINS by default
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>, Russell King - ARM
 Linux admin <linux@armlinux.org.uk>
Date: Sat, 15 Jun 2019 12:13:15 +0200
In-Reply-To: <20190614201434.3fa4bb6d@primarylaptop.localdomain>
References: <20190614145755.10926-1-GNUtoo@cyberdimension.org>
 <CAG48ez30+VOj78rCiWMKtm0tHdVR67CcrHVCV-FFCfK-nRQTOw@mail.gmail.com>
 <20190614162811.o33yeq65ythjumrh@shell.armlinux.org.uk>
 <20190614201434.3fa4bb6d@primarylaptop.localdomain>
Organization: Bootlin
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_031327_109721_6AA87FDC 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Emese Revfy <re.emese@gmail.com>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org, Jann Horn <jannh@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, 2019-06-14 at 20:14 +0200, Denis 'GNUtoo' Carikli wrote:
> On Fri, 14 Jun 2019 17:28:11 +0100
> Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:
> > I'm wondering whether this is sloppy wording or whether the author is
> > really implying that they call the kernel decompressor with the MMU
> > enabled, against the express instructions in
> > Documentation/arm/Booting.
> According to [1]
> > If they are going against the express instructions, all bets are off.
> 
> More background on the decompressor patch:
> - The "ANDROID: arm: decompressor: Flush tlb before swiching domain 0 to
>   client mode" patch is needed anyway since 3.4 in any case, and
>   according to the thread about it [1], the MMU is on at boot.
> - There is a downstream u-boot port for the Galaxy SIII and other very
>   similar devices, which doesn't setup the MMU at boot, but I'm not
>   confident enough to test in on the devices I have. To test with
>   u-boot I'd need to find a new device.
> - If I don't manage to find a new device to test on, since there is
>   already some setup code like arch/arm/boot/compressed/head-sa1100.S
>   that deal with MMU that are enabled with the bootloader, are patches
>   to add a new file like that still accepted? The big downside is that
>   using something like that is probably incompatible with
>   ARCH_MULTIPLATFORM.

Maybe we could also consider having a shim that is executed before the
kernel in order to sanitize things and allow booting a mainline kernel,
which would be less invasive than a full U-Boot port.

Other than that, we can probably manage keeping a tree around (at the
Replicant project) with mainline and this patch (enabled through a
dedicated config option). As long as it's not horrible to rebase, it
can work well enough for us. 

I'm also not sure about the state of Android support in mainline today,
but there's a chance we'll need to pick a few patches on top of
mainline anyway.

What do you think?

Cheers,

Paul

-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
