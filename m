Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AB41725F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:08:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q7dV7Zs0EQuVThwWo2Jdp+/qliaMibBqS28090j/plc=; b=F1F2IVmA9ifEfK
	BS8aA6+kzD/2nURIrQZlilAXIlAELey5h4P7RK0oAiE06uNuJgIgx4YTP6MMEQng6iHt0+OXQgakW
	Pp5oD2la4p71haGbtvUHlp0n4q1kX8xivFvvasR3nBFVLQG1erqJ6ZzhFGgBjZo9sZoBiSIG6ZD1K
	0D52sIzAr5tHicChW4CvmGVKkCIv8oZpvR+CwXbcx3B9zb8nq1ecPAb4mmhidWB9QSGJb5gfUcjjX
	fpixOvdB9Y+CxaXGq3HO0s/jDC6nhN2DE1gBJSVJ/aCRQVnn3or9Ua2oFoFcqMuMgVj86H2qtzsWs
	f8C9LOLQdi3xL7PAxFhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NaM-0005YX-03; Thu, 27 Feb 2020 18:08:34 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Na9-0005Y1-Kb
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:08:23 +0000
Received: by mail-ot1-x344.google.com with SMTP id p8so16575oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 10:08:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4F3CkEYboenOdYfvgxaEFjzaB88Ias8AvgF6y2bsYJo=;
 b=btVB1/kCSyh3miQnMYs3e17lMek8QSVYBuP0FlHl1SN8jj8AK7ZcsZTrZLYZcDr8L0
 NSJ9MeY7RriOXGf8mxUIHycStwVTMNeNi3yrQla6dMYLj551Rp9KWZnTu9g5AKGKvvYT
 9WlFsCXT0V4ckXbqldT9RpXG/xwR6Da9kdRkEzPi8tdoEUk2abNALGro5ZLdP/rXl0tG
 /sptmzlpcqEIizzSfsWPT6ZSjga8U2PolwmP3cK/7EJmAplRWGpIpx3oVOIujglDOBPB
 U/jmRkYeKgZuoKDQ/uKn2xiCIfawYUF6S/k5E1dLzCZ3Me3N7Bit13cPq5fiueJNzJqi
 dLRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4F3CkEYboenOdYfvgxaEFjzaB88Ias8AvgF6y2bsYJo=;
 b=NO+vRGUa6YpXxh9OBKfnuXd0h0Bxn97eQ1jJmiXUG481Uc1VOQYgBrkD7m+hwhudi4
 A5Lj4Z5DYJWUWByak5wS2zte5hx/O4vX1rER2fzSfvwVSt3qy74I8Qr2f2XDlpZoLP/j
 JucFlWTWf2UQJrH2GAFKWpvaKsn+OjJ76KKwtB2Sdn5FUjoQ0vaJB3v7ed17uGVGDdwM
 B5ohRZXgbJNSzjHaK0tDA+2kEPvenfCOhNpk3Ko+7vKIOd5TLGL/28/vUx3aj50h5QV7
 nCFdkVP0MTbxkFBaD3KA+E1B7Bn/51cfSCYVmiuaBagGprKB1/49YhhZuciPI/Y0ZfPU
 0Lsw==
X-Gm-Message-State: APjAAAWQ7vOyOph3d0FhiO6QZJ8ktsTJKdZ/EZRVucb37XgxvFXzrn9o
 DR7DzIztimqpJ4VSOviLaSthldCqDxKrPlI5gUe72xK2
X-Google-Smtp-Source: APXvYqzWZDXbIbzo1esKuuymk2opANK/r16XeVx9wwrPYC7dcJfvghbSyviygno+FjUiHqeLzBQ9brN5G7f+Od4lm4g=
X-Received: by 2002:a9d:6c9:: with SMTP id 67mr93279otx.363.1582826900650;
 Thu, 27 Feb 2020 10:08:20 -0800 (PST)
MIME-Version: 1.0
References: <20200221182503.28317-1-logang@deltatee.com>
 <20200227171704.GK31668@ziepe.ca>
 <e8781f85-3fc7-b9ce-c751-606803cbdc77@deltatee.com>
 <20200227174311.GL31668@ziepe.ca>
 <CAPcyv4iek=EmNk9JgXq=-HcZjd9Kz4m2+qXMhnDWMshFKFZPXQ@mail.gmail.com>
 <20200227180346.GM31668@ziepe.ca>
In-Reply-To: <20200227180346.GM31668@ziepe.ca>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 27 Feb 2020 10:08:09 -0800
Message-ID: <CAPcyv4g6OYvD57LdWcqGuWVanckQv4a1uzJrE1OZyMH+z=5KZw@mail.gmail.com>
Subject: Re: [PATCH v3 0/7] Allow setting caching mode in arch_add_memory()
 for P2PDMA
To: Jason Gunthorpe <jgg@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_100821_724692_4B395DBC 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-ia64@vger.kernel.org, Linux-sh <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390 <linux-s390@vger.kernel.org>,
 David Hildenbrand <david@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Michal Hocko <mhocko@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Eric Badger <ebadger@gigaio.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 10:03 AM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Thu, Feb 27, 2020 at 09:55:04AM -0800, Dan Williams wrote:
> > On Thu, Feb 27, 2020 at 9:43 AM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > >
> > > On Thu, Feb 27, 2020 at 10:21:50AM -0700, Logan Gunthorpe wrote:
> > > >
> > > >
> > > > On 2020-02-27 10:17 a.m., Jason Gunthorpe wrote:
> > > > >> Instead of this, this series proposes a change to arch_add_memory()
> > > > >> to take the pgprot required by the mapping which allows us to
> > > > >> explicitly set pagetable entries for P2PDMA memory to WC.
> > > > >
> > > > > Is there a particular reason why WC was selected here? I thought for
> > > > > the p2pdma cases there was no kernel user that touched the memory?
> > > >
> > > > Yes, that's correct. I choose WC here because the existing users are
> > > > registering memory blocks without side effects which fit the WC
> > > > semantics well.
> > >
> > > Hm, AFAIK WC memory is not compatible with the spinlocks/mutexs/etc in
> > > Linux, so while it is true the memory has no side effects, there would
> > > be surprising concurrency risks if anything in the kernel tried to
> > > write to it.
> > >
> > > Not compatible means the locks don't contain stores to WC memory the
> > > way you would expect. AFAIK on many CPUs extra barriers are required
> > > to keep WC stores ordered, the same way ARM already has extra barriers
> > > to keep UC stores ordered with locking..
> > >
> > > The spinlocks are defined to contain UC stores though.
> >
> > How are spinlocks and mutexes getting into p2pdma ranges in the first
> > instance? Even with UC, the system has bigger problems if it's trying
> > to send bus locks targeting PCI, see the flurry of activity of trying
> > to trigger faults on split locks [1].
>
> This is not what I was trying to explain.
>
> Consider
>
>  static spinlock lock; // CPU DRAM
>  static idx = 0;
>  u64 *wc_memory = [..];
>
>  spin_lock(&lock);
>  wc_memory[0] = idx++;
>  spin_unlock(&lock);
>
> You'd expect that the PCI device will observe stores where idx is
> strictly increasing, but this is not guarenteed. idx may decrease, idx
> may skip. It just won't duplicate.
>
> Or perhaps
>
>  wc_memory[0] = foo;
>  writel(doorbell)
>
> foo is not guarenteed observable by the device before doorbell reaches
> the device.
>
> All of these are things that do not happen with UC or NC memory, and
> are surprising violations of our programming model.
>
> Generic kernel code should never touch WC memory unless the code is
> specifically designed to handle it.

Ah, yes, agree.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
