Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB9A1D9D47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:55:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqC3kXjRd2r/P5x/oLFgf3f4fxDy3mzmA/XIoM3dPqQ=; b=dGgsCdTfyD0T/i
	2iNWpdC9ZbS+qPSjsIk0AnGdk9NZijNkj7++eS8lUT0pL9/zCwkel+godcMqjne1ZdztQ5qLL5kFz
	C4CYjPJJb+V5WO9OB8k7t81MxBYNswzFczdq8wiw7PdzPa/R2C93crVFQqBHjM+A5j87sk/yP8KYn
	9WpVXrsijGcAm8ToHEyFjuGfzY9iKO9zuxd1PVI/fa3QYPTtvUWeL5wXxUQNKb3H6VtQ+IWjc4yLl
	K80wpXIOHmARQ2ZpbtJSOYFfhQuDnZO8W3fuoGqzCWrFJvuC27Kpw26NtniOEKMFWA5zlQfIj+zF9
	9C8yI1bdCS1I1aIgTtOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb5WZ-0007g2-8L; Tue, 19 May 2020 16:55:27 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb5WB-0006U9-ER
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:55:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2J7edtIKU9Kn/UNXC5anf0rrFGx9UjP8C0V9Udnrr8A=; b=HJmvsN4IScMzVOcw3aVvAMnB0
 IBu629nlhZa44BnsNodzQoi1K+Ur4yZ4ww9q0lFfY6I7fU68iduc4SjqCGBNlg9jVqBwmoZfHEzL3
 GKXMyHJBusT8zbaS8cQsBdSRbdi6golaW9wov0f7Vylrqce2wttp7AU17EMGybLx6Vo07BGtmi9H0
 uD7hulluInw5e4v+WejFfZ/p8htbco0mVwkUGHa5qvsjJJRomNN6U1m3xeFQt5wG3goaicDCmoV4u
 yl5UXdgSaL1pGfL40CfZTSlxEMVqVe9eJTUibXlyeGaFNK1kYViDWSEdHpcQ/JobB2lpWwvciURKj
 g2jln2F0w==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:34260)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jb5Vw-0005vD-Hx; Tue, 19 May 2020 17:54:48 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jb5Vt-0005tH-KB; Tue, 19 May 2020 17:54:45 +0100
Date: Tue, 19 May 2020 17:54:45 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200519165445.GI1551@shell.armlinux.org.uk>
References: <20200506235009.25023-3-f.fainelli@gmail.com>
 <20200507072711.GB683243@linux.ibm.com>
 <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
 <a7c86780-d65c-ab7b-ec3c-4029257cee7a@gmail.com>
 <20200518194533.GD1059226@linux.ibm.com>
 <CAK8P3a1hd2uKsncgd=eyY1VHBbB8fPBDCWsyHpHT7q9eJp-URw@mail.gmail.com>
 <20200519144306.GE1059226@linux.ibm.com>
 <20200519150452.GH1551@shell.armlinux.org.uk>
 <20200519152714.GF1059226@linux.ibm.com>
 <CAK8P3a2iZNm310x8g2Zv0TjGJ=Px7hu14i3Ka7GQBZwyKPUesA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2iZNm310x8g2Zv0TjGJ=Px7hu14i3Ka7GQBZwyKPUesA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_095503_497501_071A43CB 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Doug Berger <opendmb@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Cernekee <cernekee@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 05:32:52PM +0200, Arnd Bergmann wrote:
> On Tue, May 19, 2020 at 5:27 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > On Tue, May 19, 2020 at 04:04:52PM +0100, Russell King - ARM Linux admin wrote:
> > > There are cases where the reason to use sparsemem is not an optional
> > > one but is out of necessity - they require the page array to be split
> > > up in order to boot successfully.
> > >
> > > With that in mind, flatmem becomes an "optimisation" over sparsemem.
> >
> > At the moment, there are three platforms that enable SPARSEMEM: ARCH_EP93XX,
> > ARCH_RPC and ARCH_SA1100. All the rest have FLATMEM implcitly selected.
> >
> > I do not intend to change that, I am only going add an ability to select
> > the memory model for ARCH_MULTIPLATFORM.
> >
> > I'll respin the series on the list before adding the patches to the
> > patch system.
> 
> I think we'll make EP93xx part of multiplatform at some point, IIRC
> only the missing clock driver is stopping us at the moment, and I already
> discussed with Linus Walleij how that can be done.
> 
> My guess is that ep93xx is one platform on which sparsemem is
> just an optimization to reduce the initial memory consumption, but
> we should verify that when we get there.

When you have a platform where the memory is segmented into separate
blocks widely spaced, sparsemem is not an optimisation.  For example,
If you have four blocks spaced across 1GB, that requires about
256Ki struct page's.  Assuming 32 byte struct page, that requires 8MiB
of contiguous memory.

If we also consider the other constraint - that the kernel has to fit
in the first bank of memory, then, considering the size of the kernel
(the first two are non-multiplatform kernels):

text     data   bss      dec      hex      filename
4045505  903700   92984  5042189  4cf00d   n2100/boot/vmlinux-5.6.12+
4045361  957276 1159052  6161689  5e0519   assabet/boot/vmlinux-5.2.0+
6933363 1451420  203984  8588767  830ddf   virt/boot/vmlinux-5.6.0+
9980260 3568070 7403296 20951626 13fb24a   multi/boot/vmlinux-5.3.0+

So, realistically, we're looking at imposing a requirement that the
first bank of memory is no smaller than 16MB on these machines if a
"default" flatmem multiplatform kernel is going to be able to boot,
and if all banks are populated, that there is another bank that has
at least 8MB to hold the memmap array.

BTW, the "optimisation" argument for sparsemem doesn't actually
hold.  For flatmem, we free the unused parts of the memmap array,
freeing those pages for other uses.  Sparsemem on ARM is about
allowing these platforms to boot with their memory spread across
the physical address space savannah.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
