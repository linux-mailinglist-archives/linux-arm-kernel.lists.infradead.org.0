Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508BB12A8F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 20:01:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v3q9cEnXHheYhxBmFhXQ6EUkvev4H02yqnFyCQy3uGg=; b=WfhyC4aNKEAgNQUKVjjUCuHYe
	fsq5HWce3qvDWxpf+oPjXhWfGYlHLtVA6ipoSwhOx3iM960l0MTD6hb1ylv1M5akQtb5f96d6JKGz
	Yfr3dbzChLtoBVMxbnIs8GxNDvAIazUrM/KisRYyMK1VOuu2ahOxI7ZLpZnCPgYC6IoZTZ68h1DLV
	AkGyS+tmOuzXnB7we8MhYYvhyMz3i9U/EJ60bPYhPlKdr9Wir6S0gs1L0/jy42V+mPq64R+yH1U41
	HLCfR9NdIQbu/CjdeOWldJVYewbR0jmMbYNupODi35LSY4icmlX4gOAhmIbezVJYWNovOSON9cYF1
	I/3mgLgXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikBuq-00030A-Pe; Wed, 25 Dec 2019 19:01:52 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikBue-0002zj-LA
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 19:01:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577300497;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vXL6M/v1cLO/JOoBiBUbtLoMBRFpX7bcoPYQWy5enEk=;
 b=HJZprIAwaFGiCjsIEltJfingZFltotvaXuP/wL1leNyto76lmvyDrbp7M4KNHss7N9YaVr
 BPo8b2ElvHALiXBZCEB1o6NNUh9brZtNBrC6VijVAMutHkFwjYKrF/mFBFeilvv5hHm/rX
 tv9MawKgmKByEoTCeSarBYjkd4+BTuc=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-151-XsahpVWNMkaIqhOhCR6m1g-1; Wed, 25 Dec 2019 14:01:36 -0500
Received: by mail-pj1-f71.google.com with SMTP id l8so4498865pje.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Dec 2019 11:01:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vXL6M/v1cLO/JOoBiBUbtLoMBRFpX7bcoPYQWy5enEk=;
 b=NuR34uYdvw4wgyTaIfkqZXa4Zs0mD53pXr6WSLt6htdoOqQOCsBlGG9damMH9O3F94
 8DwdsBKY+3WVSu7DABZKLnzjOaPawhQUkgzsi6KpCYDOn85V2fS4fq+8PB/EZAkXxsxi
 8iTOde3Ivmw9D9kS1iCAbdU8bv2wm9xjayv9X6CmZxvw1TK6y4gpnqkqEoloc/b/JImN
 +V9b2VzKbOKjfq9oZAXUhoCW803JBPyBl33cavi8QoQvoo1srEuajevYm0y8+2pgN4fR
 2caGXqlW3UWhkzhPw4qZ4axZIkf+HroU7pn5X5WQoE13TJAstESvafRIfZt+LxUB8mE3
 rf+g==
X-Gm-Message-State: APjAAAUrSLd/uGMRNPWHOTFcyHIJQC4PhBLy5qXqdnkK6DN39HAiDWj9
 7Cr5lBM20xahwNUh+YORjImMjvspO0/xuIb3ernC4+okkIWKOz1est2483xNyll0Xn9M7KFU1Do
 CgT+824+8x8j6XC5nfkl2dsF/b2+gIz3w90g=
X-Received: by 2002:a62:1746:: with SMTP id 67mr28390452pfx.45.1577300495263; 
 Wed, 25 Dec 2019 11:01:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqxIwvYJF0Vmy7pc049WdLIXroBQQIkXYRns8gxHAM77TrZXjaETfikXFa/P4h4Wb8/yLyJk/A==
X-Received: by 2002:a62:1746:: with SMTP id 67mr28390426pfx.45.1577300494996; 
 Wed, 25 Dec 2019 11:01:34 -0800 (PST)
Received: from localhost.localdomain ([122.177.237.105])
 by smtp.gmail.com with ESMTPSA id hg11sm7447136pjb.14.2019.12.25.11.01.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Dec 2019 11:01:34 -0800 (PST)
Subject: Re: [RESEND PATCH v5 2/5] arm64/crash_core: Export TCR_EL1.T1SZ in
 vmcoreinfo
To: James Morse <james.morse@arm.com>, linux-kernel@vger.kernel.org
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
 <1575057559-25496-3-git-send-email-bhsharma@redhat.com>
 <63d6e63c-7218-d2dd-8767-4464be83603f@arm.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <af0fd2b0-99db-9d58-bc8d-0dd9d640b1eb@redhat.com>
