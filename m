Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9A3146367
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 09:23:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kmpLRbXmvA87YFG/QqeTU3bFX6z7pi2FUz9j0XDnyQ=; b=r3JwzJdOu2qxUZ
	K8zXxFgaiiw2MXitZyANSC+Cg5vLk4j603yrxRrlYAZnOjcj6UrdIL+spiUdNt8rlldwUVols6/Zm
	ImugPc+M3O0WLm8iZf0kQ8LIg4q/RRo/d6R2UCfrX/rl3QKt5TViejgFCYBZL5Nc2MxqilzVsTPdj
	Ll6fqWN9OmXjpGs1FMnU96QKAf76NvKNvCqIlRlxbLSriYQTGqEmCR/K1Fum6s6QGT7wgcba3y1Sg
	4BAv/GBMEbnSzwZm00M6/bxLx3IOz4F1tR23g4esAJpRitD8UnFwbg4zHraqMesXsWeRBTBMnxuf1
	EydbOldIuBHSAwWg00QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuXlr-00013v-HP; Thu, 23 Jan 2020 08:23:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuXlj-00013C-NT
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 08:23:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4AADB1FB;
 Thu, 23 Jan 2020 00:23:12 -0800 (PST)
Received: from [10.162.16.32] (p8cg001049571a15.blr.arm.com [10.162.16.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA1773F6C4;
 Thu, 23 Jan 2020 00:26:43 -0800 (PST)
Subject: Re: [PATCH 0/2] mm/thp: rework the pmd protect changing flow
To: Xuefeng Wang <wxf.wang@hisilicon.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, arnd@arndb.de,
 akpm@linux-foundation.org
References: <20200123075514.15142-1-wxf.wang@hisilicon.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <50493410-c44c-7ef0-81f9-d4ce9a525c1f@arm.com>
Date: Thu, 23 Jan 2020 13:54:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200123075514.15142-1-wxf.wang@hisilicon.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_002315_807954_106E7A91 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, linux-mm@kvack.org, chenzhou10@huawei.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/23/2020 01:25 PM, Xuefeng Wang wrote:
> On KunPeng920 board. When changing permission of a large range region,
> pmdp_invalidate() takes about 65% in profile (with hugepages) in JIT tool.
> Kernel will flush tlb twice: first flush happens in pmdp_invalidate, second
> flush happens at the end of change_protect_range(). The first pmdp_invalidate
> is not necessary if the hardware support atomic pmdp changing. The atomic
> changing pimd to zero can prevent the hardware from update asynchronous.
> So reconstruct it and remove the first pmdp_invalidate. And the second tlb
> flush can make sure the new tlb entry valid.
> 
> This patch series add a pmdp_modify_prot transaction abstraction firstly.
> Then add pmdp_modify_prot_start() in arm64, which uses pmdp_huge_get_and_clear()
> to atomically fetch the pmd and zero the entry.

There is a comment section in change_huge_pmd() which details how clearing
the PMD entry there (in prot_numa case) can potentially race with another
concurrent madvise(MADV_DONTNEED, ..) call. Here is the comment block for
reference.

        /*
         * In case prot_numa, we are under down_read(mmap_sem). It's critical
         * to not clear pmd intermittently to avoid race with MADV_DONTNEED
         * which is also under down_read(mmap_sem):
         *
         *      CPU0:                           CPU1:
         *                              change_huge_pmd(prot_numa=1)
         *                               pmdp_huge_get_and_clear_notify()
         * madvise_dontneed()
         *  zap_pmd_range()
         *   pmd_trans_huge(*pmd) == 0 (without ptl)
         *   // skip the pmd
         *                               set_pmd_at();
         *                               // pmd is re-established
         *
         * The race makes MADV_DONTNEED miss the huge pmd and don't clear it
         * which may break userspace.
         *
         * pmdp_invalidate() is required to make sure we don't miss
         * dirty/young flags set by hardware.
         */

By defining the new override with pmdp_huge_get_and_clear(), are not we
now exposed to above race condition ?

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
