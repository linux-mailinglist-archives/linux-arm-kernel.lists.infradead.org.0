Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E03B5299C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 12:31:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABzInfbdmCdMSBK8UfN/uiojpHswjiMjP6P7U8HGI2s=; b=EwQf6HaGhF/7gU
	DnIjmCS4acZzJje8rR+/LzLOdNWEBNzYfH1ayBn5opgXbPk/oyp7UEcioH45RAqQjCwj2G3+6q3s3
	eZS479L1zNVgRm16DRMr8xCCq3TnNYH6063HWEB6XtT6jL0rExuZ4utvnJWlGBL9S6/sw4kpjzpdm
	A0JypkdAs03Yaxjt4xUF8LH5AEm5TJELfFz6mvS1vZRRUdZOztU79GFsS2zXostzAiQzbg7X+V+32
	xoQlOByXiQB9q6bU3UXU30A1jsykyuU4ZXMyRMc5vUvrCRXbXILxqfSKUqtmCLY7LI/tSOrogOItf
	NzwEGth8caBD2wpL7YsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfijr-0007Tn-AK; Tue, 25 Jun 2019 10:31:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiji-0007TD-3w
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 10:31:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 80371360;
 Tue, 25 Jun 2019 03:31:37 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 91F543F71E;
 Tue, 25 Jun 2019 03:31:34 -0700 (PDT)
Date: Tue, 25 Jun 2019 11:31:29 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V6 3/3] arm64/mm: Enable memory hot remove
Message-ID: <20190625103128.GA12207@lakrids.cambridge.arm.com>
References: <1560917860-26169-1-git-send-email-anshuman.khandual@arm.com>
 <1560917860-26169-4-git-send-email-anshuman.khandual@arm.com>
 <20190621143540.GA3376@capper-debian.cambridge.arm.com>
 <20190624165148.GA9847@lakrids.cambridge.arm.com>
 <48f39fa1-c369-c8e2-4572-b7e016dca2d6@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <48f39fa1-c369-c8e2-4572-b7e016dca2d6@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_033138_260959_A98DE597 
X-CRM114-Status: GOOD (  18.21  )
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
Cc: "mhocko@suse.com" <mhocko@suse.com>,
 "mgorman@techsingularity.net" <mgorman@techsingularity.net>,
 Steve Capper <Steve.Capper@arm.com>, Catalin Marinas <Catalin.Marinas@arm.com>,
 "david@redhat.com" <david@redhat.com>, Will Deacon <Will.Deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "logang@deltatee.com" <logang@deltatee.com>,
 "arunks@codeaurora.org" <arunks@codeaurora.org>, "cai@lca.pw" <cai@lca.pw>,
 Ard Biesheuvel <Ard.Biesheuvel@arm.com>,
 "cpandya@codeaurora.org" <cpandya@codeaurora.org>,
 James Morse <James.Morse@arm.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, nd <nd@arm.com>,
 "ira.weiny@intel.com" <ira.weiny@intel.com>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "osalvador@suse.de" <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 10:57:07AM +0530, Anshuman Khandual wrote:
> On 06/24/2019 10:22 PM, Mark Rutland wrote:
> > On Fri, Jun 21, 2019 at 03:35:53PM +0100, Steve Capper wrote:
> >> On Wed, Jun 19, 2019 at 09:47:40AM +0530, Anshuman Khandual wrote:
> >>> +static void free_hotplug_page_range(struct page *page, size_t size)
> >>> +{
> >>> +	WARN_ON(!page || PageReserved(page));
> >>> +	free_pages((unsigned long)page_address(page), get_order(size));
> >>> +}
> >>
> >> We are dealing with power of 2 number of pages, it makes a lot more
> >> sense (to me) to replace the size parameter with order.
> >>
> >> Also, all the callers are for known compile-time sizes, so we could just
> >> translate the size parameter as follows to remove any usage of get_order?
> >> PAGE_SIZE -> 0
> >> PMD_SIZE -> PMD_SHIFT - PAGE_SHIFT
> >> PUD_SIZE -> PUD_SHIFT - PAGE_SHIFT
> > 
> > Now that I look at this again, the above makes sense to me.
> > 
> > I'd requested the current form (which I now realise is broken), since
> > back in v2 the code looked like:
> > 
> > static void free_pagetable(struct page *page, int order)
> > {
> > 	...
> > 	free_pages((unsigned long)page_address(page), order);
> > 	...
> > }
> > 
> > ... with callsites looking like:
> > 
> > free_pagetable(pud_page(*pud), get_order(PUD_SIZE));
> > 
> > ... which I now see is off by PAGE_SHIFT, and we inherited that bug in
> > the current code, so the calculated order is vastly larger than it
> > should be. It's worrying that doesn't seem to be caught by anything in
> > testing. :/
> 
> get_order() returns the minimum page allocation order for a given size
> which already takes into account PAGE_SHIFT i.e get_order(PAGE_SIZE)
> returns 0.

Phew.

Let's leave this as is then -- it's clearer/simpler than using the SHIFT
constants, performance isn't a major concern in this path, and it's very
likely that GCC will inline and constant-fold this away regardless.

Sorry for the noise, and thanks for correcting me.

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
