Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE36BDAF27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6mGnKN0jtYvlUGw5isggc6GJOBrH3c5bt1qsy+CVzK8=; b=lesl5XJke5iFtbXrhoRV7nPea
	OtVKgGrRHpqEXmNLQhKvTUKQzrcq9vItq4AjzNpKELWN7TvMMeEaHT9lJ+8rnLG37KOvU8ugd61W0
	fSGNWooztM/SJfeU9csweVsm7kLCZy5UwlXorsibymBXLydLgbrXW4ge0fU0ae8nYWfFGloK3LcxE
	4LP4gv5/JmMkR7NRjfGINxji8GjBUCxHs/5T4O72ht19YxqBfUcI0Aft0kFQR/SkLKKlzAIF6Enln
	q6q9sAExYVGXIqg3EaNtkoV6EZCKnktSBagdU6WVWh2DDinGtw9B2q6YGoNF7pObzrYx4tAFMwL36
	2oYvwtJRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6Qs-0003kJ-24; Thu, 17 Oct 2019 14:07:14 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6Qj-0003j8-W7
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:07:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2CC121993;
 Thu, 17 Oct 2019 07:06:55 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AFFDC3F6C4;
 Thu, 17 Oct 2019 07:06:53 -0700 (PDT)
Subject: Re: [PATCH 03/11] arm64: cpufeature: handle conflicts based on
 capability
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
 <1571300065-10236-4-git-send-email-amit.kachhap@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <eff8aa9a-103c-af64-d3de-dad5629cdb65@arm.com>
Date: Thu, 17 Oct 2019 15:06:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <1571300065-10236-4-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_070706_079460_3BCEA54D 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

On 17/10/2019 09:14, Amit Daniel Kachhap wrote:
> From: Kristina Martsenko <kristina.martsenko@arm.com>
> 
> Each system capability can be of either boot, local, or system scope,
> depending on when the state of the capability is finalized. When we
> detect a conflict on a late CPU, we either offline the CPU or panic the
> system. We currently always panic if the conflict is caused by a boot
> scope capability, and offline the CPU if the conflict is caused by a
> local or system scope capability.
> 
> We're going to want to add a new capability (for pointer authentication)
> which needs to be boot scope but doesn't need to panic the system when a
> conflict is detected. So add a new flag to specify whether the
> capability requires the system to panic or not. Current boot scope
> capabilities are updated to set the flag, so there should be no
> functional change as a result of this patch.
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---

With the early parking of the CPUs without ptr_auth, I believe this
change is not needed, as long as we use ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU
flag for the ptr_auth capability. Moreover, we may want to retain
the "panic" situation, as we don't expect a secondary CPU to turn
up without the ptr_auth and have a "conflict".

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
