Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A02381B68
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 15:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWAuVoxbLzswniB+Yx/m3MilxPaszQTuB/qFumyfb6Q=; b=gm1R7GBGInilLM
	ExWnEWRRbDZGnS5LLrKOJbIT8ps+okqIXr9fw2vo1LvedIZRmdyeJBICOV49ZQSogXfYgq0jJKgxp
	ipOkxa85pbEpH+77kTbn8ydike1voZlR1UHZLBBpnfb0BRkWCNYRCQYYafT3PHKPs3k8PNBMHCa7o
	62oB/2Fa5hAiiq/CTI5c+t1wd3L7dRF9cEUSzcaG4hIhSH7/J9e1kCG7ZKggXs72eI6uODPHP71RP
	oFbK9IYrh1bjRRVuiGnEO7H5vpnJDPsT7aJh/BMuPNL1hSrFcZUhBsQGX3pHOjMCJebXqyH3BT906
	h8LYFsIvPoGLNLUVzrRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucoi-0005x7-9J; Mon, 05 Aug 2019 13:14:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hucoW-0005wm-4G
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 13:14:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B021D337;
 Mon,  5 Aug 2019 06:14:11 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA2003F706;
 Mon,  5 Aug 2019 06:14:09 -0700 (PDT)
Subject: Re: [PATCH 3/9] KVM: arm64: Implement PV_FEATURES call
To: Marc Zyngier <maz@kernel.org>
References: <20190802145017.42543-1-steven.price@arm.com>
 <20190802145017.42543-4-steven.price@arm.com> <20190803122124.7700f700@why>
From: Steven Price <steven.price@arm.com>
Message-ID: <1e0a03b4-1fb6-cbe2-fb7a-8ed39341a187@arm.com>
Date: Mon, 5 Aug 2019 14:14:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190803122124.7700f700@why>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_061412_216327_0DD59695 
X-CRM114-Status: GOOD (  17.53  )
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
Cc: =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>, kvm@vger.kernel.org,
 Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/08/2019 12:21, Marc Zyngier wrote:
> On Fri,  2 Aug 2019 15:50:11 +0100
> Steven Price <steven.price@arm.com> wrote:
> 
>> This provides a mechanism for querying which paravirtualized features
>> are available in this hypervisor.
>>
>> Also add the header file which defines the ABI for the paravirtualized
>> clock features we're about to add.
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>>  arch/arm64/include/asm/pvclock-abi.h | 20 ++++++++++++++++++++
>>  include/linux/arm-smccc.h            | 14 ++++++++++++++
>>  virt/kvm/arm/hypercalls.c            |  9 +++++++++
>>  3 files changed, 43 insertions(+)
>>  create mode 100644 arch/arm64/include/asm/pvclock-abi.h
>>
>> diff --git a/arch/arm64/include/asm/pvclock-abi.h b/arch/arm64/include/asm/pvclock-abi.h
>> new file mode 100644
>> index 000000000000..1f7cdc102691
>> --- /dev/null
>> +++ b/arch/arm64/include/asm/pvclock-abi.h
>> @@ -0,0 +1,20 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (C) 2019 Arm Ltd. */
>> +
>> +#ifndef __ASM_PVCLOCK_ABI_H
>> +#define __ASM_PVCLOCK_ABI_H
>> +
>> +/* The below structures and constants are defined in ARM DEN0057A */
>> +
>> +struct pvclock_vcpu_stolen_time_info {
>> +	__le32 revision;
>> +	__le32 attributes;
>> +	__le64 stolen_time;
>> +	/* Structure must be 64 byte aligned, pad to that size */
>> +	u8 padding[48];
>> +} __packed;
>> +
>> +#define PV_VM_TIME_NOT_SUPPORTED	-1
> 
> Isn't the intent for this to be the same value as
> SMCCC_RET_NOT_SUPPORTED?

Yes it is, I guess there's not much point defining it again.

>> +#define PV_VM_TIME_INVALID_PARAMETERS	-2
> 
> It overlaps with SMCCC_RET_NOT_REQUIRED. Is that a problem? Should we
> consider a spec change for this?

Actually INVALID_PARAMETERS is only for Live Physical Time, since we're
not implementing it here, this can go as well.

Thanks,

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
