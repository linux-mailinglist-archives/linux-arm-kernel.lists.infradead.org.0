Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83611DA8A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L89ttQ+vXFF6LjAePywxwAwTa3gphlbrm25NDb7zeyw=; b=iqf5n7dhzoB3SJ
	AmqNkzG2muilzbLto3Woi3Y80N6WTPmI9uBnqRdAfA8sCOqCMHpeZ0uYZOsFZZXcxBYOUnp9FGV3s
	VIRF726HsII1NZhj4TWZSB12XUsHYLU4O4eVj3bMQNSjE1Eu9hf1IK9ZBpO7bnUQSX9TyfavpYU07
	51YhpWCjVWQlQkjo43l06i3aw/jx3InSXd556aepISLXVuXpmqb2A2ZJAiTGXe1+EQyxqOIxHphtP
	5/vnScHOUgPXOK9qEmE7lxopjbwPRK7QjeiasXmuBEgxhAEA0g3pfkB80xErhaUAf5N8PNlTSwQ6A
	O3f7MRgpBv/35lRAiokQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2I7-0000fs-Eh; Thu, 17 Oct 2019 09:41:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2Hr-0000en-Rp; Thu, 17 Oct 2019 09:41:41 +0000
X-UUID: 5b752c497efe4531a19ad1d2a695b948-20191017
X-UUID: 5b752c497efe4531a19ad1d2a695b948-20191017
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <min.guo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2034730448; Thu, 17 Oct 2019 01:41:28 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 02:41:35 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 17:41:31 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 17 Oct 2019 17:41:31 +0800
From: <min.guo@mediatek.com>
To: Bin Liu <b-liu@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v8 3/6] usb: musb: Add get/set toggle hooks
Date: Thu, 17 Oct 2019 17:41:23 +0800
Message-ID: <20191017094126.29045-4-min.guo@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191017094126.29045-1-min.guo@mediatek.com>
References: <20191017094126.29045-1-min.guo@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: CC73E4CBA91BB4962C9F220C472737D4449DE185FF13F1BE3A9B5C80953B5ACB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_024139_908421_48FD4335 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

Add get/set toggle hooks in struct musb_io and struct musb_platform_ops
for special platform; remove function musb_save_toggle, use the set/get
callback to handle toggle.

Signed-off-by: Min Guo <min.guo@mediatek.com>
---
changes in v8:
1. no changes

changes in v7:
1. no changes

changes in v6:
1. no changes

changes in v5:
1. no changes

new patch based on v4:
---
 drivers/usb/musb/musb_core.c | 42 ++++++++++++++++++++++++++++++++++++++++
 drivers/usb/musb/musb_core.h |  5 +++++
 drivers/usb/musb/musb_host.c | 46 ++++++++++----------------------------------
 drivers/usb/musb/musb_io.h   |  4 ++++
 4 files changed, 61 insertions(+), 36 deletions(-)

diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index bd63450af..690b8da 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -274,6 +274,38 @@ static void musb_default_writew(void __iomem *addr, unsigned offset, u16 data)
 	__raw_writew(data, addr + offset);
 }
 
+static u16 musb_default_get_toggle(struct musb_qh *qh, int is_out)
+{
+	void __iomem *epio = qh->hw_ep->regs;
+	u16 csr;
+
+	if (is_out)
+		csr = musb_readw(epio, MUSB_TXCSR) & MUSB_TXCSR_H_DATATOGGLE;
+	else
+		csr = musb_readw(epio, MUSB_RXCSR) & MUSB_RXCSR_H_DATATOGGLE;
+
+	return csr;
+}
+
+static u16 musb_default_set_toggle(struct musb_qh *qh, int is_out,
+				   struct urb *urb)
+{
+	u16 csr;
+	u16 toggle;
+
+	toggle = usb_gettoggle(urb->dev, qh->epnum, is_out);
+
+	if (is_out)
+		csr = toggle ? (MUSB_TXCSR_H_WR_DATATOGGLE
+				| MUSB_TXCSR_H_DATATOGGLE)
+				: MUSB_TXCSR_CLRDATATOG;
+	else
+		csr = toggle ? (MUSB_RXCSR_H_WR_DATATOGGLE
+				| MUSB_RXCSR_H_DATATOGGLE) : 0;
+
+	return csr;
+}
+
 /*
  * Load an endpoint's FIFO
  */
