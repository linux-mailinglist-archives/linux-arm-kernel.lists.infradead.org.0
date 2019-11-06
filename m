Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB02CF1730
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 14:33:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxKn9a4/6IP3zw1Oe2YL3lG/uV//hvOWdnV0fGHjM1c=; b=tIfCR18n+Ko8g+
	90WNa8OD8Enyf2SJ2+QoCDZiY0vlaO3Ug2LHUl3spy8LRbz3yB2FAPNv+iuiowFEnwqJgEcDic140
	wW9mwPJ8N6uswQ2M7sRCsRvUanGv+sg2uoz3/kAGzfa+MnL4h1xioQClcOo7OVt4zUm8Imv54qubc
	iZDjDndRq7p5hY9twFJF712DwSs6406Q8NnwExYfU19RMU6wjl+FUWolvsczZ54z5zwMvSAcc+9rf
	vZHNdKYKjv9vzlFg9vTk68uKFespjYi7mf2VHwOfmHY1hzyKIIXGRYTmODAYalA5TiG067bdp0YuU
	nF0s2+v7Bg8kwqnJZJAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLQv-0000NA-Qb; Wed, 06 Nov 2019 13:33:13 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLPG-00073K-C6
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 13:31:32 +0000
Received: by mail-qk1-x744.google.com with SMTP id a194so24509088qkg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 05:31:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=G+WiPUIG3CrWdd/iWlHup6ErrbIQ6481mPe9TVVrvQQ=;
 b=mXiZDkmZnvX3H/SXw3XSdWctY4ZNagKjvRF+QKgs4wckj4Iz8n840OSjEWSUh0Ergg
 xjUcaT8nEVSOjycOBrACWZUjeNjzq7J43iZ6oVLQ8E1ZInVD0j7l1OC8Ql0qoMj5Sfip
 O0lvdqrUnjZqyn7uSImGRnNzvZnep93hHx8xenXwHOOymowluK8SsSZRPz/yY7yuwKtl
 NkrVU3hNCeJ6vT8Y+qpSg1UE6WoxuMiQoA5kT3tjxdqtHU4Kwpnq0D8lhcMfmeERfc28
 yvzkCPC2F4EFzH9YA8zFl6CBmo39DQ/ynOlAWal8kjniA5D7IOdy7bKdMxOUlh8vBaea
 Z6Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=G+WiPUIG3CrWdd/iWlHup6ErrbIQ6481mPe9TVVrvQQ=;
 b=mjqCeV2B3ExXVM88XwmE1xczQtxryrO2AqZrd/N9lVSqX/L6hT+6LatxpoAtWub9ZC
 EvLcyxY74SFR9UWMXnxmKhBkRHWF8/9Lns6TYo1YjmEnUa1RUvN04NxaTOt6s4TRxkF+
 NcnNakceDbgWExja6+6k3uDudwR5Zxy8ek4zmK1SH7zv9ONOa9dlMA/I6LNoy9aP6WXi
 WRWCq538X1RbZbb64wJywFgAQfkXv3l/lzPiBU61CiZ+VKtdeenv3/AsVrjXwO7B83ew
 Oh0xQ4IKoni47SZWsGrdxqTfZWLv78FrutWQ2Vlf4Swdq+xR3mSE6DGjz8CVBPYNHznD
 bhHA==
X-Gm-Message-State: APjAAAXETtt8kKgWppDbjyGsnfb6yThNTyF8euQ0ol2V19m7UXPKsH3P
 NPhBBqRW/3mc0+6Ug1BbrVCWgg==
X-Google-Smtp-Source: APXvYqzdeBiCyHfpAPHsMenhV2A+FCafKKeQzrXAhZRzGdmthzVqtHWBRs7H+kUvNJGieZ2ZZZZVWw==
X-Received: by 2002:a05:620a:9c4:: with SMTP id
 y4mr1998396qky.113.1573047087831; 
 Wed, 06 Nov 2019 05:31:27 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id a2sm10997955qkb.82.2019.11.06.05.31.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Nov 2019 05:31:27 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3594.4.19\))
