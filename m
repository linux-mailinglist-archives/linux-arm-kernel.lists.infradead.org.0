Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B514D185F6E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 20:17:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4ms54WX/triN8Mm9hIwYKMO1qVoqsrfIgd7DIvBtBc8=; b=Y0iNLYx/fDe2N0zlGMZOkSJ/LJ
	rq9z3i9kyT+1smplFEXfaPrXiV6Yf3cMFkjFu3Yj+Eh+yGulz9j6IhNFezxl16xzpS8iqnnpJ5wG5
	ZjIhPNg1o7OxymP1dPeXok1Munoa59lq+27F/K7pNx+78doL7PCLQQcb7Ke+G8HmRxOS2SYlJFoPi
	ir8wR5R/rjo+6Orr3mGkh9A43zbs6f/dS4t08GDf5ztS0iqYhPpxxS+dD2Nnb+YH7GeBeurjOvvtn
	MYfG5hAGi8OM9PMf6d7SFvwrpMkmwZ4/XJvFSioIFAZqAYArK61e1IxOg5zNSdP+SBRo/pX8GL0yK
	7ULX4D6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDYlO-0004S4-Cd; Sun, 15 Mar 2020 19:17:30 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDYkc-0003yB-EQ
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 19:16:48 +0000
Received: by mail-pj1-x1044.google.com with SMTP id d8so7281337pje.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 12:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DnIYVnf76ZNYZmrCVx2GCWCcgip2tcoobJFeUKy9s0c=;
 b=cBdghDbSno8+tc3fAGbBrhpYDRGvvF6/pdJn7N2K5P+DXxpLN45Nid6Vo4hmYqvNg+
 uYJFLF8ZAs5J6RDOlKufIch4Ui9XNGkccMZhf7egBfA7UKMZHiOWMWgqG23xwi0qN1Hx
 RFKXy/pE735kBc/VjIbUlkNBqujo/vhgTit0V+HfRxadiEDHeRHjLBr09SdWfz4XiYhc
 yhaWrtu6L8+dWcrMPz4kUD2Io3eOB9FiYYW4dTkSSYz3NCtaqS2Lp8XiQgMXSiXwokxr
 ZBxry4sS7FRqxEghb0EqCs29YR7cor2vscxDCVmpV+Av4a4PPwpxA1x3O+BYu0wshOMF
 h3zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DnIYVnf76ZNYZmrCVx2GCWCcgip2tcoobJFeUKy9s0c=;
 b=m0xGPDjrcN82mmJO2iZqhsez/jSm+51URTMNUFidsiL9KR5x6sl0nkqrX8cG9GcoOz
 fzS5FdLqSBAqbJ05N1dyERnfTeoOwptFIg70n2PwGUadq63Z21EuE+RcP37UNSrwxOCS
 C2o9bJf9j5bksLBQwBikVM9hG1QNK9Py90vw6I6zhcoVBl9M0QBk3wgpZbYwpKW9iARx
 oI4orIDPxaTuyl7hr3Vmcnm6GI9YS4OyfGaQ6n/7TcFcb/QrAHf6QSvYpvgLL2P5QMrv
 /Bg+YA1Nz8qKXb8R9cPrNDIjiDc0/aIN5ZjFPLXYnhapiV5P9D0/803IeAVldTtCyW+s
 vBfw==
X-Gm-Message-State: ANhLgQ08nKBJ0kGFmw6sszqDr2lb+y23d00F4VYBsazShmAPHWeDYsji
 7XRK7EOKDAiNJjm3aFXalG8=
X-Google-Smtp-Source: ADFU+vuho5YTWP6Ui5j7Fvi2auem5iPekXPLrXAnf6AP/wcV8sPiITmyw3QAB1hrpSgd6/bImz2nzg==
X-Received: by 2002:a17:902:343:: with SMTP id
 61mr23536939pld.332.1584299801405; 
 Sun, 15 Mar 2020 12:16:41 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id 13sm61431882pgo.13.2020.03.15.12.16.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Mar 2020 12:16:40 -0700 (PDT)
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
Subject: [PATCH v2 1/6] usb: gadget: aspeed: support multiple language strings
Date: Sun, 15 Mar 2020 12:16:27 -0700
Message-Id: <20200315191632.12536-2-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200315191632.12536-1-rentao.bupt@gmail.com>
References: <20200315191632.12536-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_121642_516779_6F5445D9 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
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

