Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 670BF17F74E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 13:20:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0tO5B3YnPZzqmkQpsXwCHk2+8QQQqtWNRDGUdttbSs=; b=hPoLZtfVb0Ptsx
	Df4dtZAoy270moB6UkbkNhe7/xa/cHVIAFTKVEXyVQI3uY2I4+V0K2klHrEbg1hOY9sTPeNwyWHqU
	StJ7K2a3aUyMRNTwDfrx6e3vY5XadhcuwjHl4HZ6MwyYjnxZ10DvzmxomVYKnaCmlxOZ7q0bGaeq0
	mszTZm/Ti4RBvr87X5HiGpo6akjKOkpLc0ETcr6X1N+JGwb7rAcApiZ1NQQWvh3/6arlSsDwGRktJ
	c8efYyY/CgCZ6CgT8PTci/awORl8hugQCJLDdybbhjFwrxwvBipKo4RHES4FxLdF4J924wDnKwSB2
	JacG+qADUWNOCVx5VUmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdsJ-0007Bl-VU; Tue, 10 Mar 2020 12:20:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdsC-0007BP-BJ
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 12:20:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B4D630E;
 Tue, 10 Mar 2020 05:20:35 -0700 (PDT)
Received: from [10.37.12.115] (unknown [10.37.12.115])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D077E3F67D;
 Tue, 10 Mar 2020 05:20:32 -0700 (PDT)
Subject: Re: [PATCH v6 07/18] arm64: cpufeature: Move cpu capability helpers
 inside C file
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-8-git-send-email-amit.kachhap@arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <eb3acde3-ba4c-162d-b1d2-54183ab4e921@arm.com>
Date: Tue, 10 Mar 2020 12:20:57 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1583476525-13505-8-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_052036_434646_51162E07 
X-CRM114-Status: GOOD (  14.50  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:

[...]

>  
> -static inline bool
> -cpucap_late_cpu_optional(const struct arm64_cpu_capabilities *cap)
> -{
> -	return !!(cap->type & ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU);
> -}
> -
> -static inline bool
> -cpucap_late_cpu_permitted(const struct arm64_cpu_capabilities *cap)
> -{
> -	return !!(cap->type & ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU);
> -}
> -
>  /*
>   * Generic helper for handling capabilties with multiple (match,enable) pairs
>   * of call backs, sharing the same capability bit.
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index b12e386..865dce6 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1363,6 +1363,19 @@ static bool can_use_gic_priorities(const struct arm64_cpu_capabilities *entry,
>  }
>  #endif
>  
> +/* Internal helper functions to match cpu capability type */
> +static bool
> +cpucap_late_cpu_optional(const struct arm64_cpu_capabilities *cap)
> +{
> +	return !!(cap->type & ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU);
> +}
> +
> +static bool
> +cpucap_late_cpu_permitted(const struct arm64_cpu_capabilities *cap)
> +{
> +	return !!(cap->type & ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU);
> +}
> +
>  static const struct arm64_cpu_capabilities arm64_features[] = {
>  	{
>  		.desc = "GIC system register CPU interface",
> 

Seems that the signature of the functions above is changed during the migration.
In particular you dropped "inline". Is there any specific reason?

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
