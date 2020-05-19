Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 406DE1D9AA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fh3BPXj7wCwX/ctujQ+5nck6UyCC4ksLRtLxHXC0zpQ=; b=eyUDIEUBaHU+pv
	T1/WoX2VsgM2XXMtnxxsItMHnNu8nz6UUmeu+IK2TJF55G6tkflwfr2C64HGPna9U5kWfUzR9H3pq
	KX3AhkgpZJCoJymjmA9LuMU87fkxZy+cjhc2iCBZ+Allwd0uImqUYa+3/Il8D1tpsgqnJSMKPv/SH
	0ZsaKunhIqK0TxyU26+c+44g9PydOl4Pgcx9Ri9Pjip9o6lVZSbGwj2nwgv40Pb9Pde/W3LKfh3wr
	VNfJKmP1rEFapwULUQBovXI8HleFYTiChzRru60rZPPx7NlbF2Q8eXkgoxHA8Y3hcbMPHwVkdZHSc
	rKUou6/lTXKANA/fVrJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb3o7-0003TN-LI; Tue, 19 May 2020 15:05:27 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb3nj-0002CB-I1
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 15:05:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rhP9/ptd6qBrhvKYdgFsIA3jCwQ8tgEaDqqKpecbSBw=; b=MWFquP7Lhg/d3lcQGdg+0NA4g
 3mlNGKQu59Ft3RkcD3itPiRrCu0eJHpKcho12JATJ6TlSQ5QDfLx9PFPgaik/7zU0FPFReEdiPNHT
 NfHi8fdyifekepJMkgKz2WaFPPlkU1ga90OUWgTWtFG6nBD1QyP/MnW3+/ZLIpKUpbtR79JgZtWyv
 lNVU7W4rWaPhbLmDhezhODf6NklM6iC2cDOfbi/ssFjplIkXg554m51ljDoADEvv2mtUcwYdMLlaY
 fWRrxo2k5OlgHO4LQQ/wB5GCJUiYYAayjkH29chTBdK321bJ5s0RWLLlvksdd+K/DxXCCjQcg0X3B
 UeZ49r1zg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:60018)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jb3na-0005gm-GF; Tue, 19 May 2020 16:04:54 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jb3nY-0005p2-HM; Tue, 19 May 2020 16:04:52 +0100
Date: Tue, 19 May 2020 16:04:52 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 2/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200519150452.GH1551@shell.armlinux.org.uk>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-3-f.fainelli@gmail.com>
 <20200507072711.GB683243@linux.ibm.com>
 <bc44ed27-7dd7-67b6-93cf-f6f575b59441@gmail.com>
 <a7c86780-d65c-ab7b-ec3c-4029257cee7a@gmail.com>
 <20200518194533.GD1059226@linux.ibm.com>
 <CAK8P3a1hd2uKsncgd=eyY1VHBbB8fPBDCWsyHpHT7q9eJp-URw@mail.gmail.com>
 <20200519144306.GE1059226@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519144306.GE1059226@linux.ibm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_080504_088562_1C6854DD 
