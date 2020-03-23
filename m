Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E808B18F585
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 14:17:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahrp3z92lkxp+OBDrTfDJCRe+aZo5UXatKoCwEJZFBk=; b=YYcnK9MUIZvOYK
	ODhMlTEk8yYQIxIG80525XcVvrm0ERjUj2c2zCqvQ2Fdt+nP5TNqi2sR/LvJPveEc/vjRhGoIbd+R
	dpSrS1ofRE/wOwjNL6SrQHE5Db+BIVMyJfbdQGvQzZEYfgJf8wpobIciTyUHSJ15qP1pCrKah8E6C
	ipcvsd1iaj09IBbeyy+rx8hFtsXm06kfiIvlf7iEVQ387J3JvtN0pN0cHLVxzwY/n7pUHun1kDNQQ
	weQ6Z/6nPE8gWG+aYUa/vN/xjfE6YaHWrQzgeTKPiLBI29UBjjHIkRBzZP2ABt0ciWGUnCrCOZZBR
	WIUKb41PMoPL5aXVHX+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMxR-0002F5-Tf; Mon, 23 Mar 2020 13:17:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMxJ-0002EM-PE
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 13:17:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D028A1FB;
 Mon, 23 Mar 2020 06:17:24 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C864F3F52E;
 Mon, 23 Mar 2020 06:17:23 -0700 (PDT)
Date: Mon, 23 Mar 2020 13:17:20 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Changbin Du <changbin.du@gmail.com>
Subject: Re: Two questions about cache coherency on arm platforms
Message-ID: <20200323131720.GE2597@C02TD0UTHF1T.local>
References: <20200323123524.w67fici6oxzdo665@mail.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323123524.w67fici6oxzdo665@mail.google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_061725_864148_8531FC40 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 08:35:26PM +0800, Changbin Du wrote:
> Hi, All,
> I am not very familiar with ARM processors. I have two questions about
> cache coherency. Could anyone help me?
> 
> 1. How is cache coherency maintenanced on ARMv8 big.LITTLE system?
> As far as I know, big cores and little cores are in seperate clusters on
> big.LITTLE system.

This is often true, but not always the case. For example, with DSU big
and little cores can be placed within the same cluster.

> And cache coherence betwwen clusters requires the
> memory regions are marked as 'Outer Shareable' and is very expensive.

This is not correct.

Linux requires that all cores it uses are within the same Inner
Shareable domain, regardless of whether they are in distinct clusters.
Linux does not support systems where cores are in distinct Inner
Shareable domains.

This is the intended use of the architecture. Per ARM DDI 0487E.a page
B2-144:

| This architecture assumes that all PEs that use the same operating
| system or hypervisor are in the same Inner Shareable shareability
| shareability

... where a PE is a "Processing Element", which you can think of as a
single core.

> I have checked the kernel code, and seems it only requires coherence in
> 'Inner Shareable' domain. So my question is how can linux guarantees
> cache coherence in 'CPU migration' or 'Global Task Scheduling' models
> wich both clusters are active at the same time? For example, a thread
> ran in Cluster A and modified 'Inner Shareable' memory, then it migrates
> to Cluster B.

As above, this works because all the relevant cores are within the same
Inner Shareable domain.

> 2. ARM64 cache maintenance code sync_icache_aliases() for non-aliasing icache.
> In linux kernel on arm64 platform, the flow function sync_icache_aliases()
> is used to sync i-cache and d-cache. I understand the aliasing case. but
> for non-aliasing case why it just does "dc cvau" (in __flush_icache_range())
> whithout really invalidate the icache?

The __flush_icache_range/__flush_cache_user_range assembly function does
both the D-cache maintenance with DC CVAU, then the I-cache maintenance
with IC IVAU, so I think you have misread it.

Thanks,
Mark.

> Will i-cache refill from L2 cache?
>
> void sync_icache_aliases(void *kaddr, unsigned long len)
> {
> 	unsigned long addr = (unsigned long)kaddr;
> 
> 	if (icache_is_aliasing()) {
> 		__clean_dcache_area_pou(kaddr, len);
> 		__flush_icache_all();
> 	} else {
> 		/*
> 		 * Don't issue kick_all_cpus_sync() after I-cache invalidation
> 		 * for user mappings.
> 		 */
> 		__flush_icache_range(addr, addr + len);
> 	}
> }
> 
> -- 
> Cheers,
> Changbin Du

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
