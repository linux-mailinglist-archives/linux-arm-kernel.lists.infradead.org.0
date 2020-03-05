Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1797817B264
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 00:48:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ttxGtcuQ/JVdSmBF3ihe5kkMHH+MhJBW/pwa/RdjwtY=; b=YmN
	53HRpwbBlSwhwTv5/AFIz7gOJZ38fO6yjT2IKS2CQcfW94mOhx27hmGtbepcxwmMtY6w1j0HpzEC+
	nKHtCX3UYAZyhuwhenOCQSJizl1JEpEaf7q8PUrvr7PJLBcYuTIrlmAjTAc4lT7rUT/ske4aSQQPi
	ld5WJYiVxwJqVACjvXfUxW+ce/GrGfu01RxWy942FyBbV30xWCTwseshcH1VFeJoX6s60hjd9PBht
	HQgZ/LGJKhS36nESY+R9rS6Poy4kj40tefjqpptJyPdP0Dy/q1z07Cgp8mXtBp5oLn186iIUIFlGb
	syjfBrns3mOEvf5ln7I5a55N7Xu7eQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA0Dl-00042Q-6L; Thu, 05 Mar 2020 23:48:05 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA0Dc-000421-10
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 23:47:57 +0000
Received: by mail-pf1-x443.google.com with SMTP id l7so155154pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 15:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=z2HXeME5Gk76DY5Zvh5p+H88p8YEhHXH5Ad0akNZ4Go=;
 b=i7M9+ENaqIDSGbdccu/70MshUdaM1GY6nsyiIOXyVdqlfp9GO06/CNeuQdJClQ1T6f
 5jbaLtuZpia8nMNur+hSQ6ow4hDRQwvgoF8qc+Bryi/Nr/upfoM54W3KzGR8ZN2FOYgk
 xnljo4UgHyDYzQCkhGO1LwezK5GZxjQFAVX3QIHKHV4wh/fHQwalTOOQ/1fAL2SanSNb
 uIr/xP/KzI6mZdLcbL0ZrG9k0V9AYHqlu8Z+DKlKQL3hl5CWc7XpM8Jr9lx4ag8HIlt4
 lg/fRzNEcVzS6qC+h49hpllj4NQJ8xACHPV3OeRjR+OQV0sG1lzyONqNqt24oNq3sVe+
 podA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=z2HXeME5Gk76DY5Zvh5p+H88p8YEhHXH5Ad0akNZ4Go=;
 b=tmq1bPMM+DmMMBTcZNe5d4ezsJt+dL6rHPJ+oFzMqis6Sj+QWijEvZldQ5eE3NYcdM
 fOYAKYF5wLyGqxBMz8pJYelHXkOOsUuCUCPxDmB/AXq+N3bDgmQF8OHx+pVjqErQlb/v
 XtUZSjb+RMthvFGsJbiIZ4M3gU8PbPpUmf/OvR8NNGg206Q54H7YCGFA8r/uM8C/OXWE
 lx1ScwaLnGXzPKhgpmoAqO6Nu9a9rAENhf7E6ii8/q76XT7LrGrCVq+vxOFD9vn3sy8Q
 iPMF7koR5qFKNZe0d8potRGSen7z//QTGV/bxhQSseven45N3ejwASwDjP/+8ROl2n3T
 iVFg==
X-Gm-Message-State: ANhLgQ2lID8cM6MYUNn/fAxXT0YWHYOT153LdOjc6WEq3/Z1vAV4XRPv
 R8b7DadG5MvlOv4swVAh47w=
X-Google-Smtp-Source: ADFU+vuXtvzxvdAVnsjaChDBJL3af8XnJtk33bP+uqfR/WxN2Ya4fj+d8he6j7TKb31ahpsc05YQvw==
X-Received: by 2002:a63:8042:: with SMTP id j63mr581107pgd.224.1583452074966; 
 Thu, 05 Mar 2020 15:47:54 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::5:788])
 by smtp.gmail.com with ESMTPSA id s21sm4490620pfd.99.2020.03.05.15.47.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 15:47:54 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v2] usb: gadget: aspeed: improve vhub port irq handling
Date: Thu,  5 Mar 2020 15:47:46 -0800
Message-Id: <20200305234746.1002-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_154756_093223_038528BF 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Changes in v2:
   - use "for_each_set_bit" to speed up port irq handling.

 drivers/usb/gadget/udc/aspeed-vhub/core.c | 11 ++++++++---
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h |  8 +++-----
 2 files changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
index f8d35dd60c34..af2dbd405361 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
@@ -134,11 +134,14 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
 	}
 
 	/* Handle device interrupts */
-	for (i = 0; i < vhub->max_ports; i++) {
-		u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
+	if (istat & vhub->port_irq_mask) {
+		int offset = VHUB_IRQ_DEV1_BIT;
+		int size = VHUB_IRQ_DEV1_BIT + vhub->max_ports;
 
-		if (istat & dev_mask)
+		for_each_set_bit_from(offset, (unsigned long *)&istat, size) {
+			i = offset - VHUB_IRQ_DEV1_BIT;
 			ast_vhub_dev_irq(&vhub->ports[i].dev);
+		}
 	}
 
 	/* Handle top-level vHub EP0 interrupts */
@@ -332,6 +335,8 @@ static int ast_vhub_probe(struct platform_device *pdev)
 
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
