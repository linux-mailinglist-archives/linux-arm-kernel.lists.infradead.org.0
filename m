Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FBE112DD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 15:55:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aw5vTsN7RxPWVCkgcYJLOJCsdkA/YF1ifwIUb7/r0IU=; b=JEy8QGSsraEcAy
	rqTnQZVfVAusHgcmvJwW//WxmcvTwe03/YVjFE/34ED8GwhEsOZu85XzN5jjPXL+l3gBiI4UtjZ0I
	25BWV3sI0OsbpKvwZ7nHG62aaaoNhX4UWPThKSau1BHpmE4XgTiJz3Dgx2xnzgbP+HHtoWNWibJwj
	Ma9JxjnOO1ym7l3S+z6QEW4MSD3WeTTSOZXml8vtr6sxmpWpsDyHwoeCti2P6NCSR3ptaNCXk9T4Z
	0JdulDho369Ca66YAhdFAfX/UpPpkEc/Gz947LcQvS+05HbMWWNm/FUFRs9ryJTrmgdSWDEskMejb
	e5TqqOt+nKUrUOZKJXhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icW3i-00078A-Jt; Wed, 04 Dec 2019 14:55:18 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icW3N-00077M-Ok
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 14:54:59 +0000
Received: by mail-qv1-xf42.google.com with SMTP id y8so3138393qvk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 06:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=VhtN6w8f3pAFcQOPcFVj26+n4AG9pW+AqI+0CrhF1WY=;
 b=KSg12ndIh9E3OIht1yFvbbmEtc8FFzzewpaSfmPIqXwlXeWvOymL97PMX/XzdfRlbr
 ssdo3mdWSCre7Rqcf8zB/S3lc82MUW0i10UrOzZfpSihfkcr7DVTzTjLhllcQ5HN3FnS
 dx+zGEpPHgYZJnR+ZbJfru1Id/k9igxNsd1qA0yR+IRtskJsNtJvXJJqcT22f+dhHTWr
 u4wDmt+y3OzqPWEWKthpgKnqNqm9wyekNxyc/zNRKT+l3fYxPdx2qa2gq2MbBHQPvU75
 LSmG0P16brd+GiDYbaaytEyTd/UMlJ+ro7/Qc0V5eATPEi7JH1FqZZ7Qp/b2oN6hpmL9
 8xoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=VhtN6w8f3pAFcQOPcFVj26+n4AG9pW+AqI+0CrhF1WY=;
 b=IH41BkBF0M6FToO5aoVLU+EVjs/Li+4cYnYWutvgqHwjpV+CCg1IfD3vpgWyzHcAt6
 X6tYQ2PvwywoH42pGD6+nAFJTZM/JtPKhqRWOAQ5I2H55ttdv1pHqaydqNiYmFeVNRaS
 2r9c3qepNWPwLkeVothBoj5nO2O3M65qmtLcs4ruG9ybpqeUXOcotjtIfUYUNeTkPzo1
 MkBWlA5BQYdRQ48qZLr4Abobqr9fcJ7x2HKckrkijtB+NcFdckaB2z+iWx55mzGdSdtO
 WZoApxriie/6mXDUwzIildWVaKhiMmIx0dwUlhUMyBGzx6wxLb0Nkv0rY2oPsqOInKKW
 DPpA==
X-Gm-Message-State: APjAAAWdX5jAjpziOSabGAq4HP/E8LT5oqt8m5fZpX3oHoZMM1JI1Fsy
 FicF2ZqH1CVPk8OJvyw2mhZWwg==
X-Google-Smtp-Source: APXvYqzbyvSvXC4KIUt2KO2kzgGROo0QY8Fmwq3x8ulH4VJBTtydvOViz6rnhzz4/LfQ4aet+tQNiw==
X-Received: by 2002:a0c:f68f:: with SMTP id p15mr2886839qvn.79.1575471296051; 
 Wed, 04 Dec 2019 06:54:56 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id y184sm3732454qkd.128.2019.12.04.06.54.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Dec 2019 06:54:55 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: Re: [PATCH v15 00/23] Generic page walk and ptdump
