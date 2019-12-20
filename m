Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D683E127805
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:22:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zcWa18mioWaEfHu1XbkvceSXcq0F/73s2DkGhbCjGKc=; b=Li5Tmu268kT0z3
	N9fFqNY8bZqFHrhP4dy1Hr+ZyLXKjVmhEoWsV3TYyts5ZxEM0nmV7MbDL9qzfINIwFGM113Lf6B5R
	OV1JdKpL9ZDmfExCbfaz9SibfOe3/StsACtDUP8tBL8VqsuoZP1AtSWVsVwMK8nJ6vPgAiZzcXupY
	ZT8L7nxgDXN6ZdX95Qkcm46t03Tpc6JK4VuBoG71KjLOGlQxwzb8H4Y1rqE9zziLR/KH0ZaOT9AJm
	tjJDSVuomFf0EenMORTCwm0dqMIZcK1YLvixMeqBWL9TxoDtZqaugqvYUQpFtwR6uUOlvcHaiikgS
	5NJFmA8ICZPJpdR9Zdfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiEUW-0004oC-DQ; Fri, 20 Dec 2019 09:22:36 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiEUN-0004n6-6z
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:22:28 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A40987FCA0F2125FF4DB;
 Fri, 20 Dec 2019 17:22:14 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.439.0; Fri, 20 Dec 2019 17:22:06 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: cpu_errata: Add Hisilicon TSV110 to spectre-v2 safe
 list
Date: Fri, 20 Dec 2019 17:17:10 +0800
Message-ID: <1576833430-11839-1-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_012227_442863_6C720A74 
X-CRM114-Status: UNSURE (   8.12  )
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
Cc: Wei Li <liwei391@huawei.com>, linuxarm@huawei.com,
 linux-arm-kernel@lists.infradead.org, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wei Li <liwei391@huawei.com>

HiSilicon Taishan v110 CPUs didn't implement CSV2 field of the
ID_AA64PFR0_EL1, but spectre-v2 is mitigated by hardware, so
whitelist the MIDR in the safe list.

Signed-off-by: Wei Li <liwei391@huawei.com>
[hanjun: re-write the commit log]
Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
---
 arch/arm64/kernel/cpu_errata.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 6a09ca7..85f4bec 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -547,6 +547,7 @@ int get_spectre_v2_workaround_state(void)
 	MIDR_ALL_VERSIONS(MIDR_CORTEX_A53),
 	MIDR_ALL_VERSIONS(MIDR_CORTEX_A55),
 	MIDR_ALL_VERSIONS(MIDR_BRAHMA_B53),
+	MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
 	{ /* sentinel */ }
 };
 
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