Date: Thu, 26 Dec 2019 00:31:27 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <63d6e63c-7218-d2dd-8767-4464be83603f@arm.com>
Content-Language: en-US
X-MC-Unique: XsahpVWNMkaIqhOhCR6m1g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_110140_776153_5BAAD9EB 
X-CRM114-Status: GOOD (  30.87  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.177.237.105 listed in dnsbl.sorbs.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-doc@vger.kernel.org,
 Will Deacon <will@kernel.org>, x86@kernel.org, kexec@lists.infradead.org,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>, Dave Anderson <anderson@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, bhupesh.linux@gmail.com,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Steve Capper <steve.capper@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 12/12/2019 04:02 PM, James Morse wrote:
> Hi Bhupesh,
> 
> On 29/11/2019 19:59, Bhupesh Sharma wrote:
>> vabits_actual variable on arm64 indicates the actual VA space size,
>> and allows a single binary to support both 48-bit and 52-bit VA
>> spaces.
>>
>> If the ARMv8.2-LVA optional feature is present, and we are running
>> with a 64KB page size; then it is possible to use 52-bits of address
>> space for both userspace and kernel addresses. However, any kernel
>> binary that supports 52-bit must also be able to fall back to 48-bit
>> at early boot time if the hardware feature is not present.
>>
>> Since TCR_EL1.T1SZ indicates the size offset of the memory region
>> addressed by TTBR1_EL1 (and hence can be used for determining the
>> vabits_actual value) it makes more sense to export the same in
>> vmcoreinfo rather than vabits_actual variable, as the name of the
>> variable can change in future kernel versions, but the architectural
>> constructs like TCR_EL1.T1SZ can be used better to indicate intended
>> specific fields to user-space.
>>
>> User-space utilities like makedumpfile and crash-utility, need to
>> read/write this value from/to vmcoreinfo
> 
> (write?)

Yes, also write so that the vmcoreinfo from an (crashing) arm64 system 
can be used for analysis of the root-cause of panic/crash on say an 
x86_64 host using utilities like crash-utility/gdb.

>> for determining if a virtual address lies in the linear map range.
> 
> I think this is a fragile example. The debugger shouldn't need to know this.

Well that the current user-space utility design, so I am not sure we can 
tweak that too much.

>> The user-space computation for determining whether an address lies in
>> the linear map range is the same as we have in kernel-space:
>>
>>    #define __is_lm_address(addr)	(!(((u64)addr) & BIT(vabits_actual - 1)))
> 
> This was changed with 14c127c957c1 ("arm64: mm: Flip kernel VA space"). If user-space
> tools rely on 'knowing' the kernel memory layout, they must have to constantly be fixed
> and updated. This is a poor argument for adding this to something that ends up as ABI.

See above. The user-space has to rely on some ABI/guaranteed 
hardware-symbols which can be used for 'determining' the kernel memory 
layout.

> I think a better argument is walking the kernel page tables from the core dump.
> Core code's vmcoreinfo exports the location of the kernel page tables, but in the example
> above you can't walk them without knowing how T1SZ was configured.

Sure, both makedumpfile and crash-utility (which walks the kernel page 
tables from the core dump) use this (and similar) information currently 
in the user-space.

> On older kernels, user-space that needs this would have to assume the value it computes
> from VA_BITs (also in vmcoreinfo) is the value in use.

Yes, backward compatibility has been handled in the user-space already.

> ---%<---
>> I have sent out user-space patches for makedumpfile and crash-utility
>> to add features for obtaining vabits_actual value from TCR_EL1.T1SZ (see
>> [0] and [1]).
>>
>> Akashi reported that he was able to use this patchset and the user-space
>> changes to get user-space working fine with the 52-bit kernel VA
>> changes (see [2]).
>>
>> [0]. http://lists.infradead.org/pipermail/kexec/2019-November/023966.html
>> [1]. http://lists.infradead.org/pipermail/kexec/2019-November/024006.html
>> [2]. http://lists.infradead.org/pipermail/kexec/2019-November/023992.html
> ---%<---
> 
> This probably belongs in the cover letter instead of the commit log.

Ok.

> (From-memory: one of vmcore/kcore is virtually addressed, the other physically. Does this
> fix your poblem in both cases?)
> 
> 
>> diff --git a/arch/arm64/kernel/crash_core.c b/arch/arm64/kernel/crash_core.c
>> index ca4c3e12d8c5..f78310ba65ea 100644
>> --- a/arch/arm64/kernel/crash_core.c
>> +++ b/arch/arm64/kernel/crash_core.c
>> @@ -7,6 +7,13 @@
>>   #include <linux/crash_core.h>
>>   #include <asm/memory.h>
> 
> You need to include asm/sysreg.h for read_sysreg(), and asm/pgtable-hwdef.h for the macros
> you added.

Ok. Will check as I did not get any compilation errors without the same 
and build-bot also did not raise a flag for the missing include files.

>> +static inline u64 get_tcr_el1_t1sz(void);

> Why do you need to do this?

Without this I was getting a missing declaration error, while compiling 
the code.

>> +static inline u64 get_tcr_el1_t1sz(void)
>> +{
>> +	return (read_sysreg(tcr_el1) & TCR_T1SZ_MASK) >> TCR_T1SZ_OFFSET;
>> +}
> 
> (We don't modify this one, and its always the same one very CPU, so this is fine.
> This function is only called once when the stringy vmcoreinfo elf_note is created...)

Right.

>>   void arch_crash_save_vmcoreinfo(void)
>>   {
>>   	VMCOREINFO_NUMBER(VA_BITS);
>> @@ -15,5 +22,7 @@ void arch_crash_save_vmcoreinfo(void)
>>   						kimage_voffset);
>>   	vmcoreinfo_append_str("NUMBER(PHYS_OFFSET)=0x%llx\n",
>>   						PHYS_OFFSET);
>> +	vmcoreinfo_append_str("NUMBER(tcr_el1_t1sz)=0x%llx\n",
>> +						get_tcr_el1_t1sz());
> 
> You document the name as being upper-case.
> The two values either values either side are upper-case.
Ok, will fix this in v6. Thanks for your inputs.

>>   	vmcoreinfo_append_str("KERNELOFFSET=%lx\n", kaslr_offset());
>>   }

Thanks,
Bhupesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
