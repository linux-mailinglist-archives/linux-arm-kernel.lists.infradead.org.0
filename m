Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0071618CE07
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 13:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N5ru/uPFfPSNXCOwS//cLUcZ9ZjEezEjkSZKCV/BeR8=; b=rYuX/2CqGmHp5Y
	gf4RjwRk01582Uf83XTHBTYfkszYhcMvTlNqgEoo0MtWaKtiz2EWHyNA37YJrFE0/8oQuYM2iFEPG
	bCPKpCZNLjMJeAZiIAtsze9rqiBWVjdipvIPCBircP5CMvHOX2ULEfa0yWN38JwVfNwctAlBLGh9x
	0OQC9mw5VUKmKNICVGlCnjvPT1w//p+GKU6G9f78RvQj2XTtUAyiIQAdeqBggAdl0b6wQVzJ0CdXT
	0BFWqS9vp3cXPzlvVqP1fHM295tF05LIcrE0FGGZKNhRbru19ktK5IXlGAIiRxbm/otuY2a5Eb5gK
	Xk6UUE+z6mBlNhqIpMgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFH8C-0006IX-Ls; Fri, 20 Mar 2020 12:52:08 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFH85-0006I0-I0
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 12:52:03 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02KCpsvZ116690;
 Fri, 20 Mar 2020 07:51:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584708714;
 bh=KOUeiPoRHoGPb/5jBL8TKLgULIFGDNl5+M3+te9LDzM=;
 h=From:To:CC:Subject:Date;
 b=J0tHg/vI5vvTH3sEYwrAdo8gXp5dqpn60EVb8N02m6iShHCAPtRSdMSDNHW61uvae
 1xt8Pbu3xT4mdyoKVB7zefMsqr8l1WVbu8857ntSQRkYKcv+bJfFbNY3ne21THfmXB
 2zGEvyDHaUJDusNFw0mZE2QHojYCLyypu1964BUI=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02KCps3P078768;
 Fri, 20 Mar 2020 07:51:54 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Mar 2020 07:51:53 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Mar 2020 07:51:53 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02KCpoq7074768;
 Fri, 20 Mar 2020 07:51:51 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <gregkh@linuxfoundation.org>, <vigneshr@ti.com>
Subject: [PATCH] serial: 8250_omap: Fix sleeping function called from invalid
 context during probe
Date: Fri, 20 Mar 2020 14:52:00 +0200
Message-ID: <20200320125200.6772-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_055201_700347_F0A0CFFD 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tony@atomide.com, nsekhar@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tomi.valkeinen@ti.com, linux-serial@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When booting j721e the following bug is printed:

[    1.154821] BUG: sleeping function called from invalid context at kernel/sched/completion.c:99
[    1.154827] in_atomic(): 0, irqs_disabled(): 128, non_block: 0, pid: 12, name: kworker/0:1
[    1.154832] 3 locks held by kworker/0:1/12:
[    1.154836]  #0: ffff000840030728 ((wq_completion)events){+.+.}, at: process_one_work+0x1d4/0x6e8
[    1.154852]  #1: ffff80001214fdd8 (deferred_probe_work){+.+.}, at: process_one_work+0x1d4/0x6e8
[    1.154860]  #2: ffff00084060b170 (&dev->mutex){....}, at: __device_attach+0x38/0x138
[    1.154872] irq event stamp: 63096
[    1.154881] hardirqs last  enabled at (63095): [<ffff800010b74318>] _raw_spin_unlock_irqrestore+0x70/0x78
[    1.154887] hardirqs last disabled at (63096): [<ffff800010b740d8>] _raw_spin_lock_irqsave+0x28/0x80
[    1.154893] softirqs last  enabled at (62254): [<ffff800010080c88>] _stext+0x488/0x564
[    1.154899] softirqs last disabled at (62247): [<ffff8000100fdb3c>] irq_exit+0x114/0x140
[    1.154906] CPU: 0 PID: 12 Comm: kworker/0:1 Not tainted 5.6.0-rc6-next-20200318-00094-g45e4089b0bd3 #221
[    1.154911] Hardware name: Texas Instruments K3 J721E SoC (DT)
[    1.154917] Workqueue: events deferred_probe_work_func
[    1.154923] Call trace:
[    1.154928]  dump_backtrace+0x0/0x190
[    1.154933]  show_stack+0x14/0x20
[    1.154940]  dump_stack+0xe0/0x148
[    1.154946]  ___might_sleep+0x150/0x1f0
[    1.154952]  __might_sleep+0x4c/0x80
[    1.154957]  wait_for_completion_timeout+0x40/0x140
[    1.154964]  ti_sci_set_device_state+0xa0/0x158
[    1.154969]  ti_sci_cmd_get_device_exclusive+0x14/0x20
[    1.154977]  ti_sci_dev_start+0x34/0x50
[    1.154984]  genpd_runtime_resume+0x78/0x1f8
[    1.154991]  __rpm_callback+0x3c/0x140
[    1.154996]  rpm_callback+0x20/0x80
[    1.155001]  rpm_resume+0x568/0x758
[    1.155007]  __pm_runtime_resume+0x44/0xb0
[    1.155013]  omap8250_probe+0x2b4/0x508
[    1.155019]  platform_drv_probe+0x50/0xa0
[    1.155023]  really_probe+0xd4/0x318
[    1.155028]  driver_probe_device+0x54/0xe8
[    1.155033]  __device_attach_driver+0x80/0xb8
[    1.155039]  bus_for_each_drv+0x74/0xc0
[    1.155044]  __device_attach+0xdc/0x138
[    1.155049]  device_initial_probe+0x10/0x18
[    1.155053]  bus_probe_device+0x98/0xa0
[    1.155058]  deferred_probe_work_func+0x74/0xb0
[    1.155063]  process_one_work+0x280/0x6e8
[    1.155068]  worker_thread+0x48/0x430
[    1.155073]  kthread+0x108/0x138
[    1.155079]  ret_from_fork+0x10/0x18

To fix the bug we need to first call pm_runtime_enable() prior to any
pm_runtime calls.

Reported-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/tty/serial/8250/8250_omap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250_omap.c b/drivers/tty/serial/8250/8250_omap.c
index a2e5a4e77000..611e3002d68c 100644
--- a/drivers/tty/serial/8250/8250_omap.c
+++ b/drivers/tty/serial/8250/8250_omap.c
@@ -1202,6 +1202,7 @@ static int omap8250_probe(struct platform_device *pdev)
 	spin_lock_init(&priv->rx_dma_lock);
 
 	device_init_wakeup(&pdev->dev, true);
+	pm_runtime_enable(&pdev->dev);
 	pm_runtime_use_autosuspend(&pdev->dev);
 
 	/*
@@ -1215,7 +1216,6 @@ static int omap8250_probe(struct platform_device *pdev)
 		pm_runtime_set_autosuspend_delay(&pdev->dev, -1);
 
 	pm_runtime_irq_safe(&pdev->dev);
-	pm_runtime_enable(&pdev->dev);
 
 	pm_runtime_get_sync(&pdev->dev);
 
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
