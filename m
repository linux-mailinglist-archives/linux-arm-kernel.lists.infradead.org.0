Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA2F71176
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 07:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HDwC/yO37YXuKFzuYX7akaMxeTsS/jKavZcf0An0aaQ=; b=D9PUQwXPjOUZGW
	VTXWpo9BQyeJmQa7nPtslTGoAghgvFg8VPV8c9NSCdk5FSe3lv5pmOSLGFmJO29Ka7kphjKxPXBcx
	X/lUT4Yutq5E7+uRfkn1nXED7b4tz09p9lbUQYgdnrrePnTMgTLEzlw2q2mcYkBhihR5DIgGxJgp2
	R6SHNgOxhen7AcLWYRkLgCs/nSjPlNJ49hP6luHN6NKww4DDHSG/bR5t4qLRPdVZWoLrMsSzYD4R0
	NB8GkXR1rmEvKVfVG1ATB9Wq8IXHPMmp0BAEY25LHBy5HIml1Z37MAlFBPQJH7jQiWv+z4MarEkZd
	rgC7N+AyquhbPzSgmqJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpnku-0003tE-Hm; Tue, 23 Jul 2019 05:54:32 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpnkJ-0003ef-Bu
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 05:53:57 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D4A5E6E6D5A9386D9C48;
 Tue, 23 Jul 2019 13:53:49 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Tue, 23 Jul 2019 13:53:42 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Andrew Morton
 <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, "Jia
 He" <hejianet@gmail.com>, Mike Rapoport <rppt@linux.ibm.com>, Will Deacon
 <will@kernel.org>
Subject: [PATCH v12 0/2] introduce memblock_next_valid_pfn() (again) for arm64
Date: Tue, 23 Jul 2019 13:51:11 +0800
Message-ID: <1563861073-47071-1-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_225355_578203_ECEC3303 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Here is new version of "[PATCH v11 0/3] remain and optimize
memblock_next_valid_pfn on arm and arm64" from Jia He, which is suggested
by Ard to respin this patch set [1].

In the new version, I squashed patch 1/3 and patch 2/3 in v11 into
one patch, fixed a bug for possible out of bound accessing the
regions, and just introduce memblock_next_valid_pfn() for arm64 only
as I don't have a arm32 platform to test.

Ard asked to "with the new data points added for documentation, and
crystal clear about how the meaning of PFN validity differs between
ARM and other architectures, and why the assumptions that the
optimization is based on are guaranteed to hold", to be honest, I
didn't see PFN validity differs between ARM and x86 architecture,
but there is a bug in commit b92df1de5d28 ("mm: page_alloc: skip over
regions of invalid pfns where possible") which has a possible out of
bound accessing the regions as well, so not sure that is the root cause.

Testing on a HiSilicon ARM64 server (a 4 sockets system), I can get
pretty much speedup for bootmem_init() at boot:
    
with 384G memory,
before: 13310ms
after:  1415ms
   
with 1T memory,
before: 20s
after:  2s

[1]: https://lkml.org/lkml/2019/6/10/412

Jia He (2):
  mm: page_alloc: introduce memblock_next_valid_pfn() (again) for arm64
  mm: page_alloc: reduce unnecessary binary search in
    memblock_next_valid_pfn

 arch/arm64/Kconfig     |  1 +
 include/linux/mmzone.h |  9 +++++++
 mm/Kconfig             |  3 +++
 mm/memblock.c          | 56 ++++++++++++++++++++++++++++++++++++++++++
 mm/page_alloc.c        |  4 ++-
 5 files changed, 72 insertions(+), 1 deletion(-)

-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
