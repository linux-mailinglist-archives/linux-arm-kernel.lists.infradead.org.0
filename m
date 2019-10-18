Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1107DC653
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 15:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=esebJ/ce84YdyGJ2fevHwP/uCbzEZd68NUK1RiapZ1s=; b=Nj6L2jC0zkCUDo
	R0RhMOArijt6PY52s5IJx0IBklCr9i6SSten4CGUbpDHKG3dlKzX7QLMMdJxb0rlxF43I7dyhGdgY
	ZDW7Vy82HUJCNX18y+aG9Y7EqLZw8NnhnE63dGyO2zwxJD5VjVcugOcSVaRRl9Qwyf+uWf6xWqCOy
	5JCuls9TZlXY0ZpduiuItn2fc+sG+w/EbXv7aCpmmelx0V6Q5kjaOhUmW1KTYUlScYplf8Lb6gD5v
	jsnsLEL9i1PtMGbk/6y67lEBEZLNa0/n8b4tAAIlvV7gvk4Ts1/rRs7WAFdS2EkqYJj8EcvcMQQvO
	EAOX/N1B9/W8ZjG0o+TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLSUt-0008M7-Hp; Fri, 18 Oct 2019 13:40:51 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLSUj-0008KW-LI
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 13:40:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6CC1EC0;
 Fri, 18 Oct 2019 06:40:30 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C9A73F6C4;
 Fri, 18 Oct 2019 06:40:27 -0700 (PDT)
Date: Fri, 18 Oct 2019 14:40:25 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 05/12] arm64: Basic Branch Target Identification support
Message-ID: <20191018134024.GE27757@arm.com>
References: <1570733080-21015-1-git-send-email-Dave.Martin@arm.com>
 <1570733080-21015-6-git-send-email-Dave.Martin@arm.com>
 <20191011151028.GE33537@lakrids.cambridge.arm.com>
 <20191011172013.GQ27757@arm.com>
 <20191018111603.GD27759@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018111603.GD27759@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_064041_788594_F6F4F921 
X-CRM114-Status: GOOD (  27.33  )
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
Cc: Dave Kleikamp <shaggy@linux.vnet.ibm.com>,
 Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "H.J. Lu" <hjl.tools@gmail.com>, Andrew Jones <drjones@redhat.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 12:16:03PM +0100, Mark Rutland wrote:
> [adding mm folk]
> 
> On Fri, Oct 11, 2019 at 06:20:15PM +0100, Dave Martin wrote:
> > On Fri, Oct 11, 2019 at 04:10:29PM +0100, Mark Rutland wrote:
> > > On Thu, Oct 10, 2019 at 07:44:33PM +0100, Dave Martin wrote:
> > > > +#define arch_validate_prot(prot, addr) arm64_validate_prot(prot, addr)
> > > > +static inline int arm64_validate_prot(unsigned long prot, unsigned long addr)
> > > > +{
> > > > +	unsigned long supported = PROT_READ | PROT_WRITE | PROT_EXEC | PROT_SEM;
> > > > +
> > > > +	if (system_supports_bti())
> > > > +		supported |= PROT_BTI;
> > > > +
> > > > +	return (prot & ~supported) == 0;
> > > > +}
> > > 
> > > If we have this check, can we ever get into arm64_calc_vm_prot_bits()
> > > with PROT_BIT but !system_supports_bti()?
> > > 
> > > ... or can that become:
> > > 
> > > 	return (prot & PROT_BTI) ? VM_ARM64_BTI : 0;
> > 
> > We can reach this via mmap() and friends IIUC.
> > 
> > Since this function only gets called once-ish per vma I have a weak
> > preference for keeping the check here to avoid code fragility.
> > 
> > 
> > It does feel like arch_validate_prot() is supposed to be a generic gate
> > for prot flags coming into the kernel via any route though, but only the
> > mprotect() path actually uses it.
> > 
> > This function originally landed in v2.6.27 as part of the powerpc strong
> > access ordering support (PROT_SAO):
> > 
> > b845f313d78e ("mm: Allow architectures to define additional protection bits")
> > ef3d3246a0d0 ("powerpc/mm: Add Strong Access Ordering support")
> > 
> > where the mmap() path uses arch_calc_vm_prot_bits() without
> > arch_validate_prot(), just as in the current code.  powerpc's original
> > arch_calc_vm_prot_bits() does no obvious policing.
> > 
> > This might be a bug.  I can draft a patch to add it for the mmap() path
> > for people to comment on ... I can't figure out yet whether or not the
> > difference is intentional or there's some subtlety that I'm missed.
> 
> From reading those two commit messages, it looks like this was an
> oversight. I'd expect that we should apply this check for any
> user-provided prot (i.e. it should apply to both mprotect and mmap).
> 
> Ben, Andrew, does that make sense to you?
> 
> ... or was there some reason to only do this for mprotect?
> 
> Thanks,
> Mark.

For now, I'll drop a comment under the tearoff noting this outstanding
question.

The resulting behaviour is slightly odd, but doesn't seem unsafe, and
we can of course tidy it up later.  I think the risk of userspace
becoming dependent on randomly passing PROT_BTI to mprotect() even
when unsupported is low.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
