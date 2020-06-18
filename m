Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2E91FEC69
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 09:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5Wej8jM2wfHn5S+LI81qDNirP+8jfaKUbk3NQYbWvk=; b=U6DQx3m24J1tPY
	+pOzTCo5qFHePB0aOYXz0YXATXVeHUOfS1MEGGRGVHT6/QhgzhCBbnpdT9u1MJhc/+MW8TsE5jRZ7
	hiDl3FclvGuuYswCqoW8PS+9bQ0l9es+0sk4vZmgRlTNMl5SuhEeVHJdc+NSyFYZVLSZ2WWWSAVum
	+85EPW15yNa0IUs9heeTb/ih5RzaBNmtKQ5rXrRisNgsi+CyWUL2z4+9+lbXgMXkzZJWLCsDej+47
	wPMKNs3B+7CN9u1/nfOktmnyf/Ma/+RffU7Wek9iRiP6uK4b+ZHnz/2bEJ+OCiTfDAWMYcouko/pA
	fnplNTJbObThssalgD4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jloxB-00060o-Iq; Thu, 18 Jun 2020 07:27:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlox2-000608-O3
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 07:27:10 +0000
Received: by mail-pf1-x441.google.com with SMTP id j12so164756pfn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 00:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=A3ubcblAnaDWXRoE3s8Wx5ABEHKfjSCdNTnDkJVDCY0=;
 b=W6ov9/6Kk0ZMItTx7KoyrPrban7W1LXQCu8RT/PMVlmFnmV2hlNP4/nXwgulHvMuS7
 yq5ZKvB/KBZqDPewXpyRY4A9C+XxF7+RabnUzWKjKE0SZxsN0NIbkOMso3xVcx7YCpy9
 dHsZxDc4bTgEgaECIfW7DA/UlWU/0x1Es1fRtDQ6WbfZ+gE9f8xPYgWiAOgurljXiCY+
 r4Eg7IytomLHoKG8+AiKXwwxAcHhxTl5tv89PWrBBJPlVgiK0MHPGn+61Gb9X46iEHJ0
 nu+WxIQkL2wl67aD2Ubz0Yi1XDTUIq2m99+qV8+kSOLKfOp8uYRAvgfhVR3jyAI9156+
 ojXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=A3ubcblAnaDWXRoE3s8Wx5ABEHKfjSCdNTnDkJVDCY0=;
 b=hB11r2SiMqDfD79tmg0+vJBxaoUV3Tr7C3EtHWsaunmmqSZgRuhrUdIyURShQZJqaQ
 F1HvFS7pHS6g5DEZtadMEB+SfMulNdmta0nFFJ2oqzUpuRwLFi37AHNHcrvv+Gnd2Unq
 ll8WoKNC9Gmhgu0Gik7i8lJZMliUyTHXeXztxnsRezPt3L/HZ6emfP7G5I8Nbppw7yux
 N+pLSTTLrXfYTAoaprmgaTcAXwH8pWg5BADzlFw3HpEg0zJJpeeQxC7jp4v177xkY9BG
 ZvR1hQIXgV/Yw9opAK+6JRigljPicWzlxPmh1gL525pkmXsPXX0CV/fU0pFM0hvbEJR0
 riQw==
X-Gm-Message-State: AOAM530LMCA+18/AcVK8fWJ6pVihu9tiAyThAPi6jqzP1TS6pWLN8J6m
 a7o3QZI4eapP510PxFStTAfozofL
X-Google-Smtp-Source: ABdhPJwjG30ZacKK/HiF9nqSz3xZMZCO1XBbk2akA/VonsQLgkaCx57QCDmPY/ktMJTThJ7ZbEdJ/A==
X-Received: by 2002:a63:ce45:: with SMTP id r5mr2314813pgi.320.1592465227759; 
 Thu, 18 Jun 2020 00:27:07 -0700 (PDT)
Received: from gmail.com ([2601:600:817f:a132:df3e:521d:99d5:710d])
 by smtp.gmail.com with ESMTPSA id x77sm1988193pfc.4.2020.06.18.00.27.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 00:27:07 -0700 (PDT)
Date: Thu, 18 Jun 2020 00:27:05 -0700
From: Andrei Vagin <avagin@gmail.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/6] arm64/vdso: use the fault callback to map vvar pages
Message-ID: <20200618072705.GA334958@gmail.com>
References: <20200616075545.312684-1-avagin@gmail.com>
 <20200616075545.312684-2-avagin@gmail.com>
 <20200616105920.GB11780@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616105920.GB11780@C02TD0UTHF1T.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_002708_806712_F4539CB0 
