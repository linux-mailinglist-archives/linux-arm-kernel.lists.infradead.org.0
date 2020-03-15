Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FB0185F71
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 20:18:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5SCAVeJC3oOgJxjaFyBbNLsluTOxn/bFYTNTKhEHjOA=; b=txR1lJHWTKT5pURKzyk7yiCUQW
	OcgqCBDpl5++81MEYL3yU8Qzs3ak+FuOZTAI7zLeXbpx1WP7jhVGwRpjSMukzotfjhxu24NyvApvH
	nXuWW33+HnqAzXADg1ivVCTQcTrc3V22w6G7iaf9GX2hXYiv6UqNArLyVxZA/zF3OKw9JblcN+m/u
	KtK9y0ji9gnd1PGRXKQthUlwNZbCDx7sXz1xUAkAU/j1D6aR8VpgictwZaxc8l+AfNDEpw9gyAY7v
	3R+SvBFM3kpEyDCuGCPRmVhn93gHc8RFv3WIICvDl7FM3wSLtEqkK1nTLMbPe7bCv4MGJg2S8iBdO
	Y9ueQTkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDYlr-0004v3-N4; Sun, 15 Mar 2020 19:17:59 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDYkh-00041b-9K
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 19:16:50 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so6886002plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 12:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HxxSTtrSU1OUBJi+Btc1qI+H62ceRlYBsDcUYNsAgNo=;
 b=ZyuiwfM+wsd2yK61TSSDV+f3USkgmEfbIMsJUYYfIVC8c3KUfxDklNV+sc5xGoI92Q
 aYJwJvwcwg7CX3P3cb28svAtzHXPL2Riv93ogQLpl19sQ1YJwt2YFv+UdRsmGn7ScnAK
 fF4djxEVIjoezFqgKUev9mCl3WSKcKZqOWcCRIdwLaGdUFtj0OqTLEU+I8HNmQ3ryMTb
 L1dvly+3xZS5sl6Qd8u38FcbsYmY9eMsbc74lTj6EunNXiof4OJDrLudwGNytTHsLSEu
 Xc4yT6pzYO3qBqobjN12+P4/DS112wgehF1bvbOn3k0TR0wVhWZ4BBDc0on/dmFvY793
 dGqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HxxSTtrSU1OUBJi+Btc1qI+H62ceRlYBsDcUYNsAgNo=;
 b=H6mX0v49E8uaFL1qw2zA5aJ2jxbUbSM3I7vJmN1+G/3oYwffz6djLXj5UH618NAlr8
 EeJu4/Axuirc68sFWFQfwOJ5bP1Q6PJly27UNNgRPUzpFkARAosMMzYx0RYzWndyKEo8
 q/qa4lvLRms3m9FhiD6jkrfwupzEA+7uPDsiKusmPSBWgM7qFUq2mySrXSvMTcFe15OD
 JxlHzECpYEnQzTO5DsPM+hkmL5VZL6S+9KAfT0KUwOVs52DkjB9QCqC7CbRyKs91Zgxa
 T3adeRvG7KpWFTK1pmiJFk6D2Pv5pUnrMcFHzrklPE5zFr2+ExcTXDewLK1at6HLg9Nu
 fxrQ==
X-Gm-Message-State: ANhLgQ219S3CygPtYFWr9PS9P/McZjil+KmZes0hmJmTlBiEHRjHV1QP
 LlTEVyIYdfsxAxYh2WOzOnG/BXlNLXM=
X-Google-Smtp-Source: ADFU+vvkL4f9mQwxQwHT+G9COHjk//vx+BspxGwPvXJqnCfl+rVs7Od8EQCDULapoatPXSq7AKaI6Q==
X-Received: by 2002:a17:90b:3109:: with SMTP id
 gc9mr7409912pjb.186.1584299806362; 
 Sun, 15 Mar 2020 12:16:46 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id 13sm61431882pgo.13.2020.03.15.12.16.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Mar 2020 12:16:45 -0700 (PDT)
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
Subject: [PATCH v2 4/6] usb: gadget: aspeed: allow to set device IDs in device
 tree
Date: Sun, 15 Mar 2020 12:16:30 -0700
Message-Id: <20200315191632.12536-5-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200315191632.12536-1-rentao.bupt@gmail.com>
References: <20200315191632.12536-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_121647_368308_2485F4B0 
X-CRM114-Status: GOOD (  11.75  )
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

The patch overrides idVendor, idProduct and bcdDevice fields in vhub
Device Descriptor if according device tree properties are defined.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
---
 Changes in v2:
   - update per-vhub device descriptor instance instead of the global
     default descriptor.

 drivers/usb/gadget/udc/aspeed-vhub/hub.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
index 421631d86a17..13fba91aad6a 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
@@ -887,6 +887,26 @@ void ast_vhub_hub_reset(struct ast_vhub *vhub)
 	writel(0, vhub->regs + AST_VHUB_EP1_STS_CHG);
 }
 
+static void ast_vhub_of_parse_dev_desc(struct ast_vhub *vhub,
+				       const struct device_node *vhub_np)
+{
+	u16 id;
+	u32 data;
+
+	if (!of_property_read_u32(vhub_np, "vhub-vendor-id", &data)) {
+		id = (u16)data;
+		vhub->vhub_dev_desc.idVendor = cpu_to_le16(id);
+	}
+	if (!of_property_read_u32(vhub_np, "vhub-product-id", &data)) {
+		id = (u16)data;
+		vhub->vhub_dev_desc.idProduct = cpu_to_le16(id);
+	}
+	if (!of_property_read_u32(vhub_np, "vhub-device-revision", &data)) {
+		id = (u16)data;
+		vhub->vhub_dev_desc.bcdDevice = cpu_to_le16(id);
+	}
+}
+
 static struct usb_gadget_string_container*
 ast_vhub_str_container_alloc(struct ast_vhub *vhub)
 {
@@ -1000,6 +1020,7 @@ static int ast_vhub_init_desc(struct ast_vhub *vhub)
 	/* Initialize vhub Device Descriptor. */
 	memcpy(&vhub->vhub_dev_desc, &ast_vhub_dev_desc,
 		sizeof(vhub->vhub_dev_desc));
+	ast_vhub_of_parse_dev_desc(vhub, vhub_np);
 
 	/* Initialize vhub Configuration Descriptor. */
 	memcpy(&vhub->vhub_conf_desc, &ast_vhub_conf_desc,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
