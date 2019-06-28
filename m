Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 193C659846
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 12:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FXR07ghUpmOmBmWPy488A0KUACxts1Kb70gMT9MvjI8=; b=SCzou1xnOwwFVP
	wcEwyU43WxIA0tjH5qAtEDfurKdN4gwDo0TRbrZPV8AqKqinB8kh/s/27JVgd3D8MROcw4akYvY8U
	H3elkYo0ttlGcL3dvTCp2+MRgx0OCWM1u1Itj3Ee65IxK4+srN6r8UJeK6RPNvxqEZEJ8OCME+Cu/
	E8rJIe8P2+NxSZqa5zbonV3c6Eu9B4X3bRuOEyffILi+IqxG4qir+z9JU8IGjSWZgGs5XPzmWbjK/
	nFZJVJD50ef+wCGVP/qH6rec/6JzEnRQI1DbYkdjBhWRZGDErXYt2Uu5+akH8kJ/Mt9yD6I7HCEzC
	wdkP4fBH1brvD8VABbnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgnzd-0002kh-96; Fri, 28 Jun 2019 10:20:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgnzG-0002Wv-8u
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 10:20:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1ED6828;
 Fri, 28 Jun 2019 03:20:07 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 F05873F718; Fri, 28 Jun 2019 03:20:05 -0700 (PDT)
Date: Fri, 28 Jun 2019 11:20:03 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC 1/2] arm64/mm: Change THP helpers to comply with generic MM
 semantics
Message-ID: <20190628102003.GA56463@arrakis.emea.arm.com>
References: <1561639696-16361-1-git-send-email-anshuman.khandual@arm.com>
 <1561639696-16361-2-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561639696-16361-2-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_032010_629986_B272F92F 
X-CRM114-Status: GOOD (  16.68  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

On Thu, Jun 27, 2019 at 06:18:15PM +0530, Anshuman Khandual wrote:
> pmd_present() and pmd_trans_huge() are expected to behave in the following
> manner during various phases of a given PMD. It is derived from a previous
> detailed discussion on this topic [1] and present THP documentation [2].
> 
> pmd_present(pmd):
> 
> - Returns true if pmd refers to system RAM with a valid pmd_page(pmd)
> - Returns false if pmd does not refer to system RAM - Invalid pmd_page(pmd)
> 
> pmd_trans_huge(pmd):
> 
> - Returns true if pmd refers to system RAM and is a trans huge mapping
> 
> -------------------------------------------------------------------------
> |	PMD states	|	pmd_present	|	pmd_trans_huge	|
> -------------------------------------------------------------------------
> |	Mapped		|	Yes		|	Yes		|
> -------------------------------------------------------------------------
> |	Splitting	|	Yes		|	Yes		|
> -------------------------------------------------------------------------
> |	Migration/Swap	|	No		|	No		|
> -------------------------------------------------------------------------

Before we actually start fixing this, I would strongly suggest that you
add a boot selftest (see lib/Kconfig.debug for other similar cases)
which checks the consistency of the page table macros w.r.t. the
expected mm semantics. Once the mm maintainers agreed with the
semantics, it will really help architecture maintainers in implementing
them correctly.

You wouldn't need actual page tables, just things like assertions on
pmd_trans_huge(pmd_mkhuge(pmd)) == true. You could go further and have
checks on pmdp_invalidate(&dummy_vma, dummy_addr, &dummy_pmd) with the
dummy_* variables on the stack.

> The problem:
> 
> PMD is first invalidated with pmdp_invalidate() before it's splitting. This
> invalidation clears PMD_SECT_VALID as below.
> 
> PMD Split -> pmdp_invalidate() -> pmd_mknotpresent -> Clears PMD_SECT_VALID
> 
> Once PMD_SECT_VALID gets cleared, it results in pmd_present() return false
> on the PMD entry.

I think that's an inconsistency in the expected semantics here. Do you
mean that pmd_present(pmd_mknotpresent(pmd)) should be true? If not, do
we need to implement our own pmdp_invalidate() or change the generic one
to set a "special" bit instead of just a pmd_mknotpresent?

> +static inline int pmd_present(pmd_t pmd)
> +{
> +	if (pte_present(pmd_pte(pmd)))
> +		return 1;
> +
> +	return pte_special(pmd_pte(pmd));
> +}
[...]
> +static inline pmd_t pmd_mknotpresent(pmd_t pmd)
> +{
> +	pmd = pte_pmd(pte_mkspecial(pmd_pte(pmd)));
> +	return __pmd(pmd_val(pmd) & ~PMD_SECT_VALID);
> +}

I'm not sure I agree with the semantics here where pmd_mknotpresent()
does not actually make pmd_present() == false.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