X-CRM114-Status: GOOD (  29.94  )
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Stephen Boyd <sboyd@kernel.org>, Kevin Cernekee <cernekee@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 05:43:06PM +0300, Mike Rapoport wrote:
> On Tue, May 19, 2020 at 09:59:48AM +0200, Arnd Bergmann wrote:
> > On Mon, May 18, 2020 at 9:45 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> > > On Mon, May 18, 2020 at 08:58:36AM -0700, Florian Fainelli wrote:
> > > > On 5/7/2020 1:11 PM, Florian Fainelli wrote:
> > > > > On 5/7/2020 12:27 AM, Mike Rapoport wrote:
> > > > >> On Wed, May 06, 2020 at 04:50:09PM -0700, Florian Fainelli wrote:
> > > > >>> From: Gregory Fong <gregory.0xf0@gmail.com>
> > > > >>>
> > > > >>> ARMv7 chips with LPAE can often benefit from SPARSEMEM, as portions of
> > > > >>> system memory can be located deep in the 36-bit address space.  Allow
> > > > >>> FLATMEM or SPARSEMEM to be selectable at compile time; FLATMEM remains
> > > > >>> the default.
> > > > >>>
> > > > >>> This is based on Kevin's "[PATCH 3/3] ARM: Allow either FLATMEM or
> > > > >>> SPARSEMEM on the multi-v7 build" from [1] and shamelessly rips off his
> > > > >>> commit message text above.  As Arnd pointed out at [2] there doesn't
> > > > >>> seem to be any reason to tie this specifically to ARMv7, so this has
> > > > >>> been changed to apply to all multiplatform kernels.
> > > > >>>
> > > > >>> [1] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-September/286837.html
> > > > >>> [2] http://lists.infradead.org/pipermail/linux-arm-kernel/2014-October/298950.html
> > > > >>>
> > > > >>> Cc: Kevin Cernekee <cernekee@gmail.com>
> > > > >>> Tested-by: Stephen Boyd <sboyd@codeaurora.org>
> > > > >>> Signed-off-by: Gregory Fong <gregory.0xf0@gmail.com>
> > > > >>> Signed-off-by: Doug Berger <opendmb@gmail.com>
> > > > >>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> > > > >>> ---
> > > > >>>  arch/arm/Kconfig | 5 +++++
> > > > >>>  1 file changed, 5 insertions(+)
> > > > >>>
> > > > >>> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > > > >>> index 5986277296c3..7bb5264a9c3a 100644
> > > > >>> --- a/arch/arm/Kconfig
> > > > >>> +++ b/arch/arm/Kconfig
> > > > >>> @@ -312,6 +312,8 @@ choice
> > > > >>>  config ARCH_MULTIPLATFORM
> > > > >>>   bool "Allow multiple platforms to be selected"
> > > > >>>   depends on MMU
> > > > >>> + select ARCH_FLATMEM_ENABLE
> > > > >>> + select ARCH_SPARSEMEM_ENABLE
> > > > >>
> > > > >> The logic in mm/Kconfig is quite convoluted, so selecting
> > > > >> ARCH_SPARSEMEM_ENABLE will automatically make SPARSEMEM the only option.
> > > > >>
> > > > >> On top of this you would need to enable ARCH_SELECT_MEMORY_MODEL, e.g.
> > > > >> something like:
> > > > >
> > > > > Yes indeed, thanks that does allow me to select between flatmem and
> > > > > sparsemem from menuconfig correctly now.
> > > >
> > > > Mike, do you want to make a formal submission to Russell's patch
> > > > tracker? If so, feel free to add:
> > >
> > > I actually hoped to hear from people what do they think about switching
> > > over to SPARSEMEM for the multiplatform builds. I think at least v7 CPUs
> > > it would make sense.
> > 
> > It seems that at least s5p/exynos and clps711x (armv4) used to default to
> > sparsemem, and that got lost in the multiplatform conversion.
> > 
> > I also see discontiguous memory ranges in multiple broadcom chips,
> > on TI dm8168, ecx-2000 and imx.
> > 
> > > Russel, Arnd, can you comment please?
> > 
> > I see no problem with giving users the choice for all multiplatform
> > builds. No idea on what the default should be really, i.e. whether
> > only v7 configurations should make it the default, or rather none of
> > them or all of them.
> 
> Me neither :)
> 
> I'd say let's move forward with letting user select the memory model for
> all multiplaform builds and keep flatmem the default.
> 
> Enabling sparsemem (with SPARSEMEM_STATIC) for defconfig build increases
> the kernel nearly by 8k and most probably will make things slower.

I think when selecting the default, you need to consider whether
platforms can boot with that default configuration or not.

There are cases where the reason to use sparsemem is not an optional
one but is out of necessity - they require the page array to be split
up in order to boot successfully.

With that in mind, flatmem becomes an "optimisation" over sparsemem.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
