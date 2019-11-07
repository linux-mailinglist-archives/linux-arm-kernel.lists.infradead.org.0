Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A994BF31EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:04:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YCTeu4MhRimStOKUfRGRI8+GQTnq68kYBHjFGI7sy/8=; b=matjuKzJ3ISd/oWXqQEZrK+rP
	W5FOYcFTxMIWzFRgbVavIWMlNmDWCyGHfEEJURJ2czCSzAclQWf6XgYs9djaKKAMQb+wMCtodnkbh
	nKJV7Fv/FManEyk1oTVZmGKgwlrhA60pG9Fa++9YGDWkDVNJTBwCPyMIpZSokOhZUmCKqDKtRuqAp
	KIzV1+UMPNZrz51LB5ZD1S8d5rit2oEJ0hhy4FI1wUgKAbI4Y1t2C/rdkmxxDOiLb6NJy2npSEK2M
	kv+76gXYbEsJcncHy7r31WQzO7PV0dPJMDPDho6DfMGdGk31OLv9HasY+X459119U2SQbIS7iVUNX
	xadEXTvEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjKL-00058Z-6V; Thu, 07 Nov 2019 15:04:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjKB-00057y-P7
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 15:03:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED52B31B;
 Thu,  7 Nov 2019 07:03:50 -0800 (PST)
Received: from localhost.localdomain (unknown [10.1.196.67])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5AF6D3F71A;
 Thu,  7 Nov 2019 07:03:50 -0800 (PST)
Subject: Re: [PATCH v7 3/4] arm64: Don't use KPTI where we have E0PD
To: Mark Brown <broonie@kernel.org>
References: <20191106130052.10642-1-broonie@kernel.org>
 <20191106130052.10642-4-broonie@kernel.org>
 <05bafb8a-9019-701c-f744-a8d014771b87@arm.com>
 <20191107143750.GG6159@sirena.co.uk>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <091c5d4c-0292-0dde-043f-f5f9f0fac3af@arm.com>
Date: Thu, 7 Nov 2019 15:03:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191107143750.GG6159@sirena.co.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_070351_857706_089B48A0 
X-CRM114-Status: GOOD (  15.39  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/11/2019 14:37, Mark Brown wrote:
> On Thu, Nov 07, 2019 at 12:01:10PM +0000, Suzuki K Poulose wrote:
>> On 06/11/2019 13:00, Mark Brown wrote:
> 
>>> +     /*
>>> +      * E0PD does a similar job to KPTI so can be used instead
>>> +      * where available.
>>> +      */
>>> +     if (IS_ENABLED(CONFIG_ARM64_E0PD)) {
>>> +             ftr = read_sysreg_s(SYS_ID_AA64MMFR2_EL1);
> 
>> I am trying to write down the rationale of checking this per-CPU.
> 
>> Given that this gets run on all individual CPUs, via unmap_kernel_at_el0()
>> and the decision of choosing KPTI is affected by the lack of the E0PD feature
>> when it is helpful, having CPU local check is fine. Also this gives us the
>> advantage of choosing an nG mapping when the boot CPU indicates the need.
> 
> Well, it's mainly the fact that this runs really early on in boot before
> the cpufeature code has fully initialized so as with the existing code
> immediately below for identifying TX1 we can't rely on the cpufeature
> code being done.

Yes, I acknowledge that. I was writing it down to clear why this was
fine and why it has its own advantage. This may not be obvious for
someone who reads it later. So having this in a comment helps to
avoid staring at it.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