Subject: Re: [PATCH v15 00/23] Generic page walk and ptdump
From: Qian Cai <cai@lca.pw>
In-Reply-To: <1572896147.5937.116.camel@lca.pw>
Date: Wed, 6 Nov 2019 08:31:25 -0500
Message-Id: <7B040741-EC8A-4CC0-964B-4046AE2E617A@lca.pw>
References: <20191101140942.51554-1-steven.price@arm.com>
 <1572896147.5937.116.camel@lca.pw>
To: Steven Price <steven.price@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
X-Mailer: Apple Mail (2.3594.4.19)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_053130_467256_ABCBABC5 
X-CRM114-Status: GOOD (  25.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 =?utf-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Nov 4, 2019, at 2:35 PM, Qian Cai <cai@lca.pw> wrote:
> 
> On Fri, 2019-11-01 at 14:09 +0000, Steven Price wrote:
>> Many architectures current have a debugfs file for dumping the kernel
>> page tables. Currently each architecture has to implement custom
>> functions for this because the details of walking the page tables used
>> by the kernel are different between architectures.
>> 
>> This series extends the capabilities of walk_page_range() so that it can
>> deal with the page tables of the kernel (which have no VMAs and can
>> contain larger huge pages than exist for user space). A generic PTDUMP
>> implementation is the implemented making use of the new functionality of
>> walk_page_range() and finally arm64 and x86 are switch to using it,
>> removing the custom table walkers.
>> 
>> To enable a generic page table walker to walk the unusual mappings of
>> the kernel we need to implement a set of functions which let us know
>> when the walker has reached the leaf entry. After a suggestion from Will
>> Deacon I've chosen the name p?d_leaf() as this (hopefully) describes
>> the purpose (and is a new name so has no historic baggage). Some
>> architectures have p?d_large macros but this is easily confused with
>> "large pages".
>> 
>> This series ends with a generic PTDUMP implemention for arm64 and x86.
>> 
>> Mostly this is a clean up and there should be very little functional
>> change. The exceptions are:
>> 
>> * arm64 PTDUMP debugfs now displays pages which aren't present (patch 22).
>> 
>> * arm64 has the ability to efficiently process KASAN pages (which
>>  previously only x86 implemented). This means that the combination of
>>  KASAN and DEBUG_WX is now useable.
>> 
>> Also available as a git tree:
>> git://linux-arm.org/linux-sp.git walk_page_range/v15
>> 
>> Changes since v14:
>> https://lore.kernel.org/lkml/20191028135910.33253-1-steven.price@arm.com/
>> * Switch walk_page_range() into two functions, the existing
>>   walk_page_range() now still requires VMAs (and treats areas without a
>>   VMA as a 'hole'). The new walk_page_range_novma() ignores VMAs and
>>   will report the actual page table layout. This fixes the previous
>>   breakage of /proc/<pid>/pagemap
>> * New patch at the end of the series which reduces the 'level' numbers
>>   by 1 to simplify the code slightly
>> * Added tags
> 
> Does this new version also take care of this boot crash seen with v14? Suppose
> it is now breaking CONFIG_EFI_PGT_DUMP=y? The full config is,
> 
> https://raw.githubusercontent.com/cailca/linux-mm/master/x86.config
> 

V15 is indeed DOA here.

[   10.957006][    T0] pid_max: default: 131072 minimum: 1024
[   11.543186][    T0] ---[ User Space ]---
[   11.547009][    T0] 0x0000000000000000-0x0000000000001000           4K     RW                     x  pte
[   11.556612][    T0] 0x0000000000001000-0x0000000000200000        2044K                               pte
[   11.557008][    T0] 0x0000000000200000-0x0000000004000000          62M                               pmd
[   11.567014][    T0] 0x0000000004000000-0x0000000004076000         472K                               pte
[   11.577033][    T0] 0x0000000004076000-0x0000000004200000        1576K                               pte
[   11.587013][    T0] 0x0000000004200000-0x0000000011000000         206M                               pmd
[   11.597023][    T0] 0x0000000011000000-0x0000000011100000           1M                               pte
[   11.607023][    T0] 0x0000000011100000-0x0000000011200000           1M                               pte
[   11.617006][    T0] 0x0000000011200000-0x0000000011800000           6M                               pmd
[   11.627068][    T0] ==================================================================
[   11.635087][    T0] BUG: KASAN: wild-memory-access in ptdump_pte_entry+0x39/0x60
[   11.636992][    T0] Read of size 8 at addr 000f887fee5ff000 by task swapper/0/0
[   11.636992][    T0] 
[   11.636992][    T0] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.4.0-rc6-next-20191106+ #6
[   11.636992][    T0] Hardware name: HPE ProLiant DL385 Gen10/ProLiant DL385 Gen10, BIOS A40 07/10/2019
[   11.636992][    T0] Call Trace:
[   11.636992][    T0]  dump_stack+0xa0/0xea
[   11.636992][    T0]  __kasan_report.cold.7+0xb0/0xc0
[   11.636992][    T0]  ? note_page+0x6a9/0xa70
[   11.636992][    T0]  ? ptdump_pte_entry+0x39/0x60
[   11.636992][    T0]  ? ptdump_walk_pgd_level_core+0x1e0/0x1e0
[   11.636992][    T0]  kasan_report+0x12/0x20
[   11.636992][    T0]  __asan_load8+0x71/0xa0
[   11.636992][    T0]  ptdump_pte_entry+0x39/0x60
[   11.636992][    T0]  walk_pgd_range+0x9e5/0xdb0
[   11.636992][    T0]  __walk_page_range+0x206/0x230
[   11.636992][    T0]  walk_page_range_novma+0xc5/0x130
[   11.636992][    T0]  ? walk_page_range+0x220/0x220
[   11.636992][    T0]  ptdump_walk_pgd+0x76/0xd0
[   11.636992][    T0]  ptdump_walk_pgd_level_core+0x169/0x1e0
[   11.636992][    T0]  ? hugetlb_get_unmapped_area+0x5b0/0x5b0
[   11.636992][    T0]  ? trace_hardirqs_on+0x3a/0x160
[   11.636992][    T0]  ? ptdump_walk_pgd_level_core+0x1e0/0x1e0
[   11.636992][    T0]  ? efi_delete_dummy_variable+0xa9/0xd0
[   11.636992][    T0]  ? __enc_copy+0x90/0x90
[   11.636992][    T0]  ptdump_walk_pgd_level+0x15/0x20
[   11.636992][    T0]  efi_dump_pagetable+0x35/0x37
[   11.636992][    T0]  efi_enter_virtual_mode+0x72a/0x737
[   11.636992][    T0]  start_kernel+0x607/0x6a9
[   11.636992][    T0]  ? thread_stack_cache_init+0xb/0xb
[   11.636992][    T0]  ? idt_setup_from_table+0xd9/0x130
[   11.636992][    T0]  x86_64_start_reservations+0x24/0x26
[   11.636992][    T0]  x86_64_start_kernel+0xf4/0xfb
[   11.636992][    T0]  secondary_startup_64+0xb6/0xc0
[   11.636992][    T0] ==================================================================
[   11.636992][    T0] Disabling lock debugging due to kernel taint
[   11.637009][    T0] general protection fault: 0000 [#1] SMP DEBUG_PAGEALLOC KASAN NOPTI
[   11.645067][    T0] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G    B             5.4.0-rc6-next-20191106+ #6
[   11.646992][    T0] Hardware name: HPE ProLiant DL385 Gen10/ProLiant DL385 Gen10, BIOS A40 07/10/2019
[   11.646992][    T0] RIP: 0010:ptdump_pte_entry+0x39/0x60
[   11.646992][    T0] Code: 55 41 54 49 89 fc 48 8d 79 20 53 48 89 cb e8 8e 9d fa ff 48 8b 5b 20 48 89 df e8 82 9d fa ff 4c 89 e7 4c 8b 2b e8 77 9d fa ff <49> 8b 0c 24 4c 89 f6 48 89 df ba 04 00 00 00 e8 f3 8d 9b 00 31 c0
[   11.646992][    T0] RSP: 0000:ffffffff8a2079f0 EFLAGS: 00010286
[   11.646992][    T0] RAX: 0000000000000000 RBX: ffffffff8a207cf0 RCX: ffffffff88d74576
[   11.646992][    T0] RDX: 0000000000000007 RSI: dffffc0000000000 RDI: ffffffff8a8f53d4
[   11.646992][    T0] RBP: ffffffff8a207a10 R08: fffffbfff151c01a R09: fffffbfff151c01a
[   11.646992][    T0] R10: fffffbfff151c019 R11: ffffffff8a8e00cb R12: 000f887fee5ff000
[   11.646992][    T0] R13: ffffffff88caf040 R14: 0000000011a00000 R15: ffffffff89cfdcc0
[   11.646992][    T0] FS:  0000000000000000(0000) GS:ffff888843400000(0000) knlGS:0000000000000000
[   11.646992][    T0] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   11.646992][    T0] CR2: ffff8890779ff000 CR3: 0000000c54a12000 CR4: 00000000000406b0
[   11.646992][    T0] Call Trace:
[   11.646992][    T0]  walk_pgd_range+0x9e5/0xdb0
[   11.646992][    T0]  __walk_page_range+0x206/0x230
[   11.646992][    T0]  walk_page_range_novma+0xc5/0x130
[   11.646992][    T0]  ? walk_page_range+0x220/0x220
[   11.646992][    T0]  ptdump_walk_pgd+0x76/0xd0
[   11.646992][    T0]  ptdump_walk_pgd_level_core+0x169/0x1e0
[   11.646992][    T0]  ? hugetlb_get_unmapped_area+0x5b0/0x5b0
[   11.646992][    T0]  ? trace_hardirqs_on+0x3a/0x160
[   11.646992][    T0]  ? ptdump_walk_pgd_level_core+0x1e0/0x1e0
[   11.646992][    T0]  ? efi_delete_dummy_variable+0xa9/0xd0
[   11.646992][    T0]  ? __enc_copy+0x90/0x90
[   11.646992][    T0]  ptdump_walk_pgd_level+0x15/0x20
[   11.646992][    T0]  efi_dump_pagetable+0x35/0x37
[   11.646992][    T0]  efi_enter_virtual_mode+0x72a/0x737
[   11.646992][    T0]  start_kernel+0x607/0x6a9
[   11.646992][    T0]  ? thread_stack_cache_init+0xb/0xb
[   11.646992][    T0]  ? idt_setup_from_table+0xd9/0x130
[   11.646992][    T0]  x86_64_start_reservations+0x24/0x26
[   11.646992][    T0]  x86_64_start_kernel+0xf4/0xfb
[   11.646992][    T0]  secondary_startup_64+0xb6/0xc0
[   11.646992][    T0] Modules linked in:
[   11.647003][    T0] ---[ end trace 751e8882de194a93 ]---
[   11.652355][    T0] RIP: 0010:ptdump_pte_entry+0x39/0x60
[   11.657001][    T0] Code: 55 41 54 49 89 fc 48 8d 79 20 53 48 89 cb e8 8e 9d fa ff 48 8b 5b 20 48 89 df e8 82 9d fa ff 4c 89 e7 4c 8b 2b e8 77 9d fa ff <49> 8b 0c 24 4c 89 f6 48 89 df ba 04 00 00 00 e8 f3 8d 9b 00 31 c0
[   11.666998][    T0] RSP: 0000:ffffffff8a2079f0 EFLAGS: 00010286
[   11.672961][    T0] RAX: 0000000000000000 RBX: ffffffff8a207cf0 RCX: ffffffff88d74576
[   11.676998][    T0] RDX: 0000000000000007 RSI: dffffc0000000000 RDI: ffffffff8a8f53d4
[   11.686998][    T0] RBP: ffffffff8a207a10 R08: fffffbfff151c01a R09: fffffbfff151c01a
[   11.696998][    T0] R10: fffffbfff151c019 R11: ffffffff8a8e00cb R12: 000f887fee5ff000
[   11.704882][    T0] R13: ffffffff88caf040 R14: 0000000011a00000 R15: ffffffff89cfdcc0
[   11.706999][    T0] FS:  0000000000000000(0000) GS:ffff888843400000(0000) knlGS:0000000000000000
[   11.716998][    T0] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   11.726998][    T0] CR2: ffff8890779ff000 CR3: 0000000c54a12000 CR4: 00000000000406b0
[   11.736998][    T0] Kernel panic - not syncing: Fatal exception
[   11.743272][    T0] ---[ end Kernel panic - not syncing: Fatal exception ]---

