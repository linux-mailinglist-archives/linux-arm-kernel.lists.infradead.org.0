Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 487241A1FE6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 13:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GxDuuU+DgYvseRfxTwzIquJq/IikNW+rrR8gVb0X6y0=; b=ABV35C9Tg4btxpZtIrDxq3/99
	EBxwqGAPIzLJOeUpuNBic3UsFI5W3uXqj72N9EpVE46sVBdGImB1g1OPAIqNrhcU5FZd30be8gfwb
	ZQMN1KR2X1g0JCGIWmP4mDGRNIGLFrLgd2tOe2EKZSXRkpV1ElkFpJUPtRGTaMWRLyplg1DHzZ0QW
	atZTQtfFMH5MakVSv+XfmPfDkexuzhQa8tmr4GC/7xJTlVml6tciy6UIfetDT6luEUqVVwkxPCD5H
	jUO/MDahzguLr0h+9pWJrRR+1BpjTAh+QWylTA7QunjQDxE2kSI615gOk2Z3Zn+3Ga0nbB3sU8HPB
	sYrI9ZeAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM8zE-0003c3-RZ; Wed, 08 Apr 2020 11:35:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM8z8-0002hG-5j
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 11:35:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DE1C31B;
 Wed,  8 Apr 2020 04:35:07 -0700 (PDT)
Received: from [10.37.12.149] (unknown [10.37.12.149])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 420603F73D;
 Wed,  8 Apr 2020 04:35:06 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: armv8_deprecated: Fix undef_hook mask for thumb
 setend
To: fredrik@strupe.net, catalin.marinas@arm.com
References: <911db2f1-e078-a460-32ee-154a0b4de5d4@strupe.net>
 <20200407092744.GA2665@gaia> <a2b345a4-30a0-3218-8c8d-e84ec2317dc9@arm.com>
 <0d7b582a-1bd0-9db2-2fdc-04fc887f64c6@strupe.net>
 <20200408090111.GA27331@gaia>
 <9979396e-5d01-0cfe-722f-3a4f6e81dc01@strupe.net>
 <ab77076b-774d-9158-bc0c-3cfdd36b6e37@strupe.net>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <f2c442f8-d2b6-c859-ca1a-2b8a343047e6@arm.com>
Date: Wed, 8 Apr 2020 12:39:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <ab77076b-774d-9158-bc0c-3cfdd36b6e37@strupe.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_043510_268977_9CE8A368 
X-CRM114-Status: GOOD (  23.98  )
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
Cc: will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/08/2020 12:29 PM, Fredrik Strupe wrote:
> For thumb instructions, call_undef_hook() in traps.c first reads a u16,
> and if the u16 indicates a T32 instruction (u16 >= 0xe800), a second
> u16 is read, which then makes up the the lower half-word of a T32
> instruction. For T16 instructions, the second u16 is not read,
> which makes the resulting u32 opcode always have the upper half set to
> 0.
> 
> However, having the upper half of instr_mask in the undef_hook set to 0
> masks out the upper half of all thumb instructions - both T16 and T32.
> This results in trapped T32 instructions with the lower half-word equal
> to the T16 encoding of setend (b650) being matched, even though the upper
> half-word is not 0000 and thus indicates a T32 opcode.
> 
> An example of such a T32 instruction is eaa0b650, which should raise a
> SIGILL since T32 instructions with an eaa prefix are unallocated as per
> Arm ARM, but instead works as a SETEND because the second half-word is set
> to b650.
> 
> This patch fixes the issue by extending instr_mask to include the
> upper u32 half, which will still match T16 instructions where the upper
> half is 0, but not T32 instructions.
> 
> Signed-off-by: Fredrik Strupe <fredrik@strupe.net>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Fixes: 2d888f48e056 ("arm64: Emulate SETEND for AArch32 tasks")
> ---
>   arch/arm64/kernel/armv8_deprecated.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
> index 9d3442d62..8c06dfee0 100644
> --- a/arch/arm64/kernel/armv8_deprecated.c
> +++ b/arch/arm64/kernel/armv8_deprecated.c
> @@ -609,7 +609,7 @@ static struct undef_hook setend_hooks[] = {
>   	},
>   	{
>   		/* Thumb mode */
> -		.instr_mask	= 0x0000fff7,
> +		.instr_mask	= 0xfffffff7,
>   		.instr_val	= 0x0000b650,
>   		.pstate_mask	= (PSR_AA32_T_BIT | PSR_AA32_MODE_MASK),
>   		.pstate_val	= (PSR_AA32_T_BIT | PSR_AA32_MODE_USR),
> 

Reviewed-by : Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
