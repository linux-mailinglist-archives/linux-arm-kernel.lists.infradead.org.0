Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B50172BF8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 00:06:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y3pxLIvEJzjvDeOJcS+1mGMIJqlMI4h0apK3I0Vx2Tg=; b=W5NE9AC3l7TQllPUvoziZPGiG4
	HIakcYYXFqXrEwkuTEiovwEUvSZYHEWI3tcglf99CxGCWDDpp1ihqLOuhPAnH/0JXZDR3jgi2Gr5k
	Lr/VXYWS12uHRfx27y4YPEXXp5UhuiJvFN5PRQniqeONwMFBE/ofaZ6OUI/JA1CZRYF5dymCE2GV8
	E2UonwkunU5gMznYKtBqS5uHI9S83TxUKikOrHBC6x7ZTF5Gg5Xn0Vv92VXdIzYyjEPnGR34DMeWC
	8SbzXtBqfHN6hjRLiZKqpHMfb25NBFa/S6PsSi5XtkJ0RBkbiAnxTDuhipWYnq/wl3nexRVqrUOoY
	f3xUSfyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7SEi-0008Co-Px; Thu, 27 Feb 2020 23:06:32 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7SDa-0007Q6-5X
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 23:05:24 +0000
Received: by mail-pj1-x1043.google.com with SMTP id a16so98775pju.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 15:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yJC16zlFSOyxbyka2I18YVaxRbVkz24cosOoXMXos50=;
 b=G8yUlb/UgIGBnsBBBzhuJpYS/b3TODQNj2LCX6Ni0FHusgj/dI6DvMfY3DyLXjCd+4
 7TSd9b1kx4YHRO7u2jVBcK0cxQXp6n5BV8iCLJQ+B3D42RuDg3Hms+Zlt54xOer6ClP7
 IT7OOA6dSTkTInmPaBZ0RaWcvMhuY5KFarW1iRYSDp+kz6SXgyA/kE7EAxmJq7qOPcj0
 urJGWTP9TVVzwIAJnV6kgPEWj3UwU6XdjgbEQ0EALzqp7R1SIEBVb6PGa4hqIYzKkcDi
 p5OtNP8zApxHZPUF+HFvhu4WNzn/UY5Eph9q+gfBudKs+Vq2Yk3i8kl64/RMOmOJZOkH
 T2yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yJC16zlFSOyxbyka2I18YVaxRbVkz24cosOoXMXos50=;
 b=haWkrHgAcstBY1rAZ5CdoGZ/QWdCcU4kEBrHOJ/LI5pNLrxiG2itt9SEGA7Dxw+u6T
 dJsjeTITH4CmoUJ2P1HSJWq/A8BkXf7Qkgx1PNGYE8LUiTfdtaeRcqH6EGRQndlVYcyv
 LmzPJJbgy15tdzd1BqCTEEsWgZ4S74SoOKCG10pYa+PVUSxBrd0JuZsoQunRdn6GPrv9
 HtjXmMVH0LqUViXQyOg0LPZkiTMT+4UislST8OTTgvJ2EiIdYQnAunjXnTXA7pkEhnAB
 fuo81WvOAdL/worl+7rIHybeR6l+j+g3fG7KVffPLQ67SILxYpYCTjkH4zvxHk+f+7qK
 JcsQ==
X-Gm-Message-State: APjAAAUy8VQq5g3RtTw4g83H1TBXmCT51lEyfZL3FuE0Xnt3HpBrC4o3
 CNMqPZ0BZuOTFf49eSro/fo=
X-Google-Smtp-Source: APXvYqwORVgy8DNmPXAm9w8bkqL0l/3lqlTjrEqHlGoRPD+Vd86uBoG6JTIEh5PWgEsQSRCgSNUjwQ==
X-Received: by 2002:a17:90a:d348:: with SMTP id
 i8mr1395591pjx.43.1582844721043; 
 Thu, 27 Feb 2020 15:05:21 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id w2sm8275975pfw.43.2020.02.27.15.05.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 15:05:20 -0800 (PST)
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
Subject: [PATCH v5 3/7] usb: gadget: aspeed: add ast2600 vhub support
Date: Thu, 27 Feb 2020 15:05:03 -0800
Message-Id: <20200227230507.8682-4-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200227230507.8682-1-rentao.bupt@gmail.com>
References: <20200227230507.8682-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_150522_236887_EB368DF4 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Add AST2600 support in aspeed-vhub driver. There are 3 major differences
between AST2500 and AST2600 vhub:
  - AST2600 supports 7 downstream ports while AST2500 supports 5.
  - AST2600 supports 21 generic endpoints while AST2500 supports 15.
  - EP0 data buffer's 8-byte DMA alignment restriction is removed from
    AST2600.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
---
 No Change in v3/v4/v5.
 Changes in v2:
   - removed "ast_vhub_config" related logic.

 drivers/usb/gadget/udc/aspeed-vhub/Kconfig | 4 ++--
 drivers/usb/gadget/udc/aspeed-vhub/core.c  | 3 +++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/udc/aspeed-vhub/Kconfig b/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
index 83ba8a2eb6af..605500b19cf3 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
+++ b/drivers/usb/gadget/udc/aspeed-vhub/Kconfig
@@ -4,5 +4,5 @@ config USB_ASPEED_VHUB
 	depends on ARCH_ASPEED || COMPILE_TEST
 	depends on USB_LIBCOMPOSITE
 	help
-	  USB peripheral controller for the Aspeed AST2500 family
-	  SoCs supporting the "vHub" functionality and USB2.0
+	  USB peripheral controller for the Aspeed AST2400, AST2500 and
+	  AST2600 family SoCs supporting the "vHub" functionality and USB2.0
diff --git a/drivers/usb/gadget/udc/aspeed-vhub/core.c b/drivers/usb/gadget/udc/aspeed-vhub/core.c
index f8ab8e012f34..f8d35dd60c34 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
@@ -423,6 +423,9 @@ static const struct of_device_id ast_vhub_dt_ids[] = {
 	{
 		.compatible = "aspeed,ast2500-usb-vhub",
 	},
+	{
+		.compatible = "aspeed,ast2600-usb-vhub",
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, ast_vhub_dt_ids);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
