Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 974462045C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93An4YEg8T1B0y55GIBL/OIx3ErlWd5l/XMTfSQRqYE=; b=X0pmDklSRNnuv0
	eo39M9Ozldw4TOSN9GEwHCIUQqvml9P9ELYAlN9lZxFog+jQrxHBY0am/fsi4Z+/LdYdkRpadW8xi
	lcna/mLG870edI3g0muGm4CW+IVdorITvB4YUVY62jsjJQtGPRtM4V7J8jWbMDTCSkoMC4y44Zp7K
	XZUFnbAVfDiSQswX9nKsrC3azAWmMp/50rf7Hm2dhqHRPKBLgiWDBtOpPm/7Hsixd3Qc9z3tLmWGa
	NIQlWNDWVrliaPpPB3MgIrTRBSKWdKNbt75kKjGgF5eWoSvwG/pK7ouBvhkiPt6oYWz+Eg7S55/5d
	xWr6fQr3VJtsz+IZaC7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREN3-0008Se-3y; Thu, 16 May 2019 11:16:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREMr-0008LL-83
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 11:16:11 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AD50EAEF7;
 Thu, 16 May 2019 11:16:07 +0000 (UTC)
Date: Thu, 16 May 2019 13:16:07 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 2/4] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
Message-ID: <20190516111607.GR16651@dhcp22.suse.cz>
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
 <1557824407-19092-3-git-send-email-anshuman.khandual@arm.com>
 <20190515165847.GH16651@dhcp22.suse.cz>
 <20190516102354.GB40960@lakrids.cambridge.arm.com>
 <a141ffa1-aa81-39df-11ba-9e18046356ff@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a141ffa1-aa81-39df-11ba-9e18046356ff@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_041609_856106_0F3FFDC7 
X-CRM114-Status: GOOD (  26.34  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, ira.weiny@intel.com, david@redhat.com,
 catalin.marinas@arm.com, cai@lca.pw, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, logang@deltatee.com, james.morse@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, akpm@linux-foundation.org,
 osalvador@suse.de, mgorman@techsingularity.net, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 16-05-19 16:36:12, Anshuman Khandual wrote:
> On 05/16/2019 03:53 PM, Mark Rutland wrote:
> > Hi Michal,
> > 
> > On Wed, May 15, 2019 at 06:58:47PM +0200, Michal Hocko wrote:
> >> On Tue 14-05-19 14:30:05, Anshuman Khandual wrote:
> >>> The arm64 pagetable dump code can race with concurrent modification of the
> >>> kernel page tables. When a leaf entries are modified concurrently, the dump
> >>> code may log stale or inconsistent information for a VA range, but this is
> >>> otherwise not harmful.
> >>>
> >>> When intermediate levels of table are freed, the dump code will continue to
> >>> use memory which has been freed and potentially reallocated for another
> >>> purpose. In such cases, the dump code may dereference bogus addressses,
> >>> leading to a number of potential problems.
> >>>
> >>> Intermediate levels of table may by freed during memory hot-remove, or when
> >>> installing a huge mapping in the vmalloc region. To avoid racing with these
> >>> cases, take the memory hotplug lock when walking the kernel page table.
> >>
> >> Why is this a problem only on arm64 
> > 
> > It looks like it's not -- I think we're just the first to realise this.
> > 
> > AFAICT x86's debugfs ptdump has the same issue if run conccurently with
> > memory hot remove. If 32-bit arm supported hot-remove, its ptdump code
> > would have the same issue.
> > 
> >> and why do we even care for debugfs? Does anybody rely on this thing
> >> to be reliable? Do we even need it? Who is using the file?
> > 
> > The debugfs part is used intermittently by a few people working on the
> > arm64 kernel page tables. We use that both to sanity-check that kernel
> > page tables are created/updated correctly after changes to the arm64 mmu
> > code, and also to debug issues if/when we encounter issues that appear
> > to be the result of kernel page table corruption.
> > 
> > So while it's rare to need it, it's really useful to have when we do
> > need it, and I'd rather not remove it. I'd also rather that it didn't
> > have latent issues where we can accidentally crash the kernel when using
> > it, which is what this patch is addressing.
> > 
> >> I am asking because I would really love to make mem hotplug locking less
> >> scattered outside of the core MM than more. Most users simply shouldn't
> >> care. Pfn walkers should rely on pfn_to_online_page.
> > 
> > I'm not sure if that would help us here; IIUC pfn_to_online_page() alone
> > doesn't ensure that the page remains online. Is there a way to achieve
> > that other than get_online_mems()?
> 
> Still wondering how pfn_to_online_page() is applicable here. It validates
> a given PFN and whether its online from sparse section mapping perspective
> before giving it's struct page. IIUC it is used during a linear scanning
> of a physical address range not for a page table walk. So how it can solve
> the problem when a struct page which was used as an intermediate level page
> table page gets released back to the buddy from another concurrent thread ?

Well, my comment about pfn_to_online_page was more generic and it might
not apply to this specific case. I meant to say that the code outside of
the core MM shouldn't really care about the hotplug locking.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
