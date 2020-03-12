Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A38418303C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 13:30:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCt5Kvi/X0igxaslYDNVPMjUl5YUj82j1k0lL3bPYPk=; b=TS9j3AVkjG8j3E
	HSvKxRZa2Z1gxX2HVWetH8SBkb1Sr015bZ1fpmZc0r3vokD/xKlbaTdqVjstpNuHU4358PFtal84X
	cGM81+fb8l4rUnZ8/vxzWHNpoMnY62ziSk6I15FKNCL5rzrdm5xGbij4CdcRGlnylGiGJu3fmZR0b
	P5YfO0Od6z1arVOov2VdFuLwerYybx7amqKuripT9eQttmd4EB6Izqoc6Xu7cCoSO/VjjheaWqblR
	/70jyoCTHgD4/g+/FyrO4u5m+BYsoAprrRWwQUmOr4SqZTLWbt4x2IkN7b/i8/7Zw5j0aKZ74MmLS
	0tM6OnwCigN02EJZZrVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCMyJ-0006bU-RZ; Thu, 12 Mar 2020 12:29:55 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCMxv-0006N7-PZ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 12:29:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nxFl0iKEBDtlZbQdrVFB6a58QmjwPzTAZEdnbDgjFUU=; b=YyLjdmhWW+7vfxBie12EscsnL
 8JjGJugkNHBNCEil9JjmQUGyzkbz6N6pIhtLeCh5nMOmMOK0llSPOWAj8s4YdpY0FdVxRecBrIsT9
 elxcj7BpBWGmT98fzlXuzG9kVUQuSQvD03kHzzJv6bPLkUgAM9c5EI2tz7lHSKIqDEycW/mgvw0xh
 NV52IA00FJ1TopcdxV+kZ+zhJ+qyl98s+V76OxKNVEkkRqmqyyj7THOn/UGBFecbadDYdRPddEo+C
 MH1NejCVyb/udf0OG0HZGx+fRZsWoPx606X4/LDGjkwtHSSFwaH8Pn0HV8lmUXUmpWjUoSkUR0vYd
 gAj1u5teA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59534)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jCMxU-00019n-GQ; Thu, 12 Mar 2020 12:29:04 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jCMxN-0006K0-SE; Thu, 12 Mar 2020 12:28:57 +0000
Date: Thu, 12 Mar 2020 12:28:57 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH] ARM: boot: Fix ATAGs with appended DTB
Message-ID: <20200312122857.GY25745@shell.armlinux.org.uk>
References: <CGME20200225144815eucas1p1229ceb0d017b46cbbe2409639a7c1f83@eucas1p1.samsung.com>
 <20200225144749.19815-1-geert+renesas@glider.be>
 <e249c123-8d00-4aa3-34b8-f82d52428966@samsung.com>
 <20200226174905.GE25745@shell.armlinux.org.uk>
 <CAMuHMdW1ojYyWXZpzgiy8PrZnR2PQ9n3SEDrQ7hFFUg0j-jegg@mail.gmail.com>
 <20200226175723.GF25745@shell.armlinux.org.uk>
 <CAMuHMdV9VyS3kBnhFT-5ry_O-aRafq-8Yor0xxxnjGqNQiSgZw@mail.gmail.com>
 <f30208dc-e74a-cae7-95e6-d99220d9735c@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f30208dc-e74a-cae7-95e6-d99220d9735c@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_052931_850201_8CA086B2 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 01:23:09PM +0100, Marek Szyprowski wrote:
> Hi,
> 
> On 26.02.2020 21:48, Geert Uytterhoeven wrote:
> > Hi Russell,
> >
> > On Wed, Feb 26, 2020 at 6:57 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> >> On Wed, Feb 26, 2020 at 06:56:06PM +0100, Geert Uytterhoeven wrote:
> >>> On Wed, Feb 26, 2020 at 6:49 PM Russell King - ARM Linux admin
> >>> <linux@armlinux.org.uk> wrote:
> >>>> On Wed, Feb 26, 2020 at 07:35:14AM +0100, Marek Szyprowski wrote:
> >>>>> On 25.02.2020 15:47, Geert Uytterhoeven wrote:
> >>>>>> At early boot, register r8 may contain an ATAGs or DTB pointer.
> >>>>>> When an appended DTB is found, its address is stored in r8, for
> >>>>>> extraction of the RAM base address later.
> >>>>>>
> >>>>>> However, if r8 contained an ATAGs pointer before, that pointer will be
> >>>>>> lost, and the provided ATAGs is no longer folded into the provided DTB.
> >>>>>>
> >>>>>> Fix this by leaving r8 untouched.
> >>>>>>
> >>>>>> Fixes: 137e522593918be2 ("ARM: 8960/1: boot: Obtain start of physical memory from DTB")
> >>>>>> Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
> >>>>>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >>>> The original commit hasn't been submitted, so it can be fixed before it
> >>>> hits mainline if you want.  Let me know what you want to do.  Thanks.
> >>> Fixing the original is fine for me, of course.
> >>> Thanks!
> >> Please submit a replacement for 8960/1, thanks.
> > Done.
> 
> Gentle ping. This fix is still not present in linux-next for over 2 weeks...

The 32-bit ARM tree is now a low priority ad-hoc effort; as a result,
I now only merge patches around once or twice each cycle. I've merged
the replacement earlier this morning.

So, it will take longer than two weeks for patches to make it into my
tree, as has been the case ever since I lost funding for maintaining
32-bit ARM support, and, therefore, I now have other priorities.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
