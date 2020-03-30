Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F43E19785F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 12:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z393FBROlEPclBcb0pjDY6LoyMYKX1FpoWucx1Wv8/Y=; b=nFp2R/HFLXt6fT
	LsOJpTJuW0xvp/wxKyOmuH4/zMtytWtC4q+LrDPpMuzJ3YlT2XJzflvfJJEaBcD4/XKYO3BjOakWg
	Sbx2jAMWzOtBApGIL5zQMpFF+voAEH7yjFYQBuKI3hME7+6bvwVQeP+RwVETLxGP6pr2M435x4wWl
	EkpKfJeb8IJm7kb68+otNVXILto7nHE1oJtOXmCA15llzTRWxUe7depn1DdsPHKm3eoZ6QNBWZYfd
	c6XOPeU/kMunvlOLgAC/HGUNXkpBRewjtUfj9JAzvkk5BXGG1w2XD3u0D+pgLS+18Tjur+dwdjXZL
	Bk5cfpxR93iw2Vg9cacw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIrKA-0002uv-Jt; Mon, 30 Mar 2020 10:07:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIrJw-0002u6-Gd
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 10:07:06 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 880C8206E6;
 Mon, 30 Mar 2020 10:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585562822;
 bh=h4qbQIcArDQKLVxSHZ660Oqw2KCSJQGGsVkBmaTHQ0w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wClKUSSvJbnHpHTob7e+OhS/k//P7QjJb9xKePMT40YYhG574py/O52JUYdQvR984
 RSJN8QUIHaKKoim4NhZYQDRLFD4HIs9josgwBffZlnB6RcWswVrtoIudL01kGsVnk+
 sxtNFsgaGmxH2qyRyIjpx9mjJ/v1jdfmerySiUaA=
Date: Mon, 30 Mar 2020 11:06:57 +0100
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [RFC PATCH] arm64: unify WORKAROUND_SPECULATIVE_AT_{NVHE,VHE}
Message-ID: <20200330100656.GA8365@willie-the-truck>
References: <20200327143941.195626-1-ascull@google.com>
 <1705907b-234c-6f56-1360-f598c8047d1d@arm.com>
 <20200327174838.GD178422@google.com>
 <e280f3f31bd5edc9db55757fcfa4ec62@kernel.org>
 <20200327180913.GA10454@willie-the-truck>
 <20200328112351.53f800ed@why>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200328112351.53f800ed@why>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_030704_831721_A68D8749 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: qwandor@google.com, qperret@google.com,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, tabba@google.com,
 Steven Price <steven.price@arm.com>, wedsonaf@google.com,
 Andrew Scull <ascull@google.com>, James Morse <James.Morse@arm.com>,
 dbrazdil@google.com, kernel-team@android.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 11:23:51AM +0000, Marc Zyngier wrote:
> On Fri, 27 Mar 2020 18:09:14 +0000
> Will Deacon <will@kernel.org> wrote:
> 
> > On Fri, Mar 27, 2020 at 05:52:59PM +0000, Marc Zyngier wrote:
> > > On 2020-03-27 17:48, Andrew Scull wrote:  
> > > > Thanks, Steven. Could we look into the EPD* caching microarch details
> > > > Marc was referring to for these A55 and A76 cores?  
> > > 
> > > Only the folks that have access to the RTL can tell you, unfortunately.
> > > 
> > > Thankfully, there is a bunch of people on Cc that should be able to ping
> > > the relevant teams and report back...  
> > 
> > Yup, otherwise I guess we can throw in the TLB invalidation after setting
> > the EPDx bits until we have clarity from Arm. We wouldn't need to broadcast
> > it, so it might not be too bad on performance. If it is, I suppose we could
> > switch to a reserved VMID?
> 
> I'd like to avoid the reserved VMID if at all possible -- we already
> have one for the host on nVHE, and I bet your patches are going to
> create some interesting havoc^Wchanges in that area, as the host is now
> a guest from the mm perspective. It isn't clear either whether a
> reserved VMID really solves the problem either, as you could still
> end-up with speculative PTWs. Can it be harmful to create conflicting
> TLB entries if you never hit them?

I think you'd have to ensure that the reserved VMID is only ever used when
the EPDx bits are set, which is easy to say but harder to enforce!

> But if we bring in TLB invalidation, I wonder whether the problem can
> be mitigated solely with just that on the affected CPUs, and what the
> impact would be.

It seems as though this erratum is quietly cropping up for other CPUs (e.g.
A53 and A77) as well, so I'd be inclined to add the local TLBI and then
Arm can do the uarch work to disable it if it's worth it. Interestingly,
I think you only need the invalidation on the __deactivate_traps_nvhe()
path, because the CPU is only permitted to cache those bits when they are
0 (strange but true!).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
