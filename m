Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 714E88CF44
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:23:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R47F8NFyo7zXz9004TodK5RQt2K23XMd2yo4PaJoKzw=; b=m2WUb24fAqyUtF
	SqQmAr4NxEtGKDVake47OdN2Lp+PJ/JSMIvAiNyiycaJK4KAu/iVJYkQSl4jf++B4f67ZWmdOYw9Y
	nhTGeOxtdil1fQh04ZnkZRNXnNXn2QR/sc8D30kurqCUYnl7u3CCfgc7/c74/tvreho0LwiZmMezs
	rDsrp8+icqs15RRakZbdc6u49xxVUdxhq9rFVVpX6B+FSxuG5OLAsJXBhdh2Pjahn8XTlfDKkxF8g
	z9c9c1c2m742Uaz+S92nDIuO3Sfs44ws5AduskbN2WQqrPkEuWx+A5MXKaRzPCCfzt4vFPDBDnnVb
	NxAsOjawrixYiMWb4pwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpVE-0000NJ-3o; Wed, 14 Aug 2019 09:23:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpUy-0000Mw-Ds
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:23:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB18E344;
 Wed, 14 Aug 2019 02:23:15 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A44FD3F694; Wed, 14 Aug 2019 02:23:14 -0700 (PDT)
Date: Wed, 14 Aug 2019 10:23:12 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/8] arm64: memory: Ensure address tag is masked in
 conversion macros
Message-ID: <20190814092312.GB50688@arrakis.emea.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-3-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813170149.26037-3-will@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_022316_513560_E8BC20C1 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 06:01:43PM +0100, Will Deacon wrote:
> When converting a linear virtual address to a physical address, pfn or
> struct page *, we must make sure that the tag bits are masked before the
> calculation otherwise we end up with corrupt pointers when running with
> CONFIG_KASAN_SW_TAGS=y:
> 
>   | Unable to handle kernel paging request at virtual address 0037fe0007580d08
>   | [0037fe0007580d08] address between user and kernel address ranges
> 
> Mask out the tag in __virt_to_phys_nodebug() and virt_to_page().
> 
> Reported-by: Qian Cai <cai@lca.pw>
> Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Fixes: 9cb1c5ddd2c4 ("arm64: mm: Remove bit-masking optimisations for PAGE_OFFSET and VMEMMAP_START")
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
