Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D07BEEAA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 21:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJV6f9KITw7SUHiFcmgoTX9TrLHMEd1euDJ+g94H8W0=; b=JYwATqi0V0PMOt
	hfUVBY8wvkf69GGwU1DfvuEfr+yto0vpFfFCNrvD5Mys1VnjVPJF6P5vnLG+c4yrEUm+GcF8NIPW4
	W8+UNNy6CWhj1XCKomcBPHrCP1tk3s6U0bApbypUqcUeWpG9HW1YA58j2dR5zaYLM78WZhJ7ZKx6d
	U+SotiXijUPrkDNG5HWxEcc9pCd6A8Ta7D4RLLuSg/UcvwCIoDB6JmRa8bKTyRIgcoQjCjX1WgI72
	I8mAvGhFeIMmeM1RMFaUizMr8VFwfxasDvzVBsBINWPffUgDSJZaAlKwl8edbV/ST6qzXZvxrVyhD
	ecrQsUOfnfejpcMT0Dvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjRw-0007Zt-UQ; Mon, 04 Nov 2019 20:59:44 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjRp-0007YX-4u
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 20:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572901112;
 bh=o9zHlgAY77TGflpzTqEN0LG4kSpDdTWJLg2wRgivjGU=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=CL8/8ne27xu6Ld5/yV8OWVc7UVDl40OSIUKAO/aLAKqDfuVfja+UfCu/mD23/lmZg
 UFl6IxezEkKV7CDuPHC6pgUa54zfe+Y8MPh2Eyqnl+jfy4qJu4lB7yBF5zpXLNI6fj
 dtXGXLGr9vzkvsTaLMEEeWHvcU78qtGmH5GzLRn8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.167.207]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M7sDg-1iWfNK224Y-0051am; Mon, 04
 Nov 2019 21:58:32 +0100
Subject: Re: [PATCHv2 2/8] module/ftrace: handle patchable-function-entry
To: Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, Jessica Yu <jeyu@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-3-mark.rutland@arm.com>
 <20191104155132.GA1643@lakrids.cambridge.arm.com>
From: Helge Deller <deller@gmx.de>
Autocrypt: addr=deller@gmx.de; keydata=
 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
 oiAieEtb6a/7+jPKZnRFTw==
