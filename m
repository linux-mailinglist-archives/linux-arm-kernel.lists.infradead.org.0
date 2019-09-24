Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EBFBD322
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 21:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Oj/jplCq2S25UaHULmluSMwNWWpMJBZZUSZ1bncoCw=; b=Pzw35/38RVOD6ujHV+KRp8CQc
	22dJoclPeKAKwoIYG2ep1qSnRueYcVtTgOzhdKpYsIvK5tPr6ZlEQnBSi2JZJTsewqSqO+2uBtCH1
	J2pHNlyY1JxGTGc14WK1oYRsKdr2navN/Ss23D6XJg5+VhKUvt9HixpfdJBXE3nW3lPfPclm3kuE+
	VhWRN47AgTdb8gmfuKmmhhQldT6VvmHkutXOnR5CjqRAaSDMjsIXNHPod0dy5mfMAfsNETnX3bMqn
	IGIG66NsAfvG8/pYGy8B0tfLKLRLKUiP4Kbv/iet0YntdVuLCIKCkIeESpATZApyGduU4QE8fdIvb
	WJEKL8qqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCqth-0002Kl-OM; Tue, 24 Sep 2019 19:54:54 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCqtH-0002JK-VV; Tue, 24 Sep 2019 19:54:29 +0000
Received: from [10.200.156.146] (unknown [167.220.2.18])
 by linux.microsoft.com (Postfix) with ESMTPSA id 7C20620BBF87;
 Tue, 24 Sep 2019 12:54:26 -0700 (PDT)
Subject: Re: [RFC PATCH v1 1/1] Add support for arm64 to carry ima measurement
 log in kexec_file_load
To: Thiago Jung Bauermann <bauerman@linux.ibm.com>
References: <20190913225009.3406-1-prsriva@linux.microsoft.com>
 <20190913225009.3406-2-prsriva@linux.microsoft.com>
 <87zhiz1x9l.fsf@morokweng.localdomain>
