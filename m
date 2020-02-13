Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B392815BC10
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:51:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oj60Q6RcxeNPz9Ftm6cAFbhR9OKbyjoks7BsmPik5LE=; b=IyIy7kJZQV2eNZ
	XUPCZcJbf/uw/yNiKFX8nCVBg2Q4+YnxD/FIonuf+UFoXKSRVTh79TEq1V3ko28krUhtJD3hZnnLJ
	TQbenu4z6tGj0SerEoHRCFT6A9hnG4R7AlaSWbM5ka58q+SvEDXdevlU3174CCUFahNoqujZnd3oR
	ti6HYiJAv5jGg8A1QMVBvAFAQP1W9SZ2KLs1c9mzivMzJeNa4vG3PuC5gjPStLkvMqvjAdH7igH67
	KBnQ04VIviDee2JlyaRdSDweDwahnsbiKp8JGwHcldWBFHgVXqDxrfRq3HJVASMw9vbUUyrMIMJyq
	FBiIkIgMxvQxuyj5F7Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2B9O-0003fK-CU; Thu, 13 Feb 2020 09:51:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2B9E-0003eo-2k
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:51:05 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1j2B8i-00040c-JK; Thu, 13 Feb 2020 10:50:32 +0100
Message-ID: <38b3a9d683932ebe9fdb4c8f5100a408b7a9a425.camel@pengutronix.de>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
From: Lucas Stach <l.stach@pengutronix.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>, Linus Torvalds
 <torvalds@linux-foundation.org>
Date: Thu, 13 Feb 2020 10:50:29 +0100
In-Reply-To: <20200212085004.GL25745@shell.armlinux.org.uk>
References: <20200211175507.178100-1-hannes@cmpxchg.org>
 <29b6e848ff4ad69b55201751c9880921266ec7f4.camel@surriel.com>
 <20200211193101.GA178975@cmpxchg.org>
 <20200211154438.14ef129db412574c5576facf@linux-foundation.org>
 <CAHk-=wiGbz3oRvAVFtN-whW-d2F-STKsP1MZT4m_VeycAr1_VQ@mail.gmail.com>
 <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
 <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_015104_129422_AAC4D613 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Hocko <mhocko@suse.com>, Rik van Riel <riel@surriel.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Dave Chinner <david@fromorbit.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Roman Gushchin <guro@fb.com>, Linux-MM <linux-mm@kvack.org>,
 Yafang Shao <laoar.shao@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Johannes Weiner <hannes@cmpxchg.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mi, 2020-02-12 at 08:50 +0000, Russell King - ARM Linux admin wrote:
> On Tue, Feb 11, 2020 at 05:03:02PM -0800, Linus Torvalds wrote:
> > On Tue, Feb 11, 2020 at 4:47 PM Andrew Morton <akpm@linux-foundation.org> wrote:
> > > What's the situation with highmem on ARM?
> > 
> > Afaik it's exactly the same as highmem on x86 - only 32-bit ARM ever
> > needed it, and I was ranting at some people for repeating all the
> > mistakes Intel did.
> > 
> > But arm64 doesn't need it, and while 32-bit arm is obviosuly still
> > selling, I think that in many ways the switch-over to 64-bit has been
> > quicker on ARM than it was on x86. Partly because it happened later
> > (so all the 64-bit teething pains were dealt with), but largely
> > because everybody ended up actively discouraging 32-bit on the Android
> > side.
> > 
> > There were a couple of unfortunate early 32-bit arm server attempts,
> > but they were - predictably - complete garbage and nobody bought them.
> > They don't exist any more.
> > 
> > So at least my gut feel is that the arm people don't have any big
> > reason to push for maintaining HIGHMEM support either.
> > 
> > But I'm adding a couple of arm people and the arm list just in case
> > they have some input.
> > 
> > [ Obvious background for newly added people: we're talking about
> > making CONFIG_HIGHMEM a deprecated feature and saying that if you want
> > to run with lots of memory on a 32-bit kernel, you're doing legacy
> > stuff and can use a legacy kernel ]
> 
> Well, the recent 32-bit ARM systems generally have more than 1G
> of memory, so make use of highmem as a rule.  You're probably
> talking about crippling support for any 32-bit ARM system produced
> in the last 8 to 10 years.

I know of quite a few embedded ARMv7 systems that will need to be
supported for at least 10 years from now, with RAM sizes between 1GB
and even the full 4GB (well 3.75GB due to MMIO needing some address
space). Deprecating highmem would severely cripple our ability to
support those platforms with new kernels.

Regards,
Lucas


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
