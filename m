Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A9AB7D6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VET7dwVh+kdsyRjAYxuz9VO96cTvwe+rJDT0frj/QPY=; b=mp+7aKRjfZuIX1
	mOSxwOePlejicpedSTtVvIxsA5YT3oLJnXXRAF90BZikSHLmH7BmQS/Z6+xSC/6+CdIZprhGgSBUV
	b4CLaWc5ZZKwBZQI0+cRtgrSp/eQqlp1q7X/3lgELfCnIXQYdNE3NecSJOlkXCIogU9T1c4F65AAZ
	7HAKZWROLupDCRUf0VFXyoIzKz3ieTPS040dAMzjpHs41HcwjzeipOXVCsBJpk+CcUF6oC8AxLCPD
	Pu8IVlMR3iAQMs+Vn7OeVhyMMdfq4uzNeyIfpX1K5QW+zTuzZRhWkb3PHe5un2qPYUFvhyw36cCh1
	iSbom9Hgxb4JXGfJaSkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxvX-00023a-Az; Thu, 19 Sep 2019 15:00:59 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxul-0001Oy-Cu
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:00:13 +0000
Received: by mail-ed1-x541.google.com with SMTP id h2so3514537edn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 08:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rsy153zpl4yxoGCSq5N5IH86opdKnCHpMC3JulF2khA=;
 b=02D+wngbGXHZGUTd/OI3S4I3/pW/FS6cieICZCCkmbioDgm+zgBjOiH57lPnSWirfN
 +B4Feg8AmGwk7F+utHKC7GrdfJzUHKCJ4ajtySG8KxAouv6EvlG1yoqerF06hXnVcWwX
 TrHOQhOgYP9grvwP04SfPFkRbIDxj+NuVLs1X1zXVqDtLbxDjQS4pC2SXJhJs7ObyuVM
 84MyFS80tqrbS4agYsvbwWVXwVHM/klMaBAKH+F+n4o1l5/a6xCmwxBcLGRO6bLWNKLD
 CeK3wIOS9gOxliCa8/h+Ka9CNuPH34azA0jVtIpCsVsr6Jne05lWZg1kpU+YucTZKd7W
 LCvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rsy153zpl4yxoGCSq5N5IH86opdKnCHpMC3JulF2khA=;
 b=KcAxlRUsaNaLpsHQ4wGhy3kiT9ti7z8vvctMJrgDZIdcUYrQnubGHyTiY+5aLE7/s0
 Fh+Glfhi/Oi3YQVtajUqxXGkTZ8qBWfB2KAPlu83DOPWiI9cO8X+2mB8F25JpSUbYPrV
 qLF+2QsROwocx2+YTmnqS43sRYF++yfYkPJKIkmqsgvIJQvAbgm9ZsXDh7wN1Zlb6VWZ
 TMDrby0odrMNmb+f6/pVnbEa3Wja7KLVuZl9SuTgtTtHbhNNeQ86L98KLj1XEqVdU6Uw
 GSo7zMyU7eolcuns/0W0TMotas6atbX2DPcD0rXErCE4TgrzsopnBTv69IorZkS3kjvC
 R2sA==
X-Gm-Message-State: APjAAAUnL8OOCRBNbem5M5m7i1BMamixMohVo26x3SqqHywDTzj0q6w3
 0ANql4OPt2yy3tkf3YaPhZYmgA==
X-Google-Smtp-Source: APXvYqyx/AckV5APDHiZafOBx5pGNPnvX1/IDqUdyyu9pyklLZREADmTvqxKDNf7fmed54UHx0fVzA==
X-Received: by 2002:a05:6402:1688:: with SMTP id
 a8mr7542905edv.225.1568905209039; 
 Thu, 19 Sep 2019 08:00:09 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id a22sm1039452ejs.17.2019.09.19.08.00.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Sep 2019 08:00:08 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 8BBF3101F17; Thu, 19 Sep 2019 18:00:07 +0300 (+03)
Date: Thu, 19 Sep 2019 18:00:07 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v4 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190919150007.k7scjplcya53j7r4@box>
References: <20190918131914.38081-1-justin.he@arm.com>
 <20190918131914.38081-4-justin.he@arm.com>
 <20190918140027.ckj32xnryyyesc23@box>
 <20190918180029.GB20601@iMac.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918180029.GB20601@iMac.local>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_080011_885707_6B56A15D 
X-CRM114-Status: GOOD (  24.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-mm@kvack.org,
 Punit Agrawal <punitagrawal@gmail.com>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>, Jia He <justin.he@arm.com>,
 Marc Zyngier <maz@kernel.org>, Anshuman Khandual <anshuman.khandual@arm.com>,
 Matthew Wilcox <willy@infradead.org>, Jun Yao <yaojun8558363@gmail.com>,
 Kaly Xin <Kaly.Xin@arm.com>, hejianet@gmail.com,
 Ralph Campbell <rcampbell@nvidia.com>, Suzuki Poulose <Suzuki.Poulose@arm.com>,
 =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 07:00:30PM +0100, Catalin Marinas wrote:
> On Wed, Sep 18, 2019 at 05:00:27PM +0300, Kirill A. Shutemov wrote:
> > On Wed, Sep 18, 2019 at 09:19:14PM +0800, Jia He wrote:
> > > @@ -2152,20 +2163,34 @@ static inline void cow_user_page(struct page *dst, struct page *src, unsigned lo
> > >  	 */
> > >  	if (unlikely(!src)) {
> > >  		void *kaddr = kmap_atomic(dst);
> > > -		void __user *uaddr = (void __user *)(va & PAGE_MASK);
> > > +		void __user *uaddr = (void __user *)(addr & PAGE_MASK);
> > > +		pte_t entry;
> > >  
> > >  		/*
> > >  		 * This really shouldn't fail, because the page is there
> > >  		 * in the page tables. But it might just be unreadable,
> > >  		 * in which case we just give up and fill the result with
> > > -		 * zeroes.
> > > +		 * zeroes. On architectures with software "accessed" bits,
> > > +		 * we would take a double page fault here, so mark it
> > > +		 * accessed here.
> > >  		 */
> > > +		if (arch_faults_on_old_pte() && !pte_young(vmf->orig_pte)) {
> > > +			spin_lock(vmf->ptl);
> > > +			if (likely(pte_same(*vmf->pte, vmf->orig_pte))) {
> > > +				entry = pte_mkyoung(vmf->orig_pte);
> > > +				if (ptep_set_access_flags(vma, addr,
> > > +							  vmf->pte, entry, 0))
> > > +					update_mmu_cache(vma, addr, vmf->pte);
> > > +			}
> > 
> > I don't follow.
> > 
> > So if pte has changed under you, you don't set the accessed bit, but never
> > the less copy from the user.
> > 
> > What makes you think it will not trigger the same problem?
> > 
> > I think we need to make cow_user_page() fail in this case and caller --
> > wp_page_copy() -- return zero. If the fault was solved by other thread, we
> > are fine. If not userspace would re-fault on the same address and we will
> > handle the fault from the second attempt.
> 
> It would be nice to clarify the semantics of this function and do as
> you suggest but the current comment is slightly confusing:
> 
> 	/*
> 	 * If the source page was a PFN mapping, we don't have
> 	 * a "struct page" for it. We do a best-effort copy by
> 	 * just copying from the original user address. If that
> 	 * fails, we just zero-fill it. Live with it.
> 	 */
> 
> Would any user-space rely on getting a zero-filled page here instead of
> a recursive fault?

I don't see the point in zero-filled page in this case. SIGBUS sounds like
more appropriate response, no?

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
