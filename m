Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB8E172BF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 00:06:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sAecA+3JGQ+aTZS0syXVIpMA6jHVRnxyE9YSIxpDqWU=; b=JCtg50tvjO1OboEOXaBdBIgWlf
	/fDGXLEvcgdkJ1BL6DQwWgOjrLWauAKXie71zyupu005kqEaLPF1p6RRHDuZB2kFIGdvD7vWvfqLf
	AfRkxdSbKnQROx8YAS4YcZczJFkmKu4+5XwHg+r+a1VgTJhsGkOjNIH8XJTMf9/uPXBPXt33ZQNDp
	IzMJSLrBx23RG5ZtjisopWbRQeEntWog5MOk/XOJ5jfRB9y8mq8QrrVwJcLhG/8W6vapgQCPmkYOj
	AfjYVUW6X9ZuKzYaDYG9rlOCwHXyZY+aKEq5vnYOkfHsG0jkX0ewWwqFbzf3dBr3LhJAz7FZhnDnf
	tk1FMflw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7SET-0007xU-Mg; Thu, 27 Feb 2020 23:06:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7SDY-0007OG-81
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 23:05:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id y1so415322plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 15:05:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TGRr84+IpdtBiWX0A5OzcCgQJEEXkfcXMJvYKMD+RbQ=;
 b=K0KhfOlQbno2uzn3+YUe7YdtI654pSn4rQDzn4Vsvdi6qSdpFjxtXushKpX036SPA8
 9Fc3rtZEe1LwTBc3GGlu0ct1O82EwKW9g/lBxo/0bAIAynS5sGO6W5Nl1e/pXzBDpnMI
 oGm925A8OXma3dDp7zmc21Ii5VG8gpR01ymhMMf1vfX/VqtGE7hBAgjO/gY0ROqrYZt4
 QJSBdAoCmxExwV6SgFuRLOlzCtWdeiUeHWFHtChkT9g1oVc0e8Q1ksrxSbppsovEqxHc
 y2/6lPK6lCnRZAe9uiRAwZbRnzZ8DlHImA3mIlT+4Kz1HPmU/v2rwEjCt3Kz71uG7da9
 k0FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TGRr84+IpdtBiWX0A5OzcCgQJEEXkfcXMJvYKMD+RbQ=;
 b=bxe9KRCRIpACCE2h7rD1jh11OUzqOs+EWtAw512Cj+bLmJULS/7OcB8iayvtbU7iE4
 VnVDiJu0t1Bd0o1fyCVnEKuz9q6+JyfHqA6uPe6m3Pz/jHBqy8lrDu8JPGSxI7VCxvU5
 f9EMpMUcQZMXhAZP6TS7IXp42BOvnHa+IWeHbw5NhISbEM5YUJoeVRCmoiEL/oEZqpx+
 Rwhjjo6/340J2qvtFtur82XLMcvxBC6fvIko3av8/HtEgeuuIlcb6vkoGvCh7hZBtJdP
 N6GTXnfBCcLoIMtIrBTNoOVc8C0H//E5HtGb4/wmLyuH3AF0iA/xLu/f6ZqdYzEaUal9
 1X6A==
X-Gm-Message-State: APjAAAWpdERrzKpwOCk3P7/wn3o4DjcUanY2ExpymRZBii4sJhf4K9pC
 5Oj6X+BQKaAHTqFi6tMYhZ8=
X-Google-Smtp-Source: APXvYqxFG9UYGywyPl85InfLu+bjS0e9y/11qsF7n1mP9FDoWkKWOd6KSbM+uMeCaEaAfxVfTTQJ1A==
X-Received: by 2002:a17:902:a706:: with SMTP id
 w6mr1116127plq.79.1582844719466; 
 Thu, 27 Feb 2020 15:05:19 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id w2sm8275975pfw.43.2020.02.27.15.05.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 15:05:18 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v5 2/7] usb: gadget: aspeed: read vhub properties from device
 tree
