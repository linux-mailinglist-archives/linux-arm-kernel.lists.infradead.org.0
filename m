Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A83AA375A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 15:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GbEt5Ioilzg5UZ4MiPRNBVLsro9gKSkSeDpdgY7muuI=; b=obNKA70TxIbm9y
	YNkYfbQJ5IlGSlL+GhYF7eDwoXbKpHZyPagps59WvwzlHGbhJuXt63hsJwBPibWlFk3SBoBhKD3YS
	mxHcjuIvPHe/on2kzu8b/CRg+Lxg5N+vraE+3WxD2cMBEQeEb6UP8HIsSbynmOz1OA3b/lXSfQAb5
	ZOQL8ar0c+o/utCBHDlWS7PWbhIe5GQXpsSxhRkoruOrlj9wkJ+BTIDfY07psrvc1gSeVemWkcgrm
	W4f2VI439d5o6Jsc2qiWfDZXpxCI/hdm205CVgzjRHBFfbq5xAaTdKv16NTkL6iDUhHHDThGWA0st
	YGVMirPTgtenpWffXk3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYsnX-0008Jl-5y; Thu, 06 Jun 2019 13:51:19 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYsnP-0008IT-47
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 13:51:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68F47374;
 Thu,  6 Jun 2019 06:51:10 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E2D753F5AF; Thu,  6 Jun 2019 06:51:08 -0700 (PDT)
Date: Thu, 6 Jun 2019 14:51:06 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V4] mm/ioremap: Check virtual address alignment while
 creating huge mappings
Message-ID: <20190606135106.GE56860@arrakis.emea.arm.com>
References: <a893db51-c89a-b061-d308-2a3a1f6cc0eb@arm.com>
 <1557887716-17918-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557887716-17918-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_065111_198539_6372E175 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Toshi Kani <toshi.kani@hpe.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, Chintan Pandya <cpandya@codeaurora.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 08:05:16AM +0530, Anshuman Khandual wrote:
> Virtual address alignment is essential in ensuring correct clearing for all
> intermediate level pgtable entries and freeing associated pgtable pages. An
> unaligned address can end up randomly freeing pgtable page that potentially
> still contains valid mappings. Hence also check it's alignment along with
> existing phys_addr check.
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Cc: Toshi Kani <toshi.kani@hpe.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Chintan Pandya <cpandya@codeaurora.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Catalin Marinas <catalin.marinas@arm.com>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

I guess Andrew can pick this up, otherwise I can queue it through arm64
(there are no arm64 dependencies on this).

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
