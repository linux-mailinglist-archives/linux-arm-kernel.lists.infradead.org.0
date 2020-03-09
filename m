Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C99017E444
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:05:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V40SPICPHZXHTfh9jwrbvI7FEDrWM/ysKMqIWVEDFMA=; b=U43uGSmcJG93A4
	2RhPKUEp8jEtpuwBbx5cqFub1VVG5MQqA0FpotYg7mn8wYx+O5wu03M1Q2iW9yXDlKlKaOrIOp60r
	GsAYzTmkXcKYCXBETKJSfmOOiOK4BS209PPdgY9y3IXYXEDJtn5j+ZhhQes25EqsuRBS9HlQ1MtqX
	OSK9pjQ/CTlB7Otlxm4CG4Fd0MgdQnb1to4L3aCoU3xpnploLDHa9/RyF6j1vKfwhggWFiK9HJ9O8
	7E03pzUFDiEqf0cxaDUAbhdQcXqpEgxRHw8JlJAObWysfwJo+YMRC0cdWkpAXuegrgCPVK4qRGp+4
	wdCKcl91NJGE1i7/anhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBKu4-0003rZ-T4; Mon, 09 Mar 2020 16:05:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBKtr-00037h-GH
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:05:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A0A630E;
 Mon,  9 Mar 2020 09:05:01 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 82B0A3F534;
 Mon,  9 Mar 2020 09:05:00 -0700 (PDT)
Subject: Re: [PATCH] arm64: entry: unmask IRQ in el0_sp()
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20200228145942.10675-1-mark.rutland@arm.com>
 <2680f3b0-a457-ba9f-322c-2c6e9f079e87@arm.com>
 <20200228160809.GK36089@lakrids.cambridge.arm.com>
 <20200305203021.GA29446@willie-the-truck>
From: James Morse <james.morse@arm.com>
Message-ID: <2147529b-ff22-3b63-ae9c-6a97754dd7eb@arm.com>
Date: Mon, 9 Mar 2020 16:04:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200305203021.GA29446@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_090503_593455_CF7C837F 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark, Will,

On 05/03/2020 20:30, Will Deacon wrote:
> On Fri, Feb 28, 2020 at 04:08:09PM +0000, Mark Rutland wrote:
>> On Fri, Feb 28, 2020 at 03:37:46PM +0000, James Morse wrote:
>>> On 28/02/2020 14:59, Mark Rutland wrote:
>>>> Let's do so now, and make it interruptible as with most other
>>>> synchronous exception handlers.
>>>
>>> I think you want:
>>> Fixes: bfe298745afc9548 ("arm64: entry-common: don't touch daif before bp-hardening")
>>>
>>> on this as, bfe298745afc9548 changed the behaviour: local_daif_restore(DAIF_PROCCTX) was
>>> called before arm64_notify_die(), now its not.
>>>
>>> With that,
>>> Reviewed-by: James Morse <james.morse@arm.com>
>>
>> Ah; I missed that subtlety.
>>
>> I assume that Catalin can fold those in when applying. Otherwise I'll
>> add them for a v2.
> 
> If you want v2 to go in as a fix, please can you explain why this is a
> problem (beyond disabling interrupts for longer than necessary) in the
> commit message?

Good news, its not broken. I wrongly-assumed calling arm64_notify_die() and then
force_sig_fault() with both IRQ-unmasked and IRQ-masked would lead to problems, but the
guts of force_sig_fault() is all wrapped in spin_lock_irqsave().


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
