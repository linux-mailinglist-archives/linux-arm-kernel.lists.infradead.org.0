Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C37E17C5EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 20:08:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NPdnDSIqXNq6HrVubFzy83itUjIAEdJmITaGP2Yk78=; b=bLef6aWn6xqHCA
	Y7PKbC1HeuV3U2ioZlt+O73MzoOBSpAcDY3YKznLa0y+vWBqxMErNZgjdI741KBECuz2uO2agwNlo
	xlYqyCbY2JK1jmkBnpRS/JiV/6XqubGVz/l4hSPWQuKosJ4oq9kq4nZAWHKGcvLshrAqFclotR6JR
	g4c1b859PmSQ56a+J1Dyh0/OTjhz3UPMb6uthqU69R/ViaOPGrcPG4LfkDH2yqgMxvi6Iu75tSVep
	cJZPBZya4DWvRrIkDYNNWIXIZ8JMhI8F7uLFs85wTd35xpIHR0GW1Zzk5yhQLz98tMqGyubu7+fnM
	Tbyy/3D0Woli77oT7wYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAIKJ-0008BU-0w; Fri, 06 Mar 2020 19:08:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAIJl-0007s1-Pk
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 19:07:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 12A561FB;
 Fri,  6 Mar 2020 11:07:29 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A0B73F6C4;
 Fri,  6 Mar 2020 11:07:27 -0800 (PST)
Subject: Re: [PATCH v6 04/18] arm64: install user ptrauth keys at kernel exit
 time
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-5-git-send-email-amit.kachhap@arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <247d3d60-b109-ab1d-5591-086cc0db6e07@arm.com>
Date: Fri, 6 Mar 2020 19:07:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1583476525-13505-5-git-send-email-amit.kachhap@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_110730_047404_F5B43AEE 
X-CRM114-Status: GOOD (  14.00  )
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
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

On 06/03/2020 06:35, Amit Daniel Kachhap wrote:
> From: Kristina Martsenko <kristina.martsenko@arm.com>
> 
> As we're going to enable pointer auth within the kernel and use a
> different APIAKey for the kernel itself, so move the user APIAKey
> switch to EL0 exception return.
> 
> The other 4 keys could remain switched during task switch, but are also
> moved to keep things consistent.

> diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
> new file mode 100644
> index 0000000..f820a13
> --- /dev/null
> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
> @@ -0,0 +1,49 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_ASM_POINTER_AUTH_H
> +#define __ASM_ASM_POINTER_AUTH_H
> +
> +#include <asm/alternative.h>
> +#include <asm/asm-offsets.h>
> +#include <asm/cpufeature.h>
> +#include <asm/sysreg.h>
> +
> +#ifdef CONFIG_ARM64_PTR_AUTH
> +/*
> + * thread.keys_user.ap* as offset exceeds the #imm offset range
> + * so use the base value of ldp as thread.keys_user and offset as

> + * keys_user.ap*.

(Nit: thread.keys_user.ap*)

> + */
> +	.macro ptrauth_keys_install_user tsk, tmp1, tmp2, tmp3

Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
