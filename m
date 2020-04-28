Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297381BC165
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7VYcf1UiQ/d6b18IK0pEKKVsIgk3a2To+K9v5A1ijrI=; b=pgBVaDWCg9Sswe
	vUIm4KNmNt9vo9zYpUJmXDUDwhOqa7PLEMXz4dneldiUNabU/07XMWdwTok0Er0+3GFE8RCgjBNrg
	D9r5tIVW+2LYGmhKnS7PEScDR0SZa9Zypqzu37BIpKYdNIjGh+ZhrQfq1XvcWIQzpRQ8qAgU8NXcE
	X+Oa1zla+ZKj0wxm9VNThJ0w+n4FTbeG4OsUdmrBs02UkqEYi6Ty76cq4OGWlsGre5tOumuiF8fnt
	eTNM3EPu+EIVwPwI+sJWeEWO/kzl4DfNJwmacf5fCdMDCOCXor4QP9deiZObVv4Cuh9asCBWaS7Jk
	h82KIIACY9AcfXGtBuMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRJa-0005hd-Bh; Tue, 28 Apr 2020 14:34:26 +0000
Received: from mail.secom.com.pl ([213.216.87.26])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRJO-0005g0-5H
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:34:16 +0000
Received: from debian-2019.secom.com.pl ([192.168.192.41])
 by mail.secom.com.pl; Tue, 28 Apr 2020 16:33:47 +0200
From: =?UTF-8?q?Rafa=C5=82=20Hibner?= <rafal.hibner@secom.com.pl>
To: 
Subject: [PATCH] dma: zynqmp_dma: Initialize descriptor list after freeing
 during reset
Date: Tue, 28 Apr 2020 16:32:26 +0200
Message-Id: <20200428143225.3357-1-rafal.hibner@secom.com.pl>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_073414_541963_2EBE060A 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: =?UTF-8?q?Rafa=C5=82=20Hibner?= <rafal.hibner@secom.com.pl>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 open list <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Harini Katakam <harini.katakam@xilinx.com>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

List elements are not formally removed from list therefore
list head is not initialized during zynqmp_dma_reset.

Signed-off-by: Rafal Hibner <rafal.hibner@secom.com.pl>

This BUG causes kernel panic when transaction is unsuccessful:
 ------------[ cut here ]------------
[   62.710730] list_add corruption. prev->next should be next (ffffffc07d308040), but was dead000000000100. (prev=ffffffc0540b40b8).
[   62.727960] WARNING: CPU: 0 PID: 1845 at /home/rafalh11/zynq_proj/zynq_platform/KERNEL/linux-xlnx/lib/list_debug.c:28 __list_add_valid+0x74/0xa0
[   62.746374] Modules linked in: secom_mx_rpmsg(O) rpmsg_char secom_mx_retune(O) ad9680(O) ad5686_spi(O) ad5686(O) ad7298(O) ltc5594(O) lmx2594(O) ad8366(O) secom_mx(O) axi_jesd204_rx(O) axi_adxcvr(O) xilinx_transceiver(O) cf_axi_adc_core(O) hmc7044(O)
[   62.768546] CPU: 0 PID: 1845 Comm: mx Tainted: G           O      4.19.0 #10
[   62.775582] Hardware name: xlnx,zynqmp (DT)
[   62.779750] pstate: 60000005 (nZCv daif -PAN -UAO)
[   62.784524] pc : __list_add_valid+0x74/0xa0
[   62.788690] lr : __list_add_valid+0x74/0xa0
[   62.792855] sp : ffffff8008003da0
[   62.796154] x29: ffffff8008003da0 x28: 0000000000000020
[   62.801457] x27: 0000000000000000 x26: dead000000000100
[   62.806760] x25: ffffffc07d308040 x24: ffffffc0540b40a0
[   62.812064] x23: ffffffc07d308018 x22: 0000000000000000
[   62.817359] x21: ffffffc07d308018 x20: ffffffc0540b40b8
[   62.822654] x19: ffffffc0540b40b8 x18: ffffffffffffffff
[   62.827957] x17: 0000000000000000 x16: 0000000000000000
[   62.833252] x15: ffffff8008f88648 x14: 3034303830336437
[   62.838546] x13: ffffff8008f88670 x12: ffffff80085d0ec0
[   62.843841] x11: ffffff8008f65018 x10: 0000000000000006
[   62.849136] x9 : 657270202e6e6f69 x8 : 3462303435306366
[   62.854431] x7 : 66666666663d7665 x6 : 00000000000001a2
[   62.859726] x5 : 0000000000000064 x4 : 0000000000000000
[   62.865020] x3 : 0000000000000000 x2 : ffffffffffffffff
[   62.870315] x1 : 0cbee765ba0ec900 x0 : 0000000000000000
[   62.875611] Call trace:
[   62.878042]  __list_add_valid+0x74/0xa0
[   62.881864]  zynqmp_dma_free_descriptor+0x48/0x100
[   62.886644]  zynqmp_dma_chan_desc_cleanup+0xb4/0xf8
[   62.891505]  zynqmp_dma_do_tasklet+0x68/0x110
[   62.895847]  tasklet_action_common.isra.3+0x7c/0x168
[   62.900801]  tasklet_action+0x24/0x30
[   62.904447]  __do_softirq+0x10c/0x200
[   62.908092]  irq_exit+0xac/0xc0
[   62.911219]  __handle_domain_irq+0x60/0xb0
[   62.915305]  gic_handle_irq+0x64/0xc0
[   62.918951]  el1_irq+0xb0/0x140
[   62.922078]  schedule_timeout+0x218/0x3a0
[   62.926077]  wait_for_common+0x170/0x268
[   62.929983]  wait_for_completion_timeout+0x10/0x18
[   62.934761]  ioctl+0x64/0x270 [secom_mx_retune]
[   62.939281]  do_vfs_ioctl+0xb8/0x900
[   62.942838]  ksys_ioctl+0x44/0x90
[   62.946137]  __arm64_sys_ioctl+0x1c/0x28
[   62.950044]  el0_svc_common+0x60/0xe8
[   62.953689]  el0_svc_handler+0x6c/0x88
[   62.957421]  el0_svc+0x8/0xc
[   62.960284] ---[ end trace 91b4fdfe685446c4 ]---
[   62.964934] ------------[ cut here ]------------

---
 drivers/dma/xilinx/zynqmp_dma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/dma/xilinx/zynqmp_dma.c b/drivers/dma/xilinx/zynqmp_dma.c
index 931e41a72..a2b0be07e 100644
--- a/drivers/dma/xilinx/zynqmp_dma.c
+++ b/drivers/dma/xilinx/zynqmp_dma.c
@@ -453,6 +453,7 @@ static void zynqmp_dma_free_desc_list(struct zynqmp_dma_chan *chan,
 
 	list_for_each_entry_safe(desc, next, list, node)
 		zynqmp_dma_free_descriptor(chan, desc);
+	INIT_LIST_HEAD(list);
 }
 
 /**
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
