Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6629913C225
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:59:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STzT13xjxN8C2e9w7fdAsgUA7BXU9yuFZtTDnFnJkag=; b=jPmksGA2k1TR5K
	w3L7mlEzUaHMtdhQ9w+XBbP/xP8PtMakpd6khpVb0Gnvugwxqj+kmEPz9/jGWPXZG9WQKXQdgmX8B
	kp+voTEbw8WFkDAgahBCjoUSyUwPgm6xtXrSPyp99mIJnqdJcvC0Dzu/CypUzZR7QZRq6aRhznfOD
	k1wHYnMsMuGEjGWsoSJmrG5QBSJMTu979XFAA0IiyuTn/k5J9SOyvzuwkoNCnu09E26HvVlrIjsd7
	0hjsOmQaKWDYxH/YBe+klASuaN0jPqCxrdn1JqJyykDAwxUOJm835GqBHBaQxYbVXjx+278Rvaav4
	C6P+nDO6N7/ycPsCYHCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iriGU-0002Rm-Nn; Wed, 15 Jan 2020 12:59:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iriGF-0002Qz-1h
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 12:59:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 32E4A31B;
 Wed, 15 Jan 2020 04:59:02 -0800 (PST)
Received: from [10.2.69.39] (unknown [10.2.69.39])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A36463F534;
 Wed, 15 Jan 2020 04:59:01 -0800 (PST)
Subject: Re: [PATCH v2 0/2] arm64: Simplify gas LSE support detection
To: Will Deacon <will@kernel.org>
References: <20200115113008.3334-1-catalin.marinas@arm.com>
 <df4eda09-3234-8e32-6ea3-6fc6628cae05@arm.com>
 <20200115125109.GH21692@willie-the-truck>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <eceaaf63-1e05-7963-2b76-303bb909e9af@arm.com>
Date: Wed, 15 Jan 2020 12:59:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200115125109.GH21692@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_045903_139280_4636F973 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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

On 1/15/20 12:51 PM, Will Deacon wrote:
> On Wed, Jan 15, 2020 at 12:49:17PM +0000, Vladimir Murzin wrote:
>> On 1/15/20 11:30 AM, Catalin Marinas wrote:
>>> Version two of the patch series moving the LSE assembler support
>>> detection from Makefile to Kconfig.
>>>
>>> Changes since v1 [1]:
>>>
>>> - Re-introduce the Makefile warning if the .config contains
>>>   CONFIG_ARM64_USE_LSE_ATOMICS but the assembler does not support the
>>>   feature, disabling CONFIG_ARM64_LSE_ATOMICS.
>>>
>>> [1] http://lkml.kernel.org/r/20200109174948.48211-1-catalin.marinas@arm.com
>>>
>>> Catalin Marinas (2):
>>>   kbuild: Add support for 'as-instr' to be used in Kconfig files
>>>   arm64: Move the LSE gas support detection to Kconfig
>>>
>>>  arch/arm64/Kconfig                    |  5 +++++
>>>  arch/arm64/Makefile                   | 11 ++++-------
>>>  arch/arm64/include/asm/atomic_ll_sc.h |  2 +-
>>>  arch/arm64/include/asm/lse.h          |  6 +++---
>>>  arch/arm64/kernel/cpufeature.c        |  4 ++--
>>>  scripts/Kconfig.include               |  4 ++++
>>>  6 files changed, 19 insertions(+), 13 deletions(-)
>>>
>>>
>>
>> with
>>
>> aarch64-linux-gnu-gcc (crosstool-NG linaro-1.13.1-4.9-2014.09 - Linaro GCC 4.9-2014.09) 4.9.2 20140904 (prerelease)
>>
>> I see (among other warnings)
>>
>>     arch/arm64/Makefile:35: LSE atomics not supported by binutils
>>
>> while with
>>
>> aarch64-none-linux-gnu-gcc (GNU Toolchain for the A-profile Architecture 9.2-2019.12 (arm-9.10)) 9.2.1 20191025
>>
>> warning disappears.
>>
>>
>> FWIW:
>>
>> Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
>> Tested-by: Vladimir Murzin <vladimir.murzin@arm.com>
> 
> Cheers, I've queued the patches with your tags.

Would you mind if I send follow-up patch for BROKEN_GAS_INST conversion (it depends on as-inst)?

Vladimir

> 
> Will
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
