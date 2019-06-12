Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F8742DAA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DmA80tmw6RhW2+6P4OwsdWhmDbZs2g3uJLLSHNPkGm0=; b=YC/boNRiIEo3V2iSNOXNIgddQ
	lmw6eieudT+VFc1risE5+QL5CSLUwT3zZubIytt+bi8LwmJZT9pPnHxjIMHshsvMGuEim4uUCND8Z
	9dTj9vmI/SJVamKJ174e9NhE2ixA3v5S+klUr8ZbaVn+3vygqblLNzIeEdtzvNngA//AkpZjXeCqv
	ldQHQ16sOOVuQzbqLTz9OzwgoDW77NuVnt/VXet9bc+TzvKwZGAIcBXtpYFv81+wBmuvuFal39mi6
	5rKWh2OYKgUzWw+2t4y64AXSlqxVLOva5h95Ypt065EoOXO4k9Ed0kHE21bj4Qp11witN/iUs7bdx
	q5vWC5LPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb7KF-0000PC-JP; Wed, 12 Jun 2019 17:46:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb7K4-0000Oo-Jw
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:46:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 475F228;
 Wed, 12 Jun 2019 10:46:06 -0700 (PDT)
Received: from [10.1.196.50] (e108454-lin.cambridge.arm.com [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 247753F246;
 Wed, 12 Jun 2019 10:46:05 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] arm64/sve: Fix missing SVE/FPSIMD endianness
 conversions
To: Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
 <1560355234-25516-2-git-send-email-Dave.Martin@arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <771b0099-9217-4e55-b73a-b03434c61655@arm.com>
Date: Wed, 12 Jun 2019 18:46:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1560355234-25516-2-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_104608_749521_08B96EBC 
X-CRM114-Status: GOOD (  24.86  )
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
Cc: Peter Maydell <peter.maydell@linaro.org>, gdb@sourceware.org,
 Alan Hayward <alan.hayward@arm.com>, Will Deacon <will.deacon@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 =?UTF-8?Q?Alex_Benn=c3=a9e?= <alex.bennee@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 12/06/2019 17:00, Dave Martin wrote:
> The in-memory representation of SVE and FPSIMD registers is
> different: the FPSIMD V-registers are stored as single 128-bit
> host-endian values, whereas SVE registers are stored in an
> endianness-invariant byte order.
> 
> This means that the two representations differ when running on a
> big-endian host.  But we blindly copy data from one representation
> to another when converting between the two, resulting in the
> register contents being unintentionally byteswapped in certain
> situations.  Currently this can be triggered by the first SVE
> instruction after a syscall, for example (though the potential
> trigger points may vary in future).
> 
> So, fix the conversion functions fpsimd_to_sve(), sve_to_fpsimd()
> and sve_sync_from_fpsimd_zeropad() to swab where appropriate.
> 
> There is no common swahl128() or swab128() that we could use here.
> Maybe it would be worth making this generic, but for now add a
> simple local hack.
> 
> Since the byte order differences are exposed in ABI, also clarify
> the docuentation.

NIT: s/docuentation/documentation/

Although, it is probably too late to fix this one as Will already took the patch.

[...]

> diff --git a/Documentation/arm64/sve.txt b/Documentation/arm64/sve.txt
> index 9940e92..6c0bed3 100644
> --- a/Documentation/arm64/sve.txt
> +++ b/Documentation/arm64/sve.txt
> @@ -56,6 +56,18 @@ model features for SVE is included in Appendix A.
>     is to connect to a target process first and then attempt a
>     ptrace(PTRACE_GETREGSET, pid, NT_ARM_SVE, &iov).
>   
> +* Whenever SVE scalable register values (Zn, Pn, FFR) are exchanged in memory
> +  between userspace and the kernel, the register value is encoded in memory in
> +  an endianness-invariant layout, with bits [(8 * i + 7) : (8 * i)] encoded at
> +  byte offset i in from the start of the memory representation.  This affects
> +  for example the signal frame (struct sve_context) and ptrace interface
> +  (struct user_sve_header) and associated data.
> +
> +  Beware that on big-endian systems this results in a different byte order than
> +  for the FPSIMD V-registers, which are stored as single host-endian 128-bit
> +  values, with bits [(127 - 8 * i) : (120 - 8 * i)] of the register encoded at
> +  byte offset i.  (struct fpsimd_context, struct user_fpsimd_state).
> +
>   
>   2.  Vector length terminology
>   -----------------------------
> @@ -124,6 +136,10 @@ the SVE instruction set architecture.
>     size and layout.  Macros SVE_SIG_* are defined [1] to facilitate access to
>     the members.
>   
> +* Each scalable register (Zn, Pn, FFR) is stored in an endianness-invariant
> +  layout, with bits [(8 * i + 7) : (8 * i)] stored at byte offset i from the
> +  start of the register's representation in memory.
> +
>   * If the SVE context is too big to fit in sigcontext.__reserved[], then extra
>     space is allocated on the stack, an extra_context record is written in
>     __reserved[] referencing this space.  sve_context is then written in the
> diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
> index 7b7ac0f..072ea1e 100644
> --- a/arch/arm64/include/uapi/asm/kvm.h
> +++ b/arch/arm64/include/uapi/asm/kvm.h
> @@ -260,6 +260,13 @@ struct kvm_vcpu_events {
>   	 KVM_REG_SIZE_U256 |						\
>   	 ((i) & (KVM_ARM64_SVE_MAX_SLICES - 1)))
>   
> +/*
> + * Register values for KVM_REG_ARM64_SVE_ZREG(), KVM_REG_ARM64_SVE_PREG() and
> + * KVM_REG_ARM64_SVE_FFR() and represented in memory in an endianness-

NIT: s/and represented/are represented/ I think.

> + * invariant layout which differs from the layout used for the FPSIMD
> + * V-registers on big-endian systems: see sigcontext.h for more explanaion.

NIT: s/explanaion/explanation/

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
