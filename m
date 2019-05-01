Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9DC10687
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=THluHqdKavr3gLMkWnAi2mdAvHMMNDyrK7MYxp5eems=; b=ldtpaiymlYwF/o
	SAoco1Kf+NqtHT09aJXAj2hG06JxmLVI29zC5ZMVbBxt7+j6FZhKOHvWcwfExrBa2YRe5pzZeBCVd
	1LZYCqwNmekAZZET0WElq4zc5ljBkcW2sHQ37hlMS07ADi3k2klxVGrNcL4iFX+qvy0x5oZP55s1V
	WOsseGILjVSLeKQEq9EALjPYykhETS13Zyo/Xsa5rzpm8h1Y9IQWmXDlPw8q6cREET4dPCs9A7b1x
	n9RzorpDvqrjhsob9lLPp+0SoRQSey3/+i6GK/ON6PIIJAIuvnV4voWW+xa8sDlhMzXAPyg6vK7Ti
	VZlXpCvd1WisKm5XB3GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlqt-0005Yu-0q; Wed, 01 May 2019 09:48:35 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlqk-0005X7-VZ
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:48:28 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id BC752D90602CEF28528A;
 Wed,  1 May 2019 17:48:14 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Wed, 1 May 2019 17:48:06 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-kernel@vger.kernel.org>, <kvm@vger.kernel.org>
Subject: [RFC PATCH 0/5] KVM: arm64: Add support for contiguous PTE/PMD
 hugepages at stage2
Date: Wed, 1 May 2019 09:44:22 +0000
Message-ID: <1556703867-22396-1-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_024827_194576_82D8CDE8 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: julien.thierry@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, will.deacon@arm.com, christoffer.dall@arm.com,
 linux@armlinux.org.uk, james.morse@arm.com, Zenghui Yu <yuzenghui@huawei.com>,
 wanghaibin.wang@huawei.com, steve.capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, we support the following page sizes at stage2:

                PTE     PMD     PUD
               -----   -----   -----
 4K granule:     4K      2M      1G
16K granule:    16K     32M
64K granule:    64K    512M

And we have Contiguous bit[52] in stage2 VMSAv8-64 block and page
descriptors. As ARM ARM said, when the value of the Contiguous bit
is 1, it indicates that the entry is one of a number of adjacent
translation table entries that point to a contiguous output address
range.

This series add support for contiguous PTE/PMD hugepages at stage2
and then we can create huge mappings with following additional
sizes:

                CONT PTE     CONT PMD
                --------     --------
 4K granule:      64K          32M
16K granule:       2M           1G
64K granule:       2M          16G

These patches are based on v5.1.0-rc7 and have been tested on
Taishan 2280 server (D05) with 4K and 64K granule.

Any comments will be appreciated, thanks!

Zenghui Yu (5):
  KVM: arm/arm64: Introduce helpers for page table enties with
    contiguous bit
  KVM: arm/arm64: Re-factor building the stage2 page table entries
  KVM: arm/arm64: Support dirty page tracking for contiguous hugepages
  KVM: arm/arm64: Add support for creating PTE contiguous hugepages at
    stage2
  KVM: arm/arm64: Add support for creating PMD contiguous hugepages at
    stage2

 arch/arm/include/asm/kvm_mmu.h       |  22 +++
 arch/arm/include/asm/pgtable-hwdef.h |   8 +
 arch/arm64/include/asm/kvm_mmu.h     |  20 +++
 virt/kvm/arm/mmu.c                   | 299 ++++++++++++++++++++++++++++++-----
 4 files changed, 312 insertions(+), 37 deletions(-)

-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
