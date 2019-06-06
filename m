Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD0937B4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:42:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ix6Qy8KiPyhPWm+aNvb1bAROz/oXbjQqAiMHr6Rj4ic=; b=Cj7RToGaRZrZgL
	9n/p1+U2CSQ8lTo/Mg/eOKCxmtxTQT+mT7R+uynDmCEudygI0/S1Qm5gxubeWyRtyK3mO1/10NPyA
	rKmSAO4Ki+HaU1JPCtcESoQCEhWekFmldmgh5iVs2jyoZ3ZVM0LUQcDlCbbfBLA3HEnBFn4Pc+ZoN
	nRqePuVx8ksc9fvt0PPWOfq7nUjzDdzYPhqD1Ft9VTu+xzwYOujGpHww8TYVUfqjQDWP9aP8E+Vt4
	O7CKCbQjHVzE7vVEjk89nxbnBxs9xsT7RlmNeBEVb84HDsKHdZH1LCUbd5sY0C3JAHGGW7e6ig3Yg
	ou0fN495oBguzWKStoFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwPN-0007oX-EF; Thu, 06 Jun 2019 17:42:37 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwPA-0007ge-SU
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 17:42:26 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 10:42:23 -0700
X-ExtLoop1: 1
Received: from yyu32-desk1.sc.intel.com ([143.183.136.147])
 by orsmga001.jf.intel.com with ESMTP; 06 Jun 2019 10:42:22 -0700
Message-ID: <5f92e89a5823a3265fa0b389a19452ba995e9406.camel@intel.com>
Subject: Re: [PATCH 4/8] arm64: Basic Branch Target Identification support
From: Yu-cheng Yu <yu-cheng.yu@intel.com>
To: Dave Martin <Dave.Martin@arm.com>, Catalin Marinas
 <catalin.marinas@arm.com>
Date: Thu, 06 Jun 2019 10:34:22 -0700
In-Reply-To: <20190606172345.GD28398@e103592.cambridge.arm.com>
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
 <1558693533-13465-5-git-send-email-Dave.Martin@arm.com>
 <20190524130217.GA15566@lakrids.cambridge.arm.com>
 <20190524145306.GZ28398@e103592.cambridge.arm.com>
 <20190606171155.GI56860@arrakis.emea.arm.com>
 <20190606172345.GD28398@e103592.cambridge.arm.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_104225_148469_FD2AA4CD 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
 Andrew Jones <drjones@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Paul Elliott <paul.elliott@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>, linux-kernel@vger.kernel.org,
 Kristina =?UTF-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Sudakshina Das <sudi.das@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-06-06 at 18:23 +0100, Dave Martin wrote:
> On Thu, Jun 06, 2019 at 06:11:56PM +0100, Catalin Marinas wrote:
> > On Fri, May 24, 2019 at 03:53:06PM +0100, Dave P Martin wrote:
> > > On Fri, May 24, 2019 at 02:02:17PM +0100, Mark Rutland wrote:
> > > > On Fri, May 24, 2019 at 11:25:29AM +0100, Dave Martin wrote:
> > > > >  #endif /* _UAPI__ASM_HWCAP_H */
> > > > > diff --git a/arch/arm64/include/uapi/asm/mman.h
> > > > > b/arch/arm64/include/uapi/asm/mman.h
> > > > > new file mode 100644
> > > > > index 0000000..4776b43
> > > > > --- /dev/null
> > > > > +++ b/arch/arm64/include/uapi/asm/mman.h
> > > > > @@ -0,0 +1,9 @@
> > > > > +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> > > > > +#ifndef _UAPI__ASM_MMAN_H
> > > > > +#define _UAPI__ASM_MMAN_H
> > > > > +
> > > > > +#include <asm-generic/mman.h>
> > > > > +
> > > > > +#define PROT_BTI_GUARDED	0x10		/* BTI guarded
> > > > > page */
> > > > 
> > > > From prior discussions, I thought this would be PROT_BTI, without the
> > > > _GUARDED suffix. Do we really need that?
> > > > 
> > > > AFAICT, all other PROT_* definitions only have a single underscore, and
> > > > the existing arch-specific flags are PROT_ADI on sparc, and PROT_SAO on
> > > > powerpc.
> > > 
> > > No strong opinon.  I was trying to make the name less obscure, but I'm
> > > equally happy with PROT_BTI if people prefer that.
> > 
> > I prefer PROT_BTI as well. We are going to add a PROT_MTE at some point
> > (and a VM_ARM64_MTE in the high VMA flag bits).
> 
> Ack.
> 
> Some things need attention, so I need to respin this series anyway.
> 
> skip_faulting_instruction() and kprobes/uprobes may need looking at,
> plus I want to simply the ELF parsing (at least to skip some cost for
> arm64).

Can we add a case in the 'consistency checks for the interpreter' (right above
where you add arch_parse_property()) for PT_NOTE?  That way you can still use
part of the same parser.

Yu-cheng


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
