Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D07B172E95
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 03:09:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cpNgU+2tc8ZT8U0S+psGAeaYD+3cqnMz5YTtOMFk1rI=; b=KKe89cg3xlmMA6oZVbBsiNQYIX
	v6bznPdX+XJ/9qf0g/Mqo3BwQbgX6IladycXV5e0CN7tzPqdRx0hYkgcRoCEoYI40QVi9LUXC7Fcc
	TSTq5VwGTirXhTnaROXwTXIL16Hzt28I3IHTKDlKQYcRTjdB4+ZVS+Pj/xcQgjwqUpghqoCupFXxf
	QG+Prk18CjBGM7RKuog6kaM06ZgcWbpkH2/yDBTdFU3N+M3LebZUr1IUbi7+eJS7Pg4juyoaE9aBQ
	6lY7DRKHzQVovd4Whd8twztgbUuyrWhfGr42PuxieWDwZus56ciBEssm/j7eQcxO+aqtcLmKudw2f
	/yl2kLjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7V57-0003m7-FU; Fri, 28 Feb 2020 02:08:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7V4V-0003bO-4I
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 02:08:13 +0000
Received: by mail-pf1-x442.google.com with SMTP id 2so840552pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 18:08:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=n5+f023/AFTFPRU78q67NXWfPpix42i3+SQGTMudxQo=;
 b=Apj5qeNSE7RPSSinJ9TPqbB1XM2gpbEDtEHtwXJ5JcOdRpEWHC2Q8X5M0Hdb0WV6fK
 4ZjD7RhOnrJeZH55GFjTKEv+uEghUDFayUjpl8D5sOpFlOUpDTozeZzsQw7PlfBnRScn
 ebeGnE/otQI1oFbvU/h9pkNwvLlsBUdpq5FERZby3MthvLH6LCUnOPFjSxZ1HherIeRF
 GNg844ti1HMnHtBt1bzwrpQmqsUb9kqwu0Q8b+bgN+2Q1c4f0le6yZq7Nvfr1mF4SmIC
 GImHWCY3tHp1L06+Hk4+bshIonSWjb2c+k/Em6JmMvIMKy1TRiR7RQa631WmeILOIvPP
 QCWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=n5+f023/AFTFPRU78q67NXWfPpix42i3+SQGTMudxQo=;
 b=FBZJ6CdhQV8zga0gMhKu7hZLgh9kMFrzSik4bHZohAk3MGpIvq6lVabdtMYoiBIkK3
 /pY1MOmGxu23MUIhX2emEMhxIvBPmZxyHqf5x+5Cgp8s5kz7SIJgaREDKOE7uRupZ8Ir
 t+cZ+wrBczha1aWTmWM/USCruABIbbWjfxtUuoXdzTy8Gdgtcnzixq64ZeMZ3QBFWrOc
 OQetTvWf3K+uKB6Lk2nxDnalCGKdIwcHcNfHzk88mWw3ls9fg/Pq+TgHMKbw3uU6w78Y
 s38E1GWcihFETCjGWOMmsrPak/IzlSFXqTQf02e/oslbrqVVCXIy6l9eYBlFZVeKpyNy
 qCXA==
X-Gm-Message-State: APjAAAUWlkUTPfxz3juMXbldtK30w40kxLfhCqonfKuEkxZb/ouLAwMB
 XxWyW26VGcibUm5PXln4PoY=
X-Google-Smtp-Source: APXvYqxjw2Lt8dBPAv3hg4/x9xw5qg13CnR/Pjf+dW22neLPqjXy7A4sbsByZMVkEThK5yDmBVb1qg==
X-Received: by 2002:a62:3304:: with SMTP id z4mr1913213pfz.79.1582855688950;
 Thu, 27 Feb 2020 18:08:08 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id k24sm4931972pgm.61.2020.02.27.18.08.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 18:08:08 -0800 (PST)
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
Subject: [PATCH v6 1/7] usb: gadget: aspeed: support per-vhub usb descriptors
Date: Thu, 27 Feb 2020 18:07:51 -0800
Message-Id: <20200228020757.10513-2-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228020757.10513-1-rentao.bupt@gmail.com>
References: <20200228020757.10513-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_180811_175236_00164A5C 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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

This patch store vhub's standard usb descriptors in struct "ast_vhub" so
it's more convenient to customize descriptors and potentially support
multiple vhub instances in the future.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
---
 No change in v2/v3/v4/v5/v6:
   - the patch is added to the patch series since v4.

 drivers/usb/gadget/udc/aspeed-vhub/hub.c  | 43 ++++++++++++++++-------
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h | 15 ++++++++
 2 files changed, 46 insertions(+), 12 deletions(-)

diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
index 19b3517e04c0..9c3027306b15 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
@@ -93,11 +93,7 @@ static void ast_vhub_patch_dev_desc_usb1(struct usb_device_descriptor *desc)
 				 USB_DT_INTERFACE_SIZE + \
 				 USB_DT_ENDPOINT_SIZE)
 