>> 
>> Changes since v13:
>> https://lore.kernel.org/lkml/20191024093716.49420-1-steven.price@arm.com/
>> * Fixed typo in arc definition of pmd_leaf() spotted by the kbuild test
>>   robot
>> * Added tags
>> 
>> Changes since v12:
>> https://lore.kernel.org/lkml/20191018101248.33727-1-steven.price@arm.com/
>> * Correct code format in riscv pud_leaf()/pmd_leaf()
>> * v12 may not have reached everyone because of mail server problems
>>   (which are now hopefully resolved!)
>> 
>> Changes since v11:
>> https://lore.kernel.org/lkml/20191007153822.16518-1-steven.price@arm.com/
>> * Use "-1" as dummy depth parameter in patch 14.
>> 
>> Changes since v10:
>> https://lore.kernel.org/lkml/20190731154603.41797-1-steven.price@arm.com/
>> * Rebased to v5.4-rc1 - mainly various updates to deal with the
>>   splitting out of ops from struct mm_walk.
>> * Deal with PGD_LEVEL_MULT not always being constant on x86.
>> 
>> Changes since v9:
>> https://lore.kernel.org/lkml/20190722154210.42799-1-steven.price@arm.com/
>> * Moved generic macros to first page in the series and explained the
>>   macro naming in the commit message.
>> * mips: Moved macros to pgtable.h as they are now valid for both 32 and 64
>>   bit
>> * x86: Dropped patch which changed the debugfs output for x86, instead
>>   we have...
>> * new patch adding 'depth' parameter to pte_hole. This is used to
>>   provide the necessary information to output lines for 'holes' in the
>>   debugfs files
>> * new patch changing arm64 debugfs output to include holes to match x86
>> * generic ptdump KASAN handling has been simplified and now works with
>>   CONFIG_DEBUG_VIRTUAL.
>> 
>> Changes since v8:
>> https://lore.kernel.org/lkml/20190403141627.11664-1-steven.price@arm.com/
>> * Rename from p?d_large() to p?d_leaf()
>> * Dropped patches migrating arm64/x86 custom walkers to
>>   walk_page_range() in favour of adding a generic PTDUMP implementation
>>   and migrating arm64/x86 to that instead.
>> * Rebased to v5.3-rc1
>> 
>> Steven Price (23):
>>  mm: Add generic p?d_leaf() macros
>>  arc: mm: Add p?d_leaf() definitions
>>  arm: mm: Add p?d_leaf() definitions
>>  arm64: mm: Add p?d_leaf() definitions
>>  mips: mm: Add p?d_leaf() definitions
>>  powerpc: mm: Add p?d_leaf() definitions
>>  riscv: mm: Add p?d_leaf() definitions
>>  s390: mm: Add p?d_leaf() definitions
>>  sparc: mm: Add p?d_leaf() definitions
>>  x86: mm: Add p?d_leaf() definitions
>>  mm: pagewalk: Add p4d_entry() and pgd_entry()
>>  mm: pagewalk: Allow walking without vma
>>  mm: pagewalk: Add test_p?d callbacks
>>  mm: pagewalk: Add 'depth' parameter to pte_hole
>>  x86: mm: Point to struct seq_file from struct pg_state
>>  x86: mm+efi: Convert ptdump_walk_pgd_level() to take a mm_struct
>>  x86: mm: Convert ptdump_walk_pgd_level_debugfs() to take an mm_struct
>>  x86: mm: Convert ptdump_walk_pgd_level_core() to take an mm_struct
>>  mm: Add generic ptdump
>>  x86: mm: Convert dump_pagetables to use walk_page_range
>>  arm64: mm: Convert mm/dump.c to use walk_page_range()
>>  arm64: mm: Display non-present entries in ptdump
>>  mm: ptdump: Reduce level numbers by 1 in note_page()
>> 
>> arch/arc/include/asm/pgtable.h               |   1 +
>> arch/arm/include/asm/pgtable-2level.h        |   1 +
>> arch/arm/include/asm/pgtable-3level.h        |   1 +
>> arch/arm64/Kconfig                           |   1 +
>> arch/arm64/Kconfig.debug                     |  19 +-
>> arch/arm64/include/asm/pgtable.h             |   2 +
>> arch/arm64/include/asm/ptdump.h              |   8 +-
>> arch/arm64/mm/Makefile                       |   4 +-
>> arch/arm64/mm/dump.c                         | 148 +++-----
>> arch/arm64/mm/mmu.c                          |   4 +-
>> arch/arm64/mm/ptdump_debugfs.c               |   2 +-
>> arch/mips/include/asm/pgtable.h              |   5 +
>> arch/powerpc/include/asm/book3s/64/pgtable.h |  30 +-
>> arch/riscv/include/asm/pgtable-64.h          |   7 +
>> arch/riscv/include/asm/pgtable.h             |   7 +
>> arch/s390/include/asm/pgtable.h              |   2 +
>> arch/sparc/include/asm/pgtable_64.h          |   2 +
>> arch/x86/Kconfig                             |   1 +
>> arch/x86/Kconfig.debug                       |  20 +-
>> arch/x86/include/asm/pgtable.h               |  10 +-
>> arch/x86/mm/Makefile                         |   4 +-
>> arch/x86/mm/debug_pagetables.c               |   8 +-
>> arch/x86/mm/dump_pagetables.c                | 343 +++++--------------
>> arch/x86/platform/efi/efi_32.c               |   2 +-
>> arch/x86/platform/efi/efi_64.c               |   4 +-
>> drivers/firmware/efi/arm-runtime.c           |   2 +-
>> fs/proc/task_mmu.c                           |   4 +-
>> include/asm-generic/pgtable.h                |  20 ++
>> include/linux/pagewalk.h                     |  42 ++-
>> include/linux/ptdump.h                       |  22 ++
>> mm/Kconfig.debug                             |  21 ++
>> mm/Makefile                                  |   1 +
>> mm/hmm.c                                     |   8 +-
>> mm/migrate.c                                 |   5 +-
>> mm/mincore.c                                 |   1 +
>> mm/pagewalk.c                                | 126 +++++--
>> mm/ptdump.c                                  | 151 ++++++++
>> 37 files changed, 586 insertions(+), 453 deletions(-)
>> create mode 100644 include/linux/ptdump.h
>> create mode 100644 mm/ptdump.c
>> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
