Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A429C1C5543
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 14:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arh8i0F462NK4LTmp/EpYrojluvR7VyqNdB6JfjepEs=; b=dkgSo98C2ArWlR
	zR6yp4BhlC85CfYK/wXp9mqC+V/5H4IJ7VON5g1oyxpD9lQMY9FcGyKpT9xyCW8hhvnD0X4Z7xnxg
	MKNaHioggFddIV7u1DC1JCnuEwkHhvMKXv/V4zJvIIwjmwoB8BOlCptvPaJBAb5iN6L012P3QzY+T
	FfRsdA4JdkCohcyWdYIBgcUKZ9KfLB4ABCFqHs3MJyRvA2MYBplmdXqC0+hNVQ9SNR1AhPjQVHr2K
	6seclKCQvfKgcYj4EC9GMJRosXRiDNcwObQes2R2djfHas0G6Qe7u5eBSXBn7SrH23nCczJrwXZ3h
	6PikXBeOiJ1CUcIXGQpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVwUb-00007b-Ka; Tue, 05 May 2020 12:16:09 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVwUS-000072-WA
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 12:16:02 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 68BE668C4E; Tue,  5 May 2020 14:15:57 +0200 (CEST)
Date: Tue, 5 May 2020 14:15:57 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH v2 1/5] binfmt_elf_fdpic: Stop using dump_emit() on
 user pointers on !MMU
Message-ID: <20200505121557.GA24052@lst.de>
References: <20200429214954.44866-1-jannh@google.com>
 <20200429214954.44866-2-jannh@google.com> <20200505104805.GA17400@lst.de>
 <CAG48ez3F70-UXwdHmO4CnR0bAForn-SBtstW5WAYjcrLFwS_9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG48ez3F70-UXwdHmO4CnR0bAForn-SBtstW5WAYjcrLFwS_9A@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_051601_183443_DCBA14D6 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Linux-MM <linux-mm@kvack.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Mark Salter <msalter@redhat.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 01:42:12PM +0200, Jann Horn wrote:
> On Tue, May 5, 2020 at 12:48 PM Christoph Hellwig <hch@lst.de> wrote:
> > On Wed, Apr 29, 2020 at 11:49:50PM +0200, Jann Horn wrote:
> > > dump_emit() is for kernel pointers, and VMAs describe userspace memory.
> > > Let's be tidy here and avoid accessing userspace pointers under KERNEL_DS,
> > > even if it probably doesn't matter much on !MMU systems - especially given
> > > that it looks like we can just use the same get_dump_page() as on MMU if
> > > we move it out of the CONFIG_MMU block.
> >
> > Looks sensible.  Did you get a chance to test this with a nommu setup?
> 
> Nope. Do you happen to have a recommendation for a convenient
> environment I can use with QEMU, or something like that? I'm guessing
> that just running a standard armel Debian userspace with a !mmu ARM
> kernel wouldn't work so well?

Nommu generally needs special userspace either using uclibc-ng or musl.
When I did the RISC-V nommu work I used buildroot for my root file
systems.  We haven't gotten elffdpic to work on RISC-V yet, so I can't
use that setup for testing, but it should support ARM as well.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
