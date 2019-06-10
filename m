Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E873AEAB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 07:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/ItGoIdEGVonVQBrk6MIZn9NE/AKRI3p0W+h75rH9k=; b=st2IP2ZZIRLFiz
	kwrdUg0dDQ1YEas3Lbc+E4C0Jxm+0HnDj80+oAsVyJa/R/aFx9qj5RlIhWGOa59vuP5Gt3l/SiVNo
	XWnVZ9TQZIRgrhFu15RzWZ8Q5gDqqmqhntHZF1qFZPnJSgp3rxMyu1E9DMaCIHx9dvffZjVyU4psr
	eJ/pcH37h8VnjWkRMlK1qozRIgZ5ePn7DuK/5vKQMqLle9YCzyHr3jQZ1axhzowgMUifoabTBbIZz
	Pd7y5mBgswPv8fYSdvhYdBIxpjhd1oae54JrQ70PJYTy9tduQuh2HlgqSyLDU28hBF/g0NvAEzwp4
	Uq6UKD9UP7VaSPE7PzDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haD4T-0006p2-SE; Mon, 10 Jun 2019 05:42:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haD4G-0006oj-Ia
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 05:42:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B3F48344;
 Sun,  9 Jun 2019 22:42:00 -0700 (PDT)
Received: from [10.162.42.131] (p8cg001049571a15.blr.arm.com [10.162.42.131])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 2D6913F557; Sun,  9 Jun 2019 22:41:58 -0700 (PDT)
Subject: Re: [PATCH 1/4] mm: Move ioremap page table mapping function to mm/
To: Nicholas Piggin <npiggin@gmail.com>, linux-mm@kvack.org
References: <20190610043838.27916-1-npiggin@gmail.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <03de53e9-f1f9-1632-567e-b88aabc56764@arm.com>
Date: Mon, 10 Jun 2019 11:12:16 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190610043838.27916-1-npiggin@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_224204_660707_834CB832 
X-CRM114-Status: GOOD (  12.95  )
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/10/2019 10:08 AM, Nicholas Piggin wrote:
> ioremap_page_range is a generic function to create a kernel virtual
> mapping, move it to mm/vmalloc.c and rename it vmap_range.

Absolutely. It belongs in mm/vmalloc.c as its a kernel virtual range.
But what is the rationale of changing the name to vmap_range ?
 
> 
> For clarity with this move, also:
> - Rename vunmap_page_range (vmap_range's inverse) to vunmap_range.

Will be inverse for both vmap_range() and vmap_page[s]_range() ?

> - Rename vmap_page_range (which takes a page array) to vmap_pages.

s/vmap_pages/vmap_pages_range instead here ................^^^^^^

This deviates from the subject of this patch that it is related to
ioremap only. I believe what this patch intends is to create

- vunmap_range() takes [VA range]

	This will be the common kernel virtual range tear down
	function for ranges created either with vmap_range() or
	vmap_pages_range(). Is that correct ?

- vmap_range() takes [VA range, PA range, prot]
- vmap_pages_range() takes [VA range, struct pages, prot] 

Can we re-order the arguments (pages <--> prot) for vmap_pages_range()
just to make it sync with vmap_range() ?

static int vmap_pages_range(unsigned long start, unsigned long end,
 			   pgprot_t prot, struct page **pages)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
