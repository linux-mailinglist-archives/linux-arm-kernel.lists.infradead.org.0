Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DD2A306F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVk6w1QkyDnH0x4A2mFJ4TgSyvnE1qJ4bq+2Hi/JGCc=; b=GHiY//JdEHlaL4
	gDSidht8Aov0eHap2rzpnpJnQnPR1Xrk94+Uuc29v3D6A1G0RROTSamFuCTPd7r456IUIuPQYyKoG
	zP5byBa9e/XJVAY+HyZmngK/7wPreqDdCzg9yaaI3VVm+0atZXlAgfFZFBEPzl9r+LoZaczh/0ly/
	ZUPuV+vDytR74MaPBb6w+QYpZZyLVoAtfiLS1FjyB9Qp6pHSl8oP5YVm8vgStEzJdg59hwFt7UAvb
	cr9mrowmpjX0I87o5FTx6HcdBA4bWA5YROpr14WA3huFYwGJIvnabrANsOIIMEg6GwxNI0IADzSiW
	rWo4GTEw94ifAPIdwXqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3b5G-0003wo-Mc; Fri, 30 Aug 2019 07:12:34 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3b1s-0001o8-7A; Fri, 30 Aug 2019 07:09:23 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id EBC49FEB3CFAD5B8A4FE;
 Fri, 30 Aug 2019 15:09:00 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Fri, 30 Aug 2019 15:08:52 +0800
From: Chen Zhou <chenzhou10@huawei.com>
To: <tglx@linutronix.de>, <mingo@redhat.com>, <catalin.marinas@arm.com>,
 <will@kernel.org>, <james.morse@arm.com>, <dyoung@redhat.com>,
 <bhsharma@redhat.com>
Subject: [PATCH v6 3/4] arm64: kdump: add memory for devices by DT property,
 low-memory-range
Date: Fri, 30 Aug 2019 15:11:59 +0800
Message-ID: <20190830071200.56169-4-chenzhou10@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190830071200.56169-1-chenzhou10@huawei.com>
References: <20190830071200.56169-1-chenzhou10@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_000905_957618_D2810B76 
X-CRM114-Status: GOOD (  11.15  )
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
Cc: Chen Zhou <chenzhou10@huawei.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, horms@verge.net.au, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If we want to reserve crashkernel above 4G, we could use parameters
"crashkernel=X crashkernel=Y,low", in this case, specified size low
memory is reserved for crash dump kernel devices and never mapped by
the first kernel. This memory range is advertised to crash dump kernel
via DT property under /chosen,
	linux,low-memory-range=<BASE SIZE>

Crash dump kernel reads this property at boot time and call
memblock_add() after memblock_cap_memory_range() has been called.

Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
---
 arch/arm64/mm/init.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index c99f845..a376b18 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -294,6 +294,26 @@ static int __init early_mem(char *p)
 }
 early_param("mem", early_mem);
 
+static int __init early_init_dt_scan_lowmem(unsigned long node,
+		const char *uname, int depth, void *data)
+{
+	struct memblock_region *lowmem = data;
+	const __be32 *reg;
+	int len;
+
+	if (depth != 1 || strcmp(uname, "chosen") != 0)
+		return 0;
+
+	reg = of_get_flat_dt_prop(node, "linux,low-memory-range", &len);
+	if (!reg || (len < (dt_root_addr_cells + dt_root_size_cells)))
+		return 1;
+
+	lowmem->base = dt_mem_next_cell(dt_root_addr_cells, &reg);
+	lowmem->size = dt_mem_next_cell(dt_root_size_cells, &reg);
+
+	return 1;
+}
+
 static int __init early_init_dt_scan_usablemem(unsigned long node,
 		const char *uname, int depth, void *data)
 {
@@ -324,13 +344,21 @@ static void __init fdt_enforce_memory_region(void)
 
 	if (reg.size)
 		memblock_cap_memory_range(reg.base, reg.size);
+
+	of_scan_flat_dt(early_init_dt_scan_lowmem, &reg);
+
+	if (reg.size)
+		memblock_add(reg.base, reg.size);
 }
 
 void __init arm64_memblock_init(void)
 {
 	const s64 linear_region_size = -(s64)PAGE_OFFSET;
 
-	/* Handle linux,usable-memory-range property */
+	/*
+	 * Handle linux,usable-memory-range and linux,low-memory-range
+	 * properties.
+	 */
 	fdt_enforce_memory_region();
 
 	/* Remove memory above our supported physical address size */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
