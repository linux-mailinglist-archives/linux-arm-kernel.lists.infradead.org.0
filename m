Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7741D1A3B70
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 22:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=H1xwY90GQo+kacagCKfaCcwS07XlrWuwY71TIjerXco=; b=uD5
	1Z3LpQa8aI8s9+YEDi0AvQiPpcRTeESfDz5em9ogSPpBwMVz2cBzRi1nOukAds/eD4GHiAWzO61b1
	isMSL+DaqGUZ4xCM+nOJpA0SDShU9uMzeMaI0rm+pyzjQ2GHYEoYMBFheG/+gbI7ouH7ZexHUfTG0
	22ObU8F+CUZUAlhB05gQqTfrn6ir9jmhri+f0qV/oZ915h+yzDhmkp/GbPkFzS4apXplBMfB7/nT8
	OnXz4kvnn5Gn6hzUHDGmF/LbJfS9jWvIisEKL5m9L/KSUNUgHwvQPmmnQGaP1BSHQkVCshSUTyi7U
	fusx/kPfWeQeKLt7lapxU9gOrU03gNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMdyl-0007lo-9R; Thu, 09 Apr 2020 20:40:51 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMdyf-0007kP-8R
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 20:40:46 +0000
Received: by mail-pj1-x1043.google.com with SMTP id n4so1785947pjp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 13:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YFdk+s6DAN6aaYEhySzPfFS73mspXBy0eatt12t9vpE=;
 b=mqmSGUUOx2o/pdEGWUOtz0ExRCl94+NNqTsUbvbhkwTI350tV+G3oWT1Ml7Mcxxddd
 MfA75X9sWWTGWeNwddMUCFeNsUEh5NSx3hM8rFkLfkaYYlu68cjHbN3U98/k8vApdBm2
 5K9O6yE3rklLInMQgvFdPbCDO2aJou4Xi1D5cgq0VJa3EKUeeQEtP7FbL/8JvxdZu1SB
 wOcbZDwEd4jLpC5Y5a0cmnEVk4Mn6iv4JJRWD0i0OpsxKqj7jountgI0kAJ05uPT7Uyh
 aahYTWFxCLJAKzN7gNJFlrCa4FxaZXwkhUAkZmeWTMDDg3OaFbKfHmtpbmM352Lt5pAY
 iojw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YFdk+s6DAN6aaYEhySzPfFS73mspXBy0eatt12t9vpE=;
 b=WM4f5v9W70lRSU95DE3wIVjJMkRsllnRwG+YQdiFSFqVJG3elo6pDMTuqeKYvwKLY4
 TggX3rcDAN+GVtWlIuhpctkMCeu9iJHDsFRmeXba65SNalld1haY3VVw/i3d1RaL8x0E
 jgjvRVMUYoyDxvLcZh2DurOovn2HdA0Ar3FPQM/ZMwtIvrgqWU93a9lLYvtBjVOOeEBA
 hMbEE/n/BN+UHd5onxDNm9e+xFXFxsads7n4oJJPbfv9hpj8Jj30lLPoy9RwNOyoN/yM
 Yg7NAtd+my+ZWn/Ik0AXs2LVEyUBQxq8D4byUPKMIuzQvFceFFdlPTTxteWQZUzfscit
 wc0A==
X-Gm-Message-State: AGi0Pubrj+yZkPEuOiefQct2Oa6CA6/7emj8mU9drjbZz9x0/HHM2iWm
 tuQVvyffNrZqyWo0BUUY6oE=
X-Google-Smtp-Source: APiQypJDY7fIgt5BH2dLASbxM7xt1HbxuX8tMAQnHRwL2JQKsbL/ySbmDvLuSgYsSMHwePJNtrvSbg==
X-Received: by 2002:a17:902:a5cc:: with SMTP id
 t12mr1456010plq.322.1586464840437; 
 Thu, 09 Apr 2020 13:40:40 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:400::5:b9ab])
 by smtp.gmail.com with ESMTPSA id t4sm20043960pfb.156.2020.04.09.13.40.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 13:40:39 -0700 (PDT)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH v4] usb: gadget: aspeed: improve vhub port irq handling
Date: Thu,  9 Apr 2020 13:40:30 -0700
Message-Id: <20200409204030.21330-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_134045_321510_6D7B53BD 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Changes in v4:
   - use simple for() loop as it runs faster than for_each_set_bit()
     loop on aspeed BMCs.
 Changes in v3:
   - assign istat to (unsigned long) bitmap before calling
     "for_each_set_bit_from".
 Changes in v2:
   - use "for_each_set_bit" to speed up port irq handling.

 drivers/usb/gadget/udc/aspeed-vhub/core.c | 12 +++++++-----
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h | 11 ++++++-----
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
index f8d35dd60c34..fb36bad2c0b7 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
@@ -134,11 +134,11 @@ static irqreturn_t ast_vhub_irq(int irq, void *data)
 	}
 
 	/* Handle device interrupts */
-	for (i = 0; i < vhub->max_ports; i++) {
-		u32 dev_mask = VHUB_IRQ_DEVICE1 << i;
-
-		if (istat & dev_mask)
-			ast_vhub_dev_irq(&vhub->ports[i].dev);
+	if (istat & vhub->port_irq_mask) {
+		for (i = 0; i < vhub->max_ports; i++) {
+			if (istat & VHUB_DEV_IRQ(i))
+				ast_vhub_dev_irq(&vhub->ports[i].dev);
+		}
 	}
 
 	/* Handle top-level vHub EP0 interrupts */
@@ -332,6 +332,8 @@ static int ast_vhub_probe(struct platform_device *pdev)
 
 	spin_lock_init(&vhub->lock);
 	vhub->pdev = pdev;
+	vhub->port_irq_mask = GENMASK(VHUB_IRQ_DEV1_BIT + vhub->max_ports - 1,
+				      VHUB_IRQ_DEV1_BIT);
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	vhub->regs = devm_ioremap_resource(&pdev->dev, res);
diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
index fac79ef6d669..b80e3ddff797 100644
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
@@ -70,6 +67,9 @@
 #define VHUB_IRQ_HUB_EP0_SETUP			(1 << 0)
 #define VHUB_IRQ_ACK_ALL			0x1ff
 
+/* Downstream device IRQ mask. */
+#define VHUB_DEV_IRQ(n)				(VHUB_IRQ_DEVICE1 << (n))
+
 /* SW reset reg */
 #define VHUB_SW_RESET_EP_POOL			(1 << 9)
 #define VHUB_SW_RESET_DMA_CONTROLLER		(1 << 8)
@@ -402,6 +402,7 @@ struct ast_vhub {
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
