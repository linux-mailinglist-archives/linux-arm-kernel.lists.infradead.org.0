Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A88CA1CEA2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 03:38:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a0lQrYDhCza+WCqqe54cYjIQAcShzCoUdVI0BEwn+c4=; b=fUtZpsbpMt5+kg
	2l8m0tOPSLNX9SggH9cphXt3KiNeLaSuRnKkplGf6x4QTKW6xCegWo+Veh5LJhNr7a9VWr73zFxBh
	yswxfAPHxp4CpxGmDq51RcdUosH9UExu6L2GhfNxNmgBbZlNePnFd9T506T8jn8s/iWi2Wl+hrl9I
	gKf7LtpKvaBxv1Q1380+21DHA2EhEJneEPBkzCCmsBkksbp7WZYl85iVFWFge2GOjliKP2r9luUoM
	/EktlPvuiuaA+lCTl+alsCLa9hqfLjluMCuaLRboj9Oes5Si4mhMnrrGpAzmG4TYod4U6HloPLkFf
	5yBovqPqIgpvvvrraKcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYJsZ-0002K5-3Y; Tue, 12 May 2020 01:38:43 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYJsQ-0002JF-Tw
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 01:38:36 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 70508F53A8D7A8A81B81;
 Tue, 12 May 2020 09:38:28 +0800 (CST)
Received: from ubuntu.huawei.com (10.175.100.98) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.487.0; Tue, 12 May 2020 09:38:26 +0800
From: Ma Feng <mafeng.ma@huawei.com>
To: <narmstrong@baylibre.com>, <linux@armlinux.org.uk>
Subject: [PATCH] ARM: oxnas: make ox820_boot_secondary static
Date: Tue, 12 May 2020 09:46:13 +0800
Message-ID: <1589247973-29728-1-git-send-email-mafeng.ma@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.175.100.98]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_183835_137205_A4B3DBA1 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: linux-oxnas@groups.io, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix sparse warning:

arch/arm/mach-oxnas/platsmp.c:30:12: warning: symbol 'ox820_boot_secondary' was
not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Ma Feng <mafeng.ma@huawei.com>
---
 arch/arm/mach-oxnas/platsmp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-oxnas/platsmp.c b/arch/arm/mach-oxnas/platsmp.c
index ab35275..f0a50b9 100644
--- a/arch/arm/mach-oxnas/platsmp.c
+++ b/arch/arm/mach-oxnas/platsmp.c
@@ -27,7 +27,8 @@ static void __iomem *gic_cpu_ctrl;
 #define GIC_CPU_CTRL			0x00
 #define GIC_CPU_CTRL_ENABLE		1

-int __init ox820_boot_secondary(unsigned int cpu, struct task_struct *idle)
+static int __init ox820_boot_secondary(unsigned int cpu,
+		struct task_struct *idle)
 {
 	/*
 	 * Write the address of secondary startup into the
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
