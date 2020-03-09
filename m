Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 490E517E45A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXN+4lsaNCJLiqMnO49UqL9W3R2FSyWanmWGLFwNZbA=; b=GpyCimrOuAD4fP
	LCUiWK0bVkYu1hrK8UwjbWOsIN3jSjvHOVcCjXRaJ35WOd6SkVKHw/6d8mCgCKvZar1DKWHViIyMa
	icp9erGJb0l+bYISVaXqaRL/xc0cg8e50HzC/Kwg8SXEp1ts62n4loU8TbvZ8XOcsic7Yo9lEKtqg
	vS2u4mn2iCT8DwtXqJ7XtPkEVgkKERZAKluiw/URWcQydYOxPysnW302hp0Mo4bO5Rx1+pptTtrXf
	8f0vM1nA8NrK6wyqO8PSbGSRXNJpcdaRrwT7dHVagIlFChrJ46ITZNYyQhpfuq7SshZfW/mCCw3Pa
	W0ue6++ojQj1H5UfhH8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBL0n-00069m-58; Mon, 09 Mar 2020 16:12:13 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBL0e-0004mF-Gu
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:12:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4WJ6RRjRxj58Y2szEsveSp6vWyd/sdxRQxE7lizeTGg=; b=so5+iHtVgqSfai4qSOj1oxrE+
 ZsvzKP9v8gREGRl/MnOEHqraNdvdCgWnOR4VC4jLNIf/7y2C9mFNsqDRtsDKr2onOebVCCrwu+y2p
 k0cZmvafWm45Gll8Aq3YrRWOJMk6ofZPxt67qQRS96IiV0+eN63zp+4ZBbOkDRpfyA4NaJRn8kaED
 1rnbleBN1ggg6DBqfxzJKpODVEdtQ1uow9Z5bLvHLw/DzcNjV/t6BUJgi/4spPloXQZQqvY/I7kCu
 HZm5Fzt3WpbavxhUkfEVuZE4NRdpdtngH9REd60Rs3E5dGFSJqYiP0UrMN0L8ipP1n0cf4TZcmwOE
 UGvaPY97A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:34200)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jBKy7-0007tm-Qi; Mon, 09 Mar 2020 16:09:28 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jBKxz-0003Vd-9p; Mon, 09 Mar 2020 16:09:19 +0000
Date: Mon, 9 Mar 2020 16:09:19 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
Message-ID: <20200309160919.GM25745@shell.armlinux.org.uk>
References: <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
 <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
 <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
 <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
 <7c4c1459-60d5-24c8-6eb9-da299ead99ea@oracle.com>
 <20200306203439.peytghdqragjfhdx@kahuna>
 <CAK8P3a0Gyqu7kzO1JF=j9=jJ0T5ut=hbKepvke-2bppuPNKTuQ@mail.gmail.com>
 <20200309155945.GA4124965@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309155945.GA4124965@arrakis.emea.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_091204_563446_85442F67 
X-CRM114-Status: GOOD (  14.08  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>, Michal Hocko <mhocko@suse.com>,
 Arnd Bergmann <arnd@arndb.de>, Rik van Riel <riel@surriel.com>,
 Roman Gushchin <guro@fb.com>, Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Linux-MM <linux-mm@kvack.org>, Yafang Shao <laoar.shao@gmail.com>,
 Johannes Weiner <hannes@cmpxchg.org>, Al Viro <viro@zeniv.linux.org.uk>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 03:59:45PM +0000, Catalin Marinas wrote:
> On Sun, Mar 08, 2020 at 11:58:52AM +0100, Arnd Bergmann wrote:
> > - revisit CONFIG_VMSPLIT_4G_4G for arm32 (and maybe mips32)
> >   to see if it can be done, and what the overhead is. This is probably
> >   more work than the others combined, but also the most promising
> >   as it allows the most user address space and physical ram to be used.
> 
> A rough outline of such support (and likely to miss some corner cases):
> 
> 1. Kernel runs with its own ASID and non-global page tables.
> 
> 2. Trampoline code on exception entry/exit to handle the TTBR0 switching
>    between user and kernel.
> 
> 3. uaccess routines need to be reworked to pin the user pages in memory
>    (get_user_pages()) and access them via the kernel address space.
> 
> Point 3 is probably the ugliest and it would introduce a noticeable
> slowdown in certain syscalls.

We also need to consider that it has implications for the single-kernel
support; a kernel doing this kind of switching would likely be horrid
for a kernel supporting v6+ with VIPT aliasing caches.  Would we be
adding a new red line between kernels supporting VIPT-aliasing caches
(present in earlier v6 implementations) and kernels using this system?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
