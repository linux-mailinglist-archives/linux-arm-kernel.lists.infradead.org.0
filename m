Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 135F5CA141
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 17:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqJSr1iV2VNRLbJxh43pJHWt8VUBhdm+A3BZ6iqTfkA=; b=cV+1SG+s1d6e3a
	1+PGzYfEBAvrblClbfXq0lFD4/tRl78AifVRkc+ZljgAI97MjbSl9Nx9QKJBd6Gxug5U2Jgx4IW2H
	u7DLaEq7EjRQHchTASXzfJ+QsZH60UDBCDA/hGugyO2Uf83xAi7Yg4JGFiBg5gHadHd9jaWNGtOY7
	5fvUaB+AmLi2oPLW7NynMttYSC0Gzz992Zg2CID14HRtPLOudz+yBa/udYSf+v2arClx78YekZPJK
	Bbpw5tMQY/I0CkYEAJl76D0yQp7NEfwh9Aas6CQHuOVfGRfRsU2D6HxeU7jDIjq1vZVDMkBK/bym5
	7bwdZeAU1mJs1wfNB4kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3DD-0008SU-S2; Thu, 03 Oct 2019 15:40:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3D6-0007y1-CX
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 15:40:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D525337;
 Thu,  3 Oct 2019 08:40:05 -0700 (PDT)
Received: from arrakis.emea.arm.com (unknown [10.1.196.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 758053F534;
 Thu,  3 Oct 2019 08:40:04 -0700 (PDT)
Date: Thu, 3 Oct 2019 16:40:02 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: mm: avoid virt_to_phys(init_mm.pgd)
Message-ID: <20191003154002.GH21629@arrakis.emea.arm.com>
References: <20191003094932.10216-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003094932.10216-1-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_084008_477025_8A517E3F 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Will Deacon <will@kernel.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 10:49:32AM +0100, Mark Rutland wrote:
> If we take an unhandled fault in the kernel, we call show_pte() to dump
> the {PGDP,PGD,PUD,PMD,PTE} values for the corresponding page table walk,
> where the PGDP value is virt_to_phys(mm->pgd).
> 
> The boot-time and runtime kernel page tables, init_pg_dir and
> swapper_pg_dir respectively, are kernel symbols. Thus, it is not valid
> to call virt_to_phys() on either of these, though we'll do so if we take
> a fault on a TTBR1 address.
> 
> When CONFIG_DEBUG_VIRTUAL is not selected, virt_to_phys() will silently
> fix this up. However, when CONFIG_DEBUG_VIRTUAL is selected, this
> results in splats as below. Depending on when these occur, they can
> happen to suppress information needed to debug the original unhandled
> fault, such as the backtrace:
> 
> | Unable to handle kernel paging request at virtual address ffff7fffec73cf0f
> | Mem abort info:
> |   ESR = 0x96000004
> |   EC = 0x25: DABT (current EL), IL = 32 bits
> |   SET = 0, FnV = 0
> |   EA = 0, S1PTW = 0
> | Data abort info:
> |   ISV = 0, ISS = 0x00000004
> |   CM = 0, WnR = 0
> | ------------[ cut here ]------------
> | virt_to_phys used for non-linear address: 00000000102c9dbe (swapper_pg_dir+0x0/0x1000)
> | WARNING: CPU: 1 PID: 7558 at arch/arm64/mm/physaddr.c:15 __virt_to_phys+0xe0/0x170 arch/arm64/mm/physaddr.c:12
> | Kernel panic - not syncing: panic_on_warn set ...
> | SMP: stopping secondary CPUs
> | Dumping ftrace buffer:
> |    (ftrace buffer empty)
> | Kernel Offset: disabled
> | CPU features: 0x0002,23000438
> | Memory Limit: none
> | Rebooting in 1 seconds..
> 
> We can avoid this by ensuring that we call __pa_symbol() for
> init_mm.pgd, as this will always be a kernel symbol. As the dumped
> {PGD,PUD,PMD,PTE} values are the raw values from the relevant entries we
> don't need to handle these specially.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Will Deacon <will@kernel.org>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