This patch introduces a link list to store string descriptors with
different languages, and "ast_vhub_rep_string" function is also improved
to support multiple language usb strings.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 No change in v2:
   - the patch is added into the series since v2.

 drivers/usb/gadget/udc/aspeed-vhub/core.c |   4 +-
 drivers/usb/gadget/udc/aspeed-vhub/hub.c  | 140 +++++++++++++++++++---
 drivers/usb/gadget/udc/aspeed-vhub/vhub.h |   4 +-
 3 files changed, 131 insertions(+), 17 deletions(-)

diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
index 555e8645fb1e..cdf96911e4b1 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
@@ -408,7 +408,9 @@ static int ast_vhub_probe(struct platform_device *pdev)
 		goto err;
 
 	/* Init hub emulation */
-	ast_vhub_init_hub(vhub);
+	rc = ast_vhub_init_hub(vhub);
+	if (rc)
+		goto err;
 
 	/* Initialize HW */
 	ast_vhub_init_hw(vhub);
diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
index 6e565c3dbb5b..35edf37553f0 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
@@ -50,6 +50,7 @@
 #define KERNEL_VER	bin2bcd(((LINUX_VERSION_CODE >> 8) & 0x0ff))
 
 enum {
+	AST_VHUB_STR_INDEX_MAX = 4,
 	AST_VHUB_STR_MANUF = 3,
 	AST_VHUB_STR_PRODUCT = 2,
 	AST_VHUB_STR_SERIAL = 1,
@@ -310,23 +311,77 @@ static int ast_vhub_rep_desc(struct ast_vhub_ep *ep,
 	return ast_vhub_reply(ep, NULL, len);
 }
 
+static struct usb_gadget_strings*
+ast_vhub_str_of_container(struct usb_gadget_string_container *container)
+{
+	return (struct usb_gadget_strings *)container->stash;
+}
+
+static int ast_vhub_collect_languages(struct ast_vhub *vhub, void *buf,
+				      size_t size)
+{
+	int rc, hdr_len, nlangs, max_langs;
+	struct usb_gadget_strings *lang_str;
+	struct usb_gadget_string_container *container;
+	struct usb_string_descriptor *sdesc = buf;
+
+	nlangs = 0;
+	hdr_len = sizeof(struct usb_descriptor_header);
+	max_langs = (size - hdr_len) / sizeof(sdesc->wData[0]);
+	list_for_each_entry(container, &vhub->vhub_str_desc, list) {
+		if (nlangs >= max_langs)
+			break;
+
+		lang_str = ast_vhub_str_of_container(container);
+		sdesc->wData[nlangs++] = cpu_to_le16(lang_str->language);
+	}
+
+	rc = hdr_len + nlangs * sizeof(sdesc->wData[0]);
+	sdesc->bLength = rc;
+	sdesc->bDescriptorType = USB_DT_STRING;
+
+	return rc;
+}
+
+static struct usb_gadget_strings *ast_vhub_lookup_string(struct ast_vhub *vhub,
+							 u16 lang_id)
+{
+	struct usb_gadget_strings *lang_str;
+	struct usb_gadget_string_container *container;
+
+	list_for_each_entry(container, &vhub->vhub_str_desc, list) {
+		lang_str = ast_vhub_str_of_container(container);
+		if (lang_str->language == lang_id)
+			return lang_str;
+	}
+
+	return NULL;
+}
+
 static int ast_vhub_rep_string(struct ast_vhub_ep *ep,
 			       u8 string_id, u16 lang_id,
 			       u16 len)
 {
-	int rc = usb_gadget_get_string(&ep->vhub->vhub_str_desc,
-					string_id, ep->buf);
+	int rc;
+	u8 buf[256];
+	struct ast_vhub *vhub = ep->vhub;
+	struct usb_gadget_strings *lang_str;
 
-	/*
-	 * This should never happen unless we put too big strings in
-	 * the array above
-	 */
-	BUG_ON(rc >= AST_VHUB_EP0_MAX_PACKET);
+	if (string_id == 0) {
+		rc = ast_vhub_collect_languages(vhub, buf, sizeof(buf));
+	} else {
+		lang_str = ast_vhub_lookup_string(vhub, lang_id);
+		if (!lang_str)
+			return std_req_stall;
+
+		rc = usb_gadget_get_string(lang_str, string_id, buf);
+	}
 
-	if (rc < 0)
+	if (rc < 0 || rc >= AST_VHUB_EP0_MAX_PACKET)
 		return std_req_stall;
 
 	/* Shoot it from the EP buffer */
+	memcpy(ep->buf, buf, rc);
 	return ast_vhub_reply(ep, NULL, min_t(u16, rc, len));
 }
 
@@ -832,8 +887,64 @@ void ast_vhub_hub_reset(struct ast_vhub *vhub)
 	writel(0, vhub->regs + AST_VHUB_EP1_STS_CHG);
 }
 
