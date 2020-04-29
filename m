Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054881BEB23
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kO87Gf/TS2eGKbsihP4gZyj0+/PwM5MrNYc39vQ6pU8=; b=TXGPS7SQqQZfn6
	mOfbIfDc8Ca0zy3P7VJrnUXVEUQv4DaMrheuodRiOfWuQhcOrplrUP9018JlUe3trelcK8wVjo4+u
	YvAmVamHPj8ztcb6/WGiVI4Bdfi031Sk+wrWUVeU9SeL17vseeHpSLcVLLYGqwMNeag6INM/5hbB6
	9k6vq7R6vyWAAXY1afiViAkhbl3tePEOgp00iAOU+WtAlOCbx72RtEeb0qtS3nGqoieL3sZeEywut
	1rVHKuWQ+qgSLLfT+ReIMpYWrcskJrqXZI2ozmLrIqLG6CP0zrfNEgaEMIo7U0xRVFNzgy+79B32/
	OOwH0fCrPNve8zc6QDog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTulN-0003XM-Iv; Wed, 29 Apr 2020 22:01:06 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuh8-0006HK-Ce
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:56:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JhIri9Htg0/sN4w6AP/QH7wGRCJsnU/YBI0zvtCnrSE=; b=lcgeCqTdF0/C0XnarY+tI1cLA
 aTp5plAUZgVFOpQPCrwnTtLwHs8XQhIGrDDx+4JmRdD5VmjaNjo3kqPh/BRBwYRi0ULZSpSwWY0mW
 TrgemlMVjy5uQmTWtkwO2jv40d3R3lIxts3PSghFetSH2TbL4JnhiGlJwhTroVW/CX7SpjTyhrZpn
 X/Ez408/p4adJYNff4cxI3KCA5uQPjgzUfuiEZ4LI1/jdP1WfABKNM6VQy8G4/iB464EHLhHoNUBC
 marQIPhja3Ndlo+onDkpOu7bNy8Fc8qEEX+yBrHUbV6/UqmfyOGOxXHgP9SDfhe6A2l8poddWJOzu
 YD58Ko3aw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:51674)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jTugs-0001oF-Rn; Wed, 29 Apr 2020 22:56:27 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jTugm-0001S9-Ad; Wed, 29 Apr 2020 22:56:20 +0100
Date: Wed, 29 Apr 2020 22:56:20 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jann Horn <jannh@google.com>, Nicolas Pitre <nico@fluxnic.net>
Subject: Re: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping, and use
 mmap_sem properly in there
Message-ID: <20200429215620.GM1551@shell.armlinux.org.uk>
References: <20200429214954.44866-1-jannh@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429214954.44866-1-jannh@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_145642_442285_B7D7D614 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-sh@vger.kernel.org,
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

On Wed, Apr 29, 2020 at 11:49:49PM +0200, Jann Horn wrote:
> At the moment, we have that rather ugly mmget_still_valid() helper to
> work around <https://crbug.com/project-zero/1790>: ELF core dumping
> doesn't take the mmap_sem while traversing the task's VMAs, and if
> anything (like userfaultfd) then remotely messes with the VMA tree,
> fireworks ensue. So at the moment we use mmget_still_valid() to bail
> out in any writers that might be operating on a remote mm's VMAs.
> 
> With this series, I'm trying to get rid of the need for that as
> cleanly as possible.
> In particular, I want to avoid holding the mmap_sem across unbounded
> sleeps.
> 
> 
> Patches 1, 2 and 3 are relatively unrelated cleanups in the core
> dumping code.
> 
> Patches 4 and 5 implement the main change: Instead of repeatedly
> accessing the VMA list with sleeps in between, we snapshot it at the
> start with proper locking, and then later we just use our copy of
> the VMA list. This ensures that the kernel won't crash, that VMA
> metadata in the coredump is consistent even in the presence of
> concurrent modifications, and that any virtual addresses that aren't
> being concurrently modified have their contents show up in the core
> dump properly.
> 
> The disadvantage of this approach is that we need a bit more memory
> during core dumping for storing metadata about all VMAs.
> 
> After this series has landed, we should be able to rip out
> mmget_still_valid().
> 
> 
> Testing done so far:
> 
>  - Creating a simple core dump on X86-64 still works.
>  - The created coredump on X86-64 opens in GDB, and both the stack and the
>    exectutable look vaguely plausible.
>  - 32-bit ARM compiles with FDPIC support, both with MMU and !MMU config.
> 
> I'm CCing some folks from the architectures that use FDPIC in case
> anyone wants to give this a spin.

I've never had any reason to use FDPIC, and I don't have any binaries
that would use it.  Nicolas Pitre added ARM support, so I guess he
would be the one to talk to about it.  (Added Nicolas.)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
