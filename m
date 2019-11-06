Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E89A0F198C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:06:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qu9sHVFA1xJWFpvSDQOJif4XPjlOvu3FVFAsM2HV63k=; b=WLm27EN6EJI5OdceKVv9lYmt4
	avA+0nwLnGrDT75PEKiKLyLyVTpOTRH5vycTXaeFEYSswM3PZjbz6XdbyXQEyEoyyu+coSeSo/oHb
	zxlFBxZYBsST4dHO9qQEicqcjVvjIy8JHVPhmMroERA0ESmgO1pDtxT0WV3p5NB8rXWKatADVwjxp
	MrIMCuhFaCIf+29VM1DO0jczCxPg0If7pIIbSE46cMpB+4b+B/rxQ1dG71oLjuhWEbFbLar5FOkf5
	sm8jbLnGFMwzerQv0JJVCPxmWs1ji5t6/mGKxPaU+7QLuSFeldv3eppVPGqhna37L2fSM7W0C13A0
	SMpAWHDcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSMtH-0002mF-Lb; Wed, 06 Nov 2019 15:06:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSMsc-0002Eu-MB
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 15:05:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD1D07CD;
 Wed,  6 Nov 2019 07:05:51 -0800 (PST)
Received: from [10.1.32.101] (e122027.cambridge.arm.com [10.1.32.101])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EEA113F71A;
 Wed,  6 Nov 2019 07:05:48 -0800 (PST)
From: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v15 00/23] Generic page walk and ptdump
To: Qian Cai <cai@lca.pw>, Andrew Morton <akpm@linux-foundation.org>,
 linux-mm@kvack.org
References: <20191101140942.51554-1-steven.price@arm.com>
 <1572896147.5937.116.camel@lca.pw>
 <7B040741-EC8A-4CC0-964B-4046AE2E617A@lca.pw>
Message-ID: <16da6118-ac4d-a165-6202-0731a776ac72@arm.com>
Date: Wed, 6 Nov 2019 15:05:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7B040741-EC8A-4CC0-964B-4046AE2E617A@lca.pw>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_070554_798553_D579A773 
X-CRM114-Status: GOOD (  16.62  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/11/2019 13:31, Qian Cai wrote:
> 
> 
>> On Nov 4, 2019, at 2:35 PM, Qian Cai <cai@lca.pw> wrote:
>>
>> On Fri, 2019-11-01 at 14:09 +0000, Steven Price wrote:
[...]
>>> Changes since v14:
>>> https://lore.kernel.org/lkml/20191028135910.33253-1-steven.price@arm.com/
>>> * Switch walk_page_range() into two functions, the existing
>>>    walk_page_range() now still requires VMAs (and treats areas without a
>>>    VMA as a 'hole'). The new walk_page_range_novma() ignores VMAs and
>>>    will report the actual page table layout. This fixes the previous
>>>    breakage of /proc/<pid>/pagemap
>>> * New patch at the end of the series which reduces the 'level' numbers
>>>    by 1 to simplify the code slightly
>>> * Added tags
>>
>> Does this new version also take care of this boot crash seen with v14? Suppose
>> it is now breaking CONFIG_EFI_PGT_DUMP=y? The full config is,
>>
>> https://raw.githubusercontent.com/cailca/linux-mm/master/x86.config
>>
> 
> V15 is indeed DOA here.

Thanks for finding this, it looks like EFI causes issues here. The below fixes
this for me (booting in QEMU).

Andrew: do you want me to send out the entire series again for this fix, or
can you squash this into mm-pagewalk-allow-walking-without-vma.patch?

Thanks,

Steve

---8<---
diff --git a/mm/pagewalk.c b/mm/pagewalk.c
index c7529dc4f82b..70dcaa23598f 100644
--- a/mm/pagewalk.c
+++ b/mm/pagewalk.c
@@ -90,7 +90,7 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
  			split_huge_pmd(walk->vma, pmd, addr);
  			if (pmd_trans_unstable(pmd))
  				goto again;
-		} else if (pmd_leaf(*pmd)) {
+		} else if (pmd_leaf(*pmd) || !pmd_present(*pmd)) {
  			continue;
  		}
  
@@ -141,7 +141,7 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
  			split_huge_pud(walk->vma, pud, addr);
  			if (pud_none(*pud))
  				goto again;
-		} else if (pud_leaf(*pud)) {
+		} else if (pud_leaf(*pud) || !pud_present(*pud)) {
  			continue;
  		}
  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
