Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE957772F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 08:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Thwkxo9UvY+vMUUx7dgqG462a1lAW6GP2B56PFM3Wxg=; b=pqlllZyErmNhHh
	NPlZFh27winki8JRbMJggSa48vzQWA0NqtuPg6f92HBxHzrXRdj4z0v7Wvgw+Rq348RF0RBJQC5M9
	NG7Vpwr8vUllqay9PfJ/wZA2kMY5j5FNH+LqyGRDxZjDhYbMGqk7/FC3rnoiyvAGTBNj0qoG+fJGo
	0e3CI9zLOBDi/BHGxViWOOcpqphLqxpGXCad2HJAEWhTbdsDIKF4/0HBpQhkQyT8RLKdQ2VOV5Kgn
	v4GzM3HErvqykvNXkIU5wg87O0u0uSbdlEz7NgwsxLa4uci0SZ+Amk0Q8cgIAKHiOIQtdTF93DO7X
	zf/YgCYzMiliLdScWV6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrFzJ-0001yj-Vv; Sat, 27 Jul 2019 06:15:26 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrFz3-0001tX-Og
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 06:15:11 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 280C896D19A24E0FC5DE;
 Sat, 27 Jul 2019 14:15:06 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.439.0; Sat, 27 Jul 2019 14:14:55 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <maz@kernel.org>, <tglx@linutronix.de>, <jason@lakedaemon.net>
Subject: [PATCH] irqchip/gic-v3-its: Remove the redundant set_bit for lpi_map
Date: Sat, 27 Jul 2019 06:14:22 +0000
Message-ID: <1564208062-35208-1-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_231509_983838_E9266E4C 
X-CRM114-Status: GOOD (  10.52  )
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
Cc: guoheyi@huawei.com, wanghaibin.wang@huawei.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Zenghui Yu <yuzenghui@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We try to find a free LPI region in device's lpi_map and allocate them
(set them to 1) when we want to allocate LPIs for this device. This is
what bitmap_find_free_region() has done for us. The following set_bit
is redundant and a bit confusing (since we only set_bit against the first
allocated LPI idx). Remove it, and make the set_bit explicit by comment.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 472053c..7c69176 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -2464,6 +2464,7 @@ static int its_alloc_device_irq(struct its_device *dev, int nvecs, irq_hw_number
 {
 	int idx;
 
+	/* Find a free LPI region in lpi_map and allocate them. */
 	idx = bitmap_find_free_region(dev->event_map.lpi_map,
 				      dev->event_map.nr_lpis,
 				      get_count_order(nvecs));
@@ -2471,7 +2472,6 @@ static int its_alloc_device_irq(struct its_device *dev, int nvecs, irq_hw_number
 		return -ENOSPC;
 
 	*hwirq = dev->event_map.lpi_base + idx;
-	set_bit(idx, dev->event_map.lpi_map);
 
 	return 0;
 }
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
