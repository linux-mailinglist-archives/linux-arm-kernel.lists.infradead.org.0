Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D191ACE5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/4FwNV3IFgfmnHOS4MtL9jPOjz8nI1rT7h57iKIig8=; b=oY1Xwivj54o4mX
	GsxnjdlAkwvWW5PkuwuQOtiHGQJaFnnZqT2rFn64wMVpsB2AHQFXVKb+DGzv+WNSWDeqjP6AP6xzi
	frrARMijQqIg5wf5wZ4gx3oBWznnsxxrS0yJr9f9NbTZtcKkt1242pdR6boe8GwdNp7HwDQg19pi5
	eYSXQy01EFP3bmbybqFwp31AZJ49n3r/Aes99TpmUD9aTVJRLM+jv4FY7BihFiRugFWv/dUhEYZFN
	nu5OIVAjXddv1wVMFp06vpIrt/witNiwwByBapV5ZXBRTuCwCDwBqGNGCTaqRcn6MHsgSml8NKY6/
	1WmUFKN7r8YiFFzGmCvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7xe-00044a-E7; Thu, 16 Apr 2020 17:05:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP7xR-00042s-Fz
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 17:05:49 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4E88F20732;
 Thu, 16 Apr 2020 17:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587056744;
 bh=yvKxJ0oqI8tAb7XGYBeopy2h/oK1YUZKnUOgcn1sW7c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=effOu2XiYpIAUEIWQ3do9dPFE/zgnIpN5HBFfHEl1XFwI3GcIBF2htju2SYwTBLtu
 0GqtALsJONiT8hngxN44EXw49w6kRbEHeyskiG39W8gTZizvMt0xUkNi0wESbALG1A
 2JSJFebvJDi0kg/wkOVlvAh9KPgP0Paf2LpAfHJA=
Date: Thu, 16 Apr 2020 18:05:40 +0100
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] KVM: arm64: Drop PTE_S2_MEMATTR_MASK
Message-ID: <20200416170539.GC32685@willie-the-truck>
References: <20200415105746.314-1-yuzenghui@huawei.com>
 <20200416163605.091fa6eb@why>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416163605.091fa6eb@why>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_100548_482760_05322BB9 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 04:36:05PM +0100, Marc Zyngier wrote:
> On Wed, 15 Apr 2020 18:57:46 +0800
> Zenghui Yu <yuzenghui@huawei.com> wrote:
> 
> > The only user of PTE_S2_MEMATTR_MASK macro had been removed since
> > commit a501e32430d4 ("arm64: Clean up the default pgprot setting").
> > It has been about six years and no one has used it again.
> > 
> > Let's drop it.
> > 
> > Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> > ---
> >  arch/arm64/include/asm/pgtable-hwdef.h | 1 -
> >  1 file changed, 1 deletion(-)
> > 
> > diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
> > index 6bf5e650da78..99315bdca0e6 100644
> > --- a/arch/arm64/include/asm/pgtable-hwdef.h
> > +++ b/arch/arm64/include/asm/pgtable-hwdef.h
> > @@ -190,7 +190,6 @@
> >   * Memory Attribute override for Stage-2 (MemAttr[3:0])
> >   */
> >  #define PTE_S2_MEMATTR(t)	(_AT(pteval_t, (t)) << 2)
> > -#define PTE_S2_MEMATTR_MASK	(_AT(pteval_t, 0xf) << 2)
> >  
> >  /*
> >   * EL2/HYP PTE/PMD definitions
> 
> Looks good to me. Catalin, Will: do you want to take this directly? If
> so please add my:
> 
> Acked-by: Marc Zyngier <maz@kernel.org>
> 
> Otherwise, I'll route it via the KVM tree.

I can take it for 5.8 if it's not urgent.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
