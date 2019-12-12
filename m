Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D47511D0DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 16:22:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=swq4v4PUVyv51IKG9SP/I2F9c4Lp88C49VolE96rW2I=; b=b7niLqqkDlpy+NUWZ9Ige3FBx
	jDwraHSssWGiuD9ZtjMKxilM3yiFQkq8PGRwLINJChIzrm2D1gDDJe2Fv9vUTuDAZ37WoGwkNZ7CM
	82KYVtIoDchTAppPtoyt7y+IJeLNlm4bAqkgHFf9A0yUJNIcuO7cxY5vzLRAlgP6h9zxQvS/RP0eD
	QI5OL96mYysn8YpOpl0RCGEm21IQTYjvdvLbSEpu+19zZxP3o5zwzP/7gq/w20khGA/gXX1M7s8Dg
	UT1GtA7bgLbZksBQcY7tnr5ziJZ/Gv8m7t4hpjuqtuezpdbhL82CwyOTlEe0gtjRJyA/OiHqvhd/H
	z1HYqw1Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifQIK-0001OJ-81; Thu, 12 Dec 2019 15:22:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifQIC-0001NV-Fy
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 15:22:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A559030E;
 Thu, 12 Dec 2019 07:22:15 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 88AC73F6CF;
 Thu, 12 Dec 2019 07:22:14 -0800 (PST)
Subject: Re: [PATCH] arm64: Introduce ISAR6 CPU ID register
To: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>
References: <1576145663-9909-1-git-send-email-anshuman.khandual@arm.com>
 <20191212144633.GE46910@lakrids.cambridge.arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <be707b09-6469-d12f-07d5-50d574dc7284@arm.com>
Date: Thu, 12 Dec 2019 15:22:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191212144633.GE46910@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_072216_576860_E507D51A 
X-CRM114-Status: GOOD (  15.40  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/12/2019 14:46, Mark Rutland wrote:
> On Thu, Dec 12, 2019 at 03:44:23PM +0530, Anshuman Khandual wrote:
>> +#define ID_ISAR6_JSCVT_SHIFT		0
>> +#define ID_ISAR6_DP_SHIFT		4
>> +#define ID_ISAR6_FHM_SHIFT		8
>> +#define ID_ISAR6_SB_SHIFT		12
>> +#define ID_ISAR6_SPECRES_SHIFT		16
>> +#define ID_ISAR6_BF16_SHIFT		20
>> +#define ID_ISAR6_I8MM_SHIFT		24
> 
>> @@ -399,6 +399,7 @@ static const struct __ftr_reg_entry {
>>   	ARM64_FTR_REG(SYS_ID_ISAR4_EL1, ftr_generic_32bits),
>>   	ARM64_FTR_REG(SYS_ID_ISAR5_EL1, ftr_id_isar5),
>>   	ARM64_FTR_REG(SYS_ID_MMFR4_EL1, ftr_id_mmfr4),
> 
>> +	ARM64_FTR_REG(SYS_ID_ISAR6_EL1, ftr_generic_32bits),
> 
> Using ftr_generic_32bits exposes the lowest-common-denominator for all
> 4-bit fields in the register, and I don't think that's the right thing
> to do here, because:
> 
> * We have no idea what ID_ISAR6 bits [31:28] may mean in future.
> 
> * AFAICT, the instructions described by ID_ISAR6.SPECRES (from the
>    ARMv8.0-PredInv extension) operate on the local PE and are not
>    broadcast. To make those work as a guest expects, the host will need
>    to do additional things (e.g. to preserve that illusion when a vCPU is
>    migrated from one pCPU to another and back).
> 
> Given that, think we should add an explicit ftr_id_isar6 which only
> exposes the fields that we're certain are safe to expose to a guest
> (i.e. without SPECRES).

Agree. Thanks for pointing this out. I recommended the usage of
generic_32bits table without actually looking at the feature
definitions.

Anshuman,

Sorry about this.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