@@ -2271,6 +2303,16 @@ static void musb_deassert_reset(struct work_struct *work)
 	else
 		musb->io.write_fifo = musb_default_write_fifo;
 
+	if (musb->ops->get_toggle)
+		musb->io.get_toggle = musb->ops->get_toggle;
+	else
+		musb->io.get_toggle = musb_default_get_toggle;
+
+	if (musb->ops->set_toggle)
+		musb->io.set_toggle = musb->ops->set_toggle;
+	else
+		musb->io.set_toggle = musb_default_set_toggle;
+
 	if (!musb->xceiv->io_ops) {
 		musb->xceiv->io_dev = musb->controller;
 		musb->xceiv->io_priv = musb->mregs;
diff --git a/drivers/usb/musb/musb_core.h b/drivers/usb/musb/musb_core.h
index 04203b7..9f5a69c 100644
--- a/drivers/usb/musb/musb_core.h
+++ b/drivers/usb/musb/musb_core.h
@@ -27,6 +27,7 @@
 struct musb;
 struct musb_hw_ep;
 struct musb_ep;
+struct musb_qh;
 
 /* Helper defines for struct musb->hwvers */
 #define MUSB_HWVERS_MAJOR(x)	((x >> 10) & 0x1f)
@@ -123,6 +124,8 @@ enum musb_g_ep0_state {
  * @writew:	write 16 bits
  * @read_fifo:	reads the fifo
  * @write_fifo:	writes to fifo
+ * @get_toggle:	platform specific get toggle function
+ * @set_toggle:	platform specific set toggle function
  * @dma_init:	platform specific dma init function
  * @dma_exit:	platform specific dma exit function
  * @init:	turns on clocks, sets up platform-specific registers, etc
@@ -167,6 +170,8 @@ struct musb_platform_ops {
 	void	(*writew)(void __iomem *addr, unsigned offset, u16 data);
 	void	(*read_fifo)(struct musb_hw_ep *hw_ep, u16 len, u8 *buf);
 	void	(*write_fifo)(struct musb_hw_ep *hw_ep, u16 len, const u8 *buf);
+	u16	(*get_toggle)(struct musb_qh *qh, int is_out);
+	u16	(*set_toggle)(struct musb_qh *qh, int is_out, struct urb *urb);
 	struct dma_controller *
 		(*dma_init) (struct musb *musb, void __iomem *base);
 	void	(*dma_exit)(struct dma_controller *c);
diff --git a/drivers/usb/musb/musb_host.c b/drivers/usb/musb/musb_host.c
index 5a44b70..886c9b6 100644
--- a/drivers/usb/musb/musb_host.c
+++ b/drivers/usb/musb/musb_host.c
@@ -286,26 +286,6 @@ static void musb_giveback(struct musb *musb, struct urb *urb, int status)
 	spin_lock(&musb->lock);
 }
 
-/* For bulk/interrupt endpoints only */
-static inline void musb_save_toggle(struct musb_qh *qh, int is_in,
-				    struct urb *urb)
-{
-	void __iomem		*epio = qh->hw_ep->regs;
-	u16			csr;
-
-	/*
-	 * FIXME: the current Mentor DMA code seems to have
-	 * problems getting toggle correct.
-	 */
-
-	if (is_in)
-		csr = musb_readw(epio, MUSB_RXCSR) & MUSB_RXCSR_H_DATATOGGLE;
-	else
-		csr = musb_readw(epio, MUSB_TXCSR) & MUSB_TXCSR_H_DATATOGGLE;
-
-	usb_settoggle(urb->dev, qh->epnum, !is_in, csr ? 1 : 0);
-}
-
 /*
  * Advance this hardware endpoint's queue, completing the specified URB and
  * advancing to either the next URB queued to that qh, or else invalidating
@@ -320,6 +300,7 @@ static void musb_advance_schedule(struct musb *musb, struct urb *urb,
 	struct musb_hw_ep	*ep = qh->hw_ep;
 	int			ready = qh->is_ready;
 	int			status;
+	u16			toggle;
 
 	status = (urb->status == -EINPROGRESS) ? 0 : urb->status;
 
@@ -327,7 +308,8 @@ static void musb_advance_schedule(struct musb *musb, struct urb *urb,
 	switch (qh->type) {
 	case USB_ENDPOINT_XFER_BULK:
 	case USB_ENDPOINT_XFER_INT:
-		musb_save_toggle(qh, is_in, urb);
+		toggle = musb->io.get_toggle(qh, !is_in);
+		usb_settoggle(urb->dev, qh->epnum, !is_in, toggle ? 1 : 0);
 		break;
 	case USB_ENDPOINT_XFER_ISOC:
 		if (status == 0 && urb->error_count)
@@ -772,13 +754,8 @@ static void musb_ep_program(struct musb *musb, u8 epnum,
 					);
 			csr |= MUSB_TXCSR_MODE;
 
-			if (!hw_ep->tx_double_buffered) {
-				if (usb_gettoggle(urb->dev, qh->epnum, 1))
-					csr |= MUSB_TXCSR_H_WR_DATATOGGLE
-						| MUSB_TXCSR_H_DATATOGGLE;
-				else
-					csr |= MUSB_TXCSR_CLRDATATOG;
-			}
+			if (!hw_ep->tx_double_buffered)
+				csr |= musb->io.set_toggle(qh, is_out, urb);
 
 			musb_writew(epio, MUSB_TXCSR, csr);
 			/* REVISIT may need to clear FLUSHFIFO ... */
@@ -860,17 +837,12 @@ static void musb_ep_program(struct musb *musb, u8 epnum,
 
 	/* IN/receive */
 	} else {
-		u16	csr;
+		u16 csr = 0;
 
 		if (hw_ep->rx_reinit) {
 			musb_rx_reinit(musb, qh, epnum);
+			csr |= musb->io.set_toggle(qh, is_out, urb);
 
-			/* init new state: toggle and NYET, maybe DMA later */
-			if (usb_gettoggle(urb->dev, qh->epnum, 0))
-				csr = MUSB_RXCSR_H_WR_DATATOGGLE
-					| MUSB_RXCSR_H_DATATOGGLE;
-			else
-				csr = 0;
 			if (qh->type == USB_ENDPOINT_XFER_INT)
 				csr |= MUSB_RXCSR_DISNYET;
 
@@ -933,6 +905,7 @@ static void musb_bulk_nak_timeout(struct musb *musb, struct musb_hw_ep *ep,
 	void __iomem		*epio = ep->regs;
 	struct musb_qh		*cur_qh, *next_qh;
 	u16			rx_csr, tx_csr;
+	u16			toggle;
 
 	musb_ep_select(mbase, ep->epnum);
 	if (is_in) {
@@ -970,7 +943,8 @@ static void musb_bulk_nak_timeout(struct musb *musb, struct musb_hw_ep *ep,
 			urb->actual_length += dma->actual_len;
 			dma->actual_len = 0L;
 		}
-		musb_save_toggle(cur_qh, is_in, urb);
+		toggle = musb->io.get_toggle(cur_qh, !is_in);
+		usb_settoggle(urb->dev, cur_qh->epnum, !is_in, toggle ? 1 : 0);
 
 		if (is_in) {
 			/* move cur_qh to end of queue */
diff --git a/drivers/usb/musb/musb_io.h b/drivers/usb/musb/musb_io.h
index 8058a58..8179334 100644
--- a/drivers/usb/musb/musb_io.h
+++ b/drivers/usb/musb/musb_io.h
@@ -22,6 +22,8 @@
  * @read_fifo:	platform specific function to read fifo
  * @write_fifo:	platform specific function to write fifo
  * @busctl_offset: platform specific function to get busctl offset
+ * @get_toggle: platform specific function to get toggle
+ * @set_toggle: platform specific function to set toggle
  */
 struct musb_io {
 	u32	(*ep_offset)(u8 epnum, u16 offset);
@@ -30,6 +32,8 @@ struct musb_io {
 	void	(*read_fifo)(struct musb_hw_ep *hw_ep, u16 len, u8 *buf);
 	void	(*write_fifo)(struct musb_hw_ep *hw_ep, u16 len, const u8 *buf);
 	u32	(*busctl_offset)(u8 epnum, u16 offset);
+	u16	(*get_toggle)(struct musb_qh *qh, int is_out);
+	u16	(*set_toggle)(struct musb_qh *qh, int is_out, struct urb *urb);
 };
 
 /* Do not add new entries here, add them the struct musb_io instead */
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
