Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE9817BCE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 13:36:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwEbiPvF9wD3vM+5pkl1FuayH9kvJwQVdiLGeDXbtgU=; b=bJTbwSekcpsevC
	iB4urQN946V1tSsEWkMbVMw3nxg4HyRor94/6jXtPStIxb/JbCA/3HibpjjHXC+xa3AJqJy0QITSm
	ZGFAqbOUCjbmrZjsPX4rpdP34yrqSd3Zum1+EUyo5uDQ9XJtkFr41/oWsQu2fbwULrzJGEGbRdnFk
	3ptfigQd0Doj7lPOHr65OlZ2u8/x1mrzwpvGrKrQ3uSCLziAXhD5KEBW32rIJu2h1WjMMVwLbY8xw
	J6WPzvKp9ALixyQHjLOtQ+EE/H8aEUJ8GMJJvv5QoG919+h7v4YN7uTIA58cFuviN2MBVZ2/4LZx1
	+i0FB8GgMtXZsoDfFxtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACDL-0003dc-VM; Fri, 06 Mar 2020 12:36:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACDB-0003cR-7c
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 12:36:18 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63DB52072A;
 Fri,  6 Mar 2020 12:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583498176;
 bh=rzOWClmTA9ckPlsQ5/4LHXWBmd4wP2fGMrRZpfa0lko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CYR820gNYO/xKXhALVF1nw6ps0ddLTtE4nNt6uoXwN3Fhu6z388kjc6WWSWZYwRnW
 uOvMhdXYbE6u0DHP5X/7v5OFHLJrtbNjpTa/vceuGGfC6HEb5t3QKHfzgghVGaF8iK
 /aO9yZFhaeK6u2hqrb/bc+Wo8/twIt+NXnxjVzMg=
Date: Fri, 6 Mar 2020 13:32:27 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] Revert "tty: serial: samsung_tty: build it for any
 platform"
Message-ID: <20200306123227.GA3689963@kroah.com>
References: <20200306102301.16870-1-geert+renesas@glider.be>
 <20200306103652.GA3634389@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306103652.GA3634389@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_043617_321940_CE409F2E 
X-CRM114-Status: GOOD (  23.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 11:36:52AM +0100, Greg Kroah-Hartman wrote:
> On Fri, Mar 06, 2020 at 11:23:01AM +0100, Geert Uytterhoeven wrote:
> > This reverts commit 175b558d0efb8b4f33aa7bd2c1b5389b912d3019.
> > 
> > When the user configures a kernel without support for Samsung SoCs, it
> > makes no sense to ask the user about enabling "Samsung SoC serial
> > support", as Samsung serial ports can only be found on Samsung SoCs.
> > 
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> >  drivers/tty/serial/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
> > index 880b962015302dca..932ad51099deae7d 100644
> > --- a/drivers/tty/serial/Kconfig
> > +++ b/drivers/tty/serial/Kconfig
> > @@ -237,6 +237,7 @@ config SERIAL_CLPS711X_CONSOLE
> >  
> >  config SERIAL_SAMSUNG
> >  	tristate "Samsung SoC serial support"
> > +	depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
> >  	select SERIAL_CORE
> >  	help
> >  	  Support for the on-chip UARTs on the Samsung S3C24XX series CPUs,
> 
> {sigh}
> 
> No, I don't want this.  My "goal" is to be able to get rid of all of the
> crazy "PLAT_*" symbols as they make it impossible to build a single
> kernel that supports multiple ARM64 systems.
> 
> As an example of just such a system, see the 5.4 tree here:
> 	https://android.googlesource.com/kernel/common/+/refs/heads/android-5.4
> it is now building and booting on multiple SoCs.
> 
> But yes, it still does have to enable some PLAT_* config options, but
> the goal is to not have to do that eventually.
> 
> There is no reason that we need vendor-specific config options just to
> lump random drivers into, like serial drivers.  If the hardware is not
> present, the driver will just not bind to the hardware, and all is fine.
> 
> Just like x86, we don't have this issue there, and ARM64 should also not
> have this.
> 
> Sorry for delay in writing this back to the original thread where you
> objected to the original patch, it's still in my review queue along with
> a ton of other serial patches.

Here's another good example of this happening, it's not just me working
toward this goal:
	https://lore.kernel.org/lkml/20200305103228.9686-2-zhang.lyra@gmail.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