-static const struct ast_vhub_full_cdesc {
-	struct usb_config_descriptor	cfg;
-	struct usb_interface_descriptor intf;
-	struct usb_endpoint_descriptor	ep;
-} __attribute__ ((packed)) ast_vhub_conf_desc = {
+static const struct ast_vhub_full_cdesc ast_vhub_conf_desc = {
 	.cfg = {
 		.bLength		= USB_DT_CONFIG_SIZE,
 		.bDescriptorType	= USB_DT_CONFIG,
@@ -266,6 +262,7 @@ static int ast_vhub_rep_desc(struct ast_vhub_ep *ep,
 			     u8 desc_type, u16 len)
 {
 	size_t dsize;
+	struct ast_vhub *vhub = ep->vhub;
 
 	EPDBG(ep, "GET_DESCRIPTOR(type:%d)\n", desc_type);
 
@@ -281,20 +278,20 @@ static int ast_vhub_rep_desc(struct ast_vhub_ep *ep,
 	switch(desc_type) {
 	case USB_DT_DEVICE:
 		dsize = USB_DT_DEVICE_SIZE;
-		memcpy(ep->buf, &ast_vhub_dev_desc, dsize);
-		BUILD_BUG_ON(dsize > sizeof(ast_vhub_dev_desc));
+		memcpy(ep->buf, &vhub->vhub_dev_desc, dsize);
+		BUILD_BUG_ON(dsize > sizeof(vhub->vhub_dev_desc));
 		BUILD_BUG_ON(USB_DT_DEVICE_SIZE >= AST_VHUB_EP0_MAX_PACKET);
 		break;
 	case USB_DT_CONFIG:
 		dsize = AST_VHUB_CONF_DESC_SIZE;
-		memcpy(ep->buf, &ast_vhub_conf_desc, dsize);
-		BUILD_BUG_ON(dsize > sizeof(ast_vhub_conf_desc));
+		memcpy(ep->buf, &vhub->vhub_conf_desc, dsize);
+		BUILD_BUG_ON(dsize > sizeof(vhub->vhub_conf_desc));
 		BUILD_BUG_ON(AST_VHUB_CONF_DESC_SIZE >= AST_VHUB_EP0_MAX_PACKET);
 		break;
 	case USB_DT_HUB:
 		dsize = AST_VHUB_HUB_DESC_SIZE;
-		memcpy(ep->buf, &ast_vhub_hub_desc, dsize);
-		BUILD_BUG_ON(dsize > sizeof(ast_vhub_hub_desc));
+		memcpy(ep->buf, &vhub->vhub_hub_desc, dsize);
+		BUILD_BUG_ON(dsize > sizeof(vhub->vhub_hub_desc));
 		BUILD_BUG_ON(AST_VHUB_HUB_DESC_SIZE >= AST_VHUB_EP0_MAX_PACKET);
 		break;
 	default:
@@ -317,7 +314,8 @@ static int ast_vhub_rep_string(struct ast_vhub_ep *ep,
 			       u8 string_id, u16 lang_id,
 			       u16 len)
 {
-	int rc = usb_gadget_get_string (&ast_vhub_strings, string_id, ep->buf);
+	int rc = usb_gadget_get_string(&ep->vhub->vhub_str_desc,
+					string_id, ep->buf);
 
 	/*
 	 * This should never happen unless we put too big strings in
@@ -834,9 +832,30 @@ void ast_vhub_hub_reset(struct ast_vhub *vhub)
 	writel(0, vhub->regs + AST_VHUB_EP1_STS_CHG);
 }
 
+static void ast_vhub_init_desc(struct ast_vhub *vhub)
+{
+	/* Initialize vhub Device Descriptor. */
+	memcpy(&vhub->vhub_dev_desc, &ast_vhub_dev_desc,
+		sizeof(vhub->vhub_dev_desc));
+
+	/* Initialize vhub Configuration Descriptor. */
+	memcpy(&vhub->vhub_conf_desc, &ast_vhub_conf_desc,
+		sizeof(vhub->vhub_conf_desc));
+
+	/* Initialize vhub Hub Descriptor. */
+	memcpy(&vhub->vhub_hub_desc, &ast_vhub_hub_desc,
+		sizeof(vhub->vhub_hub_desc));
+
+	/* Initialize vhub String Descriptors. */
+	memcpy(&vhub->vhub_str_desc, &ast_vhub_strings,
+		sizeof(vhub->vhub_str_desc));
+}
+
 void ast_vhub_init_hub(struct ast_vhub *vhub)
 {
 	vhub->speed = USB_SPEED_UNKNOWN;
 	INIT_WORK(&vhub->wake_work, ast_vhub_wake_work);
+
+	ast_vhub_init_desc(vhub);
 }
 
diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
index 761919e220d3..191f9fae7420 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
+++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
@@ -2,6 +2,9 @@
 #ifndef __ASPEED_VHUB_H
 #define __ASPEED_VHUB_H
 
+#include <linux/usb.h>
+#include <linux/usb/ch11.h>
+
 /*****************************
  *                           *
  * VHUB register definitions *
@@ -373,6 +376,12 @@ struct ast_vhub_port {
 	struct ast_vhub_dev	dev;
 };
 
+struct ast_vhub_full_cdesc {
+	struct usb_config_descriptor	cfg;
+	struct usb_interface_descriptor intf;
+	struct usb_endpoint_descriptor	ep;
+} __packed;
+
 /* Global vhub structure */
 struct ast_vhub {
 	struct platform_device		*pdev;
@@ -409,6 +418,12 @@ struct ast_vhub {
 
 	/* Upstream bus speed captured at bus reset */
 	unsigned int			speed;
+
+	/* Standard USB Descriptors of the vhub. */
+	struct usb_device_descriptor	vhub_dev_desc;
+	struct ast_vhub_full_cdesc	vhub_conf_desc;
+	struct usb_hub_descriptor	vhub_hub_desc;
+	struct usb_gadget_strings	vhub_str_desc;
 };
 
 /* Standard request handlers result codes */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
