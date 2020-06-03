Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8797E1ED683
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 21:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOxTFhAycMz8wEevCUGf0KOrdDP+QDhespdM/8MW+fQ=; b=IKo2nTYe9MluX4
	PHJFHxww93rfPRAsxHtbO7wfD4akrWQTveEvmlnlUEbo8tiNvCyQ88Bd5h9drAt+235s6kcHxw+wt
	0CSDWCw0kf4z+84NJkBNIPgwjIqBdEuozMf6mPhXa6j9bG9yu2rM0qXglzPfWLZmA2orqS/zdo5B6
	UDPxZmBjm4e5GrH5OQjBzS0ZwCrNmeKST9HU3mF0hm5LJnRhXP/vRI47XzujTkDRw1fKm38ByrZlt
	4eZ01GjnMsyGSKpkqZ9Yl2Ox+Nl2YKTGpdgD2SilO4l4or1FxVpYihumdL8lrwJ4SiGI4aKR7x1HI
	DjOsWCZYwaBySb4LZIYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgYhh-0006ov-2Z; Wed, 03 Jun 2020 19:05:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgYha-0006oN-E3
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 19:05:27 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2BA820663;
 Wed,  3 Jun 2020 19:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591211124;
 bh=Q/m5m0oN16XVkE9B8qyre3sjNLjlsvtMr3faOM5/GEY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=r0JH+r6+eneNzPkKh10OQRnG/QlntwU5Ile5RdgUbb4S95xZcMJwqqczR44dEoW5/
 dXJbJhSARnLrJiGeqA21ANe/57CLpUdIlqiMBG6WT4nQbXPfCWGsOTxjBMHqOIWaG6
 YrNwC3X4+y9pXx6gFBNVV3K2D741HNKSuj4FGwes=
Date: Wed, 3 Jun 2020 12:05:22 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v4 08/14] powerpc: add support for folded p4d page tables
Message-Id: <20200603120522.7646d56a23088416a7d3fc1a@linux-foundation.org>
In-Reply-To: <20200414153455.21744-9-rppt@kernel.org>
References: <20200414153455.21744-1-rppt@kernel.org>
 <20200414153455.21744-9-rppt@kernel.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_120526_526140_D84A857E 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, linux-hexagon@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Jonas Bonn <jonas@southpole.se>, linux-arch@vger.kernel.org,
 Brian Cain <bcain@codeaurora.org>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Fenghua Yu <fenghua.yu@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 18:34:49 +0300 Mike Rapoport <rppt@kernel.org> wrote:

> Implement primitives necessary for the 4th level folding, add walks of p4d
> level where appropriate and replace 5level-fixup.h with pgtable-nop4d.h.

A bunch of new material just landed in linux-next/powerpc.

The timing is awkward!  I trust this will be going into mainline during
this merge window?  If not, please drop it and repull after -rc1.

arch/powerpc/mm/ptdump/ptdump.c:walk_pagetables() was a problem. 
Here's what I ended up with - please check.

static void walk_pagetables(struct pg_state *st)
{
	unsigned int i;
	unsigned long addr = st->start_address & PGDIR_MASK;
	pgd_t *pgd = pgd_offset_k(addr);

	/*
	 * Traverse the linux pagetable structure and dump pages that are in
	 * the hash pagetable.
	 */
	for (i = pgd_index(addr); i < PTRS_PER_PGD; i++, pgd++, addr += PGDIR_SIZE) {
		p4d_t *p4d = p4d_offset(pgd, 0);

		if (pgd_none(*pgd) || pgd_is_leaf(*pgd))
			note_page(st, addr, 1, p4d_val(*p4d), PGDIR_SIZE);
		else if (is_hugepd(__hugepd(p4d_val(*p4d))))
			walk_hugepd(st, (hugepd_t *)pgd, addr, PGDIR_SHIFT, 1);
		else
			/* pgd exists */
			walk_pud(st, p4d, addr);
	}
}

Mike's series "mm: consolidate definitions of page table accessors"
took quite a lot of damage as well.  Patches which needed rework as a
result of this were:

powerpc-add-support-for-folded-p4d-page-tables-fix.patch
mm-introduce-include-linux-pgtableh.patch
mm-reorder-includes-after-introduction-of-linux-pgtableh.patch
mm-pgtable-add-shortcuts-for-accessing-kernel-pmd-and-pte.patch
mm-pgtable-add-shortcuts-for-accessing-kernel-pmd-and-pte-fix-2.patch
mm-consolidate-pte_index-and-pte_offset_-definitions.patch
mm-consolidate-pmd_index-and-pmd_offset-definitions.patch
mm-consolidate-pud_index-and-pud_offset-definitions.patch
mm-consolidate-pgd_index-and-pgd_offset_k-definitions.patch


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
