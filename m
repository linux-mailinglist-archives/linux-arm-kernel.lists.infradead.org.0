Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F05E91C48CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 23:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nn8ctUYd6r527+bESpbOUGmcQaJIvvgmY8kZ841WBj4=; b=mMTeSADYR7uDEb
	rpTIsF1Ey7I6SI761ABWuYgwSZueKUoyYfc/GY0EOym7BOfJJIcffA9JkbqbTMOyFCp7JclccIDkt
	8XL4etmE5jFDULeX5Y+H7ZbuCJeBgHcnqDP5YM5GH1+UGXsnBEBT/IBaI/RfDkR2HUTl0cMldVSZa
	S0zO5yZOzq+OVMkdfsWSD97pqqK7rLrYBQGLWojv9rylOVV7L5zKo35IEA6+bw2bTyfYbDfnXFsZC
	5V/idHtzhG2pPCFMEQDg8xHRBfPS8IfXqm60s9na/Zv026C6zv1kkQJyYVjubHGmhC9MC2bnjIHhD
	BjX6B7vHRLAPV40Nri5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jViJp-00068i-4Z; Mon, 04 May 2020 21:08:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jViJh-00067b-Su
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 21:07:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7B8D206C0;
 Mon,  4 May 2020 21:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588626477;
 bh=mbSUYr1bv29MdF7Avy5q5ETeCqyA2kQf/M7Q7otHGuY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s04jy66nnxuguUQY+kI8TfPWfWL/MDxIX+vMbkhAsrtlSSQuzMfdU0/g/XooJbA05
 aUV0HgBF1aCe4Of6QBveEXKowhlVtUBDs2WRpwQnqnbTG3FiqHRtFlXWx2QM0nh3FY
 hLXkWgRivnKQuyAGnOkkpWjE69zgk3iQOi8RbWjM=
Date: Mon, 4 May 2020 22:07:53 +0100
From: Will Deacon <will@kernel.org>
To: George Spelvin <lkml@sdf.org>
Subject: Re: [PATCH v2] arm64: ptr auth: Use get_random_u64 instead of _bytes
Message-ID: <20200504210752.GB5657@willie-the-truck>
References: <202003311544.02VFiClP011630@sdf.org>
 <20200428125812.GD6791@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428125812.GD6791@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_140757_952607_3CDD267D 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 01:58:12PM +0100, Will Deacon wrote:
> On Tue, Mar 31, 2020 at 03:44:12PM +0000, George Spelvin wrote:
> > get_random_bytes() is approximately 4x the cost of two
> > get_random_u64() calls, because the former implements
> > anti-backtracking.
> > 
> > Because these are authentication keys, useless to an attacker
> > as soon as the kernel stops using them, there is no security
> > benefit from anti-backtracking.
> > 
> > Signed-off-by: George Spelvin <lkml@sdf.org>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > ---
> > v2: Took out all the clever bitmap-based stuff and made a simple
> >     boring helper function to replace get_random_bytes(&key, 16).
> > 
> >  arch/arm64/include/asm/pointer_auth.h | 16 +++++++++++-----
> >  arch/arm64/kernel/pointer_auth.c      | 10 +++++-----
> >  2 files changed, 16 insertions(+), 10 deletions(-)
> 
> Please can you resend this against the arm64 for-next/ptr-auth branch [1]?
> I can't apply it as-is.

Any update on this one?

Cheers,

Will

> [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/ptr-auth

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
