Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E94AB98B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 15:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tx9s35pGjYI0Pk1HjrCOdjt2p8taaZAQG7xvDBKhgrY=; b=rvKJFUT2dIyfx1
	z7o2wSbmfV01oavkKy4XNLFL3JBL0fwETV9eN3L0fdaWvKf/E57n946BsXzOzFz4ueo5u6P1vMVNV
	UpFL8CHtfgrWQ7h2gcEArEaYIxTvF0uODvKyOiCKwX24GFrsN0jftqUAEoK5iifUvyiB6PnnU0jp3
	1cftChSIx3CEPsTDkDqMektQk9HHmlyMQw7FATV/2SuCxoe8Q3uNzu1mR7twqe4o10hRxm8c7np0A
	8tQURxES9z52yjMw6n//fylmGbXD7/ponZEnmjx/0NDSoWxjdNKBrB9l/rZIa0uv3y4K2YtpgBepp
	vTR/FGg9D5NL/cf5UG1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6EXi-0003LP-Ez; Fri, 06 Sep 2019 13:44:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6EXb-0003Kl-QM
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 13:44:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0D5028;
 Fri,  6 Sep 2019 06:44:41 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.144.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 54DB43F718;
 Fri,  6 Sep 2019 06:44:41 -0700 (PDT)
Date: Fri, 6 Sep 2019 15:44:40 +0200
From: Christoffer Dall <christoffer.dall@arm.com>
To: Peter Maydell <peter.maydell@linaro.org>
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
Message-ID: <20190906134440.GH4320@e113682-lin.lund.arm.com>
References: <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
 <86mufjrup7.wl-maz@kernel.org>
 <CAFEAcA9qkqkOTqSVrhTpt-NkZSNXomSBNiWo_D6Kr=QKYRRf=w@mail.gmail.com>
 <20190905092223.GC4320@e113682-lin.lund.arm.com>
 <4b6662bd-56e4-3c10-3b65-7c90828a22f9@kernel.org>
 <20190906080033.GF4320@e113682-lin.lund.arm.com>
 <a58c5f76-641a-8381-2cf3-e52d139c4236@amazon.com>
 <20190906131252.GG4320@e113682-lin.lund.arm.com>
 <CAFEAcA9vwyhAN8uO8=PpaBkBXb0Of4G0jEij7nMrYcnJjSRVjg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFEAcA9vwyhAN8uO8=PpaBkBXb0Of4G0jEij7nMrYcnJjSRVjg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_064443_945308_B297C8B1 
X-CRM114-Status: GOOD (  24.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Daniel =?utf-8?B?UC4gQmVycmFuZ8Op?= <berrange@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexander Graf <graf@amazon.com>, Stefan Hajnoczi <stefanha@redhat.com>,
 Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 02:31:42PM +0100, Peter Maydell wrote:
> On Fri, 6 Sep 2019 at 14:13, Christoffer Dall <christoffer.dall@arm.com> wrote:
> > I'd prefer leaving it to userspace to worry about, but I thought Peter
> > said that had been problematic historically, which I took at face value,
> > but I could have misunderstood.
> >
> > If QEMU, kvmtool, and whatever the crazy^H cool kids are using in
> > userspace these days are happy emulating the exception, then that's a
> > viable approach.  The main concern I have with that is whether they'll
> > all get it right, and since we already have the code in the kernel to do
> > this, it might make sense to re-use the kernel logic for it.
> 
> Well, for QEMU we've had code that in theory might do this but
> in practice it's never been tested. Essentially the problem is
> that nobody ever wants to inject an exception from userspace
> except in incredibly rare cases like "trying to use h/w breakpoints
> simultaneously inside the VM and also to debug the VM from outside"
> or "we're running on RAS hardware that just told us that the VM's
> RAM was faulty". There's no even vaguely commonly-used usecase
> for it today; and this ABI suggestion adds another "this is in
> practice almost never going to happen" case to the pile. The
> codepath is unreliable in QEMU because (a) it requires getting
> syncing of sysreg values to and from the kernel right -- this is
> about the only situation where userspace wants to modify sysregs
> during execution of the VM, as opposed to just reading them -- and
> (b) we try to reuse the code we already have that does TCG exception
> injection, which might or might not be a design mistake, and
> (c) as noted above it's a never-actually-used untested codepath...
> 
> So I think if I were you I wouldn't commit to the kernel ABI until
> somebody had at least written some RFC-quality patches for QEMU and
> tested that they work and the ABI is OK in that sense. (For the
> avoidance of doubt, I'm not volunteering to do that myself.)
> I don't object to the idea in principle, though.
> 
> PS: the other "injecting exceptions to the guest" oddity is that
> if the kernel *does* find the ISV information and returns to userspace
> for it to handle the MMIO, there's no way for userspace to say
> "actually that address is supposed to generate a data abort".
> 

That's a good point.  A synchronous interface with a separate mechanism
to ask the kernel to inject an exception might be a good solution, if
there's an elegant way to do the latter.  I'll have a look at that.

Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
