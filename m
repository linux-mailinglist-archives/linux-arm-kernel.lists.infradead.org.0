Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AC9713F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 10:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=irWzJQDdq+H/GTZOCNhvpWoe6NNxA9fCdTXkRB3M00Y=; b=dRUuwDWDj3j0u9YuMNA9KJyP5
	X8lGRjGgfyjIN0rGGkqBFO2GMImvaK3Rh8navtHnOuLl/qOnO51uhm8GB+Q4qmRBkFEjBN/lQOILw
	Lr3nQ/Xt4NmzlX4tN8UoZOmgeOi/AE/meugLf/9Umkya4IV8JItL8RaAl4Va/0BsNxnMOOPGhPfjP
	zTxehDmBjawhH5r8jGKATmPjf9qPu+F5B4tHdmnb2aZat5KeBjswulrDxKakWaJvcZkGr82wyCYSI
	/D4OGPqboNN8+nl5lPpRq7cONM7c1gnSwoOHBB/P27kgGqAouaTFogn1Lq77B9eCjcfbvxRAWLh83
	ny7w94idg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpq80-0008GV-5v; Tue, 23 Jul 2019 08:26:32 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpq7e-0008Cn-Cu
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 08:26:12 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1hpq7Z-0006kD-Aa; Tue, 23 Jul 2019 10:26:05 +0200
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v2] KVM: arm/arm64: Introduce =?UTF-8?Q?kvm=5Fpmu=5Fvc?=
 =?UTF-8?Q?pu=5Finit=28=29=20to=20setup=20PMU=20counter=20idx?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 23 Jul 2019 09:26:04 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <f3f6f9a9-9735-e253-7b5b-3ccf97619a16@arm.com>
References: <1563437710-30756-1-git-send-email-yuzenghui@huawei.com>
 <f3f6f9a9-9735-e253-7b5b-3ccf97619a16@arm.com>
Message-ID: <d5c0d757232935c6446aeaca9afe4416@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: julien.thierry@arm.com, yuzenghui@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 james.morse@arm.com, suzuki.poulose@arm.com, julien.thierry.kdev@gmail.com,
 linux-kernel@vger.kernel.org, wanghaibin.wang@huawei.com,
 andrew.murray@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_012610_635806_6E08B712 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, andrew.murray@arm.com,
 Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-07-23 09:17, Julien Thierry wrote:
> Hi Zenghui,
>
> On 18/07/2019 09:15, Zenghui Yu wrote:
>> We use "pmc->idx" and the "chained" bitmap to determine if the pmc 
>> is
>> chained, in kvm_pmu_pmc_is_chained().  But idx might be 
>> uninitialized
>> (and random) when we doing this decision, through a 
>> KVM_ARM_VCPU_INIT
>> ioctl -> kvm_pmu_vcpu_reset(). And the test_bit() against this 
>> random
>> idx will potentially hit a KASAN BUG [1].
>>
>> In general, idx is the static property of a PMU counter that is not
>> expected to be modified across resets, as suggested by Julien.  It
>> looks more reasonable if we can setup the PMU counter idx for a vcpu
>> in its creation time. Introduce a new function - kvm_pmu_vcpu_init()
>> for this basic setup. Oh, and the KASAN BUG will get fixed this way.
>>
>> [1] https://www.spinics.net/lists/kvm-arm/msg36700.html
>>
>> Fixes: 80f393a23be6 ("KVM: arm/arm64: Support chained PMU counters")
>> Suggested-by: Andrew Murray <andrew.murray@arm.com>
>> Suggested-by: Julien Thierry <julien.thierry@arm.com>
>> Cc: Marc Zyngier <maz@kernel.org>
>> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
>> ---
>>
>> Changes since v1:
>>  - Introduce kvm_pmu_vcpu_init() in vcpu's creation time, move the
>>    assignment of pmc->idx into it.
>>  - Thus change the subject. The old one is "KVM: arm/arm64: Assign
>>    pmc->idx before kvm_pmu_stop_counter()".
>>
>> Julien, I haven't collected your Acked-by into this version. If 
>> you're
>> still happy with the change, please Ack again. Thanks!
>>
>
> Thanks for making the change. This looks good to me:
>
> Acked-by: Julien Thierry <julien.thierry@arm.com>

Applied, thanks both.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