-static void ast_vhub_init_desc(struct ast_vhub *vhub)
+static struct usb_gadget_string_container*
+ast_vhub_str_container_alloc(struct ast_vhub *vhub)
+{
+	unsigned int size;
+	struct usb_string *str_array;
+	struct usb_gadget_strings *lang_str;
+	struct usb_gadget_string_container *container;
+
+	size = sizeof(*container);
+	size += sizeof(struct usb_gadget_strings);
+	size += sizeof(struct usb_string) * AST_VHUB_STR_INDEX_MAX;
+	container = devm_kzalloc(&vhub->pdev->dev, size, GFP_KERNEL);
+	if (!container)
+		return ERR_PTR(-ENOMEM);
+
+	lang_str = ast_vhub_str_of_container(container);
+	str_array = (struct usb_string *)(lang_str + 1);
+	lang_str->strings = str_array;
+	return container;
+}
+
+static void ast_vhub_str_deep_copy(struct usb_gadget_strings *dest,
+				   const struct usb_gadget_strings *src)
+{
+	struct usb_string *src_array = src->strings;
+	struct usb_string *dest_array = dest->strings;
+
+	dest->language = src->language;
+	if (src_array && dest_array) {
+		do {
+			*dest_array = *src_array;
+			dest_array++;
+			src_array++;
+		} while (src_array->s);
+	}
+}
+
+static int ast_vhub_str_alloc_add(struct ast_vhub *vhub,
+				  const struct usb_gadget_strings *src_str)
 {
+	struct usb_gadget_strings *dest_str;
+	struct usb_gadget_string_container *container;
+
+	container = ast_vhub_str_container_alloc(vhub);
+	if (IS_ERR(container))
+		return PTR_ERR(container);
+
+	dest_str = ast_vhub_str_of_container(container);
+	ast_vhub_str_deep_copy(dest_str, src_str);
+	list_add_tail(&container->list, &vhub->vhub_str_desc);
+
+	return 0;
+}
+
+static int ast_vhub_init_desc(struct ast_vhub *vhub)
+{
+	int ret;
+
 	/* Initialize vhub Device Descriptor. */
 	memcpy(&vhub->vhub_dev_desc, &ast_vhub_dev_desc,
 		sizeof(vhub->vhub_dev_desc));
@@ -848,15 +959,16 @@ static void ast_vhub_init_desc(struct ast_vhub *vhub)
 	vhub->vhub_hub_desc.bNbrPorts = vhub->max_ports;
 
 	/* Initialize vhub String Descriptors. */
-	memcpy(&vhub->vhub_str_desc, &ast_vhub_strings,
-		sizeof(vhub->vhub_str_desc));
+	INIT_LIST_HEAD(&vhub->vhub_str_desc);
+	ret = ast_vhub_str_alloc_add(vhub, &ast_vhub_strings);
+
+	return ret;
 }
 
-void ast_vhub_init_hub(struct ast_vhub *vhub)
+int ast_vhub_init_hub(struct ast_vhub *vhub)
 {
 	vhub->speed = USB_SPEED_UNKNOWN;
 	INIT_WORK(&vhub->wake_work, ast_vhub_wake_work);
 
-	ast_vhub_init_desc(vhub);
+	return ast_vhub_init_desc(vhub);
 }
-
diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
index 23a1ac91f8d2..2e5a1ef14a75 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
+++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
@@ -421,7 +421,7 @@ struct ast_vhub {
 	struct usb_device_descriptor	vhub_dev_desc;
 	struct ast_vhub_full_cdesc	vhub_conf_desc;
 	struct usb_hub_descriptor	vhub_hub_desc;
-	struct usb_gadget_strings	vhub_str_desc;
+	struct list_head		vhub_str_desc;
 };
 
 /* Standard request handlers result codes */
@@ -531,7 +531,7 @@ int __ast_vhub_simple_reply(struct ast_vhub_ep *ep, int len, ...);
 			       __VA_ARGS__)
 
 /* hub.c */
-void ast_vhub_init_hub(struct ast_vhub *vhub);
+int ast_vhub_init_hub(struct ast_vhub *vhub);
 enum std_req_rc ast_vhub_std_hub_request(struct ast_vhub_ep *ep,
 					 struct usb_ctrlrequest *crq);
 enum std_req_rc ast_vhub_class_hub_request(struct ast_vhub_ep *ep,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
