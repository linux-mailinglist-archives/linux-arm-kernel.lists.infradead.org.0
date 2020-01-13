Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EED138FFA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 12:21:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VX2vWtx3+erutQhbwkIHj7t974audYPkZ5bX1GRd34c=; b=F//CFZIleSvgG/
	S3VaHwpMvsb+qa9mjBqr+ruurqHjNzTvGZvA6Ei1YclyMUCNcpDKTqNEAWt/y7W2wGCbnVk2M2BGI
	mwJdSUPeG85SAhNWqK05XEw4x5MHs60KXVl8naVZruDGqiyTLBxrhZxCiTjoTgWXED0knb6L+2Fw+
	Mn3FuyhWKFkZ/PPS1+iBD2Ai8+U1n5LTQz3q0+fV8aGXiucWrApDpmd+IsCjVH8LYfB1M1UND4dO7
	TVytVBrPnJD4H/Gu22eaq1XpfMKYjC1w5fdg+8B7vz26fw+LwNHUGtZgXUlhcItuX71KxrYB+NtLX
	XJb+zmbb9POv0Le4h66A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqxmi-0007CB-Bb; Mon, 13 Jan 2020 11:21:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqxmR-0007AJ-LO; Mon, 13 Jan 2020 11:21:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34D7B207FF;
 Mon, 13 Jan 2020 11:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578914471;
 bh=OuK+LaRV/ZHDJhzQECD6orhexsBuPcHYw40Uzm4U2Tw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aWZiWF2VQAg1WiXK48ln/JbWSNhePOZDL9OZmpqs6ZtMuwXPhoh/s/yiG1rxPcjan
 AhAgqPwtbTaiAxgMUzok61pjSz/yD6JY29wiaD4yziTDV18jQOdA3mtdTR/tPOho53
 eQ0L2nzc33gVv4Sa8MX30ecHqH6a1jTFialbbA6Q=
Date: Mon, 13 Jan 2020 11:21:06 +0000
From: Will Deacon <will@kernel.org>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH v4 2/2] arm64: kexec_file: add crash dump support
Message-ID: <20200113112105.GB2337@willie-the-truck>
References: <20191216021247.24950-1-takahiro.akashi@linaro.org>
 <20191216021247.24950-3-takahiro.akashi@linaro.org>
 <20200108174839.GB21242@willie-the-truck>
 <20200109004654.GA28530@linaro.org>
 <20200109083254.GA7280@willie-the-truck>
 <20200110160549.GA25437@willie-the-truck>
 <CA+CK2bAy-vfoz3kgUjZB74Hrobgu-a8H4pv6RbA_tbq++NWz5g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+CK2bAy-vfoz3kgUjZB74Hrobgu-a8H4pv6RbA_tbq++NWz5g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_032111_739126_CB8A549B 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, robh+dt@kernel.org,
 James Morse <james.morse@arm.com>, frowand.list@gmail.com,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 11:19:16AM -0500, Pavel Tatashin wrote:
> On Fri, Jan 10, 2020 at 11:05 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Thu, Jan 09, 2020 at 08:32:54AM +0000, Will Deacon wrote:
> > > On Thu, Jan 09, 2020 at 09:46:55AM +0900, AKASHI Takahiro wrote:
> > > > On Wed, Jan 08, 2020 at 05:48:39PM +0000, Will Deacon wrote:
> > > > > On Mon, Dec 16, 2019 at 11:12:47AM +0900, AKASHI Takahiro wrote:
> > > > > > diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> > > > > > index 12a561a54128..d24b527e8c00 100644
> > > > > > --- a/arch/arm64/include/asm/kexec.h
> > > > > > +++ b/arch/arm64/include/asm/kexec.h
> > > > > > @@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
> > > > > >  struct kimage_arch {
> > > > > >         void *dtb;
> > > > > >         unsigned long dtb_mem;
> > > > > > +       /* Core ELF header buffer */
> > > > > > +       void *elf_headers;
> > > > > > +       unsigned long elf_headers_mem;
> > > > > > +       unsigned long elf_headers_sz;
> > > > > >  };
> > > > >
> > > > > This conflicts with the cleanup work from Pavel. Please can you check my
> > > > > resolution? [1]
> > > >
> > > > I don't know why we need to change a type of dtb_mem,
> > > > otherwise it looks good.
> > > >
> > > > (I also assume that you notice that kimage_arch is of no use for kexec.)
> > >
> > > Yes, that's why I'd like the resolution checked. If you reckon it's cleaner
> > > to drop Pavel's patch altogether in light of your changes, we can do that
> > > instead.
> > >
> > > Thoughts?
> >
> > Well, I've reverted the cleanup patch so please shout if you'd prefer
> > something else.
> 
> As I understand, the only concern was the type change for dtb_mem.
> This was one of the review comments for my patch
> https://lore.kernel.org/lkml/20191204155938.2279686-21-pasha.tatashin@soleen.com/
> 
> (I believe it was from Marc Zyngier), I add a number of new fields,
> and they all should be phys_addr_t, this is why I change dtb_mem to
> phys_addr_t to be consistent.

Sure, but I've only queued the first part of your series and that cleanup
patch doesn't make a lot of sense when applied against Akashi's work. I'm
happy to take stuff on top if you both agree to it, but having half of the
struct use unsigned long and the other half use phys_addr_t is messy.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
