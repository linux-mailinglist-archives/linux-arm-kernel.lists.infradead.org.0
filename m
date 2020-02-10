Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88094157FEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:38:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VT/K4zYNrEjgGctG3sTUdGEuyP39Kt9kn97BBFpALWc=; b=TM4zHEvVdSLZ+z/h2ZtB8VdTi
	/zesi5AfXpEdxgjDAacXO+hrfCEpO9NFGQhkDdotRKwdjEOwj1vtsRj2kmEzVui6iFq9QwmjvziPd
	jF91a4sOjsAL6ohJ11Umr3P91TbIV0ReWRh1jJO1Oa68avBrCbA+gf0vZz8YO71ZxuavXNx8XzUHa
	HKa7EDcx5Nr+1VnyCg6ldysBowxpihkp3066AKivVPaIndo6Vx1LSTSF1pzTvI+W0azvzP6RkwPKq
	/ymxg6HRGN7xM6yG93RS/0odePGiFztK/smPrpr0ZAiIPVBcPT3Hcb+hBwiBN0uE8BZbJrn/SAAFD
	zPir5r4DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1C4U-0003zW-UT; Mon, 10 Feb 2020 16:38:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1C4O-0003z8-Ao
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:38:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CD3F81FB;
 Mon, 10 Feb 2020 08:37:55 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BCBAE3F68F;
 Mon, 10 Feb 2020 08:37:54 -0800 (PST)
Subject: Re: [PATCH 1/2] arm64: cpufeature: add cpus_have_final_cap()
To: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20200210122708.38826-1-mark.rutland@arm.com>
 <20200210122708.38826-2-mark.rutland@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <047f1cd2-3537-6671-233c-69f1758684bf@arm.com>
Date: Mon, 10 Feb 2020 16:37:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200210122708.38826-2-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_083800_417125_095C4FB8 
X-CRM114-Status: GOOD (  22.43  )
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
Cc: catalin.marinas@arm.com, james.morse@arm.com, maz@kernel.org,
 will@kernel.org, kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/02/2020 12:27, Mark Rutland wrote:
> When cpus_have_const_cap() was originally introduced it was intended to
> be safe in hyp context, where it is not safe to access the cpu_hwcaps
> array as cpus_have_cap() did. For more details see commit:
> 
>    a4023f682739439b ("arm64: Add hypervisor safe helper for checking constant capabilities")
> 
> We then made use of cpus_have_const_cap() throughout the kernel.
> 
> Subsequently, we had to defer updating the static_key associated with
> each capability in order to avoid lockdep complaints. To avoid breaking
> kernel-wide usage of cpus_have_const_cap(), this was updated to fall
> back to the cpu_hwcaps array if called before the static_keys were
> updated. As the kvm hyp code was only called later than this, the
> fallback is redundant but not functionally harmful. For more details,
> see commit:
> 
>    63a1e1c95e60e798 ("arm64/cpufeature: don't use mutex in bringup path")
> 
> Today we have more users of cpus_have_const_cap() which are only called
> once the relevant static keys are initialized, and it would be
> beneficial to avoid the redundant code.
> 
> To that end, this patch adds a new cpus_have_final_cap(), helper which
> is intend to be used in code which is only run once capabilities have
> been finalized, and will never check the cpus_hwcap array. This helps
> the compiler to generate better code as it no longer needs to generate
> code to address and test the cpus_hwcap array. To help catch misuse,
> cpus_have_final_cap() will BUG() if called before capabilities are
> finalized.
> 
> In hyp context, BUG() will result in a hyp panic, but the specific BUG()
> instance will not be identified in the usual way.
> 
> Comments are added to the various cpus_have_*_cap() helpers to describe
> the constraints on when they can be used. For clarity cpus_have_cap() is
> moved above the other helpers.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Suzuki Poulose <suzuki.poulose@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---

...

> +/*
> + * Test for a capability without a runtime check.
> + *
> + * Before capabilities are finalized, this will BUG().
> + * After capabilities are finalized, this is patched to avoid a runtime check.
> + *
> + * @num must be a compile-time constant.
> + */
> +static __always_inline bool cpus_have_final_cap(int num)
> +{
> +	if (static_branch_likely(&arm64_const_caps_ready))

We have introduced system_capabilities_finalized() helper and may be
it is a good idea to use it here, to make it more clear.

Either ways :

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
