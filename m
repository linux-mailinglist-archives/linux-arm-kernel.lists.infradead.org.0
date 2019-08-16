Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F93890596
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 18:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kr4AsGPsGoSjAmdFs02eEHvMCQwriIvTU7j6zE8okxk=; b=oEFiuwoJci4kUQ
	LNDO0Rc+bM6R6i5xiNXSoPn8TVgFY0bjzMIr3Y0suqcCTk+tzH0N3x+HqtYZ7bJMq8KLrz3LGiSb7
	ak5fc/HkD/olEIIS6zlkEz6XQ+YO3EzNow38Y9RGZmr/Zs9abbalFn/wWm35YNZnyN8yfMFcYgknP
	3qnH2s3bi7ihjsDkYtTXmHJPXBGwcRbLL4hIp2tZGYCngVv1k4/PXJA6Rw9Xcx6p2bfHgXGDQbb01
	UwGZ4GgbsGSONHoOucKcGFZgFqZdPwrNS82xranutpIfYH60cEg+KULulWA4Bnxoq8oZqxE4MFeIs
	PyUXo9n5zR3WUfT8vMaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyet4-0000BI-3C; Fri, 16 Aug 2019 16:15:34 +0000
Received: from emh02.mail.saunalahti.fi ([62.142.5.108])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyeso-0000As-8I
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 16:15:19 +0000
Received: from darkstar.musicnaut.iki.fi (85-76-65-201-nat.elisa-mobile.fi
 [85.76.65.201])
 by emh02.mail.saunalahti.fi (Postfix) with ESMTP id 15AB6200D9;
 Fri, 16 Aug 2019 19:15:14 +0300 (EEST)
Date: Fri, 16 Aug 2019 19:15:14 +0300
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 1/7] [RFC] ARM: remove Intel iop33x and iop13xx support
Message-ID: <20190816161514.GB30291@darkstar.musicnaut.iki.fi>
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
 <CAA9_cmdDbBm0ookyqGJMcyLVFHkYHuR3mEeawQKS2UqYJoWWaQ@mail.gmail.com>
 <20190812094456.GI10598@jirafa.cyrius.com>
 <CACRpkdao8LF8g5qi_h+9BT9cHwmB4OadabkdGfP0sEFeLbmiLw@mail.gmail.com>
 <20190816154249.GA30291@darkstar.musicnaut.iki.fi>
 <20190816155833.GL13294@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816155833.GL13294@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_091518_467158_3D0CBF93 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.142.5.108 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Vinod Koul <vkoul@kernel.org>, Peter Teichmann <lists@peter-teichmann.de>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, soc@kernel.org,
 linux-i2c <linux-i2c@vger.kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Martin Michlmayr <tbm@cyrius.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Aug 16, 2019 at 04:58:33PM +0100, Russell King - ARM Linux admin wrote:
> On Fri, Aug 16, 2019 at 06:42:49PM +0300, Aaro Koskinen wrote:
> > On Wed, Aug 14, 2019 at 10:36:01AM +0200, Linus Walleij wrote:
> > > On Mon, Aug 12, 2019 at 11:45 AM Martin Michlmayr <tbm@cyrius.com> wrote:
> > > > As Arnd points out, Debian used to have support for various iop32x
> > > > devices.  While Debian hasn't supported iop32x in a number of years,
> > > > these devices are still usable and in use (RMK being a prime example).
> > > 
> > > I suppose it could be a good idea to add support for iop32x to
> > > OpenWrt and/or OpenEmbedded, both of which support some
> > > pretty constrained systems.
> > 
> > This platform is not really too constrained... E.g. on N2100 you have
> > 512 MB RAM, SATA disks and gigabit ethernet. Not that different from
> > mvebu that Debian currently (?) supports. Maybe with multiplatform they
> > could support iop32x again.
> 
> Probably not.  The kernel has a dividing line between ARMv5 and ARMv6
> where it's not possible to multiplatform across that boundary, so
> you're already needing separate kernel images there.
> 
> Secondly, armhf distros won't be compatible with ARMv5, and to make
> them compatible will make performance on armhf suffer - you have to
> stop using barriers, exclusive load/store and a few other things.
> You have to rely on the kuser page exported by the kernel (which is
> now optional as it's deemed to be a security issue for ROP attacks)
> for some things that such a userspace requires - such as NPTL support.
> 
> Effectively, ARMv5 is an entirely separate userspace distro from armhf.

I thought they still had armel for ARMv5 and mvebu (kirkwood).

A.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