Date: Thu, 27 Feb 2020 15:05:02 -0800
Message-Id: <20200227230507.8682-3-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227230507.8682-1-rentao.bupt@gmail.com>
References: <20200227230507.8682-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_150520_306135_EED291F8 
X-CRM114-Status: GOOD (  23.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tao Ren <rentao.bupt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tao Ren <rentao.bupt@gmail.com>

The patch introduces 2 DT properties ("aspeed,vhub-downstream-ports" and
"aspeed,vhub-generic-endpoints") which replaces hardcoded port/endpoint
number. It is to make it more convenient to add support for newer vhub
revisions with different number of ports and endpoints.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
Reviewed-by: Joel Stanley <joel@jms.id.au>
Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
---
 No change in v5.
 Changes in v4:
   - use NUM_PORTS/NUM_GEN_EPs defined in vhub.h instead of introducing
     new constants (in v3).
 Changes in v3:
   - fall back to "default" number of ports and endpoints to avoid
     breaking existing ast2400/ast2500 platforms when according device
     tree properties are not defined.
 Changes in v2:
   - removed ast_vhub_config structure and moved vhub port/endpoint
     number into device tree.

 drivers/usb/gadget/udc/aspeed-vhub/core.c | 68 ++++++++++++++---------
 drivers/usb/gadget/udc/aspeed-vhub/dev.c  | 30 +++++++---
 drivers/usb/gadget/udc/aspeed-vhub/epn.c  |  4 +-
 drivers/usb/gadget/udc/aspeed-vhub/hub.c  | 15 ++---
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h | 28 +++++-----
 5 files changed, 88 insertions(+), 57 deletions(-)

diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
index 90b134d5dca9..f8ab8e012f34 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
@@ -99,7 +99,7 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
 {
 	struct ast_vhub *vhub = data;
 	irqreturn_t iret = IRQ_NONE;
-	u32 istat;
+	u32 i, istat;
 
 	/* Stale interrupt while tearing down */
 	if (!vhub->ep0_bufs)
@@ -121,10 +121,10 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
 
 	/* Handle generic EPs first */
 	if (istat & VHUB_IRQ_EP_POOL_ACK_STALL) {
-		u32 i, ep_acks = readl(vhub->regs + AST_VHUB_EP_ACK_ISR);
+		u32 ep_acks = readl(vhub->regs + AST_VHUB_EP_ACK_ISR);
 		writel(ep_acks, vhub->regs + AST_VHUB_EP_ACK_ISR);
 
-		for (i = 0; ep_acks && i < AST_VHUB_NUM_GEN_EPs; i++) {
+		for (i = 0; ep_acks && i < vhub->max_epns; i++) {
 			u32 mask = VHUB_EP_IRQ(i);
 			if (ep_acks & mask) {
 				ast_vhub_epn_ack_irq(&vhub->epns[i]);
@@ -134,21 +134,11 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
 	}
 
 	/* Handle device interrupts */
-	if (istat & (VHUB_IRQ_DEVICE1 |
-		     VHUB_IRQ_DEVICE2 |
-		     VHUB_IRQ_DEVICE3 |
-		     VHUB_IRQ_DEVICE4 |
-		     VHUB_IRQ_DEVICE5)) {
-		if (istat & VHUB_IRQ_DEVICE1)
-			ast_vhub_dev_irq(&vhub->ports[0].dev);
-		if (istat & VHUB_IRQ_DEVICE2)
-			ast_vhub_dev_irq(&vhub->ports[1].dev);
-		if (istat & VHUB_IRQ_DEVICE3)
-			ast_vhub_dev_irq(&vhub->ports[2].dev);
-		if (istat & VHUB_IRQ_DEVICE4)
-			ast_vhub_dev_irq(&vhub->ports[3].dev);
-		if (istat & VHUB_IRQ_DEVICE5)
-			ast_vhub_dev_irq(&vhub->ports[4].dev);
+	for (i = 0; i < vhub->max_ports; i++) {
+		u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
+
+		if (istat & dev_mask)
+			ast_vhub_dev_irq(&vhub->ports[i].dev);
 	}
 
 	/* Handle top-level vHub EP0 interrupts */
@@ -182,7 +172,7 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
 
 void ast_vhub_init_hw(struct ast_vhub *vhub)
 {
-	u32 ctrl;
+	u32 ctrl, port_mask, epn_mask;
 
 	UDCDBG(vhub,"(Re)Starting HW ...\n");
 
@@ -222,15 +212,20 @@ void ast_vhub_init_hw(struct ast_vhub *vhub)
 	}
 
 	/* Reset all devices */
-	writel(VHUB_SW_RESET_ALL, vhub->regs + AST_VHUB_SW_RESET);
+	port_mask = GENMASK(vhub->max_ports, 1);
+	writel(VHUB_SW_RESET_ROOT_HUB |
+	       VHUB_SW_RESET_DMA_CONTROLLER |
+	       VHUB_SW_RESET_EP_POOL |
+	       port_mask, vhub->regs + AST_VHUB_SW_RESET);
 	udelay(1);
 	writel(0, vhub->regs + AST_VHUB_SW_RESET);
 
 	/* Disable and cleanup EP ACK/NACK interrupts */
+	epn_mask = GENMASK(vhub->max_epns - 1, 0);
 	writel(0, vhub->regs + AST_VHUB_EP_ACK_IER);
 	writel(0, vhub->regs + AST_VHUB_EP_NACK_IER);
-	writel(VHUB_EP_IRQ_ALL, vhub->regs + AST_VHUB_EP_ACK_ISR);
-	writel(VHUB_EP_IRQ_ALL, vhub->regs + AST_VHUB_EP_NACK_ISR);
+	writel(epn_mask, vhub->regs + AST_VHUB_EP_ACK_ISR);
+	writel(epn_mask, vhub->regs + AST_VHUB_EP_NACK_ISR);
 
 	/* Default settings for EP0, enable HW hub EP1 */
 	writel(0, vhub->regs + AST_VHUB_EP0_CTRL);
@@ -273,7 +268,7 @@ static int ast_vhub_remove(struct platform_device *pdev)
 		return 0;
 
 	/* Remove devices */
-	for (i = 0; i < AST_VHUB_NUM_PORTS; i++)
+	for (i = 0; i < vhub->max_ports; i++)
 		ast_vhub_del_dev(&vhub->ports[i].dev);
 
 	spin_lock_irqsave(&vhub->lock, flags);
@@ -295,7 +290,7 @@ static int ast_vhub_remove(struct platform_device *pdev)
 	if (vhub->ep0_bufs)
 		dma_free_coherent(&pdev->dev,
 				  AST_VHUB_EP0_MAX_PACKET *
-				  (AST_VHUB_NUM_PORTS + 1),
+				  (vhub->max_ports + 1),
 				  vhub->ep0_bufs,
 				  vhub->ep0_bufs_dma);
 	vhub->ep0_bufs = NULL;
@@ -309,11 +304,32 @@ static int ast_vhub_probe(struct platform_device *pdev)
 	struct ast_vhub *vhub;
 	struct resource *res;
 	int i, rc = 0;
+	const struct device_node *np = pdev->dev.of_node;
 
 	vhub = devm_kzalloc(&pdev->dev, sizeof(*vhub), GFP_KERNEL);
 	if (!vhub)
 		return -ENOMEM;
 
+	rc = of_property_read_u32(np, "aspeed,vhub-downstream-ports",
+				  &vhub->max_ports);
+	if (rc < 0)
+		vhub->max_ports = AST_VHUB_NUM_PORTS;
+
+	vhub->ports = devm_kcalloc(&pdev->dev, vhub->max_ports,
+				   sizeof(*vhub->ports), GFP_KERNEL);
+	if (!vhub->ports)
+		return -ENOMEM;
+
+	rc = of_property_read_u32(np, "aspeed,vhub-generic-endpoints",
+				  &vhub->max_epns);
+	if (rc < 0)
+		vhub->max_epns = AST_VHUB_NUM_GEN_EPs;
+
+	vhub->epns = devm_kcalloc(&pdev->dev, vhub->max_epns,
+				  sizeof(*vhub->epns), GFP_KERNEL);
+	if (!vhub->epns)
+		return -ENOMEM;
+
 	spin_lock_init(&vhub->lock);
 	vhub->pdev = pdev;
 
@@ -366,7 +382,7 @@ static int ast_vhub_probe(struct platform_device *pdev)
 	 */
 	vhub->ep0_bufs = dma_alloc_coherent(&pdev->dev,
 					    AST_VHUB_EP0_MAX_PACKET *
-					    (AST_VHUB_NUM_PORTS + 1),
+					    (vhub->max_ports + 1),
 					    &vhub->ep0_bufs_dma, GFP_KERNEL);
 	if (!vhub->ep0_bufs) {
 		dev_err(&pdev->dev, "Failed to allocate EP0 DMA buffers\n");
@@ -380,7 +396,7 @@ static int ast_vhub_probe(struct platform_device *pdev)
 	ast_vhub_init_ep0(vhub, &vhub->ep0, NULL);
 
 	/* Init devices */
-	for (i = 0; i < AST_VHUB_NUM_PORTS && rc == 0; i++)
+	for (i = 0; i < vhub->max_ports && rc == 0; i++)
 		rc = ast_vhub_init_dev(vhub, i);
 	if (rc)
 		goto err;
diff --git a/drivers/usb/gadget/udc/aspeed-vhub/dev.c b/drivers/usb/gadget/udc/aspeed-vhub/dev.c
index 4008e7a51188..d268306a7bfe 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/dev.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/dev.c
@@ -77,7 +77,7 @@ static void ast_vhub_dev_enable(struct ast_vhub_dev *d)
 	writel(d->ep0.buf_dma, d->regs + AST_VHUB_DEV_EP0_DATA);
 
 	/* Clear stall on all EPs */
-	for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++) {
+	for (i = 0; i < d->max_epns; i++) {
 		struct ast_vhub_ep *ep = d->epns[i];
 
 		if (ep && (ep->epn.stalled || ep->epn.wedged)) {
@@ -137,7 +137,7 @@ static int ast_vhub_ep_feature(struct ast_vhub_dev *d,
 	     is_set ? "SET" : "CLEAR", ep_num, wValue);
 	if (ep_num == 0)
 		return std_req_complete;
-	if (ep_num >= AST_VHUB_NUM_GEN_EPs || !d->epns[ep_num - 1])
+	if (ep_num >= d->max_epns || !d->epns[ep_num - 1])
 		return std_req_stall;
 	if (wValue != USB_ENDPOINT_HALT)
 		return std_req_driver;
@@ -181,7 +181,7 @@ static int ast_vhub_ep_status(struct ast_vhub_dev *d,
 
 	DDBG(d, "GET_STATUS(ep%d)\n", ep_num);
 
-	if (ep_num >= AST_VHUB_NUM_GEN_EPs)
+	if (ep_num >= d->max_epns)
 		return std_req_stall;
 	if (ep_num != 0) {
 		ep = d->epns[ep_num - 1];
@@ -299,7 +299,7 @@ static void ast_vhub_dev_nuke(struct ast_vhub_dev *d)
 {
 	unsigned int i;
 
-	for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++) {
+	for (i = 0; i < d->max_epns; i++) {
 		if (!d->epns[i])
 			continue;
 		ast_vhub_nuke(d->epns[i], -ESHUTDOWN);
@@ -416,10 +416,10 @@ static struct usb_ep *ast_vhub_udc_match_ep(struct usb_gadget *gadget,
 	 * that will allow the generic code to use our
 	 * assigned address.
 	 */
-	for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++)
+	for (i = 0; i < d->max_epns; i++)
 		if (d->epns[i] == NULL)
 			break;
-	if (i >= AST_VHUB_NUM_GEN_EPs)
+	if (i >= d->max_epns)
 		return NULL;
 	addr = i + 1;
 
@@ -526,6 +526,7 @@ void ast_vhub_del_dev(struct ast_vhub_dev *d)
 
 	usb_del_gadget_udc(&d->gadget);
 	device_unregister(d->port_dev);
+	kfree(d->epns);
 }
 
 static void ast_vhub_dev_release(struct device *dev)
@@ -546,14 +547,25 @@ int ast_vhub_init_dev(struct ast_vhub *vhub, unsigned int idx)
 
 	ast_vhub_init_ep0(vhub, &d->ep0, d);
 
+	/*
+	 * A USB device can have up to 30 endpoints besides control
+	 * endpoint 0.
+	 */
+	d->max_epns = min_t(u32, vhub->max_epns, 30);
+	d->epns = kcalloc(d->max_epns, sizeof(*d->epns), GFP_KERNEL);
+	if (!d->epns)
+		return -ENOMEM;
+
 	/*
 	 * The UDC core really needs us to have separate and uniquely
 	 * named "parent" devices for each port so we create a sub device
 	 * here for that purpose
 	 */
 	d->port_dev = kzalloc(sizeof(struct device), GFP_KERNEL);
-	if (!d->port_dev)
-		return -ENOMEM;
+	if (!d->port_dev) {
+		rc = -ENOMEM;
+		goto fail_alloc;
+	}
 	device_initialize(d->port_dev);
 	d->port_dev->release = ast_vhub_dev_release;
 	d->port_dev->parent = parent;
@@ -584,6 +596,8 @@ int ast_vhub_init_dev(struct ast_vhub *vhub, unsigned int idx)
 	device_del(d->port_dev);
  fail_add:
 	put_device(d->port_dev);
+ fail_alloc:
+	kfree(d->epns);
 
 	return rc;
 }
diff --git a/drivers/usb/gadget/udc/aspeed-vhub/epn.c b/drivers/usb/gadget/udc/aspeed-vhub/epn.c
index 7475c74aa5c5..0bd6b20435b8 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/epn.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/epn.c
@@ -800,10 +800,10 @@ struct ast_vhub_ep *ast_vhub_alloc_epn(struct ast_vhub_dev *d, u8 addr)
 
 	/* Find a free one (no device) */
 	spin_lock_irqsave(&vhub->lock, flags);
-	for (i = 0; i < AST_VHUB_NUM_GEN_EPs; i++)
+	for (i = 0; i < vhub->max_epns; i++)
 		if (vhub->epns[i].dev == NULL)
 			break;
-	if (i >= AST_VHUB_NUM_GEN_EPs) {
+	if (i >= vhub->max_epns) {
 		spin_unlock_irqrestore(&vhub->lock, flags);
 		return NULL;
 	}
diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
index 9c3027306b15..6e565c3dbb5b 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
@@ -502,7 +502,7 @@ static void ast_vhub_wake_work(struct work_struct *work)
 	 * we let the normal host wake path deal with it later.
 	 */
 	spin_lock_irqsave(&vhub->lock, flags);
-	for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
+	for (i = 0; i < vhub->max_ports; i++) {
 		struct ast_vhub_port *p = &vhub->ports[i];
 
 		if (!(p->status & USB_PORT_STAT_SUSPEND))
@@ -585,7 +585,7 @@ static enum std_req_rc ast_vhub_set_port_feature(struct ast_vhub_ep *ep,
 	struct ast_vhub *vhub = ep->vhub;
 	struct ast_vhub_port *p;
 
-	if (port == 0 || port > AST_VHUB_NUM_PORTS)
+	if (port == 0 || port > vhub->max_ports)
 		return std_req_stall;
 	port--;
 	p = &vhub->ports[port];
@@ -628,7 +628,7 @@ static enum std_req_rc ast_vhub_clr_port_feature(struct ast_vhub_ep *ep,
 	struct ast_vhub *vhub = ep->vhub;
 	struct ast_vhub_port *p;
 
-	if (port == 0 || port > AST_VHUB_NUM_PORTS)
+	if (port == 0 || port > vhub->max_ports)
 		return std_req_stall;
 	port--;
 	p = &vhub->ports[port];
@@ -674,7 +674,7 @@ static enum std_req_rc ast_vhub_get_port_stat(struct ast_vhub_ep *ep,
 	struct ast_vhub *vhub = ep->vhub;
 	u16 stat, chg;
 
-	if (port == 0 || port > AST_VHUB_NUM_PORTS)
+	if (port == 0 || port > vhub->max_ports)
 		return std_req_stall;
 	port--;
 
@@ -755,7 +755,7 @@ void ast_vhub_hub_suspend(struct ast_vhub *vhub)
 	 * Forward to unsuspended ports without changing
 	 * their connection status.
 	 */
-	for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
+	for (i = 0; i < vhub->max_ports; i++) {
 		struct ast_vhub_port *p = &vhub->ports[i];
 
 		if (!(p->status & USB_PORT_STAT_SUSPEND))
@@ -778,7 +778,7 @@ void ast_vhub_hub_resume(struct ast_vhub *vhub)
 	 * Forward to unsuspended ports without changing
 	 * their connection status.
 	 */
-	for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
+	for (i = 0; i < vhub->max_ports; i++) {
 		struct ast_vhub_port *p = &vhub->ports[i];
 
 		if (!(p->status & USB_PORT_STAT_SUSPEND))
@@ -812,7 +812,7 @@ void ast_vhub_hub_reset(struct ast_vhub *vhub)
 	 * Clear all port status, disable gadgets and "suspend"
 	 * them. They will be woken up by a port reset.
 	 */
-	for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
+	for (i = 0; i < vhub->max_ports; i++) {
 		struct ast_vhub_port *p = &vhub->ports[i];
 
 		/* Only keep the connected flag */
@@ -845,6 +845,7 @@ static void ast_vhub_init_desc(struct ast_vhub *vhub)
 	/* Initialize vhub Hub Descriptor. */
 	memcpy(&vhub->vhub_hub_desc, &ast_vhub_hub_desc,
 		sizeof(vhub->vhub_hub_desc));
+	vhub->vhub_hub_desc.bNbrPorts = vhub->max_ports;
 
 	/* Initialize vhub String Descriptors. */
 	memcpy(&vhub->vhub_str_desc, &ast_vhub_strings,
diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
index 191f9fae7420..fac79ef6d669 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
+++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
@@ -79,17 +79,9 @@
 #define VHUB_SW_RESET_DEVICE2			(1 << 2)
 #define VHUB_SW_RESET_DEVICE1			(1 << 1)
 #define VHUB_SW_RESET_ROOT_HUB			(1 << 0)
-#define VHUB_SW_RESET_ALL			(VHUB_SW_RESET_EP_POOL | \
-						 VHUB_SW_RESET_DMA_CONTROLLER | \
-						 VHUB_SW_RESET_DEVICE5 | \
-						 VHUB_SW_RESET_DEVICE4 | \
-						 VHUB_SW_RESET_DEVICE3 | \
-						 VHUB_SW_RESET_DEVICE2 | \
-						 VHUB_SW_RESET_DEVICE1 | \
-						 VHUB_SW_RESET_ROOT_HUB)
+
 /* EP ACK/NACK IRQ masks */
 #define VHUB_EP_IRQ(n)				(1 << (n))
-#define VHUB_EP_IRQ_ALL				0x7fff	/* 15 EPs */
 
 /* USB status reg */
 #define VHUB_USBSTS_HISPEED			(1 << 27)
@@ -213,6 +205,11 @@
  *                                      *
  ****************************************/
 
+/*
+ * AST_VHUB_NUM_GEN_EPs and AST_VHUB_NUM_PORTS are kept to avoid breaking
+ * existing AST2400/AST2500 platforms. AST2600 and future vhub revisions
+ * should define number of downstream ports and endpoints in device tree.
+ */
 #define AST_VHUB_NUM_GEN_EPs	15	/* Generic non-0 EPs */
 #define AST_VHUB_NUM_PORTS	5	/* vHub ports */
 #define AST_VHUB_EP0_MAX_PACKET	64	/* EP0's max packet size */
@@ -315,7 +312,7 @@ struct ast_vhub_ep {
 			/* Registers */
 			void __iomem   		*regs;
 
-			/* Index in global pool (0..14) */
+			/* Index in global pool (zero-based) */
 			unsigned int		g_idx;
 
 			/* DMA Descriptors */
@@ -345,7 +342,7 @@ struct ast_vhub_dev {
 	struct ast_vhub			*vhub;
 	void __iomem			*regs;
 
-	/* Device index (0...4) and name string */
+	/* Device index (zero-based) and name string */
 	unsigned int			index;
 	const char			*name;
 
@@ -361,7 +358,8 @@ struct ast_vhub_dev {
 
 	/* Endpoint structures */
 	struct ast_vhub_ep		ep0;
-	struct ast_vhub_ep		*epns[AST_VHUB_NUM_GEN_EPs];
+	struct ast_vhub_ep		**epns;
+	u32				max_epns;
 
 };
 #define to_ast_dev(__g) container_of(__g, struct ast_vhub_dev, gadget)
@@ -402,10 +400,12 @@ struct ast_vhub {
 	bool				ep1_stalled : 1;
 
 	/* Per-port info */
-	struct ast_vhub_port		ports[AST_VHUB_NUM_PORTS];
+	struct ast_vhub_port		*ports;
+	u32				max_ports;
 
 	/* Generic EP data structures */
-	struct ast_vhub_ep		epns[AST_VHUB_NUM_GEN_EPs];
+	struct ast_vhub_ep		*epns;
+	u32				max_epns;
 
 	/* Upstream bus is suspended ? */
 	bool				suspended : 1;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
