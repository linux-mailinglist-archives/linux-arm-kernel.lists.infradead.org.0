Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD48B1A5677
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 01:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmPxrrz5CQ3hnhDKBs0uMRisYEK4lRsn2fAI2RN0aak=; b=Fjok4DRc9+cAey
	15W5LbereG5CMedKd/MW1+yRy6KvQNeP4dxp+rmxx4+3cPM/bmsEETXlmfGvNYCwelNJlvewTneaa
	9DNVDMr1dwY6JmCBc7ZQvcyj2Dg+BwlEuAsknLV1m25gak3OnnBE9goYHbDn1o92Dd2Ieb3Hx97Nr
	oB175nrrGI/37gUyk+dMDy2h6ESPIAYaB3HbMPhmVptkehNfdig7OTwQBIkcrBe/PmRwh/4rx20SJ
	4sFLhupDlSDtUWJvkZkCOVNDRO4UGHUE3hbXFAElluxX3AoQpWJu9ONU9CcHRfMuXLrk6IGqN84DM
	TDg7dMK7Ix3VWWDeT5Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNPMS-0005yg-0T; Sat, 11 Apr 2020 23:16:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNPG0-0003hH-MJ
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 23:09:51 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FCEE217D8;
 Sat, 11 Apr 2020 23:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586646588;
 bh=6tnegtnf08BVGuB7kVm9KTwB40Be9p5QYG84BtA8D8o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2gp9MjtYAg+JvM3DKZ1923035ZISPVPVOBWUKzhXY0uKUGpvVSj0VfnKEhXncDZtS
 FLAOEN5Drz/BglB2TL0JO1wOqNhGEFhtdeIIUlPFgKjlVLivL9jLqjiwAhinJ8GSuV
 xdTY1KAO7ZLlXGtoc0Dx0B1kl6FDz6OMysYroHQw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 003/108] net: axienet: Convert DMA error handler
 to a work queue
Date: Sat, 11 Apr 2020 19:07:58 -0400
Message-Id: <20200411230943.24951-3-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230943.24951-1-sashal@kernel.org>
References: <20200411230943.24951-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_160948_814122_DF6BDD4A 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Andre Przywara <andre.przywara@arm.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Przywara <andre.przywara@arm.com>

[ Upstream commit 24201a64770afe2e17050b2ab9e8c0e24e9c23b2 ]

The DMA error handler routine is currently a tasklet, scheduled to run
after the DMA error IRQ was handled.
However it needs to take the MDIO mutex, which is not allowed to do in a
tasklet. A kernel (with debug options) complains consequently:
[  614.050361] net eth0: DMA Tx error 0x174019
[  614.064002] net eth0: Current BD is at: 0x8f84aa0ce
[  614.080195] BUG: sleeping function called from invalid context at kernel/locking/mutex.c:935
[  614.109484] in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 40, name: kworker/u4:4
[  614.135428] 3 locks held by kworker/u4:4/40:
[  614.149075]  #0: ffff000879863328 ((wq_completion)rpciod){....}, at: process_one_work+0x1f0/0x6a8
[  614.177528]  #1: ffff80001251bdf8 ((work_completion)(&task->u.tk_work)){....}, at: process_one_work+0x1f0/0x6a8
[  614.209033]  #2: ffff0008784e0110 (sk_lock-AF_INET-RPC){....}, at: tcp_sendmsg+0x24/0x58
[  614.235429] CPU: 0 PID: 40 Comm: kworker/u4:4 Not tainted 5.6.0-rc3-00926-g4a165a9d5921 #26
[  614.260854] Hardware name: ARM Test FPGA (DT)
[  614.274734] Workqueue: rpciod rpc_async_schedule
[  614.289022] Call trace:
[  614.296871]  dump_backtrace+0x0/0x1a0
[  614.308311]  show_stack+0x14/0x20
[  614.318751]  dump_stack+0xbc/0x100
[  614.329403]  ___might_sleep+0xf0/0x140
[  614.341018]  __might_sleep+0x4c/0x80
[  614.352201]  __mutex_lock+0x5c/0x8a8
[  614.363348]  mutex_lock_nested+0x1c/0x28
[  614.375654]  axienet_dma_err_handler+0x38/0x388
[  614.389999]  tasklet_action_common.isra.15+0x160/0x1a8
[  614.405894]  tasklet_action+0x24/0x30
[  614.417297]  efi_header_end+0xe0/0x494
[  614.429020]  irq_exit+0xd0/0xd8
[  614.439047]  __handle_domain_irq+0x60/0xb0
[  614.451877]  gic_handle_irq+0xdc/0x2d0
[  614.463486]  el1_irq+0xcc/0x180
[  614.473451]  __tcp_transmit_skb+0x41c/0xb58
[  614.486513]  tcp_write_xmit+0x224/0x10a0
[  614.498792]  __tcp_push_pending_frames+0x38/0xc8
[  614.513126]  tcp_rcv_established+0x41c/0x820
[  614.526301]  tcp_v4_do_rcv+0x8c/0x218
[  614.537784]  __release_sock+0x5c/0x108
[  614.549466]  release_sock+0x34/0xa0
[  614.560318]  tcp_sendmsg+0x40/0x58
[  614.571053]  inet_sendmsg+0x40/0x68
[  614.582061]  sock_sendmsg+0x18/0x30
[  614.593074]  xs_sendpages+0x218/0x328
[  614.604506]  xs_tcp_send_request+0xa0/0x1b8
[  614.617461]  xprt_transmit+0xc8/0x4f0
[  614.628943]  call_transmit+0x8c/0xa0
[  614.640028]  __rpc_execute+0xbc/0x6f8
[  614.651380]  rpc_async_schedule+0x28/0x48
[  614.663846]  process_one_work+0x298/0x6a8
[  614.676299]  worker_thread+0x40/0x490
[  614.687687]  kthread+0x134/0x138
[  614.697804]  ret_from_fork+0x10/0x18
[  614.717319] xilinx_axienet 7fe00000.ethernet eth0: Link is Down
[  615.748343] xilinx_axienet 7fe00000.ethernet eth0: Link is Up - 1Gbps/Full - flow control off

