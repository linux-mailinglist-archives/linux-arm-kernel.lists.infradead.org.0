Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6931A179DF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 03:39:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dfiPaUzlYa8gpWTvnyiTeVKPt67HQutb2lhZPQRq0bA=; b=XFT
	N7HUdzVaVDyo+QkyvJ5qDIxtww0ZPV5tflA55Ch0KLixFDTJ5b/Uy87Dr6K0OcUnHTnNdohDqzNQx
	9D02vijc+QtmpQiiX2wwgyKO443fkATV+XyojYY5w3cttZ70jYRieYWGwwiLR5IrG44SCaiGRxAGF
	HzrWvDmOIU4SW+tj7FKPhwM9SWsdIx/FYrufTCdoBSPB896z5U04C/l3rT4sJokE0dVs5G25I/k0E
	2khAP4RwNI53NSkOq2IlULN7/wQGjXMHzjZJUYT/FweFo9Mcz5kCJKzCVgF2vuaKnp+sKfmYEt8XG
	1cODHrfSWLwKVzFpp+BF506b0t8LTEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9gQ3-0005Oo-Sq; Thu, 05 Mar 2020 02:39:27 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9gPv-0005ON-T0
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 02:39:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id j20so1546000pll.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 18:39:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YW1iAxgihWa7R1z2LZ0jq4L5SHYbV/y2Cl+4YB22Nq0=;
 b=rwg0PwY/pBMBBCdKXuCPnAOK+gKG8fWRjtLb8qoZDbY2XJir4nAN2j81+pu+Zm2ChD
 hCn10l37f12AqtrZmjlcBD/nXxilTi1O5VC6L/m9NC3V/T+XjjprVRilKGBmuIXjF1Ha
 Q+f7PNBgvDLKzBGbFa9qfE2bK1jHst3TZcW69C7NNScimVRub52WWTe497P8RrB74WRd
 bGLkqLKdi19e02DtQArGXu1Z8c2QS/J4wF3IRXj0U5poiJ/Oremq2M7A07gOQhv5yO6i
 ysJSDXEThmhWBDGfdo1hLCVBFb5PwWZ9dozA5wIqkKl6M0Cumh/IyVeNoEDEZDDr5Eqm
 vz4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YW1iAxgihWa7R1z2LZ0jq4L5SHYbV/y2Cl+4YB22Nq0=;
 b=EfnRc9cO799I6co/dGjWdkUrrRloHAnAnZ755mtBh/F1wiStQqqJU9zCuh0XzwkKhx
 6VwsLz+QL9Uclhf+piyEzeHjPe2wR1Hah00SuDA7CQRxg+iSujzEHoXFuF0ridZSn//c
 KpKya4k0gvQrsoXLb4Ocb5kCBNcWWl1PzABJ31UO5rKv0U27uvYEwJFxY8mwODtUQiQt
 spfy4RmtYLUgmBVLfQl4DdJGL3I5E0TGg0tJsQQu5i8mMD6MT7gAR3OuBcDUyWkvhae1
 qWieTglvCSnLYGM7zfzki9FTwm/0hMvY+VF2Nt6tHI2lcEWbGqT+Fpff2TQxgybIA32N
 syCw==
X-Gm-Message-State: ANhLgQ3En3ZFgYdYtiGXkKpywgdURaJEm7wviZbdW3iWrkXUTPJciR2M
 cs/NLi1e8eh0VQBOQt1nTIs=
X-Google-Smtp-Source: ADFU+vvNfv1O4y+T8xjWDrOY/eMq3S4rz6h3FPkm/6Mv8mQrQ0af/lXw9Wl/PKse4xev/7IwPhvWKg==
X-Received: by 2002:a17:90a:e012:: with SMTP id
 u18mr6415803pjy.190.1583375959117; 
 Wed, 04 Mar 2020 18:39:19 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::5:7dc6])
 by smtp.gmail.com with ESMTPSA id i197sm26750447pfe.137.2020.03.04.18.39.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 18:39:18 -0800 (PST)
From: rentao.bupt@gmail.com
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, taoren@fb.com
Subject: [PATCH] usb: gadget: aspeed: improve vhub port irq handling
Date: Wed,  4 Mar 2020 18:38:59 -0800
Message-Id: <20200305023859.21057-1-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_183919_938370_66E29793 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This patch evaluates vhub ports' irq mask before going through per-port
irq handling one by one, which helps to speed up irq handling in case
there is no port interrupt.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 drivers/usb/gadget/udc/aspeed-vhub/core.c | 11 ++++++-----
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h |  8 ++++----
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
index f8d35dd60c34..a03e4e4ea401 100644
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
@@ -332,6 +332,7 @@ static int ast_vhub_probe(struct platform_device *pdev)
 
 	spin_lock_init(&vhub->lock);
 	vhub->pdev = pdev;
+	vhub->port_irq_mask = GENMASK(vhub->max_ports + 8, 9);
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	vhub->regs = devm_ioremap_resource(&pdev->dev, res);
diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
index fac79ef6d669..e49924ec7e58 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
+++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
@@ -54,10 +54,6 @@
 #define VHUB_IRQ_USB_CMD_DEADLOCK		(1 << 18)
 #define VHUB_IRQ_EP_POOL_NAK			(1 << 17)
 #define VHUB_IRQ_EP_POOL_ACK_STALL		(1 << 16)
-#define VHUB_IRQ_DEVICE5			(1 << 13)
-#define VHUB_IRQ_DEVICE4			(1 << 12)
-#define VHUB_IRQ_DEVICE3			(1 << 11)
-#define VHUB_IRQ_DEVICE2			(1 << 10)
 #define VHUB_IRQ_DEVICE1			(1 << 9)
 #define VHUB_IRQ_BUS_RESUME			(1 << 8)
 #define VHUB_IRQ_BUS_SUSPEND 			(1 << 7)
@@ -70,6 +66,9 @@
 #define VHUB_IRQ_HUB_EP0_SETUP			(1 << 0)
 #define VHUB_IRQ_ACK_ALL			0x1ff
 
+/* Downstream device IRQ mask. */
+#define VHUB_DEV_IRQ(n)				(VHUB_IRQ_DEVICE1 << (n))
+
 /* SW reset reg */
 #define VHUB_SW_RESET_EP_POOL			(1 << 9)
 #define VHUB_SW_RESET_DMA_CONTROLLER		(1 << 8)
@@ -402,6 +401,7 @@ struct ast_vhub {
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
