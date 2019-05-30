Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B652FC79
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 15:40:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDllLBHQ2eUu18Lkqn/YJY0hzqndUVuBiYkdBe9DGOw=; b=ECkz0XUEvvtING
	+3t+zVjb45mzMV2gLB8gHKp/MBACnMmtn6ZlM6DQFsQJzWBvxK2FiouCYpoBwbqdrv+/RuqWImd0E
	mTAW7gVxYEitV4vWssACTjVy+X3GdPvpRxaj0HDKFMc+JxCoobCyDO+X6DTcuSl9T5vy2aUSsj6I4
	VGtrIFZtNnIkhGfQ+qTQm7iRAFyE9DxX2UyCD2Z/fKV6gdchCGmJb9/MZB6ypqe7Svs6iOuYTQfcT
	08Oq8xFqTskmoK/hUYcejFKG6ocryzmNidhoFe0UWT0y9bG5I7VNtp89FG1ldt8c/t4kyXX+byjEk
	Wv2wAQcVVTmP2zblTkKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLHq-0001vp-Ow; Thu, 30 May 2019 13:40:06 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hWLHe-0001vX-Pd; Thu, 30 May 2019 13:39:54 +0000
Date: Thu, 30 May 2019 06:39:54 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC] mm: Generalize notify_page_fault()
Message-ID: <20190530133954.GA2024@bombadil.infradead.org>
References: <1559195713-6956-1-git-send-email-anshuman.khandual@arm.com>
 <20190530110639.GC23461@bombadil.infradead.org>
 <4f9a610d-e856-60f6-4467-09e9c3836771@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f9a610d-e856-60f6-4467-09e9c3836771@arm.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-s390@vger.kernel.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Michael Ellerman <mpe@ellerman.id.au>, Russell King <linux@armlinux.org.uk>,
 Fenghua Yu <fenghua.yu@intel.com>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrey Konovalov <andreyknvl@google.com>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 05:31:15PM +0530, Anshuman Khandual wrote:
> On 05/30/2019 04:36 PM, Matthew Wilcox wrote:
> > The two handle preemption differently.  Why is x86 wrong and this one
> > correct?
> 
> Here it expects context to be already non-preemptible where as the proposed
> generic function makes it non-preemptible with a preempt_[disable|enable]()
> pair for the required code section, irrespective of it's present state. Is
> not this better ?

git log -p arch/x86/mm/fault.c

search for 'kprobes'.

tell me what you think.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
