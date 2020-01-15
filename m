Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F0A13BCBF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 10:49:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+ITUQYCsZqh0Tz+pC9haANz3LKknZd102uJkRDH+XE=; b=jRvqCZWA4O2oOz
	22Y2h2IHqmVOAykui3Hp6F+Crn0JyM0w95pqA84PGtAnDZLvZ+zNiW5wR+H5+RLN6Njvj3LqSZXJq
	yZY1ec+2qZ0uXZp4ngRF2SYnNrDtIqr9AnyniCqBBGl0OtOJ/uN/OK/k4cBr0eUkrBn37wFU90y5K
	w/G/cDXe6fpHOzolC6fr6yxrEyNP2SJSfwQ2k8LUDEk3jBh5TmwasSqBTJzJVOyFfqk1QgV8BlUhN
	KvezFmSe3XL6I2NGlfywFuH/myE4kOHMI7puO1H41VnG/eGv3N7tacBfMAnar4GE+Kw6FNPGPsTyF
	lisycYCOyGtyPVkYgxlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfIn-0006Uv-Kb; Wed, 15 Jan 2020 09:49:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfIf-0006Tw-Ra
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 09:49:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 585F82187F;
 Wed, 15 Jan 2020 09:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579081761;
 bh=kQEYyTRF9+ukK/xlFWoKZxJOpIIXWl+uj7Qfml47YIU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K6U3xjVMoZRI+DVMWuutNNkjNF96YThrvkbWoAjPGUN0RVnPlNNooQ8EcyINvdEFx
 3a/uApzPmBEtxEu8Oi5LJ15Ff3EZiU5JjY7rHiENVN3w7rb68BNa3rg2S0m2Bx8mgc
 P1ISA76foIpNPnYGpVljskJtTGBAcrKqdAF5BTTc=
Date: Wed, 15 Jan 2020 09:49:17 +0000
From: Will Deacon <will@kernel.org>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v2] arm64: cpufeature: Export matrix and other features
 to userspace
Message-ID: <20200115094916.GC21692@willie-the-truck>
References: <20191216113337.13882-1-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216113337.13882-1-steven.price@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_014921_938212_96718E8A 
X-CRM114-Status: GOOD (  16.92  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, julien@xen.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 11:33:37AM +0000, Steven Price wrote:
> Export the features introduced as part of ARMv8.6 exposed in the
> ID_AA64ISAR1_EL1 and ID_AA64ZFR0_EL1 registers. This introduces the
> Matrix features (ARMv8.2-I8MM, ARMv8.2-F64MM and ARMv8.2-F32MM) along
> with BFloat16 (Armv8.2-BF16), speculation invalidation (SPECRES) and
> Data Gathering Hint (ARMv8.0-DGH).
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> [Added other features in those registers]
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
> This is a v2 of Julien's patch[1] extended to export all the new
> features contained within the ID_AA64ISAR1_EL1 and ID_AA64ZFR0_EL1
> registers.
> 
> [1] https://lore.kernel.org/linux-arm-kernel/20191025171056.30641-1-julien.grall@arm.com/
> 
>  Documentation/arm64/cpu-feature-registers.rst | 16 ++++++++++
>  Documentation/arm64/elf_hwcaps.rst            | 31 +++++++++++++++++++
>  arch/arm64/include/asm/hwcap.h                |  8 +++++
>  arch/arm64/include/asm/sysreg.h               | 12 +++++++
>  arch/arm64/include/uapi/asm/hwcap.h           |  8 +++++
>  arch/arm64/kernel/cpufeature.c                | 20 ++++++++++++
>  arch/arm64/kernel/cpuinfo.c                   |  8 +++++
>  7 files changed, 103 insertions(+)
> 
> diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
> index b6e44884e3ad..5382981533f8 100644
> --- a/Documentation/arm64/cpu-feature-registers.rst
> +++ b/Documentation/arm64/cpu-feature-registers.rst
> @@ -200,6 +200,14 @@ infrastructure:
>       +------------------------------+---------+---------+
>       | Name                         |  bits   | visible |
>       +------------------------------+---------+---------+
> +     | I8MM                         | [55-52] |    y    |
> +     +------------------------------+---------+---------+
> +     | DGH                          | [51-48] |    y    |
> +     +------------------------------+---------+---------+
> +     | BF16                         | [47-44] |    y    |
> +     +------------------------------+---------+---------+
> +     | SPECRES                      | [43-40] |    y    |
> +     +------------------------------+---------+---------+

I applied this for CI testing last night, but actually I think it's broken.
AFAICT, the instructions introduced by SPECRES are behind an SCTLR_EL1
enable (EnRCTX) which defaults to disabled, so we should either be enabling
them before setting the HWCAP or not exposing them at all.

Given that the instructions are not broadcast and are likely to be very
expensive, I don't think that exposing them to EL0 is a good idea.

In other words, I'll drop the SPECRES parts from this patch. Sound ok?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
