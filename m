Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0D5137642
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 19:42:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UHjtU99HZfH16nhvfn0muGTYTTiOM7ysxLrmSeTHyNA=; b=nHL5UujMLjtrn/gLZ7v40t4/8
	FKrWxiTDmVmTG39/9vhl4SN0mOGuz/hHT4VWVn+athyZFgZFbnLHGCdmqN28vIV4eqqHVu//eQ5Yf
	WVm9PSuywZV9LtQrdnnUOyVTVgRaBzd3aVs238y3uWiZLsvzq3+X1Js+qHNp8aWQlIBFxI94lsQOn
	qLwe+oH3MqJaG36BGxJ4/pVKQsiKi5ZlXCzadTREVMgY7sSSMIg5MvLVvFxwrZXaObpnpQsP42XsX
	lQKi7/lgPDbBzGK7QPMpm9u/x5V9C0b4RjAM35Y6Ua7YVgqqT2rop/b77Jcw3DFcxn7b0bjR4tAwN
	gH88fILkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipzEQ-0005Ze-5A; Fri, 10 Jan 2020 18:42:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipzEI-0005Z2-PZ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 18:41:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D11E830E;
 Fri, 10 Jan 2020 10:41:51 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A8B03F6C4;
 Fri, 10 Jan 2020 10:41:50 -0800 (PST)
Subject: Re: [PATCH v2 2/7] arm64: fpsimd: Make sure SVE setup is complete
 before SIMD is used
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20191217183402.2259904-1-suzuki.poulose@arm.com>
 <20191217183402.2259904-3-suzuki.poulose@arm.com>
 <20200110115132.GA8786@arrakis.emea.arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <aa5a4242-7684-4212-f03e-fdf3a5784dfb@arm.com>
Date: Fri, 10 Jan 2020 18:41:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200110115132.GA8786@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_104154_874603_72562DE3 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ard.biesheuvel@linaro.org, maz@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 christoffer.dall@arm.com, will@kernel.org, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/01/2020 11:51, Catalin Marinas wrote:
> On Tue, Dec 17, 2019 at 06:33:57PM +0000, Suzuki K Poulose wrote:
>> In-kernel users of NEON rely on may_use_simd() to check if the SIMD
>> can be used. However, we must initialize the SVE before SIMD can
>> be used. Add a sanity check to make sure that we have completed the
>> SVE setup before anyone uses the SIMD.
>>
>> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>> ---
>> Discussion here : https://lkml.kernel.org/r/20191014145204.GS27757@arm.com
> 
> Re-reading this thread, I think the conclusion was more towards having a
> WARN_ON in system_supports_fpsimd() (or may_use_simd()). We don't expect
> code to start using neon before the SMP is initialised (other than
> early_initcall(), the rest run after the secondary CPUs are brought up).

Thanks for pointing out. I missed this from the Dave's last email.
I have added a WARN_ON(!system_capabilities_finalized()) to
may_use_simd() for the next version.

Thanks for the review !

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