From: Qian Cai <cai@lca.pw>
In-Reply-To: <911fac4a-2204-f994-a101-16a60fba12e8@redhat.com>
Date: Wed, 4 Dec 2019 09:54:53 -0500
Message-Id: <0FA196FD-3FCD-431A-AA3E-21BF00EA07DC@lca.pw>
References: <20191101140942.51554-1-steven.price@arm.com>
 <1572896147.5937.116.camel@lca.pw>
 <7B040741-EC8A-4CC0-964B-4046AE2E617A@lca.pw>
 <16da6118-ac4d-a165-6202-0731a776ac72@arm.com>
 <911fac4a-2204-f994-a101-16a60fba12e8@redhat.com>
To: David Hildenbrand <david@redhat.com>
X-Mailer: Apple Mail (2.3601.0.10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_065457_831315_783FD80D 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, Linux-MM <linux-mm@kvack.org>,
 =?utf-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Dec 3, 2019, at 6:02 AM, David Hildenbrand <david@redhat.com> wrote:
> 
> On 06.11.19 16:05, Steven Price wrote:
>> On 06/11/2019 13:31, Qian Cai wrote:
>>> 
>>> 
>>>> On Nov 4, 2019, at 2:35 PM, Qian Cai <cai@lca.pw> wrote:
>>>> 
>>>> On Fri, 2019-11-01 at 14:09 +0000, Steven Price wrote:
>> [...]
>>>>> Changes since v14:
>>>>> https://lore.kernel.org/lkml/20191028135910.33253-1-steven.price@arm.com/
>>>>> * Switch walk_page_range() into two functions, the existing
>>>>>   walk_page_range() now still requires VMAs (and treats areas without a
>>>>>   VMA as a 'hole'). The new walk_page_range_novma() ignores VMAs and
>>>>>   will report the actual page table layout. This fixes the previous
>>>>>   breakage of /proc/<pid>/pagemap
>>>>> * New patch at the end of the series which reduces the 'level' numbers
>>>>>   by 1 to simplify the code slightly
>>>>> * Added tags
>>>> 
>>>> Does this new version also take care of this boot crash seen with v14? Suppose
>>>> it is now breaking CONFIG_EFI_PGT_DUMP=y? The full config is,
>>>> 
>>>> https://raw.githubusercontent.com/cailca/linux-mm/master/x86.config
>>>> 
>>> 
>>> V15 is indeed DOA here.
>> 
>> Thanks for finding this, it looks like EFI causes issues here. The below fixes
>> this for me (booting in QEMU).
>> 
>> Andrew: do you want me to send out the entire series again for this fix, or
>> can you squash this into mm-pagewalk-allow-walking-without-vma.patch?
>> 
>> Thanks,
>> 
>> Steve
>> 
>> ---8<---
>> diff --git a/mm/pagewalk.c b/mm/pagewalk.c
>> index c7529dc4f82b..70dcaa23598f 100644
>> --- a/mm/pagewalk.c
>> +++ b/mm/pagewalk.c
>> @@ -90,7 +90,7 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
>>  			split_huge_pmd(walk->vma, pmd, addr);
>>  			if (pmd_trans_unstable(pmd))
>>  				goto again;
>> -		} else if (pmd_leaf(*pmd)) {
>> +		} else if (pmd_leaf(*pmd) || !pmd_present(*pmd)) {
>>  			continue;
>>  		}
>> 
>> @@ -141,7 +141,7 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
>>  			split_huge_pud(walk->vma, pud, addr);
>>  			if (pud_none(*pud))
>>  				goto again;
>> -		} else if (pud_leaf(*pud)) {
>> +		} else if (pud_leaf(*pud) || !pud_present(*pud)) {
>>  			continue;
>>  		}
>> 
>> 
> 
> Even with this fix, booting for me under QEMU fails. See
> 
> https://lore.kernel.org/linux-mm/b7ce62f2-9a48-6e48-6685-003431e521aa@redhat.com/
> 

Yes, for some reasons, this starts to crash on almost all arches here, so it might be worth
for Andrew to revert those in the meantime while allowing Steven to rework.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