Message-ID: <ac753055-1542-1636-b95a-bac5c3014643@gmx.de>
Date: Mon, 4 Nov 2019 21:58:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191104155132.GA1643@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Provags-ID: V03:K1:Nq7uHo8vLJ9av4lm198qsWtZq+Kbr0zXPbi0OBky+J98bDf8Zd7
 5z5YL1z1AbfVhT7l2S9j/xKwr8s4VPhf6U0+toQIPd33u6DjlLsAS7xNY6u2T21wC864c3p
 wNNXlUaXhHGIIwTDiq11n7kUTmIFkX9P8zV9cXESaGLXFsHfTEuna0lHXhccKphDhXPxfmu
 q1+2gwMCrM9an1OfV9laQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HM76uRE6QC8=:qFrjSQ6VveTIJaNERAly2t
 +7BW9qHdV3ZLGV5VE/MmzyYphyZjZRidEas+D3YjmznC7F0v6HcVk3RIX7o15x0QlzMb9lwP2
 t2eqAu8loKhdOc/D1Jmo1D4pwY1x54jytpQAB0wVXpfJlgBMPbj5DmmFBfIY3aKGlqeA3jsQ4
 jo14QnbBzj2bbtyh5WjcTNL1XaX2yf30AFc4j/vKgaR+6xLjHczkjqHMTU8G2sqbKQ1870bl+
 x3YddN8KOBhQQmEEAUb7wAVEGBnwSWQqTFsiYgKkg7AUKzIh2afaN7Api5+0YOzSPU3pWXusl
 xzmOp4l0V3TDmNPXxsJ+62nug1n/qqmbZTS6GkeN6L/WiioieNIxmFwHOG8O76Wr3jsEJTGJ5
 9GScrQCGBxjK9Q9fUbZdcWAnyKgn0pZj0rwNLaBJMahBSYchgFgpmXwAvRnrS7Qu67LBDA1yn
 KeP3NzN54eDwtBZj+vKIucTP1R23CpUI59WJ0q/f6rXBY3plhsVFZFVxYaRVSB4rj53RZZH04
 iYKmjo+NAdbB0PZNo5u/M9Y2/5dcpw/myi+56EdlTVjyah1vgqlc22DhhNSXrp25sL5WJyvkY
 0QEMPhBaP4+/tRpw/yPLA8kDXE33+AZj/7hIQZ4+oP/Cm+W0tsE29eN1UpLL9Gq2UdodrY3ca
 9uT/MbipfGL1rvd0+tmoUdSXd0Z+rEM2tW/NRRXUd2lxJ6DOW+uYCklqIPZE9ZK/vaBYqhRsR
 hTFzpq566pp08/hN+35c9MlaaksPSZWFBWNbQ7FegM3nLabx0fmEoTqN76HM5C0JcISXCQXE/
 0RNYoEevnZIzu7rwHjpBmWjapM0ZjZHjb9yXzrG0UhLumGd8hLMoejaA2u3WTbbPJtbnW/dm0
 tE+hHTR8gghI9K0v/Jb0/GLPQmXGMWDpj/U/lyIfDZoAl+alnq/c3JPt341TLA5QIH39OMsiX
 asuz2IfLa1/i+auAsA9GexmW1a1NNzozMEB+H8daPsBcYdWakRaxYT7hdYs3sPhun/70+/dV1
 xIxRzRfcBBV1aVabLdC7sEftbGHNTOJ/ZTmIqvyA0CLU3oNeZA0evBfcoaJYgVeI9OUkWALeo
 IiIc5bnsYtD5q2LNYefZTNDlHM8xMxttkc4x5dmqiVN8UonVcO0X28FgUIUQdyABbChwmJBq6
 0858Xt6zpR/96QIkh526SahE98ADlXG42vSNrQZyDHNicIWNWsRdJHUZ/5ftmqp8QyiG7lB7e
 Da8LUOSO1SjNK/w+/DfEosnU3m752y6EqrsZrpA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_125937_524089_ACFADE4E 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deller[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, duwe@suse.de, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, takahiro.akashi@linaro.org, will@kernel.org,
 mingo@redhat.com, james.morse@arm.com, jpoimboe@redhat.com,
 amit.kachhap@arm.com, svens@stackframe.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 04.11.19 16:51, Mark Rutland wrote:
> Hi Jessica, Helge,
>
> Are you ok with the module and parisc changes, repectively?

Sure, please add my:
Acked-by: Helge Deller <deller@gmx.de>

Helge

> The kbuild test robot is happy building this for multiple architectures,
> Sven has tested that this works correctly on parisc, and others have
> tested other architectures.
>
> I'd like to queue this in the arm64 tree soon if possible.
>
> Thanks,
> Mark.
>
> On Tue, Oct 29, 2019 at 04:58:26PM +0000, Mark Rutland wrote:
>> When using patchable-function-entry, the compiler will record the
>> callsites into a section named "__patchable_function_entries" rather
>> than "__mcount_loc". Let's abstract this difference behind a new
>> FTRACE_CALLSITE_SECTION, so that architectures don't have to handle this
>> explicitly (e.g. with custom module linker scripts).
>>
>> As parisc currently handles this explicitly, it is fixed up accordingly,
>> with its custom linker script removed. Since FTRACE_CALLSITE_SECTION is
>> only defined when DYNAMIC_FTRACE is selected, the parisc module loading
>> code is updated to only use the definition in that case. When
>> DYNAMIC_FTRACE is not selected, modules shouldn't have this section, so
>> this removes some redundant work in that case.
>>
>> I built parisc generic-{32,64}bit_defconfig with DYNAMIC_FTRACE enabled,
>> and verified that the section made it into the .ko files for modules.
>>
>> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
>> Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>> Cc: Helge Deller <deller@gmx.de>
>> Cc: Ingo Molnar <mingo@redhat.com>
>> Cc: James E.J. Bottomley <James.Bottomley@HansenPartnership.com>
>> Cc: Jessica Yu <jeyu@kernel.org>
>> Cc: Steven Rostedt <rostedt@goodmis.org>
>> Cc: Sven Schnelle <svens@stackframe.org>
>> Cc: linux-parisc@vger.kernel.org
>> ---
>>  arch/parisc/Makefile          |  1 -
>>  arch/parisc/kernel/module.c   | 10 +++++++---
>>  arch/parisc/kernel/module.lds |  7 -------
>>  include/linux/ftrace.h        |  5 +++++
>>  kernel/module.c               |  2 +-
>>  5 files changed, 13 insertions(+), 12 deletions(-)
>>  delete mode 100644 arch/parisc/kernel/module.lds
>>
>> diff --git a/arch/parisc/Makefile b/arch/parisc/Makefile
>> index 36b834f1c933..dca8f2de8cf5 100644
>> --- a/arch/parisc/Makefile
>> +++ b/arch/parisc/Makefile
>> @@ -60,7 +60,6 @@ KBUILD_CFLAGS += -DCC_USING_PATCHABLE_FUNCTION_ENTRY=1 \
>>  		 -DFTRACE_PATCHABLE_FUNCTION_SIZE=$(NOP_COUNT)
>>
>>  CC_FLAGS_FTRACE := -fpatchable-function-entry=$(NOP_COUNT),$(shell echo $$(($(NOP_COUNT)-1)))
>> -KBUILD_LDS_MODULE += $(srctree)/arch/parisc/kernel/module.lds
>>  endif
>>
>>  OBJCOPY_FLAGS =-O binary -R .note -R .comment -S
>> diff --git a/arch/parisc/kernel/module.c b/arch/parisc/kernel/module.c
>> index ac5f34993b53..1c50093e2ebe 100644
>> --- a/arch/parisc/kernel/module.c
>> +++ b/arch/parisc/kernel/module.c
>> @@ -43,6 +43,7 @@
>>  #include <linux/elf.h>
>>  #include <linux/vmalloc.h>
>>  #include <linux/fs.h>
>> +#include <linux/ftrace.h>
>>  #include <linux/string.h>
>>  #include <linux/kernel.h>
>>  #include <linux/bug.h>
>> @@ -862,7 +863,7 @@ int module_finalize(const Elf_Ehdr *hdr,
>>  	const char *strtab = NULL;
>>  	const Elf_Shdr *s;
>>  	char *secstrings;
>> -	int err, symindex = -1;
>> +	int symindex = -1;
>>  	Elf_Sym *newptr, *oldptr;
>>  	Elf_Shdr *symhdr = NULL;
>>  #ifdef DEBUG
>> @@ -946,11 +947,13 @@ int module_finalize(const Elf_Ehdr *hdr,
>>  			/* patch .altinstructions */
>>  			apply_alternatives(aseg, aseg + s->sh_size, me->name);
>>
>> +#ifdef CONFIG_DYNAMIC_FTRACE
>>  		/* For 32 bit kernels we're compiling modules with
>>  		 * -ffunction-sections so we must relocate the addresses in the
>> -		 *__mcount_loc section.
>> +		 *  ftrace callsite section.
>>  		 */
>> -		if (symindex != -1 && !strcmp(secname, "__mcount_loc")) {
>> +		if (symindex != -1 && !strcmp(secname, FTRACE_CALLSITE_SECTION)) {
>> +			int err;
>>  			if (s->sh_type == SHT_REL)
>>  				err = apply_relocate((Elf_Shdr *)sechdrs,
>>  							strtab, symindex,
>> @@ -962,6 +965,7 @@ int module_finalize(const Elf_Ehdr *hdr,
>>  			if (err)
>>  				return err;
>>  		}
>> +#endif
>>  	}
>>  	return 0;
>>  }
>> diff --git a/arch/parisc/kernel/module.lds b/arch/parisc/kernel/module.lds
>> deleted file mode 100644
>> index 1a9a92aca5c8..000000000000
>> --- a/arch/parisc/kernel/module.lds
>> +++ /dev/null
>> @@ -1,7 +0,0 @@
>> -/* SPDX-License-Identifier: GPL-2.0 */
>> -
>> -SECTIONS {
>> -	__mcount_loc : {
>> -		*(__patchable_function_entries)
>> -	}
>> -}
>> diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
>> index 9867d90d635e..9141f2263286 100644
>> --- a/include/linux/ftrace.h
>> +++ b/include/linux/ftrace.h
>> @@ -738,6 +738,11 @@ static inline unsigned long get_lock_parent_ip(void)
>>
>>  #ifdef CONFIG_FTRACE_MCOUNT_RECORD
>>  extern void ftrace_init(void);
>> +#ifdef CC_USING_PATCHABLE_FUNCTION_ENTRY
>> +#define FTRACE_CALLSITE_SECTION	"__patchable_function_entries"
>> +#else
>> +#define FTRACE_CALLSITE_SECTION	"__mcount_loc"
>> +#endif
>>  #else
>>  static inline void ftrace_init(void) { }
>>  #endif
>> diff --git a/kernel/module.c b/kernel/module.c
>> index ff2d7359a418..acf7962936c4 100644
>> --- a/kernel/module.c
>> +++ b/kernel/module.c
>> @@ -3222,7 +3222,7 @@ static int find_module_sections(struct module *mod, struct load_info *info)
>>  #endif
>>  #ifdef CONFIG_FTRACE_MCOUNT_RECORD
>>  	/* sechdrs[0].sh_size is always zero */
>> -	mod->ftrace_callsites = section_objs(info, "__mcount_loc",
>> +	mod->ftrace_callsites = section_objs(info, FTRACE_CALLSITE_SECTION,
>>  					     sizeof(*mod->ftrace_callsites),
>>  					     &mod->num_ftrace_callsites);
>>  #endif
>> --
>> 2.11.0
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
