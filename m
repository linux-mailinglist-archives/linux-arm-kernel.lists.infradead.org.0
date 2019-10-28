Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9808FE6FDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 11:47:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lTJgTAaFGVhFw1+Ll0Xtwo4RxqFDjUblRpYdW+7xDS8=; b=uT7Og60QGs6pwy
	dGpLrMGj3MIi0soL6Sjstm2/VF+RkCMLA9lFB28rejzSnVU4l9VSkXLNC7yPMkUqpkm/TuY8jSDdv
	VlSCDs5ktz6PCNwPqcPn90cDVAiZs8kP7b9aBvbUUxdajj4h1KuAhdqJYIeGwI0whGXXQyiVblq8H
	ftDG15nfjM8m8JiMmxvzRD/u52zaN1TaRuTJ8xn7gPkHDhd3kTIdbjdCmm+0eg8pDKa3JJX5zoC6X
	9nwtQVplJj+0t4RTC20yNCWA5ZtPd6CH5lXlPXkxDYE/tgxRwbU80iNytih/tor0qVEZvRL6+iBvq
	ZFzc2Xn71GQGLFw88k+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP2Ya-0005nK-TA; Mon, 28 Oct 2019 10:47:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP2YQ-0005mE-Fq
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 10:47:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C4C11F1;
 Mon, 28 Oct 2019 03:47:16 -0700 (PDT)
Received: from [10.1.194.43] (unknown [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 904C83F71E;
 Mon, 28 Oct 2019 03:47:13 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v13 12/22] mm: pagewalk: Allow walking without vma
To: kbuild test robot <lkp@intel.com>
References: <20191024093716.49420-13-steven.price@arm.com>
 <201910271514.G7Dilhf7%lkp@intel.com>
Message-ID: <14bd3b3c-268b-4a4f-2ee7-17ba6f10f31d@arm.com>
Date: Mon, 28 Oct 2019 10:46:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <201910271514.G7Dilhf7%lkp@intel.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_034718_568338_DC821DE9 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mm@kvack.org,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 kbuild-all@lists.01.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/10/2019 07:59, kbuild test robot wrote:
> Hi Steven,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [also build test ERROR on v5.4-rc4 next-20191025]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Steven-Price/Generic-page-walk-and-ptdump/20191027-140322
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 5a1e843c66fa6438f389045981c37e4073917641
> config: arc-defconfig (attached as .config)
> compiler: arc-elf-gcc (GCC) 7.4.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.4.0 make.cross ARCH=arc 

First off, these instructions don't work! make.cross attempts to
download a sparc toolchain.

However, the issue is actually quite easy to see if you look more
closely at patch 2:

> +#define pmd_leaf(x)                    (pmd_val(pmd) & _PAGE_HW_SZ)

That 'pmd' variable should really have been 'x'!

Below diff should fix this up - I'll repost with this squashed in shortly:

----8<----
diff --git a/arch/arc/include/asm/pgtable.h b/arch/arc/include/asm/pgtable.h
index 5ec798e50836..b4a0cf27ac1c 100644
--- a/arch/arc/include/asm/pgtable.h
+++ b/arch/arc/include/asm/pgtable.h
@@ -274,7 +274,7 @@ static inline void pmd_set(pmd_t *pmdp, pte_t *ptep)
 #define pmd_none(x)                    (!pmd_val(x))
 #define        pmd_bad(x)                      ((pmd_val(x) & ~PAGE_MASK))
 #define pmd_present(x)                 (pmd_val(x))
-#define pmd_leaf(x)                    (pmd_val(pmd) & _PAGE_HW_SZ)
+#define pmd_leaf(x)                    (pmd_val(x) & _PAGE_HW_SZ)
 #define pmd_clear(xp)                  do { pmd_val(*(xp)) = 0; } while (0)

 #define pte_page(pte)          pfn_to_page(pte_pfn(pte))

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
