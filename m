Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C714090523
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 17:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yvs2TDtC8+9peI1D2LpZk14b0mw3pqu9IqixXj/4oF4=; b=ATKBTb1YAplrjX
	eVk7QyShku5/8FVGHkEyRBFgWzaY6yAkSQDHo1IWyo1jnE/6Uw90SRhhOxuQKDA10CUresewk09v0
	dLe4JZaSenGwPeYeF4+2GDiuVXp+o0kgKInQOSYKQejUugNJrWIHZlDxUWJz3eowTcGpK08A7qGfo
	CdiUT6Wu0mGgBXGcB9CipzFMyyr9wXFWLaoW5HaY+otTqA1YE8kcAzZryn+1zMJwqX4rGCUrOP7VQ
	7CkiSUqCOc/khZ4nArYxvpMa6FEFkoQxVmPDLWE6lPh7T+b3i9JFi4IlWh3X/NIuSBUP6QPNCHUl5
	cmunaW5B2PuBUNzKXRRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyedq-0000LP-FS; Fri, 16 Aug 2019 15:59:50 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyedH-0008L9-Tl
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 15:59:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=elvBvWVjA5zEKSsmKbJEnexDrHQ4zbh3H23MLrNFngo=; b=tvPwPtQ4nFDYaEWEEzQfKWjwT
 qpues7whqp46I5Vlpf5mw8wLLXsjKZKhYL3qENDObHr6e/tfvEqxnobSqk7I+o8v6P6iqggBm6bK8
 +y3guiVg8OfWpHZ8bh58NmAeKwmeX0HupBG5xVopY34VS5LqkUavmbNU6noiQQopZ1a4mq9fGdq6p
 c5KbXcAx4K1KtIkxoRHLI/wqpZf4RM43n0pGEclxKe0aaadyBCwVAPigha/G0PUIBxsj4OfqNCkkw
 FxLd0qpy6KdFuAW2HwhGMe+61mqPkgsxj3ISsxS3g1BEReMjus1jWj7xe4EIHYxHqFNmDHQ2jXorL
 8vxupwB3g==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57356)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hyecj-00034q-B3; Fri, 16 Aug 2019 16:58:41 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hyecb-00023W-PW; Fri, 16 Aug 2019 16:58:33 +0100
Date: Fri, 16 Aug 2019 16:58:33 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH 1/7] [RFC] ARM: remove Intel iop33x and iop13xx support
Message-ID: <20190816155833.GL13294@shell.armlinux.org.uk>
References: <20190809162956.488941-1-arnd@arndb.de>
 <20190809163334.489360-1-arnd@arndb.de>
 <CAA9_cmdDbBm0ookyqGJMcyLVFHkYHuR3mEeawQKS2UqYJoWWaQ@mail.gmail.com>
 <20190812094456.GI10598@jirafa.cyrius.com>
 <CACRpkdao8LF8g5qi_h+9BT9cHwmB4OadabkdGfP0sEFeLbmiLw@mail.gmail.com>
 <20190816154249.GA30291@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816154249.GA30291@darkstar.musicnaut.iki.fi>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_085916_004151_395A06F8 
X-CRM114-Status: GOOD (  15.28  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Aug 16, 2019 at 06:42:49PM +0300, Aaro Koskinen wrote:
> Hi,
> 
> On Wed, Aug 14, 2019 at 10:36:01AM +0200, Linus Walleij wrote:
> > On Mon, Aug 12, 2019 at 11:45 AM Martin Michlmayr <tbm@cyrius.com> wrote:
> > > As Arnd points out, Debian used to have support for various iop32x
> > > devices.  While Debian hasn't supported iop32x in a number of years,
> > > these devices are still usable and in use (RMK being a prime example).
> > 
> > I suppose it could be a good idea to add support for iop32x to
> > OpenWrt and/or OpenEmbedded, both of which support some
> > pretty constrained systems.
> 
> This platform is not really too constrained... E.g. on N2100 you have
> 512 MB RAM, SATA disks and gigabit ethernet. Not that different from
> mvebu that Debian currently (?) supports. Maybe with multiplatform they
> could support iop32x again.

Probably not.  The kernel has a dividing line between ARMv5 and ARMv6
where it's not possible to multiplatform across that boundary, so
you're already needing separate kernel images there.

Secondly, armhf distros won't be compatible with ARMv5, and to make
them compatible will make performance on armhf suffer - you have to
stop using barriers, exclusive load/store and a few other things.
You have to rely on the kuser page exported by the kernel (which is
now optional as it's deemed to be a security issue for ROP attacks)
for some things that such a userspace requires - such as NPTL support.

Effectively, ARMv5 is an entirely separate userspace distro from armhf.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
