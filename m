Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBB64E853
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 14:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cg7R4zb1qTMeVq2QY/ZwpVLrqU6NwaXWSkuhHrJVgE4=; b=Ag2WzPqu6YoXy6
	VTuYfRzb9VfZBxz0ZgYe+L0RXhQfvxm+C5f26iJcW0g/DVeGOp+A4yQ9oU+ff6hDCv+ojx8Ha6fa9
	HYGOYXYvJo2ZBc7eHnObwmMEk4R+ZKI5iA3VOUKanFA5j0lRDb7VeBGQArt0ayuanXt2kfoVkTF6r
	T2R8on4EM51maPjzIvgsYMgC1+EUm729v1w9LwVfgjSwG0Z7pwYOqHLME3YShU/S4E9NVkBtHddC/
	exboCHrZYwWXIMmGLKOMNJMfLgJRdNEkDQUbsTQQmzRxcSC62YYZ5DlXJtgW9GZ9Ymxvuk/Hf7BMx
	fktY8rCVW54qfLSoOM0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heJ2e-00039f-Fu; Fri, 21 Jun 2019 12:53:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heJ2R-00038a-Sg
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 12:53:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0978E142F;
 Fri, 21 Jun 2019 05:53:05 -0700 (PDT)
Received: from [10.162.42.140] (p8cg001049571a15.blr.arm.com [10.162.42.140])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 158133F718; Fri, 21 Jun 2019 05:52:59 -0700 (PDT)
Subject: Re: [PATCH V6 3/3] arm64/mm: Enable memory hot remove
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, akpm@linux-foundation.org,
 catalin.marinas@arm.com, will.deacon@arm.com
References: <1560917860-26169-1-git-send-email-anshuman.khandual@arm.com>
 <1560917860-26169-4-git-send-email-anshuman.khandual@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <bc46b390-01b8-e818-588d-f973dc2c5140@arm.com>
Date: Fri, 21 Jun 2019 18:23:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1560917860-26169-4-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_055307_970395_8C45AF0F 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 ira.weiny@intel.com, steve.capper@arm.com, mgorman@techsingularity.net,
 cai@lca.pw, ard.biesheuvel@arm.com, cpandya@codeaurora.org,
 james.morse@arm.com, dan.j.williams@intel.com, logang@deltatee.com,
 arunks@codeaurora.org, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 06/19/2019 09:47 AM, Anshuman Khandual wrote:
> +#ifdef CONFIG_MEMORY_HOTPLUG
> +	/*
> +	 * FIXME: We should have called remove_pagetable(start, end, true).
> +	 * vmemmap and vmalloc virtual range might share intermediate kernel
> +	 * page table entries. Removing vmemmap range page table pages here
> +	 * can potentially conflict with a cuncurrent vmalloc() allocation.
> +	 *
> +	 * This is primarily because valloc() does not take init_mm ptl for
> +	 * the entire page table walk and it's modification. Instead it just
> +	 * takes the lock while allocating and installing page table pages
> +	 * via [p4d|pud|pmd|pte]_aloc(). A cuncurrently vanishing page table
> +	 * entry via memory hotremove can cause vmalloc() kernel page table
> +	 * walk pointers to be invalid on the fly which can cause corruption
> +	 * or worst, a crash.

There are couple of typos above which I will fix along with other reviews.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
