Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA25B333AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/kdR2F5Lx7+4+qjIStEyCJm6Nb3Q1JABkYHOiFlheA=; b=OZGCcMcbiQHBKi
	bQUKkyE/12cu2eHFJ9+h/6+JQCwfMD9FrtOodalsKFDSGtPkxlt1gBtyalt0FuPDvfR3pNyDPknnI
	piCR+YBYEwG3xvNPD7sqkWropf0i5r12Q82mge6PKorzbNWGQx/Crj/otQf6AGE/C23Cx1KkwAxTU
	v6MkoBpeLSZk/v2sOfu2fUV9AjfZ7QaKl/BHE79BM+pOSpS1MVnMtsm6wpq2uXe6HvJiTc3C4fV/J
	Teq2hc5DdDvcgsFRbz/sscNsIH2UuPPM5ZC8qAcq0vNJ11yyuIB5V2122PuoXvxbrGP7ES17XbrQ/
	njBA+HOgwAwPF4Yvyokg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXp14-0001Su-VJ; Mon, 03 Jun 2019 15:36:55 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXp0u-0001SV-Te
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:36:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55C4380D;
 Mon,  3 Jun 2019 08:36:42 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 F37BE3F246; Mon,  3 Jun 2019 08:36:40 -0700 (PDT)
Date: Mon, 3 Jun 2019 16:36:38 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 2/2] arm64/mm: Change offset base address in
 [pud|pmd]_free_[pmd|pte]_page()
Message-ID: <20190603153638.GA63283@arrakis.emea.arm.com>
References: <1557377177-20695-1-git-send-email-anshuman.khandual@arm.com>
 <1557377177-20695-3-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557377177-20695-3-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_083645_234906_57092E64 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, James Morse <james.morse@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,


On Thu, May 09, 2019 at 10:16:17AM +0530, Anshuman Khandual wrote:
> Pgtable page address can be fetched with [pmd|pte]_offset_[kernel] if input
> address is PMD_SIZE or PTE_SIZE aligned. Input address is now guaranteed to
> be aligned, hence fetched pgtable page address is always correct. But using
> 0UL as offset base address has been a standard practice across platforms.
> It also makes more sense as it isolates pgtable page address computation
> from input virtual address alignment. This does not change functionality.
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Robin Murphy <robin.murphy@arm.com>

What's the plan with this small series? I didn't find a v5 (unless I
deleted it by mistake). I can queue this patch through the arm64 tree or
they can both go in via the mm tree.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