From: prsriva <prsriva@linux.microsoft.com>
Message-ID: <02234482-b095-e064-f4d6-1c6255a4ff9f@linux.microsoft.com>
Date: Tue, 24 Sep 2019 12:54:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87zhiz1x9l.fsf@morokweng.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_125428_065326_02C5A022 
X-CRM114-Status: GOOD (  27.90  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 yamada.masahiro@socionext.com, sboyd@kernel.org, catalin.marinas@arm.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, zohar@linux.ibm.com,
 takahiro.akashi@linaro.org, kristina.martsenko@arm.org, duwe@lst.de,
 linux-arm-kernel@lists.infradead.org, james.morse@arm.org,
 linux-integrity@vger.kernel.org, tglx@linutronix.de, allison@lohutok.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 9/19/19 8:07 PM, Thiago Jung Bauermann wrote:
> Hello Prakhar,
>
> Prakhar Srivastava <prsriva@linux.microsoft.com> writes:
>
>> During kexec_file_load, carrying forward the ima measurement log allows
>> a verifying party to get the entire runtime event log since the last
>> full reboot since that is when PCRs were last reset.
>>
>> Signed-off-by: Prakhar Srivastava <prsriva@linux.microsoft.com>
>> ---
>>   arch/arm64/Kconfig                     |   7 +
>>   arch/arm64/include/asm/ima.h           |  29 ++++
>>   arch/arm64/include/asm/kexec.h         |   5 +
>>   arch/arm64/kernel/Makefile             |   3 +-
>>   arch/arm64/kernel/ima_kexec.c          | 213 +++++++++++++++++++++++++
>>   arch/arm64/kernel/machine_kexec_file.c |   6 +
>>   6 files changed, 262 insertions(+), 1 deletion(-)
>>   create mode 100644 arch/arm64/include/asm/ima.h
>>   create mode 100644 arch/arm64/kernel/ima_kexec.c
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 3adcec05b1f6..f39b12dbf9e8 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -976,6 +976,13 @@ config KEXEC_VERIFY_SIG
>>   	  verification for the corresponding kernel image type being
>>   	  loaded in order for this to work.
>>
>> +config HAVE_IMA_KEXEC
>> +	bool "Carry over IMA measurement log during kexec_file_load() syscall"
>> +	depends on KEXEC_FILE
>> +	help
>> +	  Select this option to carry over IMA measurement log during
>> +	  kexec_file_load.
>> +
>>   config KEXEC_IMAGE_VERIFY_SIG
>>   	bool "Enable Image signature verification support"
>>   	default y
> This is not right. As it stands, HAVE_IMA_KEXEC is essentially a synonym
> for IMA_KEXEC.
>
> It's not meant to be user-visible in the config process. Instead, it's
> meant to be selected by the arch Kconfig (probably by the ARM64 config
> symbol) to signal to IMA's Kconfig that it can offer the IMA_KEXEC
> option.
>
> I also mentioned in my previous review that config HAVE_IMA_KEXEC should
> be defined in arch/Kconfig, not separately in both arch/arm64/Kconfig
> and arch/powerpc/Kconfig.

I see the entry exists in arch/Kconfig and is overwritten.
I will remove entries both from powerpc and arm64.

How do i cross-compile for powerpc?

>
>> diff --git a/arch/arm64/include/asm/ima.h b/arch/arm64/include/asm/ima.h
>> new file mode 100644
>> index 000000000000..e23cee84729f
>> --- /dev/null
>> +++ b/arch/arm64/include/asm/ima.h
>> @@ -0,0 +1,29 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +#ifndef _ASM_ARM64_IMA_H
>> +#define _ASM_ARM64_IMA_H
>> +
>> +struct kimage;
>> +
>> +int ima_get_kexec_buffer(void **addr, size_t *size);
>> +int ima_free_kexec_buffer(void);
>> +
>> +#ifdef CONFIG_IMA
>> +void remove_ima_buffer(void *fdt, int chosen_node);
>> +#else
>> +static inline void remove_ima_buffer(void *fdt, int chosen_node) {}
>> +#endif
> I mentioned in my previous review that remove_ima_buffer() should exist
> even if CONFIG_IMA isn't set. Did you arrive at a different conclusion?

I made the needed changed in makefile, missed removing the

configs here. Thanks for pointing this out.

>> +
>> +#ifdef CONFIG_IMA_KEXEC
>> +int arch_ima_add_kexec_buffer(struct kimage *image, unsigned long load_addr,
>> +			      size_t size);
>> +
>> +int setup_ima_buffer(const struct kimage *image, void *fdt, int chosen_node);
>> +#else
>> +static inline int setup_ima_buffer(const struct kimage *image, void *fdt,
>> +				   int chosen_node)
>> +{
>> +	remove_ima_buffer(fdt, chosen_node);
>> +	return 0;
>> +}
>> +#endif /* CONFIG_IMA_KEXEC */
>> +#endif /* _ASM_ARM64_IMA_H */
>> diff --git a/arch/arm64/kernel/ima_kexec.c b/arch/arm64/kernel/ima_kexec.c
>> new file mode 100644
>> index 000000000000..b14326d541f3
>> --- /dev/null
>> +++ b/arch/arm64/kernel/ima_kexec.c
> In the previous patch, you took the powerpc file and made a few
> modifications to fit your needs. This file is now somewhat different
> than the powerpc version, but I don't understand to what purpose. It's
> not different in any significant way.
>
> Based on review comments from your previous patch, I was expecting to
> see code from the powerpc file moved to an arch-independent part of the
> the kernel and possibly adapted so that both arm64 and powerpc could use
> it. Can you explain why you chose this approach instead? What is the
> advantage of having superficially different but basically equivalent
> code in the two architectures?
>
> Actually, there's one change that is significant: instead of a single
> linux,ima-kexec-buffer property holding the start address and size of
> the buffer, ARM64 is now using two properties (linux,ima-kexec-buffer
> and linux,ima-kexec-buffer-end) for the start and end addresses. In my
> opinion, unless there's a good reason for it Linux should be consistent
> accross architectures when possible.
>
> --
> Thiago Jung Bauermann
> IBM Linux Technology Center
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
