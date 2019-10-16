Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F9ED91AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 14:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8wuAVNZhyAHgNAadBlTHLvE8aPvabHpCrVlDY5JbAw=; b=PrMCLKvzgOQikF
	IIDNZqkOnqViTKG56x+RMq6tOQl/FJLU5zBlau8q1L6Uj9oe2DDMsHHFpuzrPviay9Gq21nVtY/aU
	WwhxiXM9II+2Mo+2Qt4+F+D0URmNnHoFi95C8NUOqqWXUqe1tjnbdPaN/9ZX5eSuwjzvNLgHycFt+
	lzM1scP71JF8pkcF3fSSB5izT2+TYpNSo11uxIJs8LWYkVxTgkHmnoIa6VE5IEEBqkCPmqlBHo835
	A1dDvBU4L2IUTizR/IgdIgiUuhfYTDZyBUYHAUAKmruhOf4sOPW/YijeenvPU/cgafF1uzj4RiTMt
	W3J+kEB8XaZDjK7l2QHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKiqT-0002bb-0y; Wed, 16 Oct 2019 12:56:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKiqA-0002Zi-N2
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:55:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6EB3528;
 Wed, 16 Oct 2019 05:55:43 -0700 (PDT)
Received: from arrakis.emea.arm.com (unknown [10.1.196.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F6E33F68E;
 Wed, 16 Oct 2019 05:55:42 -0700 (PDT)
Date: Wed, 16 Oct 2019 13:55:39 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v4] arm64: use generic free_initrd_mem()
Message-ID: <20191016125539.GH49619@arrakis.emea.arm.com>
References: <1569657746-31672-1-git-send-email-rppt@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569657746-31672-1-git-send-email-rppt@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_055546_795418_9018BD0D 
X-CRM114-Status: GOOD (  12.96  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 28, 2019 at 11:02:26AM +0300, Mike Rapoport wrote:
> From: Mike Rapoport <rppt@linux.ibm.com>
> 
> arm64 calls memblock_free() for the initrd area in its implementation of
> free_initrd_mem(), but this call has no actual effect that late in the boot
> process. By the time initrd is freed, all the reserved memory is managed by
> the page allocator and the memblock.reserved is unused, so the only purpose
> of the memblock_free() call is to keep track of initrd memory for debugging
> and accounting.
> 
> Without the memblock_free() call the only difference between arm64 and the
> generic versions of free_initrd_mem() is the memory poisoning.
> 
> Move memblock_free() call to the generic code, enable it there
> for the architectures that define ARCH_KEEP_MEMBLOCK and use the generic
> implementation of free_initrd_mem() on arm64.
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>

Queued for 5.5. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
