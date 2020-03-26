Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DAB19368E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:10:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILwfXXgWwIgUNc5v6C/+IOABNi6juvELctaannTk+Tw=; b=X3L9MdUaMd0FRP
	Q1PKp8YEofZ3Yw4LIn0qoPasW7DGFOQtR6cgtN0RcgMQwuBnw0ZObB5q1n1COW+QrA8NGRokxf/uy
	HcAV741ekFArjKlKqAOoctlXiMKQovTGZ0xULYXf/1DmF3ir/Zq53SmVy7cpibt7fGhC8FWJO4Fx5
	5Hhh+1WbwCNzO0TMq0Dr0uRMo2LjbW9ko7lxHbmFa/hsW+wqaAGm3xI0RFHGRpH5OyRpGZbIpps+A
	Y2q0URynvqXvEnKupkSVmS8HftPVOI8ifYdhT7fnS6qjPfsUZpdup9HQ59IojOcWEOB79Qrpiosn0
	3Cons6NefsBoiazUteQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHIuC-0006wO-Ct; Thu, 26 Mar 2020 03:10:04 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHItx-0006uu-2u; Thu, 26 Mar 2020 03:09:51 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 112EDC7C64946249E08A;
 Thu, 26 Mar 2020 11:09:40 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.487.0; Thu, 26 Mar 2020
 11:09:39 +0800
Subject: Re: [PATCH v7 0/4] support reserving crashkernel above 4G on arm64
 kdump
To: <tglx@linutronix.de>, <mingo@redhat.com>, <catalin.marinas@arm.com>,
 <will@kernel.org>, <james.morse@arm.com>, <dyoung@redhat.com>,
 <bhsharma@redhat.com>, <john.p.donnelly@oracle.com>, <pkushwaha@marvell.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <a57d46bc-881e-3526-91ca-558bf64e2aa8@huawei.com>
Date: Thu, 26 Mar 2020 11:09:37 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20191223152349.180172-1-chenzhou10@huawei.com>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_200949_299967_164F431E 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: horms@verge.net.au, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Friendly ping...

On 2019/12/23 23:23, Chen Zhou wrote:
> This patch series enable reserving crashkernel above 4G in arm64.
> 
> There are following issues in arm64 kdump:
> 1. We use crashkernel=X to reserve crashkernel below 4G, which will fail
> when there is no enough low memory.
> 2. Currently, crashkernel=Y@X can be used to reserve crashkernel above 4G,
> in this case, if swiotlb or DMA buffers are required, crash dump kernel
> will boot failure because there is no low memory available for allocation.
> 
> To solve these issues, introduce crashkernel=X,low to reserve specified
> size low memory.
> Crashkernel=X tries to reserve memory for the crash dump kernel under
> 4G. If crashkernel=Y,low is specified simultaneously, reserve spcified
> size low memory for crash kdump kernel devices firstly and then reserve
> memory above 4G.
> 
> When crashkernel is reserved above 4G in memory, that is, crashkernel=X,low
> is specified simultaneously, kernel should reserve specified size low memory
> for crash dump kernel devices. So there may be two crash kernel regions, one
> is below 4G, the other is above 4G.
> In order to distinct from the high region and make no effect to the use of
> kexec-tools, rename the low region as "Crash kernel (low)", and add DT property
> "linux,low-memory-range" to crash dump kernel's dtb to pass the low region.
> 
> Besides, we need to modify kexec-tools:
> arm64: kdump: add another DT property to crash dump kernel's dtb(see [1])
> 
> The previous changes and discussions can be retrieved from:
> 
> Changes since [v6]
> - Fix build errors reported by kbuild test robot.
> 
> Changes since [v5]
> - Move reserve_crashkernel_low() into kernel/crash_core.c.
> - Delete crashkernel=X,high.
> - Modify crashkernel=X,low.
> If crashkernel=X,low is specified simultaneously, reserve spcified size low
> memory for crash kdump kernel devices firstly and then reserve memory above 4G.
> In addition, rename crashk_low_res as "Crash kernel (low)" for arm64, and then
> pass to crash dump kernel by DT property "linux,low-memory-range".
> - Update Documentation/admin-guide/kdump/kdump.rst.
> 
> Changes since [v4]
> - Reimplement memblock_cap_memory_ranges for multiple ranges by Mike.
> 
> Changes since [v3]
> - Add memblock_cap_memory_ranges back for multiple ranges.
> - Fix some compiling warnings.
> 
> Changes since [v2]
> - Split patch "arm64: kdump: support reserving crashkernel above 4G" as
> two. Put "move reserve_crashkernel_low() into kexec_core.c" in a separate
> patch.
> 
> Changes since [v1]:
> - Move common reserve_crashkernel_low() code into kernel/kexec_core.c.
> - Remove memblock_cap_memory_ranges() i added in v1 and implement that
> in fdt_enforce_memory_region().
> There are at most two crash kernel regions, for two crash kernel regions
> case, we cap the memory range [min(regs[*].start), max(regs[*].end)]
> and then remove the memory range in the middle.
> 
> [1]: http://lists.infradead.org/pipermail/kexec/2019-August/023569.html
> [v1]: https://lkml.org/lkml/2019/4/2/1174
> [v2]: https://lkml.org/lkml/2019/4/9/86
> [v3]: https://lkml.org/lkml/2019/4/9/306
> [v4]: https://lkml.org/lkml/2019/4/15/273
> [v5]: https://lkml.org/lkml/2019/5/6/1360
> [v6]: https://lkml.org/lkml/2019/8/30/142
> 
> Chen Zhou (4):
>   x86: kdump: move reserve_crashkernel_low() into crash_core.c
>   arm64: kdump: reserve crashkenel above 4G for crash dump kernel
>   arm64: kdump: add memory for devices by DT property, low-memory-range
>   kdump: update Documentation about crashkernel on arm64
> 
>  Documentation/admin-guide/kdump/kdump.rst       | 13 +++-
>  Documentation/admin-guide/kernel-parameters.txt | 12 +++-
>  arch/arm64/kernel/setup.c                       |  8 ++-
>  arch/arm64/mm/init.c                            | 61 ++++++++++++++++-
>  arch/x86/kernel/setup.c                         | 62 ++----------------
>  include/linux/crash_core.h                      |  3 +
>  include/linux/kexec.h                           |  2 -
>  kernel/crash_core.c                             | 87 +++++++++++++++++++++++++
>  kernel/kexec_core.c                             | 17 -----
>  9 files changed, 183 insertions(+), 82 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
