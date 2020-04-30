Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE381BEDFE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 04:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dL+7IeRcOg9DnqdtWXQqspGl56TUXc/5iIDDFqlpuM=; b=P+/0EBdj3ZMkG8
	UVdfve6XtFvvC3GlfWinkIWm/u+u+jMUADhEeCv0vPIUlHfkX1ZmGBraairasBgQJqBYH5rcZ7is8
	TJBpwW7AUaoDUiNt7+hWnf2LKGuDMVSEDO4gziHi9wQiOMb+VE/RtWUJGABuSpZ/iBjr4IfAzAub1
	hrGuMxv0KXeZgpuXijI9Ab6iszPxzalQ2TWEmvnh5E3+OvNMrXXqnKFRJ6SX/jV/szoNUGXWQ+vLp
	h01/M60PnSmG+ztLpWr6rHGg8Iz1hJKnuKKFkmT5DfoHxwb/Vmf82TAvA7XhNhbZ9a7fqLIwnvA4Q
	3rnQ2z2MPo34VqcDqtZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTyUh-0001DQ-BV; Thu, 30 Apr 2020 02:00:07 +0000
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTyUQ-0001CK-2d
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 01:59:51 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id F416F4999C;
 Wed, 29 Apr 2020 21:59:47 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=ErazowRay1P/AwFSRhYIU6Y2Vtg=; b=U/bgW7
 8LRuDwed7cFJI+OLHcNjS2azezYw4bDECsXxOtmXzamJa8j9tAdCdRFr37MXprd5
 ErxVxpe2KVIBpAKAVf2dKTwzyPiZ3RDGm+EfMP70RzW2Zf/0ARTOupK3h0F1z+hz
 mQJPY4L14N4+MX2vB7h1kvD7/e18IFTZLuIv8=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id EA42A4999B;
 Wed, 29 Apr 2020 21:59:47 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=OH9QgA1zs57t3X+399BRoLLVjiVfyd9x67bP0Lvx9VY=;
 b=jpEXcJureDScwgQSTF9eHzcwhmQuFrOHxRs892SZDNVkINIFS5TbHDpabFpo7Gs7IHlBnmskokz8D4i2YY5ViibSy+NBswTJ776BfV1BmS29V/WPbozOzfLFQDTEEXWotrT//LfOGQVTKKoMRDg2y4UW+ua6jfMPr/mLDlS+tJQ=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 6E06D4999A;
 Wed, 29 Apr 2020 21:59:47 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id 91EAD2DA0A91;
 Wed, 29 Apr 2020 21:59:46 -0400 (EDT)
Date: Wed, 29 Apr 2020 21:59:46 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping, and use mmap_sem
 properly in there
In-Reply-To: <20200429215620.GM1551@shell.armlinux.org.uk>
Message-ID: <nycvar.YSQ.7.76.2004292153090.2671@knanqh.ubzr>
References: <20200429214954.44866-1-jannh@google.com>
 <20200429215620.GM1551@shell.armlinux.org.uk>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-Pobox-Relay-ID: 44EB08B6-8A86-11EA-B6B5-D1361DBA3BAF-78420484!pb-smtp2.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_185950_275098_FDC4A701 
X-CRM114-Status: GOOD (  24.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Yoshinori Sato <ysato@users.sourceforge.jp>, Jann Horn <jannh@google.com>,
 Christophe Lyon <christophe.lyon@linaro.org>, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Oleg Nesterov <oleg@redhat.com>,
 linux-mm@kvack.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Mark Salter <msalter@redhat.com>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020, Russell King - ARM Linux admin wrote:

> On Wed, Apr 29, 2020 at 11:49:49PM +0200, Jann Horn wrote:
> > At the moment, we have that rather ugly mmget_still_valid() helper to
> > work around <https://crbug.com/project-zero/1790>: ELF core dumping
> > doesn't take the mmap_sem while traversing the task's VMAs, and if
> > anything (like userfaultfd) then remotely messes with the VMA tree,
> > fireworks ensue. So at the moment we use mmget_still_valid() to bail
> > out in any writers that might be operating on a remote mm's VMAs.
> > 
> > With this series, I'm trying to get rid of the need for that as
> > cleanly as possible.
> > In particular, I want to avoid holding the mmap_sem across unbounded
> > sleeps.
> > 
> > 
> > Patches 1, 2 and 3 are relatively unrelated cleanups in the core
> > dumping code.
> > 
> > Patches 4 and 5 implement the main change: Instead of repeatedly
> > accessing the VMA list with sleeps in between, we snapshot it at the
> > start with proper locking, and then later we just use our copy of
> > the VMA list. This ensures that the kernel won't crash, that VMA
> > metadata in the coredump is consistent even in the presence of
> > concurrent modifications, and that any virtual addresses that aren't
> > being concurrently modified have their contents show up in the core
> > dump properly.
> > 
> > The disadvantage of this approach is that we need a bit more memory
> > during core dumping for storing metadata about all VMAs.
> > 
> > After this series has landed, we should be able to rip out
> > mmget_still_valid().
> > 
> > 
> > Testing done so far:
> > 
> >  - Creating a simple core dump on X86-64 still works.
> >  - The created coredump on X86-64 opens in GDB, and both the stack and the
> >    exectutable look vaguely plausible.
> >  - 32-bit ARM compiles with FDPIC support, both with MMU and !MMU config.
> > 
> > I'm CCing some folks from the architectures that use FDPIC in case
> > anyone wants to give this a spin.
> 
> I've never had any reason to use FDPIC, and I don't have any binaries
> that would use it.  Nicolas Pitre added ARM support, so I guess he
> would be the one to talk to about it.  (Added Nicolas.)

It's been a while since I worked with it. However Christophe Lyon (in 
CC) added support for ARM FDPIC to mainline gcc recently, so hopefully 
he might still be set up and able to help.


Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
