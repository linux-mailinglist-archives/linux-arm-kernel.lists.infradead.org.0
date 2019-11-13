Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8000FB5E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 18:04:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZLGCzeHlfvpSDqRYydrCguBGhtOF13l+NxqY53/W70=; b=aQiYGWqh4KSsv/
	p29FjyH15H1pZDVEBjDy9uYa2SyaECrqsFl4zYRB1/svxwd6mlgtayv0+V5EZ0rIidwCPvWIPRsPp
	uOEXlTwHj542MY7zRyt4dGKPzL0h6k1TGJfUU8w7Vq0MbdOBriTKeXbNZkN70hFJznui/YpQaf8Da
	48af59fx3E7ACcORt3l3iEzfX32bJCn0Rt4X1+gZvizbwgyxbPSfhEDF0JBV9TbgV+i0H0kqu4Mp6
	NvWoGbnYFzvBZon8L5EApiyDm1em0IFdNglqJTHXW1rrnIyX2WffoV9Ts1Tnrj18IxoTCbXHR2s1M
	YVMZbgS+rDXqdZ7GMPNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUw4U-00038G-Pu; Wed, 13 Nov 2019 17:04:46 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUw4O-00037s-3W
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 17:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C2QNnRLON1yM7HplcQbHE6Soc3XK8SdkjG3qnRqou0s=; b=M/w2tVs3GhHvSL/BmJLeErQx8
 D40WW/t8ajXR/5N7kfi/V+5ft9/YXhH9ov5fsFhVcPyFv/5zYjalxbQDcWdKiPJaIqo4Yi4lAR+Fi
 aMZ+n+LdYEKNvIWC4ceznLR+t5YSZmc26nG60uvEIWOsUgB8ZtG+P5m/GZOdggcfaVljol1o4ucol
 Jd/igNztrjFvOFh4Pp/wbF9VF7knUXCi5QwXsdXMVVcmMVXLRigeXlIDryavyIccPDSgY0q1ZBI4y
 RYYZxiVCdG/paSpYRHina3DlK0YhC6hfAYw0kXuq79qhq6rZOOydImIpkUKWr6WFPBLbBqUZvkkWC
 u3x1woM8Q==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:55748)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iUw4B-0005e6-KM; Wed, 13 Nov 2019 17:04:27 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iUw49-0002bd-41; Wed, 13 Nov 2019 17:04:25 +0000
Date: Wed, 13 Nov 2019 17:04:25 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH/RFC] ARM: boot: Relax kernel image alignment for RZ/A
 with CS3 SDRAM
Message-ID: <20191113170425.GQ25745@shell.armlinux.org.uk>
References: <20191113102729.29303-1-geert+renesas@glider.be>
 <20191113103919.GM25745@shell.armlinux.org.uk>
 <CAMuHMdXWsUChMA+_6sdavo8nd-9icX6nsN7unSfMMViOQrUVMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXWsUChMA+_6sdavo8nd-9icX6nsN7unSfMMViOQrUVMQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_090440_147971_29BB423A 
X-CRM114-Status: GOOD (  22.28  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 02:32:19PM +0100, Geert Uytterhoeven wrote:
> Hi Russell,
> 
> On Wed, Nov 13, 2019 at 11:39 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> > On Wed, Nov 13, 2019 at 11:27:29AM +0100, Geert Uytterhoeven wrote:
> > > The RZA2MEVB sub board has 64 MiB of SDRAM at 0x0C000000 (CS3 space).
> > > Hence the mask for CONFIG_AUTO_ZRELADDR needs to be changed, otherwise
> > > the system will crash because it will try to decompress a zImage or
> > > uImage to a non-RAM garbage address.
> > >
> > > Based on a patch in the BSP by Chris Brandt <chris.brandt@renesas.com>.
> > >
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > ---
> > > No idea what to do with the rest of the comment, or if this breaks
> > > existing platforms.
> >
> > We occasionally have discussions about this - the last one was a big
> > one in Edinburgh, and the answer is we can't change this in mainline.
> > They've also come up on the mailing lists as well.
> >
> > I'm not going to rehash this old argument yet again - the comment
> > details the reason for it, and is there to prevent exactly this.
> 
> Sorry, I wasn't aware of that discussion.
> I had a chat about this at ELC-E with Arnd, and he was open to this change.
> 
> > If someone is silly enough to come up with a platform that violates
> > the documented 32-bit ARM booting protocol, then they can't expect
> > the kernel to bend to their platform's requirements at the expense of
> > already merged platforms.
> 
> Documentation/arm/booting.rst:
>   1. The kernel should be placed in the first 128MiB of RAM: check.
>   2. A safe location is just above the 128MiB boundary from start of RAM:
>      oops. Not all platforms have more than 128 MiB of RAM...
> 
> An alternative is to fall to the builtin 4 MiB of SRAM, or the 8 MiB of
> HyperRAM on RZA2MEVB, but doing that requires using XIP.
> Which brings us to your response in the other email:
> 
> > Are we going back to non-multi-platform kernels? ;)
> 
> Good question! ;-)
> 
>   1. CONFIG_AUTO_ZRELADDR=n
>   2. CONFIG_XIP_KERNEL=y

If you're using an XIP kernel, you are by definition not using the
decompressor.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
