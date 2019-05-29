Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 959992D9ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=flPda1M5HOW9BIRfcUf8Jy7G5Vrz5xyqqLG0ffx6QCs=; b=nieZ3+N4T43daD
	FnvGrI0dFtr6r/ptwWMhkH7OFu8OH51IHXZ0jPUe3uJ8CU7gr+mTbbAb8fSJiMzlBmhxQfNxC7+Yc
	DtTDXZKWQdQC8qOnReauokb1J9EUp2vCUQtpI2R87+tTdJqEraNFpCgPXkK7V8ltISzi7UqlfzJn1
	HpzFXruNWjJrBRrP7DafiCS9fSTpKX/3TF9BvuCn6wSfTlg9aXTl/cN4l3l/8GdKLjuHSeS2pk2zh
	Av9ozLaOHmrnrlsQ+/lZON3iiXydF3FUlf6iM4YueoN9aLW94bPer0+NERMMGCXyaq/JbU1NVOFQQ
	balMjbBtdjbL1XahebcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvR0-0004hb-MJ; Wed, 29 May 2019 10:03:50 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvQt-0004gw-Lo
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:03:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9374A341;
 Wed, 29 May 2019 03:03:42 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6034F3F5AF;
 Wed, 29 May 2019 03:03:41 -0700 (PDT)
Date: Wed, 29 May 2019 11:03:38 +0100
From: Will Deacon <will.deacon@arm.com>
To: Robin Murphy <robin.murphy@arm.com>, akpm@linux-foundation.org
Subject: Re: [PATCH v3.1 4/4] arm64: mm: Implement pte_devmap support
Message-ID: <20190529100338.GB4485@fuggles.cambridge.arm.com>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <817d92886fc3b33bcbf6e105ee83a74babb3a5aa.1558547956.git.robin.murphy@arm.com>
 <13026c4e64abc17133bbfa07d7731ec6691c0bcd.1559050949.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13026c4e64abc17133bbfa07d7731ec6691c0bcd.1559050949.git.robin.murphy@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_030343_721942_35AEFCBD 
X-CRM114-Status: GOOD (  15.27  )
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 02:46:59PM +0100, Robin Murphy wrote:
> In order for things like get_user_pages() to work on ZONE_DEVICE memory,
> we need a software PTE bit to identify device-backed PFNs. Hook this up
> along with the relevant helpers to join in with ARCH_HAS_PTE_DEVMAP.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> Fix to build correctly under all combinations of
> CONFIG_PGTABLE_LEVELS and CONFIG_TRANSPARENT_HUGEPAGE.
> 
>  arch/arm64/Kconfig                    |  1 +
>  arch/arm64/include/asm/pgtable-prot.h |  1 +
>  arch/arm64/include/asm/pgtable.h      | 21 +++++++++++++++++++++
>  3 files changed, 23 insertions(+)

Acked-by: Will Deacon <will.deacon@arm.com>

Andrew -- please can you update the previous version of this patch, which
I think you picked up?

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
