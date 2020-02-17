Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C026160F70
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 11:01:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P83lzlRR1GatMY9ca+XMTPtkvisFf15U/drSVCtQBhs=; b=CAULH06pryNYfo
	8m1gfGJXzJpTJMwNIFpDMlg6mU7QMmGln3FOJC1NvXBI6d9VtP+4Q6B20WNjLn43K2iheIUWnCGSV
	2QQNVDkpPvCGRImkMRq0I+hA2fMLeEIjdCuf3u7h9As/BqkLbaVy8ih5f/ZxOaXBm5SjKYjrJh7y5
	RcX1aS3wMAmtPx2A32t4ZcxfWKk/AHdMIlyWwGHPgPh/BwTNPXJ7eOkgbC3Y9lSssY8gDzHMNNbpL
	Kzs8ldZECH+eXBOx3jfKcZvJxJnzf1ykAjrfqw4HMTrVBKkhvULwW8Jxonie7eEbgDN3dTbZ3ahq1
	sGJufeGe/NTpJg2rmMCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3dDH-0004Rj-Ac; Mon, 17 Feb 2020 10:01:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dD9-0004QV-Lg
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 10:01:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 578C730E;
 Mon, 17 Feb 2020 02:01:05 -0800 (PST)
Received: from [10.1.195.32] (e112269-lin.cambridge.arm.com [10.1.195.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 473883F6CF;
 Mon, 17 Feb 2020 02:01:02 -0800 (PST)
Subject: Re: [PATCH v17 21/23] arm64: mm: Convert mm/dump.c to use
 walk_page_range()
To: Ard Biesheuvel <ardb@kernel.org>
References: <20191218162402.45610-1-steven.price@arm.com>
 <20191218162402.45610-22-steven.price@arm.com>
 <CAKv+Gu8Hed9jGiqdgaqJ93JhErJA5OfGRpiarU=YKXb6vQUyMQ@mail.gmail.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <ee4f53ec-601b-3698-1479-f7aeaada38ad@arm.com>
Date: Mon, 17 Feb 2020 10:01:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu8Hed9jGiqdgaqJ93JhErJA5OfGRpiarU=YKXb6vQUyMQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_020107_748235_6F264A6E 
X-CRM114-Status: GOOD (  15.14  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <James.Morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/02/2020 16:25, Ard Biesheuvel wrote:
> On Wed, 18 Dec 2019 at 17:25, Steven Price <steven.price@arm.com> wrote:
>>
>> Now walk_page_range() can walk kernel page tables, we can switch the
>> arm64 ptdump code over to using it, simplifying the code.
>>
>> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
>> Signed-off-by: Steven Price <steven.price@arm.com>
> 
> I did not realize this at the time, but this patch removes the ability
> to dump the EFI page tables on 32-bit ARM. Was that intentional?

No that wasn't intentional, but I can't instantly see how this change
affects 32-bit ARM.

<snip (files in arch/arm64)>
>> diff --git a/drivers/firmware/efi/arm-runtime.c b/drivers/firmware/efi/arm-runtime.c
>> index 899b803842bb..9dda2602c862 100644
>> --- a/drivers/firmware/efi/arm-runtime.c
>> +++ b/drivers/firmware/efi/arm-runtime.c
>> @@ -27,7 +27,7 @@
>>
>>  extern u64 efi_system_table;
>>
>> -#ifdef CONFIG_ARM64_PTDUMP_DEBUGFS
>> +#if defined(CONFIG_PTDUMP_DEBUGFS) && defined(CONFIG_ARM64)

The previous define was *ARM64* so should never have been true when
building for arm. The new condition should be equivalent (arm64 &&
ptdump enabled).

Am I missing something?

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
