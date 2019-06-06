Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6A037AA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HnF+X2J3B5dzeDCqk1mXCQ4tqigjDG3um4+Ce/QEhw=; b=GVFJqdkTBbsqUM
	U2KzppW4k0mEjbx7XTNyvx2JAMGbFbmzsMyZqhBTfqrMzs75zll9USYkFXM4R6bW9DLq41JoOvhay
	G3ae6zzJL2XexC4n8ahP/5nlpt4wn6b8bQjeOlxx5Yi2dxIJaQVGOZbLbjtRl6gHt0jxa16Og73pS
	dTSPasWHIPZJUKQGUURXBJa6wdLg1Cgvj/5Afw8Zo1nagQNpx7prXas8K1X1bw5zTn/z0PNbKWQ3a
	QkCYzcEy4q2Qxo7D1IXEmDdEuOJl1Od0iVC868A5MYfkQ6DkF1yCc0pzdr5VOnn+4C6gVu9qoW+br
	Gxt3HkfalmjBgwBZ6WEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvvs-00055C-M6; Thu, 06 Jun 2019 17:12:08 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvvl-00054n-L2
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 17:12:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C28B374;
 Thu,  6 Jun 2019 10:12:01 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A2D823F690; Thu,  6 Jun 2019 10:11:58 -0700 (PDT)
Date: Thu, 6 Jun 2019 18:11:56 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 4/8] arm64: Basic Branch Target Identification support
Message-ID: <20190606171155.GI56860@arrakis.emea.arm.com>
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
 <1558693533-13465-5-git-send-email-Dave.Martin@arm.com>
 <20190524130217.GA15566@lakrids.cambridge.arm.com>
 <20190524145306.GZ28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524145306.GZ28398@e103592.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_101201_692490_A8805C7E 
X-CRM114-Status: GOOD (  16.84  )
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
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will.deacon@arm.com>, Andrew Jones <drjones@redhat.com>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 linux-kernel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 03:53:06PM +0100, Dave P Martin wrote:
> On Fri, May 24, 2019 at 02:02:17PM +0100, Mark Rutland wrote:
> > On Fri, May 24, 2019 at 11:25:29AM +0100, Dave Martin wrote:
> > >  #endif /* _UAPI__ASM_HWCAP_H */
> > > diff --git a/arch/arm64/include/uapi/asm/mman.h b/arch/arm64/include/uapi/asm/mman.h
> > > new file mode 100644
> > > index 0000000..4776b43
> > > --- /dev/null
> > > +++ b/arch/arm64/include/uapi/asm/mman.h
> > > @@ -0,0 +1,9 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> > > +#ifndef _UAPI__ASM_MMAN_H
> > > +#define _UAPI__ASM_MMAN_H
> > > +
> > > +#include <asm-generic/mman.h>
> > > +
> > > +#define PROT_BTI_GUARDED	0x10		/* BTI guarded page */
> > 
> > From prior discussions, I thought this would be PROT_BTI, without the
> > _GUARDED suffix. Do we really need that?
> > 
> > AFAICT, all other PROT_* definitions only have a single underscore, and
> > the existing arch-specific flags are PROT_ADI on sparc, and PROT_SAO on
> > powerpc.
> 
> No strong opinon.  I was trying to make the name less obscure, but I'm
> equally happy with PROT_BTI if people prefer that.

I prefer PROT_BTI as well. We are going to add a PROT_MTE at some point
(and a VM_ARM64_MTE in the high VMA flag bits).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
