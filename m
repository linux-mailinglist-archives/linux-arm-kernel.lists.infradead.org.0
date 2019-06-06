Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089FD37AF6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VIzOmGXioN6oXurtUqWeGsjFAZL0uwDHk4/IVeiDfA=; b=kIcMXxdXVjgbjf
	io8sqIy45ijz+KgTYKFVQzf3FnER4UnpAkbABY1APU2lm+jVjTl+JjYvUrKUBLoD7KjFk2xt+QRj3
	j9dSqnuYn+iQNGfmYoDc82xcIA5A+hzLlZKkGxF7DBMDRnvLDpWd0sRClkmxGSRM+SaVWJYy9TO+O
	bWqtjYfIiz9jWQ/pmNogyiQrIdZDzA58Oyl56fe2lAxz2Dd/F+P+pEGyP/s17Kn46s9iq8zcqJR8K
	3yJQBUtRkmnkZePGPaunZ2X9NiN42jv0g7+2FSFlN5pWaOxejZUEs8hLc9iO/FYRYq91KJ5YajOYR
	dRCZUn/tKsPLnFCcoBOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYw7K-0000e5-Gr; Thu, 06 Jun 2019 17:23:58 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYw7D-0000dK-B2
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 17:23:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5E54374;
 Thu,  6 Jun 2019 10:23:50 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 372DE3F690;
 Thu,  6 Jun 2019 10:23:48 -0700 (PDT)
Date: Thu, 6 Jun 2019 18:23:45 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH 4/8] arm64: Basic Branch Target Identification support
Message-ID: <20190606172345.GD28398@e103592.cambridge.arm.com>
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
 <1558693533-13465-5-git-send-email-Dave.Martin@arm.com>
 <20190524130217.GA15566@lakrids.cambridge.arm.com>
 <20190524145306.GZ28398@e103592.cambridge.arm.com>
 <20190606171155.GI56860@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606171155.GI56860@arrakis.emea.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_102351_381931_3170FDC8 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arch@vger.kernel.org,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Paul Elliott <paul.elliott@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Andrew Jones <drjones@redhat.com>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 06:11:56PM +0100, Catalin Marinas wrote:
> On Fri, May 24, 2019 at 03:53:06PM +0100, Dave P Martin wrote:
> > On Fri, May 24, 2019 at 02:02:17PM +0100, Mark Rutland wrote:
> > > On Fri, May 24, 2019 at 11:25:29AM +0100, Dave Martin wrote:
> > > >  #endif /* _UAPI__ASM_HWCAP_H */
> > > > diff --git a/arch/arm64/include/uapi/asm/mman.h b/arch/arm64/include/uapi/asm/mman.h
> > > > new file mode 100644
> > > > index 0000000..4776b43
> > > > --- /dev/null
> > > > +++ b/arch/arm64/include/uapi/asm/mman.h
> > > > @@ -0,0 +1,9 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> > > > +#ifndef _UAPI__ASM_MMAN_H
> > > > +#define _UAPI__ASM_MMAN_H
> > > > +
> > > > +#include <asm-generic/mman.h>
> > > > +
> > > > +#define PROT_BTI_GUARDED	0x10		/* BTI guarded page */
> > > 
> > > From prior discussions, I thought this would be PROT_BTI, without the
> > > _GUARDED suffix. Do we really need that?
> > > 
> > > AFAICT, all other PROT_* definitions only have a single underscore, and
> > > the existing arch-specific flags are PROT_ADI on sparc, and PROT_SAO on
> > > powerpc.
> > 
> > No strong opinon.  I was trying to make the name less obscure, but I'm
> > equally happy with PROT_BTI if people prefer that.
> 
> I prefer PROT_BTI as well. We are going to add a PROT_MTE at some point
> (and a VM_ARM64_MTE in the high VMA flag bits).

Ack.

Some things need attention, so I need to respin this series anyway.

skip_faulting_instruction() and kprobes/uprobes may need looking at,
plus I want to simply the ELF parsing (at least to skip some cost for
arm64).

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
