Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C30185F50
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 20:14:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8g6xJ5mRVhdK/9H/y3bWc8RJJ2UeEedkkFAj4B0kOmc=; b=jxJ
	vaY/ISO3hnBe6CDzo03nQrJOTDAQVMtovqHWInrnpzrI3IGUwRuDipzsKRo0uMTbO4ky1D1Be6wYp
	NbtR7U7+n4qvR+Or6mrxm9vY9wYJjOvK32/Z2WYTO8RUgbd95Uqy7skQj3fFE0tQAWuJ1ZCezO6lX
	gi70V0ieqjgR7zq5fKphgut5UyikqaGvtdAmUvDLHnT8+S1zi9S9fKWqA0LJhXrOSB5jXeB8dR1MJ
	Qksusj/dEXZ8LsR0PTZ8QDc6mAjvy4yL7m53jzyKU+g63jlUtIr4I3rak03Dle48lS5tL37pss67W
	f3bnSyVq7HsaFf4C0hTLO8Gh5W1E3fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDYip-0002EQ-CM; Sun, 15 Mar 2020 19:14:51 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDYig-0002Dv-DW
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 19:14:43 +0000
Received: by mail-pl1-x644.google.com with SMTP id f16so6900084plj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 12:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QJPqyWkxe0FvdCujVYrv8IN7juT6CFWXSWYBT76q9+w=;
 b=sANpO3ajZY3xjd0/k5q4rDelXESgjIkMWTO+p4kXH7fYWkGB7cYw4Qk3k1aKpvrfDw
 LI0ZMEDjgt8aoOkf7GtZkLwFrtingsW+Z0udRO1WLjWzmMp/tNFPv1jp/Or/dUgxo3Ux
 ikywRVWGd6NDrL+A2btSdotr41flUCEuAHWZE+cF5s6UPI+AZyry5DI01kEK29tFXEvw
 XS5k0uonygKubgiJR+2ibb/5miv39jalJ5gKmopKknFBrdnDJjp5lc75U+fsdO5UVOzt
 RAxAF5h5ioz0nhSs0cVRKPjtdNziOkxUd4QtZ9s6TWvlwHeImvMOv4fYRXz2vT1clUaT
 SuyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QJPqyWkxe0FvdCujVYrv8IN7juT6CFWXSWYBT76q9+w=;
 b=XJfLjF8bTYHDTMx4w46Fiqzp4P2faaKN6BKtH8Ifkc8GgIOA1PQeKIkp2Ny9bLE7Aq
 ixD+8WsmCaOAmHixfFz098cRC4dI2efyFFsxLqA6BwtwRaENpM0hnA0P8fZoIugkpsmx
 RHIvwZB5TXUDuvbZdPNWkmAGFXOo99SIHG5rBCRTceDKAnJoP6UqoekMafQBEp/jFHYK
 HLa2ShtYLO1Kd3WZwB7MiMeXUPSDsruuhW4giawly7F69vwzZNHxcJKgFZ+L4h8cwFyJ
 zWzy5rhe6REIb0rDQaRvWVz2jqQFVTigMIjksLRjvHaiG0ru/ueLbqRjRKhtuMnmQDSD
 b6Iw==
X-Gm-Message-State: ANhLgQ1G8B6mqeMB5mV7MRkZlDIHtC5sOLzS0gVEgySd+0kOgoER86GD
 ClVZ4kwAPWNAeV1HH6NXeVk=
X-Google-Smtp-Source: ADFU+vsYz8bmmqz+GFTxMop+sYVx/jLaNj6ejge3qbhBfCf1tOnqa7+uPrV8Zs+/qlZLiYPfrd+otw==
X-Received: by 2002:a17:90a:d081:: with SMTP id
 k1mr22621148pju.57.1584299678766; 
 Sun, 15 Mar 2020 12:14:38 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id z22sm41859247pgn.19.2020.03.15.12.14.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Mar 2020 12:14:37 -0700 (PDT)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v3] usb: gadget: aspeed: improve vhub port irq handling
Date: Sun, 15 Mar 2020 12:14:30 -0700
Message-Id: <20200315191430.12379-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_121442_485002_264C7F1F 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This patch evaluates vhub ports' irq mask before going through per-port
irq handling one by one, which helps to speed up irq handling in case
there is no port interrupt.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 Changes in v3:
   - assign istat to (unsigned long) bitmap before calling
     "for_each_set_bit_from".
 Changes in v2:
   - use "for_each_set_bit" to speed up port irq handling.

 drivers/usb/gadget/udc/aspeed-vhub/core.c | 12 +++++++++---
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h |  8 +++-----
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
index f8d35dd60c34..555e8645fb1e 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
@@ -134,11 +134,15 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
 	}
 
 	/* Handle device interrupts */
-	for (i = 0; i < vhub->max_ports; i++) {
-		u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
+	if (istat & vhub->port_irq_mask) {
+		unsigned long bitmap = istat;
+		int offset = VHUB_IRQ_DEV1_BIT;
+		int size = VHUB_IRQ_DEV1_BIT + vhub->max_ports;
 
-		if (istat & dev_mask)
+		for_each_set_bit_from(offset, &bitmap, size) {
+			i = offset - VHUB_IRQ_DEV1_BIT;
 			ast_vhub_dev_irq(&vhub->ports[i].dev);
+		}
 	}
 
 	/* Handle top-level vHub EP0 interrupts */
@@ -332,6 +336,8 @@ static int ast_vhub_probe(struct platform_device *pdev)
 
 	spin_lock_init(&vhub->lock);
 	vhub->pdev = pdev;
+	vhub->port_irq_mask = GENMASK(VHUB_IRQ_DEV1_BIT + vhub->max_ports - 1,
+				      VHUB_IRQ_DEV1_BIT);
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	vhub->regs = devm_ioremap_resource(&pdev->dev, res);
diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
index fac79ef6d669..23a1ac91f8d2 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
+++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
@@ -51,14 +51,11 @@
 #define VHUB_CTRL_UPSTREAM_CONNECT		(1 << 0)
 
 /* IER & ISR */
+#define VHUB_IRQ_DEV1_BIT			9
 #define VHUB_IRQ_USB_CMD_DEADLOCK		(1 << 18)
 #define VHUB_IRQ_EP_POOL_NAK			(1 << 17)
 #define VHUB_IRQ_EP_POOL_ACK_STALL		(1 << 16)
-#define VHUB_IRQ_DEVICE5			(1 << 13)
-#define VHUB_IRQ_DEVICE4			(1 << 12)
-#define VHUB_IRQ_DEVICE3			(1 << 11)
-#define VHUB_IRQ_DEVICE2			(1 << 10)
-#define VHUB_IRQ_DEVICE1			(1 << 9)
+#define VHUB_IRQ_DEVICE1			(1 << (VHUB_IRQ_DEV1_BIT))
 #define VHUB_IRQ_BUS_RESUME			(1 << 8)
 #define VHUB_IRQ_BUS_SUSPEND 			(1 << 7)
 #define VHUB_IRQ_BUS_RESET 			(1 << 6)
@@ -402,6 +399,7 @@ struct ast_vhub {
 	/* Per-port info */
 	struct ast_vhub_port		*ports;
 	u32				max_ports;
+	u32				port_irq_mask;
 
 	/* Generic EP data structures */
 	struct ast_vhub_ep		*epns;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
