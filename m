Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C78DA758
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9j57fbvCpRzs1h9T/JDsM7N0wrE02nynLdop/ulGTAM=; b=NBElf5XVjNUdcS
	Zk/fhK9XQFLpvDs4OIkumITT73pVoXco4xMq2XArknICTFWEYsZw2vO6otHkcCxFr3L2GZBXMsqsU
	KzBf1FWlkXsUt0FVlrrfDwE4mO7TuXOFFT/zg45wBmwfB741J9uSYRtQYU8gYWGE6NfiIJf2qjGCp
	E06+rzOtTcy7UP0bjfJUiUJjI3qRt02NMqO/dLMPC8vekKIk+KO7eOaflFaDl7WVUkAKv89Sq51z1
	SraKxz/q+jBh3VTBp+moHJdyLGuAGMil3syGh7pRvXi60BET5Dx+KKF+V2Q9+C+Wqrz7+17XGiTDC
	ZrgO+M4A7tp8fa33TBng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL18X-0002Az-S9; Thu, 17 Oct 2019 08:27:57 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL179-00017h-Nb; Thu, 17 Oct 2019 08:26:33 +0000
X-UUID: aeede28ff536403b84daf8a2afc59e6d-20191017
X-UUID: aeede28ff536403b84daf8a2afc59e6d-20191017
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <min.guo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1870222166; Thu, 17 Oct 2019 00:26:19 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 01:26:24 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 16:26:22 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 17 Oct 2019 16:26:21 +0800
From: <min.guo@mediatek.com>
To: Bin Liu <b-liu@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH RESEND v7 5/6] usb: musb: Add musb_clearb/w() interface
Date: Thu, 17 Oct 2019 16:25:53 +0800
Message-ID: <20191017082554.27953-6-min.guo@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191017082554.27953-1-min.guo@mediatek.com>
References: <20191017082554.27953-1-min.guo@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 625FE4382A70F8FBDF17CB6D5DEA544ECCBCB60DDBEA51D794C7C92F828D70FB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_012631_787300_39AFB5F6 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 hdegoede@redhat.com, tony@atomide.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Alan Stern <stern@rowland.harvard.edu>, Min Guo <min.guo@mediatek.com>,
 chunfeng.yun@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Min Guo <min.guo@mediatek.com>

Delete the const attribute of addr parameter in readb/w/l hooks, these
changes are for implementing clearing W1C registers.
Replace musb_readb/w with musb_clearb/w to clear the interrupt status.

Signed-off-by: Min Guo <min.guo@mediatek.com>
---
changes in v7:
1. no changes

changes in v6:
1. no changes

changes in v5:
1. Replace musb_readb() with musb_clearb() to clear dma pending interrupts

new patch based on v4:
---
 drivers/usb/musb/musb_core.c | 32 +++++++++++++++++++++++---------
 drivers/usb/musb/musb_core.h |  8 ++++++--
 drivers/usb/musb/musb_io.h   |  8 +++++---
 drivers/usb/musb/musbhsdma.c |  2 +-
 drivers/usb/musb/sunxi.c     |  4 ++--
 drivers/usb/musb/tusb6010.c  |  2 +-
 6 files changed, 38 insertions(+), 18 deletions(-)

diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index 690b8da..9d4399d 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -246,7 +246,7 @@ static u32 musb_default_busctl_offset(u8 epnum, u16 offset)
 	return 0x80 + (0x08 * epnum) + offset;
 }
 
-static u8 musb_default_readb(const void __iomem *addr, unsigned offset)
+static u8 musb_default_readb(void __iomem *addr, unsigned offset)
 {
 	u8 data =  __raw_readb(addr + offset);
 
@@ -260,7 +260,7 @@ static void musb_default_writeb(void __iomem *addr, unsigned offset, u8 data)
 	__raw_writeb(data, addr + offset);
 }
 