Since tasklets are not really popular anymore anyway, lets convert this
over to a work queue, which can sleep and thus can take the MDIO mutex.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/xilinx/xilinx_axienet.h  |  2 +-
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 24 +++++++++----------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet.h b/drivers/net/ethernet/xilinx/xilinx_axienet.h
index 2dacfc85b3baa..04e51af32178c 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet.h
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet.h
@@ -435,7 +435,7 @@ struct axienet_local {
 	void __iomem *regs;
 	void __iomem *dma_regs;
 
-	struct tasklet_struct dma_err_tasklet;
+	struct work_struct dma_err_task;
 
 	int tx_irq;
 	int rx_irq;
diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 479325eeaf8a0..345a795666e92 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -806,7 +806,7 @@ static irqreturn_t axienet_tx_irq(int irq, void *_ndev)
 		/* Write to the Rx channel control register */
 		axienet_dma_out32(lp, XAXIDMA_RX_CR_OFFSET, cr);
 
-		tasklet_schedule(&lp->dma_err_tasklet);
+		schedule_work(&lp->dma_err_task);
 		axienet_dma_out32(lp, XAXIDMA_TX_SR_OFFSET, status);
 	}
 out:
@@ -855,7 +855,7 @@ static irqreturn_t axienet_rx_irq(int irq, void *_ndev)
 		/* write to the Rx channel control register */
 		axienet_dma_out32(lp, XAXIDMA_RX_CR_OFFSET, cr);
 
-		tasklet_schedule(&lp->dma_err_tasklet);
+		schedule_work(&lp->dma_err_task);
 		axienet_dma_out32(lp, XAXIDMA_RX_SR_OFFSET, status);
 	}
 out:
@@ -891,7 +891,7 @@ static irqreturn_t axienet_eth_irq(int irq, void *_ndev)
 	return IRQ_HANDLED;
 }
 
-static void axienet_dma_err_handler(unsigned long data);
+static void axienet_dma_err_handler(struct work_struct *work);
 
 /**
  * axienet_open - Driver open routine.
@@ -935,9 +935,8 @@ static int axienet_open(struct net_device *ndev)
 
 	phylink_start(lp->phylink);
 
-	/* Enable tasklets for Axi DMA error handling */
-	tasklet_init(&lp->dma_err_tasklet, axienet_dma_err_handler,
-		     (unsigned long) lp);
+	/* Enable worker thread for Axi DMA error handling */
+	INIT_WORK(&lp->dma_err_task, axienet_dma_err_handler);
 
 	/* Enable interrupts for Axi DMA Tx */
 	ret = request_irq(lp->tx_irq, axienet_tx_irq, IRQF_SHARED,
@@ -966,7 +965,7 @@ static int axienet_open(struct net_device *ndev)
 err_tx_irq:
 	phylink_stop(lp->phylink);
 	phylink_disconnect_phy(lp->phylink);
-	tasklet_kill(&lp->dma_err_tasklet);
+	cancel_work_sync(&lp->dma_err_task);
 	dev_err(lp->dev, "request_irq() failed\n");
 	return ret;
 }
@@ -1025,7 +1024,7 @@ static int axienet_stop(struct net_device *ndev)
 	axienet_mdio_enable(lp);
 	mutex_unlock(&lp->mii_bus->mdio_lock);
 
-	tasklet_kill(&lp->dma_err_tasklet);
+	cancel_work_sync(&lp->dma_err_task);
 
 	if (lp->eth_irq > 0)
 		free_irq(lp->eth_irq, ndev);
@@ -1505,17 +1504,18 @@ static const struct phylink_mac_ops axienet_phylink_ops = {
 };
 
 /**
- * axienet_dma_err_handler - Tasklet handler for Axi DMA Error
- * @data:	Data passed
+ * axienet_dma_err_handler - Work queue task for Axi DMA Error
+ * @work:	pointer to work_struct
  *
  * Resets the Axi DMA and Axi Ethernet devices, and reconfigures the
  * Tx/Rx BDs.
  */
-static void axienet_dma_err_handler(unsigned long data)
+static void axienet_dma_err_handler(struct work_struct *work)
 {
 	u32 axienet_status;
 	u32 cr, i;
-	struct axienet_local *lp = (struct axienet_local *) data;
+	struct axienet_local *lp = container_of(work, struct axienet_local,
+						dma_err_task);
 	struct net_device *ndev = lp->ndev;
 	struct axidma_bd *cur_p;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
