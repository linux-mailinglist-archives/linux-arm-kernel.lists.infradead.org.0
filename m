Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0AA61CAB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 12:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JobdBi64KgnfAxfG1OlnvexILw2kDiw74UPnICjYZ9w=; b=OdhbYN2/TKiUVJ
	DTJSPKeOIf3TKaK0YeMpsOwxM8ypc8io6hDwZ/frIv9PMAaWtZcTcSOrwD1hvujYxQ1m3Q7m9CG5N
	nxtgmoAcfh8Fi1bGZy+JO+APLXSqZ3eaF+UPKITYFsnj2ISkcfqtAIdb2z7FD71sm1KBPkuUEa34r
	r+GoTXYiEOReg2hpulSrj1q+L4ULJMcR+7kY5vn2aqYtVuWdS2bzNwdaAQCI+jgMRC4PrwDTniblM
	73gmoZlahvMDccKnEwyZ3T7Mq6H34ZRJRuRPZpvIM1dONPZawdx9xLh74APw2m5QSqpHXXgM4B16X
	n8aKPIMmIaqq6MShvSCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkQRw-0001lI-9B; Mon, 08 Jul 2019 10:00:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkQRf-0001kS-Ge
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 10:00:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF6CF360;
 Mon,  8 Jul 2019 03:00:23 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D6CEA3F246;
 Mon,  8 Jul 2019 03:00:20 -0700 (PDT)
Subject: Re: [PATCH RFC 2/4] arm64: mm: Add RAS extension system register
 check to SEA handling
To: Tyler Baicar OS <baicar@os.amperecomputing.com>
References: <1562086280-5351-1-git-send-email-baicar@os.amperecomputing.com>
 <1562086280-5351-3-git-send-email-baicar@os.amperecomputing.com>
From: James Morse <james.morse@arm.com>
Message-ID: <df262b97-eda2-0556-d6ef-532a0d697131@arm.com>
Date: Mon, 8 Jul 2019 11:00:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1562086280-5351-3-git-send-email-baicar@os.amperecomputing.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_030027_644693_EEC91126 
X-CRM114-Status: GOOD (  17.59  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Matteo.Carlini@arm.com" <Matteo.Carlini@arm.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "tony.luck@intel.com" <tony.luck@intel.com>, "bp@alien8.de" <bp@alien8.de>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "Andrew.Murray@arm.com" <Andrew.Murray@arm.com>,
 Open Source Submission <patches@amperecomputing.com>,
 "lenb@kernel.org" <lenb@kernel.org>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Tyler,

On 02/07/2019 17:51, Tyler Baicar OS wrote:
> On systems that support the ARM RAS extension, synchronous external
> abort syndrome information could be captured in the core's RAS extension
> system registers. So, when handling SEAs check the RAS system registers
> for error syndrome information.

> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index 2d11501..76b42ca 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -37,6 +37,7 @@
>  #include <asm/pgtable.h>
>  #include <asm/tlbflush.h>
>  #include <asm/traps.h>
> +#include <asm/ras.h>
>  
>  struct fault_info {
>  	int	(*fn)(unsigned long addr, unsigned int esr,
> @@ -632,6 +633,8 @@ static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
>  
>  	inf = esr_to_fault_info(esr);
>  
> +	arch_arm_ras_report_error();
> +
>  	/*
>  	 * Return value ignored as we rely on signal merging.
>  	 * Future patches will make this more robust.
> 

If we interrupted a preemptible context, do_sea() is preemptible too... This means we
can't know if we're still running on the same CPU as the one that took the external-abort.
(until this series, it hasn't mattered).

Fixing this means cramming something into entry.S's el1_da, as this may unmask interrupts
before calling do_mem_abort(). But its going to be ugly because some of do_mem_abort()s
ESR values need to be preemptible because they sleep, e.g. page-faults calling
handle_mm_fault().
For do_sea(), do_exit() will 'fix' the preempt count if we kill the thread, but if we
don't, it still needs to be balanced. Doing all this in assembly is going to be unreadable!

Mark Rutland has a series to move the entry assembly into C [0]. Based on that that it
should be possible for the new el1_abort() to spot a Synchronous-External-Abort ESR, and
wrap the do_mem_abort() with preempt enable/disable, before inheriting the flags. (which
for synchronous exceptions, I think we should always do)


Thanks,

James

[0] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/entry-deasm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
