Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD1790705
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 19:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8qzEmx7Jov6iVqaBqul6G/1iOHr0LSdPsQ9dA3vVAQ=; b=qk5rSBfg6YcnAb
	TGGOw4ye3gLjiaPelnhW7F3drVBUf99M4Qmh2bIPjzc4bzpnWStT4tYQrLvTye2OgP5JfEHbIc/bx
	A1X+nWIVR4lrStX2liaQFbaYG+IwU8/MkYOu8nG1hHLQVJeEavkfWNKuTmAyIeJHBqqkSvU28CdqO
	kByiiG8xUAiamySgC4+MFyld3lFq+AvJytE+z8E01FDccyF3dqRK9zr/KJbtseaEbtyLUUdn0UhhC
	pLNjqK4/7y2PukVms0ImVKp7H9j0mcXtRCZIVpNI0vTzbygPxq9nstY+7InVdCYN44lKeMY3Xs5NC
	AWD8w6U2AAJolCWKIQsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyg9D-0002MX-1s; Fri, 16 Aug 2019 17:36:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyg90-0002Lq-QX
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 17:36:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1FB0928;
 Fri, 16 Aug 2019 10:36:04 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1BA173F694;
 Fri, 16 Aug 2019 10:36:02 -0700 (PDT)
Date: Fri, 16 Aug 2019 18:36:00 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 6/6] arm64: document the choice of page attributes for
 pgprot_dmacoherent
Message-ID: <20190816173559.GB7417@lakrids.cambridge.arm.com>
References: <20190816070754.15653-1-hch@lst.de>
 <20190816070754.15653-7-hch@lst.de>
 <20190816173118.4rbbzuogfamfa554@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816173118.4rbbzuogfamfa554@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_103606_905553_D065CF57 
X-CRM114-Status: GOOD (  22.17  )
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
Cc: Shawn Anastasio <shawn@anastas.io>, linux-m68k@lists.linux-m68k.org,
 Catalin Marinas <catalin.marinas@arm.com>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-mips@vger.kernel.org, iommu@lists.linux-foundation.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Paul Burton <paul.burton@mips.com>,
 James Hogan <jhogan@kernel.org>, Guan Xuetao <gxt@pku.edu.cn>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 06:31:18PM +0100, Will Deacon wrote:
> Hi Christoph,
> 
> Thanks for spinning this into a patch.
> 
> On Fri, Aug 16, 2019 at 09:07:54AM +0200, Christoph Hellwig wrote:
> > Based on an email from Will Deacon.
> > 
> > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > ---
> >  arch/arm64/include/asm/pgtable.h | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> > index 6700371227d1..6ff221d9a631 100644
> > --- a/arch/arm64/include/asm/pgtable.h
> > +++ b/arch/arm64/include/asm/pgtable.h
> > @@ -435,6 +435,14 @@ static inline pmd_t pmd_mkdevmap(pmd_t pmd)
> >  	__pgprot_modify(prot, PTE_ATTRINDX_MASK, PTE_ATTRINDX(MT_NORMAL_NC) | PTE_PXN | PTE_UXN)
> >  #define pgprot_device(prot) \
> >  	__pgprot_modify(prot, PTE_ATTRINDX_MASK, PTE_ATTRINDX(MT_DEVICE_nGnRE) | PTE_PXN | PTE_UXN)
> > +/*
> > + * DMA allocations for non-coherent devices use what the Arm architecture calls
> > + * "Normal non-cacheable" memory, which permits speculation, unaligned accesses
> > + * and merging of writes.  This is different from "Strongly Ordered" memory
> > + * which is intended for MMIO and thus forbids speculation, preserves access
> > + * size, requires strict alignment and also forces write responses to come from
> > + * the endpoint.
> > + */
> 
> Mind if I tweak the second sentence to be:
> 
>   This is different from "Device-nGnR[nE]" memory which is intended for MMIO
>   and thus forbids speculation, preserves access size, requires strict
>   alignment and can also force write responses to come from the endpoint.
> 
> ? It's a small change, but it better fits with the arm64 terminology
> ("strongly ordered" is no longer used in the architecture).
> 
> If you're happy with that, I can make the change and queue this patch
> for 5.4.

FWIW, with that wording:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
