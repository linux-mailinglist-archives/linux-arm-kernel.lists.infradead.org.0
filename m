Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D39BC761
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 13:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97uISQtWdub2qgK3eTufFQcECN/QvVWpKsdNt4CXeJ4=; b=oUH9swB05tdpO8
	NvSwy5vO7+rzyaCHOFwoEHZpBZwpLrZS4N/akjq3cT06RyYw76FHde8hYO1ZHMAr0GUOBmpUaabS8
	+F/2U8YRC3AI/yydjqNj5jbcB/s473mX19pQtauzay5DJMzzXdic7FRuB5VirZsFbKMm2F3fQ9YcY
	X9rgkEvcnRZNgtc7mKiaVXb/DG3O4sTx3fG4qhcYnAiBKfYV/xAJP47Rn9rYptXGQGlDtEZaCcCXR
	VqpEXg6aXfZVnv3IObw10mRLFkiSWcD624tXnQU3Z50NX1hHXRetJYUFjMMRLimEkMYIpfZcakvvi
	f0rHzq+5lf1QcPMzupqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCjTd-0003CM-Hk; Tue, 24 Sep 2019 11:59:29 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCjTO-0003Br-NP
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 11:59:16 +0000
Received: by mail-ed1-x544.google.com with SMTP id c4so1591970edl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 04:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yfQkKYdmCnwP8GQDgvukKfhrIz/ARlVTMjl+vdxLN6c=;
 b=kzEdrK5KGIj08/JrZaz8ci6yj9t/++4d8rPavj45ueJFdJnWlcvcyYaB9yXFzNq1s7
 0dklLEr6JucXgsFCgpSAkAFPz41EaQevI/b4nzl96v3QRXNPxXKHHI0SkRwaJpLnksee
 El9UuJAKUOUVmCIdYXeenQzTr7JEFbSV8qfF3gAS/OyomlySVvlHsAzBeJYGrqKy8QN0
 yDF44Ru/+H0sXp/w9OjFg4+EFTjuB1AwthMG1aoT3+fEN6PN5uuTIkT0ThZJWnpms4XM
 qHSyTHNQi9831Ltqc0s3+HNvEtr0x8iU7FlXykNOVwZ25p8Qnp++bxWaTBo7dm4VRZuB
 HtSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yfQkKYdmCnwP8GQDgvukKfhrIz/ARlVTMjl+vdxLN6c=;
 b=oWiD3luxQd+1vsc+haSSccs+INQgV0pwCDEGcJWSQn7P7UIt3PLoTgy8wLMVRrUTDy
 63fLZlmj+9Kab0F/JnTp+jTGG8TC0XJ0+zE9d+f1lxbsXyh962PvHYqLdaqRIX8k8Lf5
 8iz30CMExLNed1xbonMfQ2Y1xcjHHxNeRknZFy/gRRRyhvTXGqXIh9FE49pMZLX55cF0
 Oc+46Eb2Oyc6LNreX7GPEUCaZPp+8LcSgiaUMzzWlTJavV/ajlP/89D277WLotMkoBSS
 qXdiOptti8GU2kyNdxQXLRh0f6aSoHslER+rN6796EH+RM26UHs21LMKfn/IfvRACTCP
 td4Q==
X-Gm-Message-State: APjAAAU5TFO4Yea36Eic+M76JVhZ0juGpikJ1UfktX+20jUp5pLCmJrA
 EsArUnj4HfjvTSX1vyw+mGlskQ==
X-Google-Smtp-Source: APXvYqywWn8dGPH0MFvcwZjCOlr8PR0mjKnlZh5uuaMJO79gEAj4kKuFC9SRjmQzB0N/ONkPZRk9KQ==
X-Received: by 2002:a17:906:860d:: with SMTP id
 o13mr2037274ejx.284.1569326353237; 
 Tue, 24 Sep 2019 04:59:13 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id ci8sm188286ejb.71.2019.09.24.04.59.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Sep 2019 04:59:12 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id AD8A41022A6; Tue, 24 Sep 2019 14:59:13 +0300 (+03)
Date: Tue, 24 Sep 2019 14:59:13 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v8 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190924115913.ju67nr4gcdbzbeva@box>
References: <20190921135054.142360-1-justin.he@arm.com>
 <20190921135054.142360-4-justin.he@arm.com>
 <20190923170433.GE10192@arrakis.emea.arm.com>
 <DB7PR08MB3082BC38536AE16B056AEA05F7840@DB7PR08MB3082.eurprd08.prod.outlook.com>
 <20190924103324.GB41214@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924103324.GB41214@arrakis.emea.arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_045914_765511_AC546EBC 
