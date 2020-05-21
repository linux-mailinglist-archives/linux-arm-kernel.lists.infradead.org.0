Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E931DC429
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 02:49:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rv25LbEJp3cQEnfIsd4C8jU7PCuGFu7PkCWKlqEB5Kg=; b=r5fFPR95JpQwDq
	N/BBFW6TAkWYqyUSkJXNZUHAakQKeV3qN7uvH7A6z+GfXgq/h0tlkQnJCuAXMR3I0RZZA5pg8Isgl
	3zH+EXAMOfQJXM+tpxmVfaCS7q6Oeep8L863v3Q27/1SQlr0xFLVEt3dMLRR9mC5FKpaYjie1ukbf
	3prQ3Xi0MFM4NNrhGnvJmy7ZzS3GdMg31JXeTxYJFH+u6gKvgckXSKtHbzvUlarOcCamhSNUvtajF
	HdPDIzWyEhsDGTn2RvutLOGc8CNRJAjxOiDVRsMZ/TFLSiOeMTm4n8CLPRVpYBHQ2CsjR0wg0i3AZ
	0ZnMoiZ3nrQ6eepdcz+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbZOO-0007Sv-4B; Thu, 21 May 2020 00:49:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbZOG-0007Rk-9w
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 00:48:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 534F6D6E;
 Wed, 20 May 2020 17:48:47 -0700 (PDT)
Received: from [10.163.75.69] (unknown [10.163.75.69])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 959693F68F;
 Wed, 20 May 2020 17:48:45 -0700 (PDT)
Subject: Re: [PATCH V3] arm64/cpufeature: Validate hypervisor capabilities
 during CPU hotplug
To: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
References: <1589248647-22925-1-git-send-email-anshuman.khandual@arm.com>
 <158998676494.231372.15074477766045633803.b4-ty@kernel.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <e2ccbfdd-85ee-f01c-ce02-462d1a76c273@arm.com>
Date: Thu, 21 May 2020 06:18:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <158998676494.231372.15074477766045633803.b4-ty@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_174852_465028_AB343C9A 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: catalin.marinas@arm.com, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/20/2020 11:24 PM, Will Deacon wrote:
> On Tue, 12 May 2020 07:27:27 +0530, Anshuman Khandual wrote:
>> This validates hypervisor capabilities like VMID width, IPA range for any
>> hot plug CPU against system finalized values. KVM's view of the IPA space
>> is used while allowing a given CPU to come up. While here, it factors out
>> get_vmid_bits() for general use.
>>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Marc Zyngier <maz@kernel.org>
>> Cc: Mark Rutland <mark.rutland@arm.com>
>> Cc: James Morse <james.morse@arm.com>
>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Cc: linux-arm-kernel@lists.infradead.org
>> Cc: kvmarm@lists.cs.columbia.edu
>> Cc: linux-kernel@vger.kernel.org
> 
> Applied to arm64 (for-next/cpufeature), thanks!
> 
> [1/1] arm64/cpufeature: Validate hypervisor capabilities during CPU hotplug
>       https://git.kernel.org/arm64/c/c73433fc630c
> 
> But please note that I made some changes to verify_hyp_capabilities() so
> that it's (a) static and (b) uses IS_ENABLED to avoid the dummy function
> definition. I also extended the IS_ENABLED_check so that it doesn't
> conflict with the KVM kconfig changes from Fuad. Please shout if you think
> I'm still missing something.

Normally I would have expected get_kvm_ipa_limit() to be unavailable without
CONFIG_KVM_ARM_HOST, causing a build failure. But it does compile correctly.
Probably the compiler does not really look for get_kvm_ipa_limit() definition
after an early check and bailout on !IS_ENABLED(CONFIG_KVM_ARM_HOST).

Nonetheless, changes looks good. Thank you.

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
