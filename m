Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8C9170C33
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 00:04:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MsnAvYq4Tzzq5NzNA5Dn/PoOemlkUPOA8nwKoeylrpo=; b=E9b0Qcvr7CPVvBH+oB5c3pw6TS
	6Ooshf+FA/XzrBzWFBpvfYAMWmAJUTyTOK6eaPE4nYX6VQcNt5i8sICMkSciFVhySTX1QqPF8FB3m
	mNJRBSMzO0sx0sUaROL9p24oPvNs/aKI8CHBuPiT1SN1iqYa96vDZU5cChNCh0m3ELQpRKYVoNoVf
	IntHLLFOobpws3XvdlBGEElCXQDJk3WvTWqbHkoguKK8YglLO+v7fVXejVqpge6UuLltSTXP9iyQj
	4ajicOakyJmd6p7yF6fjnacvys49B912+kfe/fBMbOOj1ta9XP09q35MVREwv5m/4rBeUUnbxQCuz
	f6z/D7Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j75jJ-0002zz-MJ; Wed, 26 Feb 2020 23:04:37 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j75ik-0002nz-Mi
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 23:04:04 +0000
Received: by mail-pf1-x444.google.com with SMTP id o24so249825pfp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 15:04:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WTqePqPwt8jEUO6CFFTs58F4aXbYeL8ROe2MQeR3p1U=;
 b=pb8ZqOOVmILB9ovfMFUFFvWBcu/3a+3xoBd2FQzd0PSweNr/ryWv2+/u+47tzTKKxA
 qhPuIf7hXpMnO8HfTaAiEUxbMh4bpLKOWw2wKJJH1/+Mz7JFCtkmbRx0GK6JOQKENPYt
 PmTN4/G+6u8lxri0jXX7Nt3P0kXvwfLsA9sU2erFFnemsrKgB8Hz+uEc0QL39aKtU58t
 rpRhZjxazQM+CVJ79VkUT5y3i1Kg1ipQwUIVB53CXs7W/w0hfHq4d9H9oNISRaVU6giU
 iBYM+MPUfnO4+Pif9+j9ajbDVicygZCNEl6oF6VE4kK0IKedlqSlxxh8T14mHoiC51kP
 0tqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WTqePqPwt8jEUO6CFFTs58F4aXbYeL8ROe2MQeR3p1U=;
 b=ig+NvlK08qtYygC8puXVk1efn8a28ZYNq+o1a2//IC2+/4CY5NQizqJwAQl9xPtYbN
 JkXTM29w8S6haIC+m+noRd6PyvfDYRDBHP2PdpDm0jIQtQXFPGVacLuXMiqoE332GU/d
 t3GhKlXPAi7+rv5PszXaAvkRoYb3F5caa5BDpTZviV40MXk68Lhcpy2TbIXqtkfmtE3a
 vmfRBxVWM0/26wvV5o8dNMmi+Yll1On7WSmRmoMtj2N3xDdqTnoZ7Kk9DqF1PjTPFkTi
 RFU+rAs0GxA1jXzEoNO/eVcjBXk5D+VF3qnxIvMDmwK7jECFNn201hx9wDHW0e3YCcxK
 84Ww==
X-Gm-Message-State: APjAAAVwkVLudNasH3oVClp3SuF/+j+ZtjIxkDAEwTLi4yXOlcxa5y3s
 1UpIkK8dTRAJU8+fHQIFqZNPigrVbb8=
X-Google-Smtp-Source: APXvYqwxa6Z4LuwxaQt9Hg/qRsWn/81tKYb4scIZh/9/EnxSgz+05WRbycdlrAVV5YgVt3g4EeO0mw==
X-Received: by 2002:aa7:94a4:: with SMTP id a4mr1021266pfl.178.1582758241855; 
 Wed, 26 Feb 2020 15:04:01 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::7:5ebf])
 by smtp.gmail.com with ESMTPSA id 3sm3912621pjg.27.2020.02.26.15.04.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 15:04:01 -0800 (PST)
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
Subject: [PATCH v4 1/7] usb: gadget: aspeed: support per-vhub usb descriptors
Date: Wed, 26 Feb 2020 15:03:40 -0800
Message-Id: <20200226230346.672-2-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226230346.672-1-rentao.bupt@gmail.com>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_150402_741895_10376C15 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patch store vhub's standard usb descriptors in struct "ast_vhub" so
it's more convenient to customize descriptors and potentially support
multiple vhub instances in the future.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 No change in v2/v3/v4:
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
