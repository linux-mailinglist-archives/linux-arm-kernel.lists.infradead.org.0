Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9632C94E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 16:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2G+hPqX3kV/wq8/xdWf5nodopFrwwerF791A4zGadM=; b=OM4ZWQkLqHOfKG
	M+yfZWfYRiCU+G2R57viwVdNyrOSFuIxLMF5/EeeVnlwNKUSfe4oTvVLXmqR2PpahAlwvUGNYAHXj
	ICuQUD8JhUjMiCcsEmwoA6aExnn+Z1GW9fAkivhlAGmBURFzLmt4qsczPpxXHrUui5CJIS/cQqtXR
	qVa3OStH93XHdK5PHdHc4NiJuUYFXPAtx+HN4tRziLXp3eAJLyyTdEQIxsvJEY4BaguC5fyJ1se2n
	u9wzgZeQRoWm8BiLi0ILbz0O/QOmjXylBSjaFMkSCC90Pie3ggBXQtO77i4I9aS3rkOsb0+J068tg
	cvKuMnjZpyOFem7uXbUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVdUd-00066u-R4; Tue, 28 May 2019 14:54:23 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVdUV-00065k-RM
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 14:54:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F18CC80D;
 Tue, 28 May 2019 07:54:13 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 689083F5AF;
 Tue, 28 May 2019 07:54:13 -0700 (PDT)
Date: Tue, 28 May 2019 15:54:11 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v15 05/17] arms64: untag user pointers passed to memory
 syscalls
Message-ID: <20190528145411.GA709@e119886-lin.cambridge.arm.com>
References: <cover.1557160186.git.andreyknvl@google.com>
 <00eb4c63fefc054e2c8d626e8fedfca11d7c2600.1557160186.git.andreyknvl@google.com>
 <20190527143719.GA59948@MBP.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527143719.GA59948@MBP.local>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_075415_899691_DF76E2B4 
X-CRM114-Status: GOOD (  19.46  )
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
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 03:37:20PM +0100, Catalin Marinas wrote:
> On Mon, May 06, 2019 at 06:30:51PM +0200, Andrey Konovalov wrote:
> > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > pass tagged user pointers (with the top byte set to something else other
> > than 0x00) as syscall arguments.
> > 
> > This patch allows tagged pointers to be passed to the following memory
> > syscalls: brk, get_mempolicy, madvise, mbind, mincore, mlock, mlock2,
> > mmap, mmap_pgoff, mprotect, mremap, msync, munlock, munmap,
> > remap_file_pages, shmat and shmdt.
> > 
> > This is done by untagging pointers passed to these syscalls in the
> > prologues of their handlers.
> > 
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> 
> Actually, I don't think any of these wrappers get called (have you
> tested this patch?). Following commit 4378a7d4be30 ("arm64: implement
> syscall wrappers"), I think we have other macro names for overriding the
> sys_* ones.

What is the value in adding these wrappers?

The untagged_addr macro is defined for all in linux/mm.h and these patches
already use untagged_addr in generic code. Thus adding a few more
untagged_addr in the generic syscall handlers (which turn to a nop for most)
is surely better than adding wrappers?

Even if other architectures implement untagged_addr in the future it would
be more consistent if they untagged in the same places and thus not adding
these wrappers enforces that.

Thanks,

Andrew Murray

> 
> -- 
> Catalin
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
