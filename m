Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EA7153F8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 08:59:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8+ic1EOyJ1PiD8xlgcf74CGcJLRW1QW51NAkSraX7s=; b=canwA/QzOvaz1J
	Ge/b1RweoCeyNzAh3pUWmHyHINgPjqC+elbZMFiypzO037usnXC+FpOyhEznvhssBuaj7VtMGjTSy
	+Ns/MRxPjGdGcHCBdNvXzAw7p2oMcpKuU9R0rBKYbLfTJSIu3ApzDqwo4PpM3tYgTgzMdbsff8xBH
	9X2Gg7mSbQ9s2B1AcEOZVHyAJaDCSEih0U3TO+WXP4MoIkrFng/72EnArKLe0FsGwAmuc/FfjZTP3
	hT7J1i0TrYUdcIgJU+tFEMObVyh8Y4jOD3X81T1BkKVb36Mh3u5ziO3TY5gwyncq6G6vij6SvLzqq
	DRl20H56pbbk9H1ETEcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izc4e-0008Ua-4g; Thu, 06 Feb 2020 07:59:44 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izc3d-0007Jf-Uo
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 07:58:43 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 1B9EC4C3DA2ECAE5C708;
 Thu,  6 Feb 2020 15:58:33 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Thu, 6 Feb 2020 15:58:27 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-kernel@vger.kernel.org>, <maz@kernel.org>
Subject: [PATCH v2 5/6] irqchip/gic-v3-its: Remove superfluous WARN_ON
Date: Thu, 6 Feb 2020 15:57:10 +0800
Message-ID: <20200206075711.1275-6-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
In-Reply-To: <20200206075711.1275-1-yuzenghui@huawei.com>
References: <20200206075711.1275-1-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_235842_579893_FCA3BE5A 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: jason@lakedaemon.net, Zenghui Yu <yuzenghui@huawei.com>,
 wanghaibin.wang@huawei.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"ITS virtual pending table not cleaning" is already complained inside
its_clear_vpend_valid(), there's no need to trigger a WARN_ON again.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 8405ebdd9ffb..811875bf3abb 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -2857,7 +2857,6 @@ static void its_cpu_init_lpis(void)
 		 * corrupting memory.
 		 */
 		val = its_clear_vpend_valid(vlpi_base, 0, 0);
-		WARN_ON(val & GICR_VPENDBASER_Dirty);
 	}
 
 	if (allocate_vpe_l1_table()) {
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
