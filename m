Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E145D2BD2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 04:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wXdaErwU/W45DloVzoB9x4pCkLrPCmZN0Ag0r+xB+wI=; b=oCw5awPqUeV9ei
	9td6EbOiEIWXd7BF4Whg4Z34OhA58Nh++jSH+ta/UCnKRyNeXjlCyVvPM+/OEzRzWe/HWbeDO9lx4
	NSPrex/Jh446H7paSKL+JlUf0Kqp6kmDSWlvmqldcxHPEQ8Ps//ZGGK+k8I1oGQhMMyqKMQyUbUc0
	L0VgPnwnozHOavNwaTu4CdpmS47eW2bqTG1YV2wbyaenn4P9/h7aX6lIpPqxg134dnl/6NpSbcB56
	tHNc+1qQ2oULotUAbbYbvtMRltQlddWtqnKJr/jjHfA1SkcAoTKCXn/l4AhHb4nTIfV2ATSqfQsKm
	The9ztXroaFeYtDDzP9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVRhg-0007T0-UW; Tue, 28 May 2019 02:19:04 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVRhQ-0007Mn-7J
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 02:18:50 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9AEC4840B8F2F504D4EB;
 Tue, 28 May 2019 10:18:37 +0800 (CST)
Received: from localhost.localdomain (10.67.212.132) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Tue, 28 May 2019 10:18:30 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 2/2] arm64: cacheinfo: Update cache_line_size detected from
 DT or PPTT
Date: Tue, 28 May 2019 10:16:54 +0800
Message-ID: <1559009814-17004-2-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559009814-17004-1-git-send-email-zhangshaokun@hisilicon.com>
References: <1559009814-17004-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.132]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_191849_188960_78045194 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Zhenfa Qiu <qiuzhenfa@hisilicon.com>, Sudeep Holla <sudeep.holla@arm.com>
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
Cc: Zhenfa Qiu <qiuzhenfa@hisilicon.com>
Reported-by: Zhenfa Qiu <qiuzhenfa@hisilicon.com>
Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
---
 arch/arm64/include/asm/cache.h |  6 +-----
 arch/arm64/kernel/cacheinfo.c  | 11 +++++++++++
 2 files changed, 12 insertions(+), 5 deletions(-)

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
index 0bf0a835122f..0c0cd4d26b87 100644
--- a/arch/arm64/kernel/cacheinfo.c
+++ b/arch/arm64/kernel/cacheinfo.c
@@ -28,6 +28,17 @@
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
+EXPORT_SYMBOL_GPL(cache_line_size);
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
