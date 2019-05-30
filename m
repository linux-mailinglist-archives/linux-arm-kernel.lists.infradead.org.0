Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C7C30079
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 18:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knW2sMAi3ZDXDTJjw+LHG9hrrMbNQEWYh8QkgHUlxoU=; b=fgKWsoE55Z6DUS
	Rjtvf6LNvZKKe8xa1TgcjmrYpzWPjGAv4NCUDFKC1U7aJpbFrN8oZddY7KdDyMOYQlNZ7zHRZGipC
	F+QEQTzxUTb/6JijCEdDNzKaNgbYMhRgrLSqbWmi11AWBJWVAuC+yWSz/0lBNbXU9Eb8yA7hlcctO
	NrNiUaz+otbIt0Bjg0xoEkJRkGa/iRJxmdjwvqWpd5MFu9PMNtmdnxHdqqmUACXd6g62rYsbUzIYe
	l2FsnGdSe8oJytsjEJr+qF7WfLQbf4j6vIyOt0Ae61ko1Oxt5fuZbcXrbd5ANKpYmBhyPT6ucYFua
	Yf9TuMkTOhWFBZFws+0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWON3-0000Kp-GU; Thu, 30 May 2019 16:57:41 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWOMp-0000Ix-2H
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 16:57:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B60E3341;
 Thu, 30 May 2019 09:57:26 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D9E133F5AF; Thu, 30 May 2019 09:57:20 -0700 (PDT)
Date: Thu, 30 May 2019 17:57:18 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Khalid Aziz <khalid.aziz@oracle.com>
Subject: Re: [PATCH v15 05/17] arms64: untag user pointers passed to memory
 syscalls
Message-ID: <20190530165717.GC35418@arrakis.emea.arm.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <00eb4c63fefc054e2c8d626e8fedfca11d7c2600.1557160186.git.andreyknvl@google.com>
 <20190527143719.GA59948@MBP.local>
 <20190528145411.GA709@e119886-lin.cambridge.arm.com>
 <20190528154057.GD32006@arrakis.emea.arm.com>
 <11193998209cc6ff34e7d704f081206b8787b174.camel@oracle.com>
 <20190529142008.5quqv3wskmpwdfbu@mbp>
 <b2753e81-7b57-481f-0095-3c6fecb1a74c@oracle.com>
 <20190530151105.GA35418@arrakis.emea.arm.com>
 <f79336b5-46b4-39c0-b754-23366207e32d@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f79336b5-46b4-39c0-b754-23366207e32d@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_095734_261947_DE1D84D0 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Lee Smith <Lee.Smith@arm.com>, linux-kselftest@vger.kernel.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, linux-kernel@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 10:05:55AM -0600, Khalid Aziz wrote:
> On 5/30/19 9:11 AM, Catalin Marinas wrote:
> > So if a database program is doing an anonymous mmap(PROT_TBI) of 100GB,
> > IIUC for sparc the faulted-in pages will have random colours (on 64-byte
> > granularity). Ignoring the information leak from prior uses of such
> > pages, it would be the responsibility of the db program to issue the
> > stxa. On arm64, since we also want to do this via malloc(), any large
> > allocation would require all pages to be faulted in so that malloc() can
> > set the write colour before being handed over to the user. That's what
> > we want to avoid and the user is free to repaint the memory as it likes.
> 
> On sparc, any newly allocated page is cleared along with any old tags on
> it. Since clearing tag happens automatically when page is cleared on
> sparc, clear_user_page() will need to execute additional stxa
> instructions to set a new tag. It is doable. In a way it is done already
> if page is being pre-colored with tag 0 always ;)

Ah, good to know. On arm64 we'd have to use different instructions,
although the same loop.

> Where would the pre-defined tag be stored - as part of address stored
> in vm_start or a new field in vm_area_struct?

I think we can discuss the details when we post the actual MTE patches.
In our internal hack we overloaded the VM_HIGH_ARCH_* flags and selected
CONFIG_ARCH_USES_HIGH_VMA_FLAGS (used for pkeys on x86).

For the time being, I'd rather restrict tagged addresses passed to
mmap() until we agreed that they have any meaning. If we allowed them
now but get ignored (though probably no-one would be doing this), I feel
it's slightly harder to change the semantics afterwards.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
