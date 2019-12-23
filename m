Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 354EA129834
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 16:28:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lse+EctETAMguKAP1m1jMyiRBP0o8ia6f7K/g9Acv1I=; b=lYpYvy/I+H+Z6j
	aVyrL8EErVk9Nq3WzKYm1uXgrAXRwUSnoWuW0pRVnI+0EaNyUihQK5TFjjz5M9xyAoGx0TM+ge2sn
	tOHOUYHT0919uIWUBnkV3bHSOg6hN/roBAY2labrm+UGGWoy3SQ6fltFe6GSB/pliUQn5HiEMp3U+
	h75siI+xISybPLR1FPjrRMuQxSx665oxRxvzD5APIP+JhvgajmYaKOJWQZTOxPNauHmQp08TVskoQ
	Srdj5oXlv/LkaD3auenVBvwjnJHLNOm00/Rqxfr7robhtGnVsxO02dMiFBVkYE3l30mfjEsH7lPyk
	2XBtkaVWMu5m5cC+Dl/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijPca-00073X-BY; Mon, 23 Dec 2019 15:27:48 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijPcL-0006yX-LD; Mon, 23 Dec 2019 15:27:35 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E941AE2CA5765FA2C7DE;
 Mon, 23 Dec 2019 23:27:24 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Mon, 23 Dec 2019 23:27:16 +0800
From: Chen Zhou <chenzhou10@huawei.com>
To: <tglx@linutronix.de>, <mingo@redhat.com>, <catalin.marinas@arm.com>,
 <will@kernel.org>, <james.morse@arm.com>, <dyoung@redhat.com>,
 <bhsharma@redhat.com>
Subject: [PATCH v7 2/4] arm64: kdump: reserve crashkenel above 4G for crash
 dump kernel
Date: Mon, 23 Dec 2019 23:23:47 +0800
Message-ID: <20191223152349.180172-3-chenzhou10@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191223152349.180172-1-chenzhou10@huawei.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_072733_868232_CABF0165 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: xiexiuqi@huawei.com, chenzhou10@huawei.com, linux-doc@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, horms@verge.net.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Crashkernel=X tries to reserve memory for the crash dump kernel under
4G. If crashkernel=X,low is specified simultaneously, reserve spcified
size low memory for crash kdump kernel devices firstly and then reserve
memory above 4G.

Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
---
 arch/arm64/kernel/setup.c |  8 +++++++-
 arch/arm64/mm/init.c      | 31 +++++++++++++++++++++++++++++--
 2 files changed, 36 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 56f6645..04d1c87 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -238,7 +238,13 @@ static void __init request_standard_resources(void)
 		    kernel_data.end <= res->end)
 			request_resource(res, &kernel_data);
 #ifdef CONFIG_KEXEC_CORE
-		/* Userspace will find "Crash kernel" region in /proc/iomem. */
+		/*
+		 * Userspace will find "Crash kernel" region in /proc/iomem.
+		 * Note: the low region is renamed as Crash kernel (low).
+		 */
+		if (crashk_low_res.end && crashk_low_res.start >= res->start &&
+				crashk_low_res.end <= res->end)
+			request_resource(res, &crashk_low_res);
 		if (crashk_res.end && crashk_res.start >= res->start &&
 		    crashk_res.end <= res->end)
 			request_resource(res, &crashk_res);
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index b65dffd..0d7afd5 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -80,6 +80,7 @@ static void __init reserve_crashkernel(void)
 {
 	unsigned long long crash_base, crash_size;
 	int ret;
+	phys_addr_t crash_max = arm64_dma32_phys_limit;
 
 	ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
 				&crash_size, &crash_base);
@@ -87,12 +88,38 @@ static void __init reserve_crashkernel(void)
 	if (ret || !crash_size)
 		return;
 
+	ret = reserve_crashkernel_low();
+	if (!ret && crashk_low_res.end) {
+		/*
+		 * If crashkernel=X,low specified, there may be two regions,
+		 * we need to make some changes as follows:
+		 *
+		 * 1. rename the low region as "Crash kernel (low)"
+		 * In order to distinct from the high region and make no effect
+		 * to the use of existing kexec-tools, rename the low region as
+		 * "Crash kernel (low)".
+		 *
+		 * 2. change the upper bound for crash memory
+		 * Set MEMBLOCK_ALLOC_ACCESSIBLE upper bound for crash memory.
+		 *
+		 * 3. mark the low region as "nomap"
+		 * The low region is intended to be used for crash dump kernel
+		 * devices, just mark the low region as "nomap" simply.
+		 */
+		const char *rename = "Crash kernel (low)";
+
+		crashk_low_res.name = rename;
+		crash_max = MEMBLOCK_ALLOC_ACCESSIBLE;
+		memblock_mark_nomap(crashk_low_res.start,
+				    resource_size(&crashk_low_res));
+	}
+
 	crash_size = PAGE_ALIGN(crash_size);
 
 	if (crash_base == 0) {
 		/* Current arm64 boot protocol requires 2MB alignment */
-		crash_base = memblock_find_in_range(0, arm64_dma32_phys_limit,
-				crash_size, SZ_2M);
+		crash_base = memblock_find_in_range(0, crash_max, crash_size,
+				SZ_2M);
 		if (crash_base == 0) {
 			pr_warn("cannot allocate crashkernel (size:0x%llx)\n",
 				crash_size);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
