Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316F5126130
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 12:49:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CvXFa0nSd28Xw7jMyAA8EyRiTzKKGV84Z0TFMiTtUo4=; b=D2I9lTW4RTHi7W
	nwW3ZaUnrvTQGY52TcbcEnzIPCiwwBcGoQD0FGChOZaOC8/pzugVBgd+GK27OgYj+bZpAWa0LN5Lm
	DW/p4tv7ucEkPhxj4lhOmefzL1NugDUQMOcefZkz5yp5l4SC/FkQo5DsNw+ZQSTnYzviWxH0xLF37
	9VBnbfJCYqGmHdkRJYwmhf9DzPXnrLmLCVsSfQIfipuStV9EpqYO1yRpI7oaomPzAB+n9CPj88+vi
	nMOqUDuCAWAv+0xfPT1bH+gG3zdJd1luHysrxoj5R1oUvDuD+/2EJJVXmRdLxgNXqNEjPTz7K9scZ
	BiowbsiYM0jBhQVj6D6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihuJ7-0007kl-FX; Thu, 19 Dec 2019 11:49:29 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihuIy-0007kA-VW
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 11:49:22 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47dqsn6T0bz9sPh;
 Thu, 19 Dec 2019 22:49:17 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1576756159;
 bh=m3hY81qHO7a2k47hLHQcsNjq4SjyZd/McTsEzivltVw=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=iVZiuTv82Xx6PBD5+ZkMNAHxtQgm3Q8T7MvtNs5BQ/Le5rVoL5jtfTowsYTNg6zVk
 TQZdB+LeRGDQrwAbrTTCxlT5yq8GuZA/I4SebmZX3Bg8hOSBhFEd9ESk5kE7CQG6Ef
 e6EdNhWAzinbIMDQEnBy+i+JXbxM8SUzfIqLg7aN6HNm50Myep5JO24puwgEs1WWPZ
 beWQBPCIBFxfuPhkxyvdgQxbgUTdVp/+dbBMhA0uJICJaCHly3aGbeXexWvcQcSJR2
 iCQIGMzx3cHbUs952puh+OX3lMc8+K44Q5rTMLMhn8ZR61R4Ri2WUTdlL0Y1fzqZpg
 g1ifRi2FGLkTA==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Steven Price <steven.price@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org
Subject: Re: [PATCH v17 06/23] powerpc: mm: Add p?d_leaf() definitions
In-Reply-To: <20191218162402.45610-7-steven.price@arm.com>
References: <20191218162402.45610-1-steven.price@arm.com>
 <20191218162402.45610-7-steven.price@arm.com>
Date: Thu, 19 Dec 2019 22:49:16 +1100
Message-ID: <877e2smt6r.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_034921_176283_2FF618E3 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, x86@kernel.org,
 Steven Price <steven.price@arm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 kvm-ppc@vger.kernel.org, =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Steven Price <steven.price@arm.com> writes:
> walk_page_range() is going to be allowed to walk page tables other than
> those of user space. For this it needs to know when it has reached a
> 'leaf' entry in the page tables. This information is provided by the
> p?d_leaf() functions/macros.
>
> For powerpc p?d_is_leaf() functions already exist. Export them using the
> new p?d_leaf() name.
>
> CC: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> CC: Paul Mackerras <paulus@samba.org>
> CC: Michael Ellerman <mpe@ellerman.id.au>
> CC: linuxppc-dev@lists.ozlabs.org
> CC: kvm-ppc@vger.kernel.org
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>  arch/powerpc/include/asm/book3s/64/pgtable.h | 3 +++
>  1 file changed, 3 insertions(+)

We have fallback versions of our pmd_is_leaf() etc. in
arch/powerpc/include/asm/pgtable.h, eg:

#ifndef pmd_is_leaf
#define pmd_is_leaf pmd_is_leaf
static inline bool pmd_is_leaf(pmd_t pmd)
{
	return false;
}
#endif

Because we support several different MMUs and most of them don't need to
do anything.

So we could put the compatibility #defines to your names along with the
fallback versions in asm/pgtable.h, rather than in
asm/book3s/64/pgtable.h

But I see you also have fallbacks for your versions, so it probably
doesn't matter either way.

So I'm OK with this version, unless you think there's a compelling
reason to do the compatibility #defines in our asm/pgtable.h

Acked-by: Michael Ellerman <mpe@ellerman.id.au>

cheers


> diff --git a/arch/powerpc/include/asm/book3s/64/pgtable.h b/arch/powerpc/include/asm/book3s/64/pgtable.h
> index b01624e5c467..201a69e6a355 100644
> --- a/arch/powerpc/include/asm/book3s/64/pgtable.h
> +++ b/arch/powerpc/include/asm/book3s/64/pgtable.h
> @@ -1355,18 +1355,21 @@ static inline bool is_pte_rw_upgrade(unsigned long old_val, unsigned long new_va
>   * Like pmd_huge() and pmd_large(), but works regardless of config options
>   */
>  #define pmd_is_leaf pmd_is_leaf
> +#define pmd_leaf pmd_is_leaf
>  static inline bool pmd_is_leaf(pmd_t pmd)
>  {
>  	return !!(pmd_raw(pmd) & cpu_to_be64(_PAGE_PTE));
>  }
>  
>  #define pud_is_leaf pud_is_leaf
> +#define pud_leaf pud_is_leaf
>  static inline bool pud_is_leaf(pud_t pud)
>  {
>  	return !!(pud_raw(pud) & cpu_to_be64(_PAGE_PTE));
>  }
>  
>  #define pgd_is_leaf pgd_is_leaf
> +#define pgd_leaf pgd_is_leaf
>  static inline bool pgd_is_leaf(pgd_t pgd)
>  {
>  	return !!(pgd_raw(pgd) & cpu_to_be64(_PAGE_PTE));
> -- 
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
