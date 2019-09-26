Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D909BFAE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 23:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2oOsS8YABNmEmZWb7cUejXYFkOkc/ytYhgveGw8VBE=; b=nDyQ86GrxpEavi
	D2fa/r6KLUvJ5wZNVRiVQBOpC2LCi59fpunZ102/AZK6XF/VYXslZIq/OuEzruJUEx+Vgpch4CUqZ
	ZUwgv0PJGXbV8uWrhBPau2A2nQYEfhfsbz/Tn9dmTWnm/+KgDO3BAGA0Nws5dplrp71UqZsS19gDO
	T2t9TukxKHJqqpMcisX5djV0V10yk4gkuGE+EEiXLGO4oSopXRYLShtnjEP66yK5cDk90fBRezUaO
	KC80G9vaCQwuMeuOSVnBJ5JyduP8TNq1dz7v/iOYRc+E9lfs/6JOrGtXoCUp+WIBhLRDqw2zGf5MK
	+9ks31IEQE3sy6e6NpMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDb7N-0006hP-NB; Thu, 26 Sep 2019 21:16:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDb7A-0006gj-9d
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 21:15:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 92ED9337;
 Thu, 26 Sep 2019 14:15:51 -0700 (PDT)
Received: from [10.37.12.151] (unknown [10.37.12.151])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 62C0F3F739;
 Thu, 26 Sep 2019 14:15:48 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] arm64: vdso32: Detect binutils support for dmb
 ishld
To: Catalin Marinas <catalin.marinas@arm.com>
References: <20190926133805.52348-1-vincenzo.frascino@arm.com>
 <20190926133805.52348-3-vincenzo.frascino@arm.com>
 <20190926155938.GM9689@arrakis.emea.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <2e1e562c-ff9d-9cd4-afd5-e5e8d813f0fc@arm.com>
Date: Thu, 26 Sep 2019 22:17:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926155938.GM9689@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_141552_383281_E1C36BA2 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/26/19 4:59 PM, Catalin Marinas wrote:
> On Thu, Sep 26, 2019 at 02:38:03PM +0100, Vincenzo Frascino wrote:
>>  arch/arm64/kernel/vdso32/Makefile            | 9 +++++++++
> 
> Could you please also remove the unnecessary gcc-goto.sh check in this
> file? We don't use jump labels in the vdso (can't run-time patch them).
> I found it while forcing COMPATCC=clang with my additional diff and I
> get the warning on 'make clean'.
>

I will do it in a separate cleanup patch, I want to keep this only for the error
reported by Will.

> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 22f0d31ea528..038357a1e835 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -40,9 +38,6 @@ VDSO_CAFLAGS += $(call cc32-option,-fno-PIE)
>  ifdef CONFIG_DEBUG_INFO
>  VDSO_CAFLAGS += -g
>  endif
> -ifeq ($(shell $(CONFIG_SHELL) $(srctree)/scripts/gcc-goto.sh $(COMPATCC)), y)
> -VDSO_CAFLAGS += -DCC_HAVE_ASM_GOTO
> -endif
>  
>  # From arm Makefile
>  VDSO_CAFLAGS += $(call cc32-option,-fno-dwarf2-cfi-asm)
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
