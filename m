Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFC28488F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 11:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymBD7SGlp7tUI6L+ul0NJqSWKEcrJnLxCsL9q6plajk=; b=Yo4u+mP5Yo/boT
	CC+cLOtMsC0SAUu9A30iwAif/zjU1QzT0SviPXuydho6WGTQ+ek1LA7j4Eaa2CDR16j/r2aa5NwUP
	8q79oJVUMEeY2mJowXEzYKew0TzeLm9fyKXjdS0KJXKdNQVIDxdNWIqX0wBMzUohjoR7bU9CYaddW
	H7m2a2p+FT34jGwR+jXi+AckEUydmq9d2wv2Gvx3Ns0YeNVxrDz1fJrMzwuAVTu8C8YlM7LyTPzP4
	xdJ0NaVVvvM3FQn+yl/B2SRO5ySryWkJO1j5aro7Guwe2nFy17oiPly9zQ0SK5O+rzaFv0SGA7kiT
	PfLHBrnxo3Qso5mIeMxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIBb-0001AP-Fw; Wed, 07 Aug 2019 09:24:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIBN-0001A3-I9
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 09:24:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1090A28;
 Wed,  7 Aug 2019 02:24:32 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 437B43F575; Wed,  7 Aug 2019 02:24:30 -0700 (PDT)
Date: Wed, 7 Aug 2019 10:24:28 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: mm: add missing PTE_SPECIAL in pte_mkdevmap on
 arm64
Message-ID: <20190807092427.GB63492@arrakis.emea.arm.com>
References: <20190807045851.10772-1-justin.he@arm.com>
 <20190807090929.zsiupxyqop75uzkn@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807090929.zsiupxyqop75uzkn@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_022433_641754_1E5BC946 
X-CRM114-Status: GOOD (  15.53  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jia He <justin.he@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, linux-kernel@vger.kernel.org,
 Jun Yao <yaojun8558363@gmail.com>, James Morse <james.morse@arm.com>,
 Punit Agrawal <punitagrawal@gmail.com>, Qian Cai <cai@lca.pw>,
 Thomas Gleixner <tglx@linutronix.de>, Robin Murphy <robin.murphy@arm.com>,
 Alex Van Brunt <avanbrunt@nvidia.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 10:09:29AM +0100, Will Deacon wrote:
> On Wed, Aug 07, 2019 at 12:58:51PM +0800, Jia He wrote:
> > diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> > index 5fdcfe237338..e09760ece844 100644
> > --- a/arch/arm64/include/asm/pgtable.h
> > +++ b/arch/arm64/include/asm/pgtable.h
> > @@ -209,7 +209,7 @@ static inline pmd_t pmd_mkcont(pmd_t pmd)
> >  
> >  static inline pte_t pte_mkdevmap(pte_t pte)
> >  {
> > -	return set_pte_bit(pte, __pgprot(PTE_DEVMAP));
> > +	return set_pte_bit(pte, __pgprot(PTE_DEVMAP | PTE_SPECIAL));
> >  }
> >  
> >  static inline void set_pte(pte_t *ptep, pte_t pte)
> > @@ -396,7 +396,10 @@ static inline int pmd_protnone(pmd_t pmd)
> >  #ifdef CONFIG_TRANSPARENT_HUGEPAGE
> >  #define pmd_devmap(pmd)		pte_devmap(pmd_pte(pmd))
> >  #endif
> > -#define pmd_mkdevmap(pmd)	pte_pmd(pte_mkdevmap(pmd_pte(pmd)))
> > +static inline pmd_t pmd_mkdevmap(pmd_t pmd)
> > +{
> > +	return pte_pmd(set_pte_bit(pmd_pte(pmd), __pgprot(PTE_DEVMAP)));
> > +}
> >  
> >  #define __pmd_to_phys(pmd)	__pte_to_phys(pmd_pte(pmd))
> >  #define __phys_to_pmd_val(phys)	__phys_to_pte_val(phys)
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> I think Catalin can take this as a fix, although the commit message should
> probably be trimmed down a bit to remove the two call traces etc.

I'll queue this for -rc4 and sort out the commit message. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
