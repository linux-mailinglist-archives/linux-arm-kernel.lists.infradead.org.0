Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACB91BC097
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bTFKgbxCaxOT5nq5+RQNEmVPiLkjW3G2mUTE4DrS98=; b=TRuRDNIwoo/GJ9
	sqaNWGGSuX1AWohxxu+8O2ojJ34sOWLU2jJGkSzXVpZIDSS6c+Qzht/VOs7PXcQrZ4UNcfgVwjCpl
	EqAnZTa6Rq/1zW1b2WppNd0tSxqzSgGmp4UGTz4v0oojJbNIjJIVabaB7lWFnZ8linzYtbqH8vM/M
	bVf5omvRziAdFN0a2pTHznce+zeC+ZvRZVL8GQSViEpNvbqI+lKIsQBfKc1PB3TMMyddzzfACxQOA
	e2QVPkmMWz2FxQ7uUS/cK6vTzzRqdBQoZIJWheJIichOPOjo30iG7QdO7R7aAW6Sx8FNZohjAq51L
	OqSVeSS8pVLpNYcWqzag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQsi-0001Z1-Nf; Tue, 28 Apr 2020 14:06:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQsa-0001YC-00
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:06:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D9E2731B;
 Tue, 28 Apr 2020 07:06:30 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 30FA73F68F;
 Tue, 28 Apr 2020 07:06:29 -0700 (PDT)
Date: Tue, 28 Apr 2020 15:06:27 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <dave.martin@arm.com>
Subject: Re: [PATCH v3 20/23] fs: Allow copy_mount_options() to access
 user-space in a single pass
Message-ID: <20200428140626.GJ3868@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-21-catalin.marinas@arm.com>
 <20200427165641.GC15808@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427165641.GC15808@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_070632_079848_B72F5ADA 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 05:56:42PM +0100, Dave P Martin wrote:
> On Tue, Apr 21, 2020 at 03:26:00PM +0100, Catalin Marinas wrote:
> > The copy_mount_options() function takes a user pointer argument but not
> > a size. It tries to read up to a PAGE_SIZE. However, copy_from_user() is
> > not guaranteed to return all the accessible bytes if, for example, the
> > access crosses a page boundary and gets a fault on the second page. To
> > work around this, the current copy_mount_options() implementations
> > performs to copy_from_user() passes, first to the end of the current
> > page and the second to what's left in the subsequent page.
> > 
> > Some architectures like arm64 can guarantee an exact copy_from_user()
> > depending on the size (since the arch function performs some alignment
> > on the source register). Introduce an arch_has_exact_copy_from_user()
> > function and allow copy_mount_options() to perform the user access in a
> > single pass.
> > 
> > While this function is not on a critical path, the single-pass behaviour
> > is required for arm64 MTE (memory tagging) support where a uaccess can
> > trigger intra-page faults (tag not matching). With the current
> > implementation, if this happens during the first page, the function will
> > return -EFAULT.
> 
> Do you know how much extra overhead we'd incur if we read at must one
> tag granule at a time, instead of PAGE_SIZE?

Our copy routines already read 16 bytes at a time, so that's the tag
granule. With current copy_mount_options() we have the issue that it
assumes a fault in the first page is fatal.

Even if we change it to a loop of smaller uaccess, we still have the
issue of unaligned accesses which can fail without reading all that's
possible (i.e. the access goes across a tag granule boundary).

The previous copy_mount_options() implementation (from couple of months
ago I think) had a fallback to byte-by-byte, didn't have this issue.

> I'm guessing that in practice strcpy_from_user() type operations copy
> much less than a page most of the time, so what we lose in uaccess
> overheads we _might_ regain in less redundant copying.

strncpy_from_user() has a fallback to byte by byte, so we don't have an
issue here.

The above is only for synchronous accesses. For async, in v3 I disabled
such checks for the uaccess routines.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
