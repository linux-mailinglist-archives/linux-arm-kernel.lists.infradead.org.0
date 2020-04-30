Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4861BF2CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ln0+YlgrxdNaUxKM4Zczo5e1GNQmu0vBaloWDtH2/E4=; b=krK/STOBCmmLfC
	OEyE5vMLEtoX5ALEG//AXXVF2Jus9j0KVcZd1Eux38OXPC2UKx1NYzgLMnLliK81yy6g8fwEOVABH
	T8wLtiVIHkR2PP90zl8D5IFJS3ukPDdV0jU37U+DcP5I97LgM/Te2uOH73IVvIz0xeDYAPN1Gj8n2
	XG4KYU0IvpyYhlKWbLI5bb45mtmXIejcLjAzQ2tb0jCZpO592/blvRc+gI+Q4no/DjLrs1GgUhaYF
	lxPe0Bb4eWLvP1TsurQnLfBjlTeGBxHS6OWC1LIc6Y21utn2zUF17Meu/5dUusxxR2/Kg7AxVpkdb
	v2BLm3GM+1ZA/43jX4iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4Zp-0007sE-10; Thu, 30 Apr 2020 08:29:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4Ze-0007r9-77
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 08:29:39 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E058E20838;
 Thu, 30 Apr 2020 08:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588235377;
 bh=onr2ezsqhSwSBf7Quz0lL5N9zMZKFWEXv6ZeY7ZIb9M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mhXeMJ0oWGKxPahGSs7koYRzrkGLBxK5K/sKeQboCc/b2p8n6cwbTf9Sr+GZ+pIk4
 rRFVN73kuf10XTpXGBpLiLU72SuPb6wk4Vyk5xKIbm3q+QpEFT1iFr1dKbuKvsXP1y
 peJMk6/zFG8MHlDUDNC8wuM3+aZvQ2rUXtsSN08g=
Date: Thu, 30 Apr 2020 09:29:28 +0100
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] arm64: kvm: fix gcc-10 shift warning
Message-ID: <20200430082927.GA18615@willie-the-truck>
References: <20200429185657.4085975-1-arnd@arndb.de>
 <20200430090251.715f6bf0@why>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430090251.715f6bf0@why>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_012938_301075_F00C49A2 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rich Felker <dalias@libc.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, kvmarm@lists.cs.columbia.edu,
 Jonas Bonn <jonas@southpole.se>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Brian Cain <bcain@codeaurora.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Fenghua Yu <fenghua.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 Stafford Horne <shorne@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 09:02:51AM +0100, Marc Zyngier wrote:
> On Wed, 29 Apr 2020 20:56:20 +0200
> Arnd Bergmann <arnd@arndb.de> wrote:
> 
> > gcc-10 warns that the 32-bit zero cannot be shifted more than
> > 32 bits to the right:
> > 
> > arch/arm64/kvm/../../../virt/kvm/arm/mmu.c: In function 'clear_hyp_p4d_entry':
> > arch/arm64/include/asm/pgtable.h:630:35: error: right shift count >= width of type [-Werror=shift-count-overflow]
> >   630 | #define pud_index(addr)  (((addr) >> PUD_SHIFT) & (PTRS_PER_PUD - 1))
> >       |                                   ^~
> > arch/arm64/include/asm/memory.h:271:45: note: in definition of macro '__phys_to_virt'
> >   271 | #define __phys_to_virt(x) ((unsigned long)((x) - physvirt_offset))
> >       |                                             ^
> > arch/arm64/include/asm/pgtable.h:633:42: note: in expansion of macro '__va'
> >   633 | #define pud_offset(dir, addr)  ((pud_t *)__va(pud_offset_phys((dir), (addr))))
> >       |                                          ^~~~
> > arch/arm64/include/asm/pgtable.h:632:73: note: in expansion of macro 'pud_index'
> >   632 | #define pud_offset_phys(dir, addr) (p4d_page_paddr(READ_ONCE(*(dir))) + pud_index(addr) * sizeof(pud_t))
> >       |                                                                         ^~~~~~~~~
> > arch/arm64/include/asm/pgtable.h:633:47: note: in expansion of macro 'pud_offset_phys'
> >   633 | #define pud_offset(dir, addr)  ((pud_t *)__va(pud_offset_phys((dir), (addr))))
> >       |                                               ^~~~~~~~~~~~~~~
> > arch/arm64/kvm/../../../virt/kvm/arm/mmu.c:510:36: note: in expansion of macro 'pud_offset'
> >   510 |  pud_t *pud_table __maybe_unused = pud_offset(p4d, 0);
> >       |                                    ^~~~~~~~~~
> > 
> > This is harmless, and the warning is a little bit silly for
> > a zero constant, but it's trivial to fix by making it an
> > unsigned long, so do that.
> > 
> > Fixes: 22998131ab33 ("arm64: add support for folded p4d page tables")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  virt/kvm/arm/mmu.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
> > index 48d4288c5f1b..534d9798c3cb 100644
> > --- a/virt/kvm/arm/mmu.c
> > +++ b/virt/kvm/arm/mmu.c
> > @@ -507,7 +507,7 @@ static void clear_hyp_pgd_entry(pgd_t *pgd)
> >  
> >  static void clear_hyp_p4d_entry(p4d_t *p4d)
> >  {
> > -	pud_t *pud_table __maybe_unused = pud_offset(p4d, 0);
> > +	pud_t *pud_table __maybe_unused = pud_offset(p4d, 0UL);
> >  	VM_BUG_ON(p4d_huge(*p4d));
> >  	p4d_clear(p4d);
> >  	pud_free(NULL, pud_table);
> 
> Acked-by: Marc Zyngier <maz@kernel.org>

Happy to queue via arm64 for 5.8. Does that work for you, Arnd, or were you
planning to get this in sooner than that?

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
