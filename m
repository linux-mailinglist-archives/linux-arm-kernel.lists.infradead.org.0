Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4010B1581F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 05:42:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZVZ0b7YEOP5V7QAOeSzbkwYrf1dkZD8BiJ0La6vmuiU=; b=NBVDDXDFmGr2y1
	larFvgYUlCJEdfbBilz+hvsTGBpuseHDfyz9yn1yFJZj0Y9fqWRr0SEVqLKpkAR7/XjDbT3Ej57NL
	kUzQYznqaF3oEOJy8Eqgj1dq2oNBP9XYTB0Tnd2Wwkn3BYa5P9Pa8mro5PYIiDZQiwW7B+NYtRpN/
	DncxDD3p24+ZCmCP+ge8mCKxLNvADIX9lXEeUc9v09x/j1xWOX9ja8EZsJSSJphfQOmYm6/NX7VTj
	BnWLEhoHuunOtXRsWW2rRyxblSI5Wt/Z6g3VfeaSyVmPOoOdpkDC74srVjmBCutk53GmEBylT5AIN
	M8PFh3svzsDl4nr1/E9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNqzw-0002B9-67; Tue, 07 May 2019 03:42:32 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNqzh-00024P-Ho; Tue, 07 May 2019 03:42:19 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 44A7083ABDF68C9C0024;
 Tue,  7 May 2019 11:42:05 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.439.0; Tue, 7 May 2019 11:41:55 +0800
From: Chen Zhou <chenzhou10@huawei.com>
To: <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <akpm@linux-foundation.org>, <ard.biesheuvel@linaro.org>,
 <rppt@linux.ibm.com>, <tglx@linutronix.de>, <mingo@redhat.com>,
 <bp@alien8.de>, <ebiederm@xmission.com>
Subject: [PATCH 0/4] support reserving crashkernel above 4G on arm64 kdump 
Date: Tue, 7 May 2019 11:50:54 +0800
Message-ID: <20190507035058.63992-1-chenzhou10@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_204217_815632_E44DC35E 
X-CRM114-Status: UNSURE (   8.65  )
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
Cc: wangkefeng.wang@huawei.com, linux-mm@kvack.org,
 Chen Zhou <chenzhou10@huawei.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, takahiro.akashi@linaro.org, horms@verge.net.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series enable reserving crashkernel on high memory in arm64.

We use crashkernel=X to reserve crashkernel below 4G, which will fail
when there is no enough memory. Currently, crashkernel=Y@X can be used
to reserve crashkernel above 4G, in this case, if swiotlb or DMA buffers
are requierd, capture kernel will boot failure because of no low memory.

When crashkernel is reserved above 4G in memory, kernel should reserve
some amount of low memory for swiotlb and some DMA buffers. So there may
be two crash kernel regions, one is below 4G, the other is above 4G. Then
Crash dump kernel reads more than one crash kernel regions via a dtb
property under node /chosen,
linux,usable-memory-range = <BASE1 SIZE1 [BASE2 SIZE2]>.

Besides, we need to modify kexec-tools:
  arm64: support more than one crash kernel regions(see [1])

I post this patch series about one month ago. The previous changes and
discussions can be retrived from:

Changes since [v4]
- reimplement memblock_cap_memory_ranges for multiple ranges by Mike.

Changes since [v3]
- Add memblock_cap_memory_ranges back for multiple ranges.
- Fix some compiling warnings.

Changes since [v2]
- Split patch "arm64: kdump: support reserving crashkernel above 4G" as
  two. Put "move reserve_crashkernel_low() into kexec_core.c" in a separate
  patch.

Changes since [v1]:
- Move common reserve_crashkernel_low() code into kernel/kexec_core.c.
- Remove memblock_cap_memory_ranges() i added in v1 and implement that
  in fdt_enforce_memory_region().
  There are at most two crash kernel regions, for two crash kernel regions
  case, we cap the memory range [min(regs[*].start), max(regs[*].end)]
  and then remove the memory range in the middle.

[1]: http://lists.infradead.org/pipermail/kexec/2019-April/022792.html
[v1]: https://lkml.org/lkml/2019/4/2/1174
[v2]: https://lkml.org/lkml/2019/4/9/86
[v3]: https://lkml.org/lkml/2019/4/9/306
[v4]: https://lkml.org/lkml/2019/4/15/273

Chen Zhou (3):
  x86: kdump: move reserve_crashkernel_low() into kexec_core.c
  arm64: kdump: support reserving crashkernel above 4G
  kdump: update Documentation about crashkernel on arm64

Mike Rapoport (1):
  memblock: extend memblock_cap_memory_range to multiple ranges

 Documentation/admin-guide/kernel-parameters.txt |  6 +--
 arch/arm64/include/asm/kexec.h                  |  3 ++
 arch/arm64/kernel/setup.c                       |  3 ++
 arch/arm64/mm/init.c                            | 72 +++++++++++++++++++------
 arch/x86/include/asm/kexec.h                    |  3 ++
 arch/x86/kernel/setup.c                         | 66 +++--------------------
 include/linux/kexec.h                           |  5 ++
 include/linux/memblock.h                        |  2 +-
 kernel/kexec_core.c                             | 56 +++++++++++++++++++
 mm/memblock.c                                   | 44 +++++++--------
 10 files changed, 157 insertions(+), 103 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
