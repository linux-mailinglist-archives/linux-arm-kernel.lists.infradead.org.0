Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51380DC3AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 13:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhckEensFVrO+QLF/rsQUatNgy3gJEC3t4rWnoBgC+Y=; b=Z92JNfPJDkQFao
	L/yr6rvz8tJ+jfguji0R7MYBptWfmJEXVGZCEfp09Ubt63QF5McVrnesNXt4nmu8NUJUhxXCJ/Mwf
	HWcwCGuhuJaGz3WXXMxc3b2lGelOAlNQKbOQ+SqOrUH1VIA3w0VNWt8Ta4cWzjPVHhUBsNeaOvnS6
	xoEJcggRD5708inYpKKYBHAHuZOn7JBtpRSVNhpMRi4Sp82QBMjomd0iIxGy7wISLJlb5ZogkIIVW
	1winJaHPqH0FgOKwQrPRI/ZauxU5ZRKd8NxDBt542hhvVTESynYDDu6Rvva/mgXAhuLj3++CG+LnO
	o4hJ9SDWCmIrcRcpDVsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQ9N-0006WF-3g; Fri, 18 Oct 2019 11:10:29 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQ9D-0006Ug-BM
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 11:10:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2DAFB42;
 Fri, 18 Oct 2019 04:10:08 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AE7F03F6C4;
 Fri, 18 Oct 2019 04:10:05 -0700 (PDT)
Date: Fri, 18 Oct 2019 12:10:03 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2 05/12] arm64: Basic Branch Target Identification support
Message-ID: <20191018111003.GC27759@lakrids.cambridge.arm.com>
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-6-git-send-email-Dave.Martin@arm.com>
 <20191011151028.GE33537@lakrids.cambridge.arm.com>
 <20191011172013.GQ27757@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011172013.GQ27757@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_041019_433211_6B57EC8F 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H.J. Lu" <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 06:20:15PM +0100, Dave Martin wrote:
> On Fri, Oct 11, 2019 at 04:10:29PM +0100, Mark Rutland wrote:
> > On Thu, Oct 10, 2019 at 07:44:33PM +0100, Dave Martin wrote:
> > > +#define arch_calc_vm_prot_bits(prot, pkey) arm64_calc_vm_prot_bits(prot)
> > > +static inline unsigned long arm64_calc_vm_prot_bits(unsigned long prot)
> > > +{
> > > +	if (system_supports_bti() && (prot & PROT_BTI))
> > > +		return VM_ARM64_BTI;
> > > +
> > > +	return 0;
> > > +}
> > 
> > Can we call this arch_calc_vm_prot_bits() directly, with all the
> > arguments:
> > 
> > static inline unsigned long arch_calc_vm_prot_bits(unsigned long prot,
> > 						   unsigned long pkey)
> > {
> > 	...
> > }
> > #define arch_calc_vm_prot_bits arch_calc_vm_prot_bits
> > 
> > ... as that makes it a bit easier to match definition with use, and just
> > definign the name makes it a bit clearer that that's probably for the
> > benefit of some ifdeffery.
> > 
> > Likewise for the other functions here.
> > 
> > > +#define arch_vm_get_page_prot(vm_flags) arm64_vm_get_page_prot(vm_flags)
> > > +static inline pgprot_t arm64_vm_get_page_prot(unsigned long vm_flags)
> > > +{
> > > +	return (vm_flags & VM_ARM64_BTI) ? __pgprot(PTE_GP) : __pgprot(0);
> > > +}
> > > +
> > > +#define arch_validate_prot(prot, addr) arm64_validate_prot(prot, addr)
> > > +static inline int arm64_validate_prot(unsigned long prot, unsigned long addr)
> 
> Can do, though it looks like a used sparc as a template, and that has a
> sparc_ prefix.
> 
> powerpc uses the generic name, as does x86 ... in its UAPI headers.
> Odd.
> 
> I can change the names here, though I'm not sure it adds a lot of value.
> 
> If you feel strongly I can do it.

I'd really prefer it because it minimizes surprises, and makes it much
easier to hop around the codebase and find the thing you're looking for.

I'll reply on the other issue in a separate reply.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
