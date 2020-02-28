Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2621D173B91
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:38:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yu2tS8P6VUtPCV6kgseHCBK+NtDmc83NRfuh8kQn4Kg=; b=V7F2K5AMlvFkFB
	JBx/2Bjy2qeFORzbMceb7+nB7UJJ/QeoIsbyglKnr8v7u2F9jjdWU9HiCaRr0dG5KM4bEwZkxFr39
	o/Hw5PDPe2RBGaPB/2ZVm7jlJbaN8H2oYI1fXm2Yart83oBTAvds+I+0XqJ1uivqlGvXhhMmObp7e
	b04hLrOg4GWdnJIUi335wG1ye8wWIQJcff19LT0jkBzVNSTiOExvRaYqM9n5MXGoKwm2zC9Fd5zeR
	fo1UoT4C/iT03jh90WLwDj+Vp7Zvv86bTUSKUkxSl6l06ILfYDs++d26VIjbPsWgSQ5lBzxec0lUW
	WoiFH83MqFvynkCNvy6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hiC-0003M8-1D; Fri, 28 Feb 2020 15:38:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hi3-0003LU-6y
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 15:37:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A1C7131B;
 Fri, 28 Feb 2020 07:37:48 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0426D3F73B;
 Fri, 28 Feb 2020 07:37:47 -0800 (PST)
Subject: Re: [PATCH] arm64: entry: unmask IRQ in el0_sp()
To: Mark Rutland <mark.rutland@arm.com>
References: <20200228145942.10675-1-mark.rutland@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <2680f3b0-a457-ba9f-322c-2c6e9f079e87@arm.com>
Date: Fri, 28 Feb 2020 15:37:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200228145942.10675-1-mark.rutland@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_073751_302836_483C8581 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 28/02/2020 14:59, Mark Rutland wrote:
> Currently, the EL0 SP alignment handler masks IRQs unnecessarily. It
> does so due to historic code sharing of the EL0 SP and PC alignment
> handlers, and branch predictor hardening applicable to the EL0 SP
> handler.
> 
> We began masking IRQs in the EL0 SP alignment handler in commit:
> 
>   5dfc6ed27710c42c ("arm64: entry: Apply BP hardening for high-priority synchronous exception")
> 
> ... as this shared code with the EL0 PC alignment handler, and branch
> predictor hardening made it necessary to disable IRQs for early parts of
> the EL0 PC alignment handler. It was not necessary to mask IRQs during
> EL0 SP alignment exceptions, but it was not considered harmful to do so.
> 
> This masking was carried forward into C code in commit:
> 
>   582f95835a8fc812 ("arm64: entry: convert el0_sync to C")
> 
> ... where the SP/PC cases were split into separate handlers, and the
> masking duplicated.
> 
> Subsequently the EL0 PC alignment handler was refactored to perform
> branch predictor hardening before unmasking IRQs, in commit:
> 
>   bfe298745afc9548 ("arm64: entry-common: don't touch daif before bp-hardening")
> 
> ... but the redundant masking of IRQs was not removed from the EL0 SP
> alignment handler.

Bother.


> Let's do so now, and make it interruptible as with most other
> synchronous exception handlers.

I think you want:
Fixes: bfe298745afc9548 ("arm64: entry-common: don't touch daif before bp-hardening")

on this as, bfe298745afc9548 changed the behaviour: local_daif_restore(DAIF_PROCCTX) was
called before arm64_notify_die(), now its not.

With that,
Reviewed-by: James Morse <james.morse@arm.com>


Thanks!

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