X-CRM114-Status: GOOD (  29.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Punit Agrawal <punitagrawal@gmail.com>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>,
 "Justin He \(Arm Technology China\)" <Justin.He@arm.com>,
 Marc Zyngier <maz@kernel.org>, Anshuman Khandual <Anshuman.Khandual@arm.com>,
 Matthew Wilcox <willy@infradead.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Ralph Campbell <rcampbell@nvidia.com>, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 James Morse <James.Morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 Robin Murphy <Robin.Murphy@arm.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 11:33:25AM +0100, Catalin Marinas wrote:
> On Tue, Sep 24, 2019 at 06:43:06AM +0000, Justin He (Arm Technology China) wrote:
> > Catalin Marinas wrote:
> > > On Sat, Sep 21, 2019 at 09:50:54PM +0800, Jia He wrote:
> > > > @@ -2151,21 +2163,53 @@ static inline void cow_user_page(struct page *dst, struct page *src, unsigned lo
> > > >  	 * fails, we just zero-fill it. Live with it.
> > > >  	 */
> > > >  	if (unlikely(!src)) {
> > > > -		void *kaddr = kmap_atomic(dst);
> > > > -		void __user *uaddr = (void __user *)(va & PAGE_MASK);
> > > > +		void *kaddr;
> > > > +		pte_t entry;
> > > > +		void __user *uaddr = (void __user *)(addr & PAGE_MASK);
> > > >
> > > > +		/* On architectures with software "accessed" bits, we would
> > > > +		 * take a double page fault, so mark it accessed here.
> > > > +		 */
> [...]
> > > > +		if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {
> > > > +			vmf->pte = pte_offset_map_lock(mm, vmf->pmd, addr,
> > > > +						       &vmf->ptl);
> > > > +			if (likely(pte_same(*vmf->pte, vmf->orig_pte))) {
> > > > +				entry = pte_mkyoung(vmf->orig_pte);
> > > > +				if (ptep_set_access_flags(vma, addr,
> > > > +							  vmf->pte, entry, 0))
> > > > +					update_mmu_cache(vma, addr, vmf->pte);
> > > > +			} else {
> > > > +				/* Other thread has already handled the fault
> > > > +				 * and we don't need to do anything. If it's
> > > > +				 * not the case, the fault will be triggered
> > > > +				 * again on the same address.
> > > > +				 */
> > > > +				pte_unmap_unlock(vmf->pte, vmf->ptl);
> > > > +				return false;
> > > > +			}
> > > > +			pte_unmap_unlock(vmf->pte, vmf->ptl);
> > > > +		}
> [...]
> > > > +
> > > > +		kaddr = kmap_atomic(dst);
> > > 
> > > Since you moved the kmap_atomic() here, could the above
> > > arch_faults_on_old_pte() run in a preemptible context? I suggested to
> > > add a WARN_ON in patch 2 to be sure.
> > 
> > Should I move kmap_atomic back to the original line? Thus, we can make sure
> > that arch_faults_on_old_pte() is in the context of preempt_disabled?
> > Otherwise, arch_faults_on_old_pte() may cause plenty of warning if I add
> > a WARN_ON in arch_faults_on_old_pte.  I tested it when I enable the PREEMPT=y
> > on a ThunderX2 qemu guest.
> 
> So we have two options here:
> 
> 1. Change arch_faults_on_old_pte() scope to the whole system rather than
>    just the current CPU. You'd have to wire up a new arm64 capability
>    for the access flag but this way we don't care whether it's
>    preemptible or not.
> 
> 2. Keep the arch_faults_on_old_pte() per-CPU but make sure we are not
>    preempted here. The kmap_atomic() move would do but you'd have to
>    kunmap_atomic() before the return.
> 
> I think the answer to my question below also has some implication on
> which option to pick:
> 
> > > >  		/*
> > > >  		 * This really shouldn't fail, because the page is there
> > > >  		 * in the page tables. But it might just be unreadable,
> > > >  		 * in which case we just give up and fill the result with
> > > >  		 * zeroes.
> > > >  		 */
> > > > -		if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE))
> > > > +		if (__copy_from_user_inatomic(kaddr, uaddr, PAGE_SIZE)) {
> > > > +			/* Give a warn in case there can be some obscure
> > > > +			 * use-case
> > > > +			 */
> > > > +			WARN_ON_ONCE(1);
> > > 
> > > That's more of a question for the mm guys: at this point we do the
> > > copying with the ptl released; is there anything else that could have
> > > made the pte old in the meantime? I think unuse_pte() is only called on
> > > anonymous vmas, so it shouldn't be the case here.
> 
> If we need to hold the ptl here, you could as well have an enclosing
> kmap/kunmap_atomic (option 2) with some goto instead of "return false".

Yeah, look like we need to hold ptl for longer. There is nothing I see
that would prevent clearing young bit under us otherwise.

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
