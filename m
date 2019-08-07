Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FCF85081
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2+I0LjErlwqXGRjVAk9l6azWUqIDG3TnZblBByf7dA=; b=Yj4PmY4xCmkzfP
	U7MCFuox3hzTS8zETojBYpefEunC4cmaHY/aEyEEisZ40lG1o0yXW1xqww7K3Wpky2cNSNvdvic8F
	1kWPA4P9lgAD7+HFdMlcTvIgXT42C58wFgl8LuFjtMW21AubfXWFYxeEhgxA3qxxkCrfUymjvJdE6
	Arxb+Ru1IaILHTW8sfO4KmtDCSCPgeYSqwLF/ksC3o7o46ZAeKSE7Tww3jkk24zxn67tQLlKVRe76
	BzpK0XoTQA+VxFIV3IeBaMZhbaGiVDuxpNrqpBA9mqyeWEOY3BsMXA/eIRVZELijmB6251Ipvc8/E
	RPImbl91CtnGLr6TJEVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvONS-0003Ha-Ig; Wed, 07 Aug 2019 16:01:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvONE-0003Gz-85
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:01:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02CED22296;
 Wed,  7 Aug 2019 16:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565193671;
 bh=8gwqKlo5DbLLlNYp8m1CRl35Pk7jtrpyndMLzwIyCD8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=t5JerZil0Z0JM0rAJNnAw967WCWJJmcIH35Tsi6rJrNpqgRJsj48zrdfjykcslCoY
 opRaKhinGLWsjXi6fTDIfUhiCUou3xSSHVKYtJviktJfIgnpsdQfMexq4DjE4hUlNf
 /kEWBvA7W2MZ57iZTF+gzpN/nP4iApxYUG44oAAQ=
Date: Wed, 7 Aug 2019 17:01:08 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: Clarify when cpu_enable() is called
Message-ID: <20190807160107.fpanxo4iimhg743c@willie-the-truck>
References: <20190806170043.35588-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806170043.35588-1-broonie@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_090112_303877_D5F78E53 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Suzuki]

On Tue, Aug 06, 2019 at 06:00:43PM +0100, Mark Brown wrote:
> Strengthen the wording in the documentation for cpu_enable() to make it
> more obvious to readers not already familiar with the code when the core
> will call this callback and that this is intentional.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/include/asm/cpufeature.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index cf65a47ee6b4..3d8afcf687d9 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -289,9 +289,9 @@ struct arm64_cpu_capabilities {
>  	u16 type;
>  	bool (*matches)(const struct arm64_cpu_capabilities *caps, int scope);
>  	/*
> -	 * Take the appropriate actions to enable this capability for this CPU.
> -	 * For each successfully booted CPU, this method is called for each
> -	 * globally detected capability.
> +	 * Take the appropriate actions to configure this capability for this
> +	 * CPU.  This will be called on all CPUs in the system if the
> +	 * capability is detected anywhere in the system.
>  	 */
>  	void (*cpu_enable)(const struct arm64_cpu_capabilities *cap);
>  	union {

That's not quite right though either, is it? We need to take into account
the scope of the capability/erratum as well, since we don't /always/ call
this function for everybody.

Suzuki, are there any cases where ->cpu_enable() may be called on a CPU
without the feature outside of ARM64_CPUCAP_LOCAL_CPU_ERRATUM or
ARM64_CPUCAP_BOOT_RESTRICTED_CPU_LOCAL_FEATURE?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
