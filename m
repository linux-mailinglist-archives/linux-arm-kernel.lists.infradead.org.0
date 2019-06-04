Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D1334AAC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkaDtaaR7xlII5gena6gWfRA7wf74iNZ421PXHt9R5E=; b=oD3XhsxlSEBO0/
	bWmS5NYy9Yl0F2F9l+DHfLj44smpY4G7fP+dkki7JPrcHgESqzxmRb20vKS5z6rj5GzQC8vhd5b9u
	IhCENcyuMRix6q+88wDCslNDTesk3UbIacmo6ujwZoyVPTTINxdli/JF4A71UGw283BUsphL6YGyq
	97Opz44Br/yxsZLo0VwYssN1YINzQvvtmaSwV00DkyFXzzG+ApXjy8iDQpHYsyNT6B2n2yn7w23vz
	RbKhqmjuelOVcuCBh5HPLeYvLcndb9/NSVjH4cN03PQioNZVVgDdRYTa4Rr3v4KWhFIQBT5glTI96
	Qh5DlNSbAzVt85D+FByA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAgS-0004fJ-Me; Tue, 04 Jun 2019 14:45:04 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAgK-0004e4-6q
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:44:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 12917341;
 Tue,  4 Jun 2019 07:44:55 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 AF76F3F690; Tue,  4 Jun 2019 07:44:53 -0700 (PDT)
Date: Tue, 4 Jun 2019 15:44:51 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 1/4] arm64/mm: Drop mmap_sem before calling
 __do_kernel_fault()
Message-ID: <20190604144450.GK6610@arrakis.emea.arm.com>
References: <1559544085-7502-1-git-send-email-anshuman.khandual@arm.com>
 <1559544085-7502-2-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559544085-7502-2-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_074456_254300_01FFEDCD 
X-CRM114-Status: GOOD (  10.55  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 12:11:22PM +0530, Anshuman Khandual wrote:
> There is an inconsistency between down_read_trylock() success and failure
> paths while dealing with kernel access for non exception table areas where
> it calls __do_kernel_fault(). In case of failure it just bails out without
> holding mmap_sem but when it succeeds it does so while holding mmap_sem.
> Fix this inconsistency by just dropping mmap_sem in success path as well.
> 
> __do_kernel_fault() calls die_kernel_fault() which then calls show_pte().
> show_pte() in this path might become bit more unreliable without holding
> mmap_sem. But there are already instances [1] in do_page_fault() where
> die_kernel_fault() gets called without holding mmap_sem. show_pte() can
> be made more robust independently but in a later patch.
> 
> [1] Conditional block for (is_ttbr0_addr && is_el1_permission_fault)
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Andrey Konovalov <andreyknvl@google.com>

Queued for 5.3. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
