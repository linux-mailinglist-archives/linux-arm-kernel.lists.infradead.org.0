Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F53DB5111
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 17:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJdy292/v1FW3lVn8PUdJnk46KOXd8awYVTb0hsQKX8=; b=fn+DUC9gJcPtzF
	tvR5mZ08ZdLlOLspnHzAq8l5CO7OcDg0lFBgXwL1Yt2HpaUVPMxeAjxlAv1a0XHO7slMEvOVoz3Bb
	6o2Vw0JrVASqz6mVjZPVIfGHeOHtsGtqSfg+8aUxHgkfFnmcJLvucoMIeJtMz95Ihwbjgdl44ErTt
	iy9cHns2F34EpYw5jwPRaeEYtFUKWroquP7zujwJ4pvEOEMFfzEKgXm/d9H6F7oy1k6ImKss3WnTC
	oaa/wrrUKrx2hFaNolx6y3itmQ68QN1Wku9RUBrePB/mZGEJwcq5df4sOjI2cARsu0l5WlT9Zjrk0
	eXDo9ca0JSTVMnQsmGxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAF6X-0007by-Ry; Tue, 17 Sep 2019 15:09:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAF6G-0007ac-6B
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 15:09:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F63915A2;
 Tue, 17 Sep 2019 08:08:58 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 58DA63F575; Tue, 17 Sep 2019 08:08:55 -0700 (PDT)
Date: Tue, 17 Sep 2019 16:08:53 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V7 3/3] arm64/mm: Enable memory hot remove
Message-ID: <20190917150852.GC7305@arrakis.emea.arm.com>
References: <1567503958-25831-1-git-send-email-anshuman.khandual@arm.com>
 <1567503958-25831-4-git-send-email-anshuman.khandual@arm.com>
 <20190912201517.GB1068@C02TF0J2HF1T.local>
 <ce127798-3863-0f28-de04-84b177418310@arm.com>
 <20190913100955.GB55043@arrakis.emea.arm.com>
 <a1962cde-b4df-e4a0-de61-252c0d0a25b2@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a1962cde-b4df-e4a0-de61-252c0d0a25b2@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_080904_320917_0926BB56 
X-CRM114-Status: GOOD (  25.72  )
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com, linux-mm@kvack.org,
 arunks@codeaurora.org, cpandya@codeaurora.org, ira.weiny@intel.com,
 will@kernel.org, steven.price@arm.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, Robin.Murphy@arm.com, broonie@kernel.org, cai@lca.pw,
 ard.biesheuvel@arm.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, steve.capper@arm.com,
 logang@deltatee.com, linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 10:06:11AM +0530, Anshuman Khandual wrote:
> On 09/13/2019 03:39 PM, Catalin Marinas wrote:
> > On Fri, Sep 13, 2019 at 11:28:01AM +0530, Anshuman Khandual wrote:
> >> The problem (race) is not because of the inability to deal with partially
> >> filled table. We can handle that correctly as explained below [1]. The
> >> problem is with inadequate kernel page table locking during vmalloc()
> >> which might be accessing intermediate kernel page table pointers which is
> >> being freed with free_empty_tables() concurrently. Hence we cannot free
> >> any page table page which can ever have entries from vmalloc() range.
> > 
> > The way you deal with the partially filled table in this patch is to
> > avoid freeing if there is a non-empty entry (!p*d_none()). This is what
> > causes the race with vmalloc. If you simply avoid freeing a pmd page,
> > for example, if the range floor/ceiling is not aligned to PUD_SIZE,
> > irrespective of whether the other entries are empty or not, you
> > shouldn't have this problem. You do free the pte page if the range is
[...]
> > We may have some pgtable pages not freed at both ends of the range
> > (maximum 6 in total) but I don't really see this an issue. They could be
> > reused if something else gets mapped in that range.
> 
> I assume that the number 6 for maximum page possibility came from
> 
> (floor edge + ceiling edge) * (PTE table + PMD table + PUD table)

Yes.

> >> Though not completely sure, whether I really understood the suggestion above
> >> with respect to the floor-ceiling mechanism as in free_pgd_range(). Are you
> >> suggesting that we should only attempt to free up those vmemmap range page
> >> table pages which *definitely* could never overlap with vmalloc by working
> >> on a modified (i.e cut down with floor-ceiling while avoiding vmalloc range
> >> at each level) vmemmap range instead ?
> > 
> > You can ignore the overlap check altogether, only free the page tables
> > with floor/ceiling set to the start/size passed to arch_remove_memory()
> > and vmemmap_free().
> 
> Wondering if it will be better to use [VMEMMAP_START - VMEMMAP_END] and
> [PAGE_OFFSET - PAGE_END] as floor/ceiling respectively with vmemmap_free()
> and arch_remove_memory(). Not only it is safe to free all page table pages
> which span over these maximum possible mapping range but also it reduces
> the risk for alignment related wastage.

That's indeed better. You pass the floor/ceiling as the enclosing range
and start/end as the actual range to unmap is. We avoid the potential
"leak" around the edges when falling within the floor/ceiling range (I
think that's close to what free_pgd_range() does).

> >> This can be one restrictive version of the function
> >> free_empty_tables() called in case there is an overlap. So we will
> >> maintain two versions for free_empty_tables(). Please correct me if
> >> any the above assumptions or understanding is wrong.
> > 
> > I'd rather have a single version of free_empty_tables(). As I said
> > above, the only downside is that a partially filled pgtable page would
> > not be freed even though the other entries are empty.
> 
> Sure. Also practically the limitation will be applicable only for vmemmap
> mapping but not for linear mappings where the chances of overlap might be
> negligible as it covers half kernel virtual address space.

If you have a common set of functions, it doesn't heart to pass the
correct floor/ceiling in both cases.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
