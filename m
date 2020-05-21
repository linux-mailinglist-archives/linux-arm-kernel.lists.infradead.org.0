Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACF01DCA3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 11:37:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Ou6ru+fSyXQDFjPk6CFUSvfdRD5aqVhp/B7FamQ6GA=; b=K3yjCSNg8ujLgd
	bDFDMu9FCDRuJD4U7dDls7ZiBk2QpQr6NKA0wSP9oCXhBC66yXuxi7OE5KfBYjAGsFeIkr5h6hF3U
	K9MqqzVpQaiSfi0/hwty8x2CSkUaFS8k6G9c/0IvVBp98Jq8wzpQZ2Mu8/1yRJG7TdzXuCKjAldqh
	LDKkhgUc6TlJSwdUhPH7f+vsdR6TZIpbeltZ+UTUNqbI1zdO4KgArcdss6pQBGocVptYCkMKzs5PS
	Iz6UIb46Vou93zHLT/FJ6nri4orDTfwgi5OVzXlG0ZKLGwc9hNAGY2Gnpp43ZHw4zCRbPu3Nfs634
	SoDDH7iKy/msFuar7MzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhdk-0003Se-4r; Thu, 21 May 2020 09:37:24 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhbe-0001IH-BM; Thu, 21 May 2020 09:35:26 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id AD4AC7E62D4E8D9E15F8;
 Thu, 21 May 2020 17:35:12 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.487.0; Thu, 21 May 2020 17:35:03 +0800
From: Chen Zhou <chenzhou10@huawei.com>
To: <tglx@linutronix.de>, <mingo@redhat.com>, <catalin.marinas@arm.com>,
 <will@kernel.org>, <dyoung@redhat.com>, <bhe@redhat.com>,
 <robh+dt@kernel.org>
Subject: [PATCH v8 3/5] arm64: kdump: add memory for devices by DT property,
 low-memory-range
Date: Thu, 21 May 2020 17:38:03 +0800
Message-ID: <20200521093805.64398-4-chenzhou10@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200521093805.64398-1-chenzhou10@huawei.com>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_023514_570804_C3316EBA 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: John.p.donnelly@oracle.com, arnd@arndb.de, devicetree@vger.kernel.org,
 chenzhou10@huawei.com, linux-doc@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, horms@verge.net.au, guohanjun@huawei.com,
 pkushwaha@marvell.com, linux-arm-kernel@lists.infradead.org
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
Tested-by: John Donnelly <John.p.donnelly@oracle.com>
Tested-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
---
 arch/arm64/mm/init.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 71498acf0cd8..fcc3abee7003 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -323,6 +323,26 @@ static int __init early_mem(char *p)
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
@@ -353,13 +373,21 @@ static void __init fdt_enforce_memory_region(void)
 
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
 	const s64 linear_region_size = BIT(vabits_actual - 1);
 
-	/* Handle linux,usable-memory-range property */
+	/*
+	 * Handle linux,usable-memory-range and linux,low-memory-range
+	 * properties.
+	 */
 	fdt_enforce_memory_region();
 
 	/* Remove memory above our supported physical address size */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
