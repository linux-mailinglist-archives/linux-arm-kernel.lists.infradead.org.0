Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1157138A9
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 12:20:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=45q3fSzVTdJ0fquXOx6y8/s3FK+v7LN8PnRJrUQ17/g=; b=MFFGGp9fGdsbg8
	bibUtIPGjGwl6PACVfBwBwRnBw+kgZ8j1OU/+0M6UMhkUZB1GZ2Gk2t6W6NVoUabezJWlDP3pCQMU
	L8tB117uQAGySS6lhTQ9/2yIYvdB+PWPra3oKl4iyyk7FTc8lw5BvCqSFf27aG4hBp+AWy77awNeM
	a+rdG+NDiMrS/Ap7/+3dxpO1XRtNQaOOMNO8BIQ6R3jsWcsTvgCuxGkx5oNWOnS5RdUVs7k6OKGz0
	TwFGSvfh93Q/TXhulKlFrcZxUKiJvVQECk0k6oW6q+7JgQaqRtSR4rL+eDpRIekYAddJvV1yf0V0l
	9M4QQRqXbzOIaYQ40N8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMrmn-0000hR-Dz; Sat, 04 May 2019 10:20:53 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMrmg-0000gf-OO
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 10:20:48 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B9B73B0D760868D4156B;
 Sat,  4 May 2019 18:20:40 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Sat, 4 May 2019
 18:20:29 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <davem@davemloft.net>, <michal.simek@xilinx.com>, <esben@geanix.com>,
 <andrew@lunn.ch>
Subject: [PATCH net-next] net: ll_temac: Make some functions static
Date: Sat, 4 May 2019 18:10:30 +0800
Message-ID: <20190504101030.37896-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_032046_959551_E2FDF301 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix sparse warnings:

drivers/net/ethernet/xilinx/ll_temac_main.c:66:5: warning: symbol '_temac_ior_be' was not declared. Should it be static?
drivers/net/ethernet/xilinx/ll_temac_main.c:71:6: warning: symbol '_temac_iow_be' was not declared. Should it be static?
drivers/net/ethernet/xilinx/ll_temac_main.c:76:5: warning: symbol '_temac_ior_le' was not declared. Should it be static?
drivers/net/ethernet/xilinx/ll_temac_main.c:81:6: warning: symbol '_temac_iow_le' was not declared. Should it be static?
drivers/net/ethernet/xilinx/ll_temac_main.c:648:6: warning: symbol 'ptr_to_txbd' was not declared. Should it be static?
drivers/net/ethernet/xilinx/ll_temac_main.c:654:6: warning: symbol 'ptr_from_txbd' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/xilinx/ll_temac_main.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/ll_temac_main.c b/drivers/net/ethernet/xilinx/ll_temac_main.c
index ca95c72..530a525 100644
--- a/drivers/net/ethernet/xilinx/ll_temac_main.c
+++ b/drivers/net/ethernet/xilinx/ll_temac_main.c
@@ -63,22 +63,22 @@
  * Low level register access functions
  */
 
-u32 _temac_ior_be(struct temac_local *lp, int offset)
+static u32 _temac_ior_be(struct temac_local *lp, int offset)
 {
 	return ioread32be(lp->regs + offset);
 }
 
-void _temac_iow_be(struct temac_local *lp, int offset, u32 value)
+static void _temac_iow_be(struct temac_local *lp, int offset, u32 value)
 {
 	return iowrite32be(value, lp->regs + offset);
 }
 
-u32 _temac_ior_le(struct temac_local *lp, int offset)
+static u32 _temac_ior_le(struct temac_local *lp, int offset)
 {
 	return ioread32(lp->regs + offset);
 }
 
-void _temac_iow_le(struct temac_local *lp, int offset, u32 value)
+static void _temac_iow_le(struct temac_local *lp, int offset, u32 value)
 {
 	return iowrite32(value, lp->regs + offset);
 }
@@ -645,25 +645,25 @@ static void temac_adjust_link(struct net_device *ndev)
 
 #ifdef CONFIG_64BIT
 
-void ptr_to_txbd(void *p, struct cdmac_bd *bd)
+static void ptr_to_txbd(void *p, struct cdmac_bd *bd)
 {
 	bd->app3 = (u32)(((u64)p) >> 32);
 	bd->app4 = (u32)((u64)p & 0xFFFFFFFF);
 }
 
-void *ptr_from_txbd(struct cdmac_bd *bd)
+static void *ptr_from_txbd(struct cdmac_bd *bd)
 {
 	return (void *)(((u64)(bd->app3) << 32) | bd->app4);
 }
 
 #else
 
-void ptr_to_txbd(void *p, struct cdmac_bd *bd)
+static void ptr_to_txbd(void *p, struct cdmac_bd *bd)
 {
 	bd->app4 = (u32)p;
 }
 
-void *ptr_from_txbd(struct cdmac_bd *bd)
+static void *ptr_from_txbd(struct cdmac_bd *bd)
 {
 	return (void *)(bd->app4);
 }
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
