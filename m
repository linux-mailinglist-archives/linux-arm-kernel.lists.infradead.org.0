Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1458214F4AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 23:23:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+nkhPgx7GwSd3f56HJRU+uH7E6sw6Y6v6E8CN2dHm+k=; b=CKoKWfUDm0wqmkek0QuDXLY/Zo
	tCIDdhyhg9d3/9xfgQIEsQ8bEIpNQYIJn6wpv6QDMmjoedQrNGousZaed3yBbJYwcVxAbWwcrAnCL
	rK6Oklqlh/iQEpTzynNfdDd5YY+0n1jRcE85Lwg8oGELdyPtd0jCD83dBuEIuw57FP6hOj2+hKvUp
	hRvQieSAt1IDnxmQEN1bp+3y+Ha2GAo8eyi9tPpLzAe8M7VEBrojV646W/eAFhyJGOUhHs8v+4cc3
	2xOx1xgOK4AlulO6d4N+dAD50SbyuAhenmUC+WBj6am7SBQD0aJesyOdmn7MhrBUGepISRp3/hExQ
	mj4U7yiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixegl-0003R2-DA; Fri, 31 Jan 2020 22:22:59 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixeg1-0002ok-Bk
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 22:22:15 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay11so3318068plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 14:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wSzJwkvRpdC4ZPPv+f6r9mzu5IB7aUbc0urJg/jNjl0=;
 b=OvvSE+y8ye7N5+THH0qJlSCGi+0ze3TVr0d66Lr4LxVdRTY2dX9KY49MXJGfmPM7hy
 p/AQMRMm+VODOVx7LIykMg9Lx8HultkxI+4uU5egTDebM61K3nQIgGEMATMocCS89oVD
 l+AmaqvNHtr9RA9fD6HKXKB1uf8JKrJGXkcVE/YCXfzuraxGj/8mRdTEDFVgPqYPWbdG
 RTLoBSjLblnzgthVJiaimoGdC8LKr1O06wx4snrajedYITdZmqaH0pxRFNEr1j8OKF1T
 PnEHyjz357A5h7EWqzJhYIERLoUxfBogs8J+8ucqlqky7dmV+irAU4V1r8SMxNfi7b4x
 pLbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wSzJwkvRpdC4ZPPv+f6r9mzu5IB7aUbc0urJg/jNjl0=;
 b=C5qDvV4FhOvTO6BFEEYdL1fbNEyL3Kw/F/oVOtxW6MgQJrt7wqDXEUzwfhPW2ATN1N
 ODvuJ+R6Xszoc/2Dek5WJ+SbWmzUYzs+Uw8jJq0BxQSYWf//7YbFQUFfsw32cx25d7ke
 ZSOEMdJcvDUnpR9tQqKclcpMXLrQLgQ56GGNZpqLWiSvrT4UHvsCkTw6lqd3yncIYKJ8
 PRf//8UTbwwj6TV1td4lOKM8EBHrzeNRj+aPwUqPUODBW13KwOvbNzIp9e5NSM26SvT9
 w/L4OAZi4hAjdFQZSIx24h16IjABHyFK4xb7Z38JIQRHBbG334bJ49Cut5Vd7Pw8UVpm
 Xbgg==
X-Gm-Message-State: APjAAAU5q5TbNlugZonKW/NE9pJE34NXOSOoRcEkw2rUjQeL9zoogq0h
 lB1/7Q1OrIPNrDY4TkUaI9Y=
X-Google-Smtp-Source: APXvYqzBLFzKofUIpvT30N4IUyqXxoZIoYk2D6ykKzwAFsGoR/vQ9KOZZzYn8bPITHvNhpplaDsRiA==
X-Received: by 2002:a17:90a:c24c:: with SMTP id
 d12mr15158909pjx.113.1580509330716; 
 Fri, 31 Jan 2020 14:22:10 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:200::1:a521])
 by smtp.gmail.com with ESMTPSA id v8sm11201515pff.151.2020.01.31.14.22.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 31 Jan 2020 14:22:10 -0800 (PST)
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
 openbmc@lists.ozlabs.org
Subject: [PATCH 2/3] usb: gadget: aspeed: add ast2600 vhub support
Date: Fri, 31 Jan 2020 14:21:56 -0800
Message-Id: <20200131222157.20849-3-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200131222157.20849-1-rentao.bupt@gmail.com>
References: <20200131222157.20849-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_142213_474915_0ED5DF9E 
X-CRM114-Status: GOOD (  11.92  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
---
 drivers/usb/gadget/udc/aspeed-vhub/Kconfig | 4 ++--
 drivers/usb/gadget/udc/aspeed-vhub/core.c  | 9 +++++++++
 2 files changed, 11 insertions(+), 2 deletions(-)

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
index 94081cc04113..c827bf420278 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
@@ -42,6 +42,11 @@ static const struct ast_vhub_config ast2400_config = {
 	.max_epns = 15,
 };
 
+static const struct ast_vhub_config ast2600_config = {
+	.max_ports = 7,
+	.max_epns = 21,
+};
+
 static const struct of_device_id ast_vhub_dt_ids[] = {
 	{
 		.compatible = "aspeed,ast2400-usb-vhub",
@@ -51,6 +56,10 @@ static const struct of_device_id ast_vhub_dt_ids[] = {
 		.compatible = "aspeed,ast2500-usb-vhub",
 		.data = &ast2400_config,
 	},
+	{
+		.compatible = "aspeed,ast2600-usb-vhub",
+		.data = &ast2600_config,
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
