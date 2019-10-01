Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFA5C35BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:32:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFz7eei59crW/VyrYEEYqpWejhxR8KHMYXJI7vjg9SA=; b=cYVDAy8KA4GA+G
	dFNr2RoYoH9fCajAlc6OeIG8aJw4Hj6rfNsijzT8msnP0dIXrWw4wk/t4JEsKb56MVY0mzWlmNhoc
	fKZQy5YWT5yhxMULfOsOkkn6d0KHu9bpukhI6/tTRGela0pD2cAmraeR5NVETz7C+6TGkYY3t8SDx
	33zpfIXw2FuOalB4f5E67BC5cftnHztWg1j40BbFlUWUE5bQju3pO05nqysCJ8NWUqG18bMA8IfDe
	7tusIAJzX+WPrLuPz8raRRYRcgSowdrnD1Ve+BfaXS87WyzP8gDyp+wpyiVJBb/zjyKgbeluC5zd2
	d1yXrzynHRGiPQiH8Pig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIGW-0000XQ-2k; Tue, 01 Oct 2019 13:32:32 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIGP-0000Wi-7U
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:32:26 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iFIGL-00060M-7n; Tue, 01 Oct 2019 15:32:21 +0200
Date: Tue, 1 Oct 2019 14:32:19 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v10 2/3] arm64: mm: implement arch_faults_on_old_pte()
 on arm64
Message-ID: <20191001143219.018281be@why>
In-Reply-To: <20191001125031.7ddm5dlwss6m3dth@willie-the-truck>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-3-justin.he@arm.com>
 <20191001125031.7ddm5dlwss6m3dth@willie-the-truck>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: will@kernel.org, justin.he@arm.com, catalin.marinas@arm.com,
 mark.rutland@arm.com, james.morse@arm.com, willy@infradead.org,
 kirill.shutemov@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, punitagrawal@gmail.com,
 tglx@linutronix.de, akpm@linux-foundation.org, hejianet@gmail.com,
 Kaly.Xin@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_063225_417967_27E2932D 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Kaly Xin <Kaly.Xin@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Punit Agrawal <punitagrawal@gmail.com>,
 hejianet@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 1 Oct 2019 13:50:32 +0100
Will Deacon <will@kernel.org> wrote:

> On Mon, Sep 30, 2019 at 09:57:39AM +0800, Jia He wrote:
> > On arm64 without hardware Access Flag, copying fromuser will fail because
> > the pte is old and cannot be marked young. So we always end up with zeroed
> > page after fork() + CoW for pfn mappings. we don't always have a
> > hardware-managed access flag on arm64.
> > 
> > Hence implement arch_faults_on_old_pte on arm64 to indicate that it might
> > cause page fault when accessing old pte.
> > 
> > Signed-off-by: Jia He <justin.he@arm.com>
> > Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> > ---
> >  arch/arm64/include/asm/pgtable.h | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> > 
> > diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> > index 7576df00eb50..e96fb82f62de 100644
> > --- a/arch/arm64/include/asm/pgtable.h
> > +++ b/arch/arm64/include/asm/pgtable.h
> > @@ -885,6 +885,20 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
> >  #define phys_to_ttbr(addr)	(addr)
> >  #endif
> >  
> > +/*
> > + * On arm64 without hardware Access Flag, copying from user will fail because
> > + * the pte is old and cannot be marked young. So we always end up with zeroed
> > + * page after fork() + CoW for pfn mappings. We don't always have a
> > + * hardware-managed access flag on arm64.
> > + */
> > +static inline bool arch_faults_on_old_pte(void)
> > +{
> > +	WARN_ON(preemptible());
> > +
> > +	return !cpu_has_hw_af();
> > +}  
> 
> Does this work correctly in a KVM guest? (i.e. is the MMFR sanitised in that
> case, despite not being the case on the host?)

Yup, all the 64bit MMFRs are trapped (HCR_EL2.TID3 is set for an
AArch64 guest), and we return the sanitised version.

But that's an interesting remark: we're now trading an extra fault on
CPUs that do not support HWAFDBS for a guaranteed trap for each and
every guest under the sun that will hit the COW path...

My gut feeling is that this is going to be pretty visible. Jia, do you
have any numbers for this kind of behaviour?

Thanks,

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
