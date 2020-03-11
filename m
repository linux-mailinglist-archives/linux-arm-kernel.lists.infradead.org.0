Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A48A1810A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 07:26:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Oji1cnm9zTp5ZZXEyakP7+ZXQFyJUkEh+Tu2d/sRUfM=; b=dfMRGjK9dVFOXA3TtC/TIzubn
	wpA6b7rYwWhB11sFTb+/AzXUKa+qHGVrNcnrmcUwKe8iDOYaSJqy8xArWskp7D8yvIjFAdLgvbToQ
	CpQfx85IAnq5+eQtFh/F+QaG8MvvipDgpnH+E3PqNFUhCgQby69RYUGSJAlOvb6rkLZbfPBsFBPtc
	pQoPv7zOpyOUo7f73MHYWZr0Z8UkflPYxfySTuNOIZ5d2oRSzDeRH24+ITIXQ313G4/DSORFszHbF
	YjPjOmlAOp5bYhicFM9Qqmh0k2FTAFxomVWToLgj5FEdSt5cI3leZ+qP78Atj8IZFbHGNSrQT4jzn
	ct+CxB4Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBuow-0002ut-A9; Wed, 11 Mar 2020 06:26:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBuok-0002uX-LZ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 06:26:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F29B131B;
 Tue, 10 Mar 2020 23:26:09 -0700 (PDT)
Received: from [10.163.1.234] (unknown [10.163.1.234])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F8613F67D;
 Tue, 10 Mar 2020 23:30:04 -0700 (PDT)
Subject: Re: [PATCH v6 09/18] arm64: enable ptrauth earlier
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-10-git-send-email-amit.kachhap@arm.com>
 <4000de90-6196-364d-dcad-5476d85e18e0@arm.com>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <1ea33eee-186c-d073-8687-43302e00c807@arm.com>
Date: Wed, 11 Mar 2020 11:56:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <4000de90-6196-364d-dcad-5476d85e18e0@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_232610_794326_1B181DE2 
X-CRM114-Status: GOOD (  19.59  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/10/20 9:15 PM, Vincenzo Frascino wrote:
> Hi Amit,
> 
> On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
>> From: Kristina Martsenko <kristina.martsenko@arm.com>
>>
>> When the kernel is compiled with pointer auth instructions, the boot CPU
>> needs to start using address auth very early, so change the cpucap to
>> account for this.
>>
>> Pointer auth must be enabled before we call C functions, because it is
>> not possible to enter a function with pointer auth disabled and exit it
>> with pointer auth enabled. Note, mismatches between architected and
>> IMPDEF algorithms will still be caught by the cpufeature framework (the
>> separate *_ARCH and *_IMP_DEF cpucaps).
>>
>> Note the change in behavior: if the boot CPU has address auth and a
>> late CPU does not, then the late CPU is parked by the cpufeature
>> framework. Also, if the boot CPU does not have address auth and the late
>> CPU has then the late cpu will still boot but with ptrauth feature
>> disabled.
>>
>> Leave generic authentication as a "system scope" cpucap for now, since
>> initially the kernel will only use address authentication.
>>
> 
> I can't find in this patch were CPU_STUCK_REASON_NO_PTRAUTH is set. Maybe I am
> missing something. Please feel free to correct me if I am wrong.
> 
> My expectation is that you should call early_park_cpu to do that if the
> secondary does not support PTRAUTH similar to what you did in v2 of this series:
> 
> ENTRY(__cpu_secondary_checkptrauth)
> #ifdef CONFIG_ARM64_PTR_AUTH
>         /* Check if the CPU supports ptrauth */
>         mrs     x2, id_aa64isar1_el1
>         ubfx    x2, x2, #ID_AA64ISAR1_APA_SHIFT, #8
>         cbnz    x2, 1f
> alternative_if ARM64_HAS_ADDRESS_AUTH
>         mov     x3, 1
> alternative_else
>         mov     x3, 0
> alternative_endif
>         cbz     x3, 1f
>         /* Park the mismatched secondary CPU */
>         early_park_cpu CPU_STUCK_REASON_NO_PTRAUTH
> #endif
> 1:     ret
> ENDPROC(__cpu_secondary_checkptrauth)
> 
> and then check it during the secondary_startup, similar to what happens for
> 52BIT_VA for example.
> 
> In this way "update_early_cpu_boot_status" would update the
> CPU_STUCK_REASON_NO_PTRAUTH flag.

This way it was implemented earlier. Catalin suggested the pointer auth
variation in cpus is not critical enough and cpufeature framework can 
park it little later [1].

Agree that I should have removed all definitions of 
CPU_STUCK_REASON_NO_PTRAUTH and prevent unnecessary confusions.

[1] : https://www.spinics.net/lists/arm-kernel/msg780766.html
> 
> [...]
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
