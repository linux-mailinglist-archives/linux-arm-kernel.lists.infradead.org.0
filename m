Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 652E3BB2B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 13:18:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzFTtVWCffAf/lFqUHh6iKycNH4zbYCQaqUZU+lw7xo=; b=bsHBVFtAibVzAZ
	GSTAe+IpGE6WsFUiJ/r/rmYZQA3UFKRJn3TXksiJCATMlqwaCZieeynRvT3p4Oka1/scEgLFbev/3
	h7f8gvO8oh4te7CnVSomRcvichyVH5AAgSuJvrQp+aLAnV3m5nMyhl/siCoslq6N7amVfMVVWEl3t
	port4dagDW5nUhlfMcfwyDhVInEaZESHwZdKsEPQNH//6K6t7Nuh+r12C19+BW+G+o0kxJyKeVmd4
	IJu0JM8ur08sn74TrMSyXHgfOzou3GflLcEBmL+RHP1Mg+UIP+QwssHvhk7MifpBw/77gNZVG+hqR
	/Wzfd2dOS52ybhpV3qKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCMLo-000270-CO; Mon, 23 Sep 2019 11:17:52 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.2 #3 (Red
 Hat Linux)) id 1iCMLh-00026n-K4; Mon, 23 Sep 2019 11:17:45 +0000
Date: Mon, 23 Sep 2019 04:17:45 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V8 2/2] arm64/mm: Enable memory hot remove
Message-ID: <20190923111745.GG15392@bombadil.infradead.org>
References: <1569217425-23777-1-git-send-email-anshuman.khandual@arm.com>
 <1569217425-23777-3-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569217425-23777-3-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com,
 catalin.marinas@arm.com, linux-mm@kvack.org, arunks@codeaurora.org,
 cpandya@codeaurora.org, will@kernel.org, ira.weiny@intel.com,
 steven.price@arm.com, valentin.schneider@arm.com, suzuki.poulose@arm.com,
 Robin.Murphy@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 osalvador@suse.de, steve.capper@arm.com, logang@deltatee.com,
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 11:13:45AM +0530, Anshuman Khandual wrote:
> +#ifdef CONFIG_MEMORY_HOTPLUG
> +static void free_hotplug_page_range(struct page *page, size_t size)
> +{
> +	WARN_ON(!page || PageReserved(page));

WARN_ON(!page) isn't terribly useful.  You're going to crash on the very
next line when you call page_address() anyway.  If this line were

	if (WARN_ON(!page || PageReserved(page)))
		return;

it would make sense, or if it were just

	WARN_ON(PageReserved(page))

it would also make sense.

> +	free_pages((unsigned long)page_address(page), get_order(size));
> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
