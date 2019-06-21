Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D9D4E1D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 10:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qc5hJmZ3SRg8jh+DPHEgOv/3Nl2BBkDEE5A6xRf0vmI=; b=YHH
	p0SKrFRbHOGPmAUXTUxLsNhHPOy0py/CkOpcuF9ESpz9VLcoP4sGXOY7nl9TQa2DASUWxYVHzmjyx
	c7dmEE7BICSQ3Q9zVqcz1CebuXexi8MGqCsuLRkOqlhCAmv4KyGs8Xs7bOGJ7gxQ3H1tB2UZyOtJQ
	BYrbMxe58fVqR3xagu5y/1En9aNoDi4oEwHUPQClejAVlJPoRXqcct7ADxcf/i7CFtYr3SyFYbLXZ
	XXhopYyccr8yPDgEiWF88JA6CIuTJf5o4qlfEWHuCU9G7k8zy1l3upXxtA1ODlUNRf47rQAXekvr5
	n46sxbxPSrTaq8SiB+NBS5qu7HK7/eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heEo6-0002Dz-Jp; Fri, 21 Jun 2019 08:22:02 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heEns-0002DM-AT
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 08:21:49 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2CE1C1A09BC;
 Fri, 21 Jun 2019 10:21:43 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 124901A09B4;
 Fri, 21 Jun 2019 10:21:37 +0200 (CEST)
Received: from mega.ap.freescale.net (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 59F24402CF;
 Fri, 21 Jun 2019 16:21:29 +0800 (SGT)
From: yibin.gong@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 vkoul@kernel.org, dan.j.williams@intel.com, thesven73@gmail.com,
 m.olbrich@pengutronix.de
Subject: [PATCH v2] dmaengine: imx-sdma: remove BD_INTR for channel0
Date: Fri, 21 Jun 2019 16:23:06 +0800
Message-Id: <20190621082306.34415-1-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_012148_503174_0A3E2BBB 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org,
 linux-imx@nxp.com, stable@vger.kernel.org, kernel@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Gong <yibin.gong@nxp.com>

It is possible for an irq triggered by channel0 to be received later
after clks are disabled once firmware loaded during sdma probe. If
that happens then clearing them by writing to SDMA_H_INTR won't work
and the kernel will hang processing infinite interrupts. Actually,
don't need interrupt triggered on channel0 since it's pollling
SDMA_H_STATSTOP to know channel0 done rather than interrupt in
current code, just clear BD_INTR to disable channel0 interrupt to
avoid the above case.
This issue was brought by commit 1d069bfa3c78 ("dmaengine: imx-sdma:
ack channel 0 IRQ in the interrupt handler") which didn't take care
the above case.

Fixes: 1d069bfa3c78 ("dmaengine: imx-sdma: ack channel 0 IRQ in the interrupt handler")
Cc: stable@vger.kernel.org #5.0+
Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Reported-by: Sven Van Asbroeck <thesven73@gmail.com>
Tested-by: Sven Van Asbroeck <thesven73@gmail.com>
---
 drivers/dma/imx-sdma.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index deea9aa..b5a1ee2 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -742,7 +742,7 @@ static int sdma_load_script(struct sdma_engine *sdma, void *buf, int size,
 	spin_lock_irqsave(&sdma->channel_0_lock, flags);
 
 	bd0->mode.command = C0_SETPM;
-	bd0->mode.status = BD_DONE | BD_INTR | BD_WRAP | BD_EXTD;
+	bd0->mode.status = BD_DONE | BD_WRAP | BD_EXTD;
 	bd0->mode.count = size / 2;
 	bd0->buffer_addr = buf_phys;
 	bd0->ext_buffer_addr = address;
@@ -1064,7 +1064,7 @@ static int sdma_load_context(struct sdma_channel *sdmac)
 	context->gReg[7] = sdmac->watermark_level;
 
 	bd0->mode.command = C0_SETDM;
-	bd0->mode.status = BD_DONE | BD_INTR | BD_WRAP | BD_EXTD;
+	bd0->mode.status = BD_DONE | BD_WRAP | BD_EXTD;
 	bd0->mode.count = sizeof(*context) / 4;
 	bd0->buffer_addr = sdma->context_phys;
 	bd0->ext_buffer_addr = 2048 + (sizeof(*context) / 4) * channel;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
