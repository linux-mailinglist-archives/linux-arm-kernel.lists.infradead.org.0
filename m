Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBDBFC422
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 11:27:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MenNE4XQ6dLrOPe4vUQ4rAG9tKaqIrmEONkNYbgF7n4=; b=HbcyuG27Lbevaj7Axi6Xh7S8g
	iLprt20bHFF56rNZZyo2HZHuKHo8QU6HL/x4bF761cNFruheL6jGq417TrFNibzP1qoo/urGnPvZX
	NjBaAG9N2BtKg3PINICWggIzGUScNniCca3Z+zDieEDk4+fi9z2qgnUEMmDWV8S/4+T2oVeh6knYe
	sZQyF2oUserF2AUecnQJLP3E+huZJO3MUOnwLQ8iMOZmtuR7x21YjpwbeJGa5rnbt64ZmSuQHSRZb
	ZPAyjMB0ipy2x6shEYoXCd7IyEuHxDLmiCos73skk5ImyA72QuNU+dUpXKLBxTd1r9Kn7SNF2Kdyu
	wThMMmBbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVCLn-0003Ss-8P; Thu, 14 Nov 2019 10:27:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCLe-0003S8-Vj
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 10:27:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00FB031B;
 Thu, 14 Nov 2019 02:27:34 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D69653F6C4;
 Thu, 14 Nov 2019 02:27:32 -0800 (PST)
Subject: Re: [PATCH v3 3/3] arm64: Workaround for Cortex-A55 erratum 1530923
To: Steven Price <steven.price@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
References: <20191113172252.12610-1-steven.price@arm.com>
 <20191113172252.12610-4-steven.price@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <0b017ec9-5be1-90b9-be30-09462dec9e9d@arm.com>
Date: Thu, 14 Nov 2019 10:27:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191113172252.12610-4-steven.price@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_022735_065938_A130016A 
X-CRM114-Status: GOOD (  17.01  )
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
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>,
 James Morse <james.morse@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/11/2019 17:22, Steven Price wrote:
> Cortex-A55 erratum 1530923 allows TLB entries to be allocated as a
> result of a speculative AT instruction. This may happen in the middle of
> a guest world switch while the relevant VMSA configuration is in an
> inconsistent state, leading to erroneous content being allocated into
> TLBs.
> 
> The same workaround as is used for Cortex-A76 erratum 1165522
> (WORKAROUND_SPECULATIVE_AT_NVE) can be used here. Note that this
> mandates the use of VHE on affected parts.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>   Documentation/arm64/silicon-errata.rst |  2 ++
>   arch/arm64/Kconfig                     | 13 +++++++++++++
>   arch/arm64/include/asm/kvm_hyp.h       |  4 ++--
>   arch/arm64/kernel/cpu_errata.c         |  6 +++++-
>   arch/arm64/kvm/hyp/switch.c            |  4 ++--
>   arch/arm64/kvm/hyp/tlb.c               |  4 ++--
>   6 files changed, 26 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
> index 899a72570282..b40cb3e0634e 100644
> --- a/Documentation/arm64/silicon-errata.rst
> +++ b/Documentation/arm64/silicon-errata.rst
> @@ -88,6 +88,8 @@ stable kernels.
>   +----------------+-----------------+-----------------+-----------------------------+
>   | ARM            | Cortex-A76      | #1463225        | ARM64_ERRATUM_1463225       |
>   +----------------+-----------------+-----------------+-----------------------------+
> +| ARM            | Cortex-A55      | #1530923        | ARM64_ERRATUM_1530923       |
> ++----------------+-----------------+-----------------+-----------------------------+
>   | ARM            | Neoverse-N1     | #1188873,1418040| ARM64_ERRATUM_1418040       |
>   +----------------+-----------------+-----------------+-----------------------------+
>   | ARM            | Neoverse-N1     | #1349291        | N/A                         |
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index defb68e45387..d2dd72c19560 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -532,6 +532,19 @@ config ARM64_ERRATUM_1165522
>   
>   	  If unsure, say Y.
>   
> +config ARM64_ERRATUM_1530923
> +	bool "Cortex-A55: Speculative AT instruction using out-of-context translation regime could cause subsequent request to generate an incorrect translation"
> +	default y
> +	select ARM64_WORKAROUND_SPECULATIVE_AT

ARM64_WORKAROUND_SPECULATIVE_AT_VHE ?

Otherwise looks good to me.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
