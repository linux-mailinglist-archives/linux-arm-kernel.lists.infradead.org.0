Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E83A1C1877
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 16:50:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UjiccA4rDeMgunxR7BdeMaJM/Ya3ousYNHLyIc/+EKw=; b=bpbjl3La78VXzYXJOoGoGAVXn
	ztoOsQwHhnS/R6BWR8JW5gTywRAh+gCQsnBlMrOD243pKpH8ozEsTD3WZtE9Xb2IRke/ZJWUarvra
	mhfzh3qxgM1Ef/erL2W79eaLzYjgxKKUXGoq3FPvThDfA6TDfpdYr+Fdpt3gCxoWHMR6ZSbRXYcL0
	DEiken7wYtcMUhvXtUg2okLeNElK8yy92rlJUktgtYxJmb5lDQsdUDzhVZajscpoHJ7kw3U51cLQQ
	A2ppYnAXsFuaRikS693fWjsYPLHyd+rsQlVdcr27CqJnwrnrXJT/kw4gqkPltpZH0igA2RuYSFTYH
	bzTuolBqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUWze-0005uy-Jw; Fri, 01 May 2020 14:50:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUWym-0005Qt-5S
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 14:49:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B66731B;
 Fri,  1 May 2020 07:49:27 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0FA4E3F68F;
 Fri,  1 May 2020 07:49:25 -0700 (PDT)
Subject: Re: [PATCH 2/5] arm/arm64: smccc: Add the definition for SMCCCv1.2
 version/error codes
To: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20200430114814.14116-1-sudeep.holla@arm.com>
 <20200430114814.14116-3-sudeep.holla@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <921e3b04-f624-38ba-2304-a1f0bdffded9@arm.com>
Date: Fri, 1 May 2020 15:46:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430114814.14116-3-sudeep.holla@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_074928_278435_AEECCD6B 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 harb@amperecomputing.com, Will Deacon <will@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/04/2020 12:48, Sudeep Holla wrote:
> Add the definition for SMCCC v1.2 version and new error code added.
> While at it, also add a note that ARM DEN 0070A is deprecated and is
> now merged into the main SMCCC specification(ARM DEN 0028C).
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Steven Price <steven.price@arm.com>

> ---
>   include/linux/arm-smccc.h | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 6c1d1eda3be4..9d9a2e42e919 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -56,6 +56,7 @@
>   
>   #define ARM_SMCCC_VERSION_1_0		0x10000
>   #define ARM_SMCCC_VERSION_1_1		0x10001
> +#define ARM_SMCCC_VERSION_1_2		0x10002
>   
>   #define ARM_SMCCC_VERSION_FUNC_ID					\
>   	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,				\
> @@ -314,10 +315,14 @@ asmlinkage void __arm_smccc_hvc(unsigned long a0, unsigned long a1,
>    */
>   #define arm_smccc_1_1_hvc(...)	__arm_smccc_1_1(SMCCC_HVC_INST, __VA_ARGS__)
>   
> -/* Return codes defined in ARM DEN 0070A */
> +/*
> + * Return codes defined in ARM DEN 0070A
> + * ARM DEN 0070A is now merged/consolidated into ARM DEN 0028C
> + */
>   #define SMCCC_RET_SUCCESS			0
>   #define SMCCC_RET_NOT_SUPPORTED			-1
>   #define SMCCC_RET_NOT_REQUIRED			-2
> +#define SMCCC_RET_INVALID_PARAMETER		-3
>   
>   /*
>    * Like arm_smccc_1_1* but always returns SMCCC_RET_NOT_SUPPORTED.
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
