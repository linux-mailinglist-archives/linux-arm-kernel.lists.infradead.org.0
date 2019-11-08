Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3237AF458B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:19:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OmwIYT1VaHhjvR9O2IMFq02AgJ8uo8t2diB29x7Z90k=; b=OBvBmn+LFLea0V
	HRIqCe8tS1LwpwpbYCRoS0VztHaI/mxEqV4ws7U6YC8Esm0nI7S1h0+6+UMDOkdCOh7JmGP68ZtYS
	sKDRxqr+n3Tai9kGEL05VeOqH39GZMwyO9dWoyqq4BsHyBmdPkvvVwG8R251Pu+mzTDgHKuHt0Hfs
	vQe+03xMYhQY5mQL0tj19SDC3cIpMptLLVq3iUT0D0BhgfULiWmnlnqMHcgZqFQOj9erkkANKZiwq
	87URYaOCOOe9Dtwoox3DxHNk5Ha8RCOl1ubhJioX9IoGBvTlx37d+MkwekX3yA/5wsbP2ZjHX9NJW
	lX76uvCiqBRBl5X/XGcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2Ie-0006Yt-5t; Fri, 08 Nov 2019 11:19:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2IV-0006YF-IO
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 11:19:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8ADA631B;
 Fri,  8 Nov 2019 03:19:22 -0800 (PST)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1DEB53F719;
 Fri,  8 Nov 2019 03:19:21 -0800 (PST)
Date: Fri, 8 Nov 2019 12:19:20 +0100
From: Christoffer Dall <christoffer.dall@arm.com>
To: kvm@vger.kernel.org
Subject: Memory regions and VMAs across architectures
Message-ID: <20191108111920.GD17608@e113682-lin.lund.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_031923_648917_212CBC4B 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Marc Zyngier <maz@kernel.org>, sean.j.christopherson@intel.com,
 borntraeger@de.ibm.com, Ard Biesheuvel <ard.biesheuvel@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

I had a look at our relatively complicated logic in
kvm_arch_prepare_memory_region(), and was wondering if there was room to
unify some of this handling between architectures.

(If you haven't seen our implementation, you can find it in
virt/kvm/arm/mmu.c, and it has lovely ASCII art!)

I then had a look at the x86 code, but that doesn't actually do anything
when creating memory regions, which makes me wonder why the arhitectures
differ in this aspect.

The reason we added the logic that we have for arm/arm64 is that we
don't really want to take faults for I/O accesses.  I'm not actually
sure if this is a corretness thing, or an optimization effort, and the
original commit message doesn't really explain.  Ard, you wrote that
code, do you recall the details?

In any case, what we do is to check for each VMA backing a memslot, we
check if the memslot flags and vma flags are a reasonable match, and we
try to detect I/O mappings by looking for the VM_PFNMAP flag on the VMA
and pre-populate stage 2 page tables (our equivalent of EPT/NPT/...).
However, there are some things which are not clear to me:

First, what prevents user space from messing around with the VMAs after
kvm_arch_prepare_memory_region() completes?  If nothing, then what is
the value of the cheks we perform wrt. to VMAs?

Second, why would arm/arm64 need special handling for I/O mappings
compared to other architectures, and how is this dealt with for
x86/s390/power/... ?


Thanks,

    Christoffer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
