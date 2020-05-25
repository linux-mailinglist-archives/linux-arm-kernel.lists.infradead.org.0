Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2751D1E0E95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 14:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8YI5HAUqfrQAwfYNyaS9Yy0waH8GnRxQVVg/NchwG0=; b=Gl1dwr1QP1CQ7j
	YTvWM25RHKiK8i2ChD5gbwpdcjq2MEDB9VNGY34Skc14Vn2xTMSvhvCPJpEjKFQZYWo0GDZbGk518
	UydH0IKi5tnxEeSXaBwYB04rnctIAl+pU1cb5jhd0LaFrVy+S19W7yQKQg94u9+NI1tQ6uIvyf0Jh
	7qia+7i6eGmZ5hT2EQZTTPpac58yzmn34NpVHdCxipfs4fhBCJml/PiA6cnLqslj1kshd+biQCSYs
	pVSZEdeszcrp6gLsabQNWzNsd8V4iLRW/tzeBAgNJY9byp0mheVOaOnVx1L8W0Rt5Uh3jy7jrhT+U
	MMjxz48RLFu1FzjZzF5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCOp-0007TY-Q5; Mon, 25 May 2020 12:40:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCOU-0007Sd-In
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 12:39:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B57DF31B;
 Mon, 25 May 2020 05:39:47 -0700 (PDT)
Received: from [10.163.77.62] (unknown [10.163.77.62])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B1F43F52E;
 Mon, 25 May 2020 05:39:45 -0700 (PDT)
Subject: Re: [PATCH V4 00/17] arm64/cpufeature: Introduce ID_PFR2, ID_DFR1,
 ID_MMFR5 and other changes
To: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
References: <1589881254-10082-1-git-send-email-anshuman.khandual@arm.com>
 <159007243559.201193.1705879548179051424.b4-ty@kernel.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <15a06377-4f65-3154-3a5f-bd393e22614f@arm.com>
Date: Mon, 25 May 2020 18:09:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <159007243559.201193.1705879548179051424.b4-ty@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_053950_709592_793F9621 
X-CRM114-Status: GOOD (  14.19  )
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
Cc: catalin.marinas@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-kernel@vger.kernel.org, maz@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/21/2020 08:49 PM, Will Deacon wrote:
> On Tue, 19 May 2020 15:10:37 +0530, Anshuman Khandual wrote:
>> This series is primarily motivated from an adhoc list from Mark Rutland
>> during our previous ID_ISAR6 discussion [1]. The current proposal also
>> accommodates some more suggestions from Will and Suzuki.
>>
>> This series adds missing 32 bit system registers (ID_PFR2, ID_DFR1 and
>> ID_MMFR5), adds missing features bits on all existing system registers
>> (32 and 64 bit) and some other miscellaneous changes. While here it also
>> includes a patch which does macro replacement for various open bits shift
>> encodings for various CPU ID registers. There is a slight re-order of the
>> patches here as compared to the previous version (V1).
>>
>> [...]
> 
> Applied to arm64 (for-next/cpufeature), thanks!
> 
> [01/17] arm64/cpufeature: Add explicit ftr_id_isar0[] for ID_ISAR0 register
>         https://git.kernel.org/arm64/c/2a5bc6c47bc3
> [02/17] arm64/cpufeature: Drop TraceFilt feature exposure from ID_DFR0 register
>         https://git.kernel.org/arm64/c/1ed1b90a0594
> [03/17] arm64/cpufeature: Make doublelock a signed feature in ID_AA64DFR0
>         https://git.kernel.org/arm64/c/e965bcb06256
> [04/17] arm64/cpufeature: Introduce ID_PFR2 CPU register
>         https://git.kernel.org/arm64/c/16824085a7dd
> [05/17] arm64/cpufeature: Introduce ID_DFR1 CPU register
>         https://git.kernel.org/arm64/c/dd35ec070457
> [06/17] arm64/cpufeature: Introduce ID_MMFR5 CPU register
>         https://git.kernel.org/arm64/c/152accf8476f
> [07/17] arm64/cpufeature: Add remaining feature bits in ID_PFR0 register
>         https://git.kernel.org/arm64/c/0ae43a99fe91
> [08/17] arm64/cpufeature: Add remaining feature bits in ID_MMFR4 register
>         https://git.kernel.org/arm64/c/fcd6535322cc
> [09/17] arm64/cpufeature: Add remaining feature bits in ID_AA64ISAR0 register
>         https://git.kernel.org/arm64/c/7cd51a5a84d1
> [10/17] arm64/cpufeature: Add remaining feature bits in ID_AA64PFR0 register
>         https://git.kernel.org/arm64/c/011e5f5bf529
> [11/17] arm64/cpufeature: Add remaining feature bits in ID_AA64PFR1 register
>         https://git.kernel.org/arm64/c/14e270fa5c4c
> [12/17] arm64/cpufeature: Add remaining feature bits in ID_AA64MMFR0 register
>         (no commit info)
> [13/17] arm64/cpufeature: Add remaining feature bits in ID_AA64MMFR1 register
>         (no commit info)
> [14/17] arm64/cpufeature: Add remaining feature bits in ID_AA64MMFR2 register
>         (no commit info)
> [15/17] arm64/cpufeature: Add remaining feature bits in ID_AA64DFR0 register
>         (no commit info)
> [16/17] arm64/cpufeature: Replace all open bits shift encodings with macros
>         (no commit info)
> [17/17] arm64/cpuinfo: Add ID_MMFR4_EL1 into the cpuinfo_arm64 context
>         https://git.kernel.org/arm64/c/858b8a8039d0
> 
> Note that Suzuki had comments on 12-16, so assume you'll respin those (I fixed
> up the trivial comments on earlier patches myself).
[PATCH 15/17] might need some more investigation and rework. Hence planning to
defer that for later and respin the remaining patches (12, 13, 14, 16) for now.

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
