Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30051CEABB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RI58Sqe48IQ2fyJBwjSFlgt07o54DPvTzE5bfnGhlWA=; b=DaysyVCJ+0p8cb
	7O7bcOvEkSmrarCV/eCzXH/C+x/larVy9lsMp3Y/JfW8qh+iqtbvuL1n9ysuJC14UbNaBcC+jiUsd
	KL9yR3nmVLn/buW9o5n63lklWhzEejLwQvoOCIL1gcKGgbIPv5QlqPr0WJzq0Oe2O0bO5GxJqXowG
	qAG/DFzU0xmqn/kwLXJXz+QMnSBF95B6DujSCYmRxMyVsmc/V1YTb+onwkIR1uJwKTvZ5/sou7TPt
	HyDnehvMuD6KGXGBlSBzKbPDWV/1ZTtLzs51JCmemH/5psZisGqlU3erUlDoLL6Gmk7HjniU3EPUd
	T2OwOWxKXjVRgJwPI9xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKZw-0005rk-II; Tue, 12 May 2020 02:23:32 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKZp-0005r9-4R
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 02:23:26 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C6C35A7F089D56802555;
 Tue, 12 May 2020 10:23:22 +0800 (CST)
Received: from linux-lmwb.huawei.com (10.175.103.112) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.487.0; Tue, 12 May 2020 10:23:15 +0800
From: Samuel Zou <zou_wei@huawei.com>
To: <jun.nie@linaro.org>, <shawnguo@kernel.org>, <linux@armlinux.org.uk>
Subject: [PATCH -next] ARM: zx: Make zx_smp_prepare_cpus static
Date: Tue, 12 May 2020 10:29:21 +0800
Message-ID: <1589250561-106088-1-git-send-email-zou_wei@huawei.com>
X-Mailer: git-send-email 2.6.2
MIME-Version: 1.0
X-Originating-IP: [10.175.103.112]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_192325_737056_75C53EFF 
X-CRM114-Status: GOOD (  10.34  )
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
Cc: Samuel Zou <zou_wei@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following sparse warning:

arch/arm/mach-zx/platsmp.c:41:13: warning: symbol 'zx_smp_prepare_cpus' was not declared.

The zx_smp_prepare_cpus has only call site within platsmp.c
It should be static

Fixes: 71bc724300e6 ("ARM: zx: enable SMP and hotplug for zx296702")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Samuel Zou <zou_wei@huawei.com>
---
 arch/arm/mach-zx/platsmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-zx/platsmp.c b/arch/arm/mach-zx/platsmp.c
index d4e1d37..43a33ea 100644
--- a/arch/arm/mach-zx/platsmp.c
+++ b/arch/arm/mach-zx/platsmp.c
@@ -38,7 +38,7 @@ static void __iomem *pcu_base;
 static void __iomem *matrix_base;
 static void __iomem *scu_base;
 
-void __init zx_smp_prepare_cpus(unsigned int max_cpus)
+static void __init zx_smp_prepare_cpus(unsigned int max_cpus)
 {
 	struct device_node *np;
 	unsigned long base = 0;
-- 
2.6.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
