Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12DE144AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 08:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9LhL68j+h+aINGOD5xBw2nZPe/eiluxFqXUrOB+56I=; b=jmGTDw+6avZ7yG
	D8mldvivcyVfwa6APVmCye1WVua/aaX4kUyV01XgOlA67eWiRFIeTawDfoOs+ckQFJIyS2iUaLd1m
	hf+aolc/QLipY57MTG4fHDv4WXVsUCzuNw+uul1G4ccsMPjfrU108SCvfzLWybD68x2SgLcO4mjl+
	ZtD5UOdyySeXRxYECPBZnyCNS34uaPhbaotzoD3D3P06yr4jFGLyYymwdic6lWm1cfac2TXIh3g+P
	AsaUqFa/ObjVOLJ0LAnrFrOAfZVHnTW16AXNglusCGjYM1CrSkSDysVFKPIfQDQlZkEBPKrQ0B6N7
	ivrtpII++7QCYyE8A3og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXXQ-00061p-N8; Mon, 06 May 2019 06:55:48 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXXI-00060L-V0
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 06:55:42 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 6C6F98BBE9FC15A36768;
 Mon,  6 May 2019 14:55:33 +0800 (CST)
Received: from localhost.localdomain (10.67.212.132) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Mon, 6 May 2019 14:55:27 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 2/2] arm64: cacheinfo: Update cache_line_size detected from
 DT or PPTT
Date: Mon, 6 May 2019 14:53:57 +0800
Message-ID: <1557125637-9558-2-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557125637-9558-1-git-send-email-zhangshaokun@hisilicon.com>
References: <1557125637-9558-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.132]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_235541_219630_D4DF4985 
X-CRM114-Status: GOOD (  13.28  )
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
Cc: Sudeep Holla <sudeep.holla@arm.com>, Catalin
 Marinas <catalin.marinas@arm.com>, john.garry@huawei.com,
 Will Deacon <will.deacon@arm.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, qiuzhenfa@hisilicon.com,
 guohanjun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cache_line_size is derived from CTR_EL0.CWG field and is called mostly
for I/O device drivers. For HiSilicon certain plantform, like the
Kunpeng920 server SoC, cache line sizes are different between L1/2
cache and L3 cache while L1 cache line size is 64-byte and L3 is 128-byte,
but CTR_EL0.CWG is misreporting using L1 cache line size.

We shall correct the right value which is important for I/O performance.
Let's update the cache line size if it is detected from DT or PPTT
information.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Jeremy Linton <jeremy.linton@arm.com>
Reported-by: Zhenfa Qiu <qiuzhenfa@hisilicon.com>
Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
---
 arch/arm64/include/asm/cache.h |  6 +-----
 arch/arm64/kernel/cacheinfo.c  | 10 ++++++++++
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
index 926434f413fa..758af6340314 100644
--- a/arch/arm64/include/asm/cache.h
+++ b/arch/arm64/include/asm/cache.h
@@ -91,11 +91,7 @@ static inline u32 cache_type_cwg(void)
 
 #define __read_mostly __attribute__((__section__(".data..read_mostly")))
 
-static inline int cache_line_size(void)
-{
-	u32 cwg = cache_type_cwg();
-	return cwg ? 4 << cwg : ARCH_DMA_MINALIGN;
-}
+int cache_line_size(void);
 
 /*
  * Read the effective value of CTR_EL0.
diff --git a/arch/arm64/kernel/cacheinfo.c b/arch/arm64/kernel/cacheinfo.c
index 0bf0a835122f..6ffe908d476c 100644
--- a/arch/arm64/kernel/cacheinfo.c
+++ b/arch/arm64/kernel/cacheinfo.c
@@ -28,6 +28,16 @@
 #define CLIDR_CTYPE(clidr, level)	\
 	(((clidr) & CLIDR_CTYPE_MASK(level)) >> CLIDR_CTYPE_SHIFT(level))
 
+int cache_line_size(void)
+{
+	u32 cwg = cache_type_cwg();
+
+	if (coherency_max_size != 0)
+		return coherency_max_size;
+
+	return cwg ? 4 << cwg : ARCH_DMA_MINALIGN;
+}
+
 static inline enum cache_type get_cache_type(int level)
 {
 	u64 clidr;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