-static u16 musb_default_readw(const void __iomem *addr, unsigned offset)
+static u16 musb_default_readw(void __iomem *addr, unsigned offset)
 {
 	u16 data = __raw_readw(addr + offset);
 
@@ -396,19 +396,25 @@ static void musb_default_read_fifo(struct musb_hw_ep *hw_ep, u16 len, u8 *dst)
 /*
  * Old style IO functions
  */
-u8 (*musb_readb)(const void __iomem *addr, unsigned offset);
+u8 (*musb_readb)(void __iomem *addr, unsigned offset);
 EXPORT_SYMBOL_GPL(musb_readb);
 
 void (*musb_writeb)(void __iomem *addr, unsigned offset, u8 data);
 EXPORT_SYMBOL_GPL(musb_writeb);
 
-u16 (*musb_readw)(const void __iomem *addr, unsigned offset);
+u8 (*musb_clearb)(void __iomem *addr, unsigned int offset);
+EXPORT_SYMBOL_GPL(musb_clearb);
+
+u16 (*musb_readw)(void __iomem *addr, unsigned offset);
 EXPORT_SYMBOL_GPL(musb_readw);
 
 void (*musb_writew)(void __iomem *addr, unsigned offset, u16 data);
 EXPORT_SYMBOL_GPL(musb_writew);
 
-u32 musb_readl(const void __iomem *addr, unsigned offset)
+u16 (*musb_clearw)(void __iomem *addr, unsigned int offset);
+EXPORT_SYMBOL_GPL(musb_clearw);
+
+u32 musb_readl(void __iomem *addr, unsigned offset)
 {
 	u32 data = __raw_readl(addr + offset);
 
@@ -1047,7 +1053,6 @@ static irqreturn_t musb_stage0_irq(struct musb *musb, u8 int_usb,
 static void musb_disable_interrupts(struct musb *musb)
 {
 	void __iomem	*mbase = musb->mregs;
-	u16	temp;
 
 	/* disable interrupts */
 	musb_writeb(mbase, MUSB_INTRUSBE, 0);
@@ -1057,9 +1062,9 @@ static void musb_disable_interrupts(struct musb *musb)
 	musb_writew(mbase, MUSB_INTRRXE, 0);
 
 	/*  flush pending interrupts */
-	temp = musb_readb(mbase, MUSB_INTRUSB);
-	temp = musb_readw(mbase, MUSB_INTRTX);
-	temp = musb_readw(mbase, MUSB_INTRRX);
+	musb_clearb(mbase, MUSB_INTRUSB);
+	musb_clearw(mbase, MUSB_INTRTX);
+	musb_clearw(mbase, MUSB_INTRRX);
 }
 
 static void musb_enable_interrupts(struct musb *musb)
@@ -2278,10 +2283,19 @@ static void musb_deassert_reset(struct work_struct *work)
 		musb_readb = musb->ops->readb;
 	if (musb->ops->writeb)
 		musb_writeb = musb->ops->writeb;
+	if (musb->ops->clearb)
+		musb_clearb = musb->ops->clearb;
+	else
+		musb_clearb = musb_readb;
+
 	if (musb->ops->readw)
 		musb_readw = musb->ops->readw;
 	if (musb->ops->writew)
 		musb_writew = musb->ops->writew;
+	if (musb->ops->clearw)
+		musb_clearw = musb->ops->clearw;
+	else
+		musb_clearw = musb_readw;
 
 #ifndef CONFIG_MUSB_PIO_ONLY
 	if (!musb->ops->dma_init || !musb->ops->dma_exit) {
diff --git a/drivers/usb/musb/musb_core.h b/drivers/usb/musb/musb_core.h
index 9f5a69c..0d9a35f 100644
--- a/drivers/usb/musb/musb_core.h
+++ b/drivers/usb/musb/musb_core.h
@@ -120,8 +120,10 @@ enum musb_g_ep0_state {
  * @fifo_offset: returns the fifo offset
  * @readb:	read 8 bits
  * @writeb:	write 8 bits
+ * @clearb:	could be clear-on-readb or W1C
  * @readw:	read 16 bits
  * @writew:	write 16 bits
+ * @clearw:	could be clear-on-readw or W1C
  * @read_fifo:	reads the fifo
  * @write_fifo:	writes to fifo
  * @get_toggle:	platform specific get toggle function
@@ -164,10 +166,12 @@ struct musb_platform_ops {
 	u16	fifo_mode;
 	u32	(*fifo_offset)(u8 epnum);
 	u32	(*busctl_offset)(u8 epnum, u16 offset);
-	u8	(*readb)(const void __iomem *addr, unsigned offset);
+	u8	(*readb)(void __iomem *addr, unsigned offset);
 	void	(*writeb)(void __iomem *addr, unsigned offset, u8 data);
-	u16	(*readw)(const void __iomem *addr, unsigned offset);
+	u8	(*clearb)(void __iomem *addr, unsigned int offset);
+	u16	(*readw)(void __iomem *addr, unsigned offset);
 	void	(*writew)(void __iomem *addr, unsigned offset, u16 data);
+	u16	(*clearw)(void __iomem *addr, unsigned int offset);
 	void	(*read_fifo)(struct musb_hw_ep *hw_ep, u16 len, u8 *buf);
 	void	(*write_fifo)(struct musb_hw_ep *hw_ep, u16 len, const u8 *buf);
 	u16	(*get_toggle)(struct musb_qh *qh, int is_out);
diff --git a/drivers/usb/musb/musb_io.h b/drivers/usb/musb/musb_io.h
index 8179334..7200596 100644
--- a/drivers/usb/musb/musb_io.h
+++ b/drivers/usb/musb/musb_io.h
@@ -37,11 +37,13 @@ struct musb_io {
 };
 
 /* Do not add new entries here, add them the struct musb_io instead */
-extern u8 (*musb_readb)(const void __iomem *addr, unsigned offset);
+extern u8 (*musb_readb)(void __iomem *addr, unsigned offset);
 extern void (*musb_writeb)(void __iomem *addr, unsigned offset, u8 data);
-extern u16 (*musb_readw)(const void __iomem *addr, unsigned offset);
+extern u8 (*musb_clearb)(void __iomem *addr, unsigned int offset);
+extern u16 (*musb_readw)(void __iomem *addr, unsigned offset);
 extern void (*musb_writew)(void __iomem *addr, unsigned offset, u16 data);
-extern u32 musb_readl(const void __iomem *addr, unsigned offset);
+extern u16 (*musb_clearw)(void __iomem *addr, unsigned int offset);
+extern u32 musb_readl(void __iomem *addr, unsigned offset);
 extern void musb_writel(void __iomem *addr, unsigned offset, u32 data);
 
 #endif
diff --git a/drivers/usb/musb/musbhsdma.c b/drivers/usb/musb/musbhsdma.c
index d549c0b..975c61e 100644
--- a/drivers/usb/musb/musbhsdma.c
+++ b/drivers/usb/musb/musbhsdma.c
@@ -284,7 +284,7 @@ irqreturn_t dma_controller_irq(int irq, void *private_data)
 
 	spin_lock_irqsave(&musb->lock, flags);
 
-	int_hsdma = musb_readb(mbase, MUSB_HSDMA_INTR);
+	int_hsdma = musb_clearb(mbase, MUSB_HSDMA_INTR);
 
 	if (!int_hsdma) {
 		musb_dbg(musb, "spurious DMA irq");
diff --git a/drivers/usb/musb/sunxi.c b/drivers/usb/musb/sunxi.c
index 832a41f..2c1bbaa 100644
--- a/drivers/usb/musb/sunxi.c
+++ b/drivers/usb/musb/sunxi.c
@@ -407,7 +407,7 @@ static u32 sunxi_musb_busctl_offset(u8 epnum, u16 offset)
 	return SUNXI_MUSB_TXFUNCADDR + offset;
 }
 
-static u8 sunxi_musb_readb(const void __iomem *addr, unsigned offset)
+static u8 sunxi_musb_readb(void __iomem *addr, unsigned offset)
 {
 	struct sunxi_glue *glue;
 
@@ -520,7 +520,7 @@ static void sunxi_musb_writeb(void __iomem *addr, unsigned offset, u8 data)
 		(int)(addr - sunxi_musb->mregs));
 }
 
-static u16 sunxi_musb_readw(const void __iomem *addr, unsigned offset)
+static u16 sunxi_musb_readw(void __iomem *addr, unsigned offset)
 {
 	if (addr == sunxi_musb->mregs) {
 		/* generic control or fifo control reg access */
diff --git a/drivers/usb/musb/tusb6010.c b/drivers/usb/musb/tusb6010.c
index 3945328..cfb94f9 100644
--- a/drivers/usb/musb/tusb6010.c
+++ b/drivers/usb/musb/tusb6010.c
@@ -142,7 +142,7 @@ static void tusb_ep_select(void __iomem *mbase, u8 epnum)
 /*
  * TUSB6010 doesn't allow 8-bit access; 16-bit access is the minimum.
  */
-static u8 tusb_readb(const void __iomem *addr, unsigned offset)
+static u8 tusb_readb(void __iomem *addr, unsigned offset)
 {
 	u16 tmp;
 	u8 val;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
