Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF3D1B57CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 11:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PehXpmux0PIv+DDV2otfZEfdMaej1AAwBxeyA5V921k=; b=Ijxg3z9HNpgLne
	fLG5Gp3qlDV21IT+A0wKz1ae/dnwAXUk1AyDpP8zAIqsVtfEEjYKaYBbfnTvwCJ7o5yh+IITgva//
	8PeHqtZEVdQOB2IUg6QJMJqyHionla51OfQqSGLnQTJbhrVrMMYKxR4V8CGLAecdNK9WsojmHOy7h
	96FA1L/wGidbsh7HYtCrajif0G1QhTOfX78hLK5SIRneH6wiEKh6EhnwV8pHRxu2wuz7fEeqqPBwX
	jeNx5jKhCBDhk8vgzDNYQlFEPaloFVKh8f8wdDX+AwbpNh36KtLp1LymMHJVeXRgZRfBjqAX1JJQT
	dtc4RT1Ncw0W2mOCDWzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRXrY-0004gI-7L; Thu, 23 Apr 2020 09:09:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRXrR-0004ey-6X
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 09:09:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5716D31B;
 Thu, 23 Apr 2020 02:09:28 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E58E43F73D;
 Thu, 23 Apr 2020 02:09:26 -0700 (PDT)
Date: Thu, 23 Apr 2020 10:09:20 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Hansen <dave.hansen@intel.com>
Subject: Re: [PATCH 2/4] mm: Add arch hooks for saving/restoring tags
Message-ID: <20200423090919.GA4963@gaia>
References: <20200422142530.32619-1-steven.price@arm.com>
 <20200422142530.32619-3-steven.price@arm.com>
 <edd132f8-c39b-9586-1714-19a335ccea5c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <edd132f8-c39b-9586-1714-19a335ccea5c@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_020933_284373_83D03C12 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Hugh Dickins <hughd@google.com>, Steven Price <steven.price@arm.com>,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 11:08:10AM -0700, Dave Hansen wrote:
> On 4/22/20 7:25 AM, Steven Price wrote:
> > Three new hooks are added to the swap code:
> >  * arch_prepare_to_swap() and
> >  * arch_swap_invalidate_page() / arch_swap_invalidate_area().
> > One new hook is added to shmem:
> >  * arch_swap_restore_tags()
> 
> How do the tags get restored outside of the shmem path?  I was expecting
> to see more arch_swap_restore_tags() sites.

The restoring is done via set_pte_at() -> mte_sync_tags() ->
mte_restore_tags() in the arch code (see patch 3).
arch_swap_restore_tags() just calls mte_restore_tags() directly.

shmem is slightly problematic as it moves the page from the swap cache
to the shmem one and I think arch_swap_invalidate_page() would have
already been called by the time we get to set_pte_at() (Steven can
correct me if I got this wrong).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
