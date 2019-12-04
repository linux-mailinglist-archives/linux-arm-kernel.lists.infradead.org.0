Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E957112DD5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 15:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2y/PsMDxuEKObozHimi3U9wyxD0w+r52GLkbBn2NwwM=; b=Bwn+IWl8Np+aEU
	kv9MK5Tnrbvxh6/HcHIvVZiTayQ9o0PambAML4BFzqPEn4F1cwF0ewEClnmRZ7XBjB3oo3XB4piNH
	9i3Bzx4Qlzu9jfWM6OutVTz08A2bfsryX5qvUq4U9U0Xf4hlCm+Y4DbJCtUrhF8l4VxZ4YOVeGJHp
	X0Hacyoe8A3UWYTtIXLRWDrK5J+0ImnlVFwoehFLhGl1eEtYAEEsy4P08DhsBEGyS5p/iTEtzj16a
	fZT6Xi3NYXLQ+vzT0ZmUSE8/WX9dSpY2vFC5+Nr9FCOQcCe8f4MuS1uxuo6ffBeDSDGDk2UnhOAgm
	QGBrY+nk78Ob2MiAccJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icW5j-0000Cb-Gk; Wed, 04 Dec 2019 14:57:23 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icW5Y-0000C0-Gr
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 14:57:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575471431;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=sIVe4Jmb8Oj4OLHEaPn7pLPLkOrzQ1mFBxyZ+OgrwuI=;
 b=iNQWj0Jt9QXLQD1m5A9RnpuDSwLVAjvv8/PvjKU5jq1XfgIsHm5XWKuGSJX3deX7US0VVY
 iTYp+ME2FpC1XMOmLP4V+kGlHtG/2nq83v4z6SGQJdu6L5B+RageLDV2XKiHRf42EZFiQ4
 2+mWo/aFhTlPlehbJ0GcigQTAfWLQXg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-ynFj1op_P7mBY-2IGz3O7Q-1; Wed, 04 Dec 2019 09:57:07 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1A4E4101F4E0;
 Wed,  4 Dec 2019 14:57:04 +0000 (UTC)
Received: from [10.36.118.91] (unknown [10.36.118.91])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DC9841001B28;
 Wed,  4 Dec 2019 14:56:58 +0000 (UTC)
Subject: Re: [PATCH v15 00/23] Generic page walk and ptdump
To: Qian Cai <cai@lca.pw>
References: <20191101140942.51554-1-steven.price@arm.com>
 <1572896147.5937.116.camel@lca.pw>
 <7B040741-EC8A-4CC0-964B-4046AE2E617A@lca.pw>
 <16da6118-ac4d-a165-6202-0731a776ac72@arm.com>
 <911fac4a-2204-f994-a101-16a60fba12e8@redhat.com>
 <0FA196FD-3FCD-431A-AA3E-21BF00EA07DC@lca.pw>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
 SE+xAvmumFBY
Organization: Red Hat GmbH
Message-ID: <9d5f1689-db82-a6da-d51d-08070aa4bad5@redhat.com>
Date: Wed, 4 Dec 2019 15:56:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <0FA196FD-3FCD-431A-AA3E-21BF00EA07DC@lca.pw>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: ynFj1op_P7mBY-2IGz3O7Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_065712_634236_C58C905B 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 the arch/x86 maintainers <x86@kernel.org>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, Linux-MM <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04.12.19 15:54, Qian Cai wrote:
> 
> 
>> On Dec 3, 2019, at 6:02 AM, David Hildenbrand <david@redhat.com> wrote:
>>
>> On 06.11.19 16:05, Steven Price wrote:
>>> On 06/11/2019 13:31, Qian Cai wrote:
>>>>
>>>>
>>>>> On Nov 4, 2019, at 2:35 PM, Qian Cai <cai@lca.pw> wrote:
>>>>>
>>>>> On Fri, 2019-11-01 at 14:09 +0000, Steven Price wrote:
>>> [...]
>>>>>> Changes since v14:
>>>>>> https://lore.kernel.org/lkml/20191028135910.33253-1-steven.price@arm.com/
>>>>>> * Switch walk_page_range() into two functions, the existing
>>>>>>   walk_page_range() now still requires VMAs (and treats areas without a
>>>>>>   VMA as a 'hole'). The new walk_page_range_novma() ignores VMAs and
>>>>>>   will report the actual page table layout. This fixes the previous
>>>>>>   breakage of /proc/<pid>/pagemap
>>>>>> * New patch at the end of the series which reduces the 'level' numbers
>>>>>>   by 1 to simplify the code slightly
>>>>>> * Added tags
>>>>>
>>>>> Does this new version also take care of this boot crash seen with v14? Suppose
>>>>> it is now breaking CONFIG_EFI_PGT_DUMP=y? The full config is,
>>>>>
>>>>> https://raw.githubusercontent.com/cailca/linux-mm/master/x86.config
>>>>>
>>>>
>>>> V15 is indeed DOA here.
>>>
>>> Thanks for finding this, it looks like EFI causes issues here. The below fixes
>>> this for me (booting in QEMU).
>>>
>>> Andrew: do you want me to send out the entire series again for this fix, or
>>> can you squash this into mm-pagewalk-allow-walking-without-vma.patch?
>>>
>>> Thanks,
>>>
>>> Steve
>>>
>>> ---8<---
>>> diff --git a/mm/pagewalk.c b/mm/pagewalk.c
>>> index c7529dc4f82b..70dcaa23598f 100644
>>> --- a/mm/pagewalk.c
>>> +++ b/mm/pagewalk.c
>>> @@ -90,7 +90,7 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
>>>  			split_huge_pmd(walk->vma, pmd, addr);
>>>  			if (pmd_trans_unstable(pmd))
>>>  				goto again;
>>> -		} else if (pmd_leaf(*pmd)) {
>>> +		} else if (pmd_leaf(*pmd) || !pmd_present(*pmd)) {
>>>  			continue;
>>>  		}
>>>
>>> @@ -141,7 +141,7 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
>>>  			split_huge_pud(walk->vma, pud, addr);
>>>  			if (pud_none(*pud))
>>>  				goto again;
>>> -		} else if (pud_leaf(*pud)) {
>>> +		} else if (pud_leaf(*pud) || !pud_present(*pud)) {
>>>  			continue;
>>>  		}
>>>
>>>
>>
>> Even with this fix, booting for me under QEMU fails. See
>>
>> https://lore.kernel.org/linux-mm/b7ce62f2-9a48-6e48-6685-003431e521aa@redhat.com/
>>
> 
> Yes, for some reasons, this starts to crash on almost all arches here, so it might be worth
> for Andrew to revert those in the meantime while allowing Steven to rework.

I agree, this produces too much noise.


-- 
Thanks,

David / dhildenb


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
