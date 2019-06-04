Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DE634AA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozbdYFPF7FxAU6NzCFMee/pkltcD3nI97uPXwG5wp1c=; b=JsTUGAuKOcU2iD
	KTz4ax+JHPu0PQX9pm8khTmoSrKG574JVB57jA0yEgt/0CcolDz3WbNoytqqL2e9FRvsOrH9uXvsa
	ecugu66bajkFofWyTYJIE5xrq5s7y9nZZeB1eEuegeRxwH+syPAls1hYMN9oihAjJN1I599SJN913
	Bl6xhymVSjD9gruAKPIDSrxmLGLKt7vuO+3zxOsPmgt+e8Dr1emh6Rr60vzmRjywr9UMDS7K7GJWJ
	BHWns6J0XrI55W3KykN9i544R85jZyVpUVAlAkcBxwUa5Dkd0Ljd3va8BiJGcUCd/PJ6Z3xVUCSEM
	Bs75nD9j+VyXE1JePdkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAdp-000473-HD; Tue, 04 Jun 2019 14:42:21 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAdi-00046c-P8
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:42:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F094A78;
 Tue,  4 Jun 2019 07:42:13 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4656E3F690; Tue,  4 Jun 2019 07:42:12 -0700 (PDT)
Date: Tue, 4 Jun 2019 15:42:09 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 3/4] arm64/mm: Consolidate page fault information
 capture
Message-ID: <20190604144209.GJ6610@arrakis.emea.arm.com>
References: <1559544085-7502-1-git-send-email-anshuman.khandual@arm.com>
 <1559544085-7502-4-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559544085-7502-4-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_074214_825900_3242152C 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 12:11:24PM +0530, Anshuman Khandual wrote:
> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index da02678..4bb65f3 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -435,6 +435,14 @@ static bool is_el0_instruction_abort(unsigned int esr)
>  	return ESR_ELx_EC(esr) == ESR_ELx_EC_IABT_LOW;
>  }
>  
> +/*
> + * This is applicable only for EL0 write aborts.
> + */
> +static bool is_el0_write_abort(unsigned int esr)
> +{
> +	return (esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM);
> +}

What makes this EL0 only?

> +
>  static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  				   struct pt_regs *regs)
>  {
> @@ -443,6 +451,9 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  	vm_fault_t fault, major = 0;
>  	unsigned long vm_flags = VM_READ | VM_WRITE;
>  	unsigned int mm_flags = FAULT_FLAG_ALLOW_RETRY | FAULT_FLAG_KILLABLE;
> +	bool is_user = user_mode(regs);
> +	bool is_el0_exec = is_el0_instruction_abort(esr);
> +	bool is_el0_write = is_el0_write_abort(esr);
>  
>  	if (notify_page_fault(regs, esr))
>  		return 0;
> @@ -454,12 +465,12 @@ static int __kprobes do_page_fault(unsigned long addr, unsigned int esr,
>  	if (faulthandler_disabled() || !mm)
>  		goto no_context;
>  
> -	if (user_mode(regs))
> +	if (is_user)
>  		mm_flags |= FAULT_FLAG_USER;
>  
> -	if (is_el0_instruction_abort(esr)) {
> +	if (is_el0_exec) {
>  		vm_flags = VM_EXEC;
> -	} else if ((esr & ESR_ELx_WNR) && !(esr & ESR_ELx_CM)) {
> +	} else if (is_el0_write) {
>  		vm_flags = VM_WRITE;
>  		mm_flags |= FAULT_FLAG_WRITE;
>  	}

This can be triggered by an EL1 write to a user mapping, so is_el0_write
is misleading.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