X-CRM114-Status: GOOD (  26.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dmitry Safonov <dima@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 11:59:20AM +0100, Mark Rutland wrote:
> On Tue, Jun 16, 2020 at 12:55:40AM -0700, Andrei Vagin wrote:
> > This is required to support time namespaces where a time namespace data
> > page is different for each namespace.
> 
> Can you please give a bit more of an introduction to the changes here?
> As-is, this doesn't give reviewers the necessary context to understand
> the change, nor does it justify it.
> 
> Ideally, a commit message for this should look something like:

Mark, thank you for the review. I will write more details message and
fix this patch according with your other comments.

> 
> | Currently the vdso has no awareness of time namespaces, which may
> | apply distinct offsets to processes in different namespaces. To handle
> | this within the vdso, we'll need to expose a per-namespace data page.
> |
> | As a preparatory step, this patch separates the vdso data page from
> | the code pages, and has it faulted in via its own fault callback.
> | Subsquent patches will extend this to support distinct pages per time
> | namespace.
> 
> Otherwise, I have a few minor comments below.
> 
> > Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > Reviewed-by: Dmitry Safonov <dima@arista.com>
> > Signed-off-by: Andrei Vagin <avagin@gmail.com>
> > ---
> >  arch/arm64/kernel/vdso.c | 24 +++++++++++++++---------
> >  1 file changed, 15 insertions(+), 9 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
> > index 4e016574bd91..b0aec4e8c9b4 100644
> > --- a/arch/arm64/kernel/vdso.c
> > +++ b/arch/arm64/kernel/vdso.c
> > @@ -108,28 +108,32 @@ static int __vdso_init(enum vdso_abi abi)
> >  			PAGE_SHIFT;
> >  
> >  	/* Allocate the vDSO pagelist, plus a page for the data. */
> > -	vdso_pagelist = kcalloc(vdso_info[abi].vdso_pages + 1,
> > +	vdso_pagelist = kcalloc(vdso_info[abi].vdso_pages,
> >  				sizeof(struct page *),
> >  				GFP_KERNEL);
> 
> The comment above is now stale. Can you please update it, or (event
> better) delete it entirely?

I will delete it.

> 
> >  	if (vdso_pagelist == NULL)
> >  		return -ENOMEM;
> >  
> > -	/* Grab the vDSO data page. */
> > -	vdso_pagelist[0] = phys_to_page(__pa_symbol(vdso_data));
> > -
> > -
> >  	/* Grab the vDSO code pages. */
> >  	pfn = sym_to_pfn(vdso_info[abi].vdso_code_start);
> >  
> >  	for (i = 0; i < vdso_info[abi].vdso_pages; i++)
> > -		vdso_pagelist[i + 1] = pfn_to_page(pfn + i);
> > +		vdso_pagelist[i] = pfn_to_page(pfn + i);
> >  
> > -	vdso_info[abi].dm->pages = &vdso_pagelist[0];
> > -	vdso_info[abi].cm->pages = &vdso_pagelist[1];
> > +	vdso_info[abi].cm->pages = vdso_pagelist;
> >  
> >  	return 0;
> >  }
> >  
> > +static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
> > +			     struct vm_area_struct *vma, struct vm_fault *vmf)
> > +{
> > +	if (vmf->pgoff == 0)
> > +		return vmf_insert_pfn(vma, vmf->address,
> > +				sym_to_pfn(vdso_data));
> > +	return VM_FAULT_SIGBUS;
> > +}
> 
> This might look better as:

In the next patch, this function will handle more pages and this form
will look better.

> 
> |	if (vmf->pgoff != 0)
> |		return VM_FAULT_SIGBUS;
> |	
> |	return vmf_insert_pfn(vma, vmf->address, sym_to_pfn(vdso_data));
> 
> > +
> >  static int __setup_additional_pages(enum vdso_abi abi,
> >  				    struct mm_struct *mm,
> >  				    struct linux_binprm *bprm,
> > @@ -150,7 +154,7 @@ static int __setup_additional_pages(enum vdso_abi abi,
> >  	}
> >  
> >  	ret = _install_special_mapping(mm, vdso_base, PAGE_SIZE,
> > -				       VM_READ|VM_MAYREAD,
> > +				       VM_READ|VM_MAYREAD|VM_PFNMAP,
> 
> This change needs to be explained in the commit message. WHy is it
> necessary, and why only so for the data page?

I will update the commit message. VM_PFNMAP is required to handle faults
from a vma fault callback. In this case, it is vvar_fault.

> 
> Thanks,
> Mark.
> 
> >  				       vdso_info[abi].dm);
> >  	if (IS_ERR(ret))
> >  		goto up_fail;
> > @@ -209,6 +213,7 @@ static struct vm_special_mapping aarch32_vdso_maps[] = {
> >  #ifdef CONFIG_COMPAT_VDSO
> >  	[AA32_MAP_VVAR] = {
> >  		.name = "[vvar]",
> > +		.fault = vvar_fault,
> >  	},
> >  	[AA32_MAP_VDSO] = {
> >  		.name = "[vdso]",
> > @@ -376,6 +381,7 @@ enum aarch64_map {
> >  static struct vm_special_mapping aarch64_vdso_maps[] __ro_after_init = {
> >  	[AA64_MAP_VVAR] = {
> >  		.name	= "[vvar]",
> > +		.fault = vvar_fault,
> >  	},
> >  	[AA64_MAP_VDSO] = {
> >  		.name	= "[vdso]",
> > -- 
> > 2.24.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
