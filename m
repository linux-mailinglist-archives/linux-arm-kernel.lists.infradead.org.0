Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473FE161F53
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 04:14:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5c9TvklUB5VbsF3JACg1f1+J93VyH7X4E0lFtbtiw3E=; b=T/txklOxa5DfwfJliWX/c3eKpl
	mh0jMJUXozhXeVBgFyepi7sLAMfFaPtywpN/9iAyJY7Z+IHOrdgkxGcaxNRJchzqolwYkG45tP5Aw
	4jWv6nUklqk4rZzQY/BQUU1YTP1d6/VrzJKz+hzzeNHPV2+m68rLC0dK/Uqdrobe7XSolqBNy0dxm
	HBVDqgqUPVpcNNsbtfd2jwqM8N1b3O6YFErSqdChJBrUefu2/m93rnkt2U8G/mTxX55P3DQ3QTU5o
	dFGsbWXWA4CPbKsYl3hrSjGKafYeJl6NutVXWyi5ULd57k7VUe0mJwowU2JUyxMH+q7/3jfuSPUx7
	Z9QQfQYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3tKs-0005cy-Rk; Tue, 18 Feb 2020 03:14:10 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3tKE-0005AR-Df
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 03:13:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id 70so10207823pgf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 19:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JlrTFZcXaXEEafeSE3nImbB0vbUzyWCyCcfm1wOyiLc=;
 b=C4Dz20e0ry953A10oUBIOcW9uU42YAT3MsW18oEofB/y7Cj1Yzfgs2Da0xAXUflgep
 r0yWRItnmYjTUZNPeZO2H33x5ZLOnG9u4euuSZocYgymgfN0rNXGJ98TcH3l0ozuh5TY
 KGTAt3bsAzxNDNSWjZWMrkS5zmp1MHlk+9sQwlpIRlgf6HcLjcuuGkdFa9yu3eFMB8g1
 4Xp8pfRYiG9+1LIMPUJUV1e2nMcu9z8sDtNrTqiUa8M84SUF8xU+QuVAgusPC6HRx1vt
 rnkYezB5D34oE4SOKSNImOPxqpn19oKeaFkaFcPBp2uk5NuaGK8Cb33a56fhrZQkbqCI
 doFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JlrTFZcXaXEEafeSE3nImbB0vbUzyWCyCcfm1wOyiLc=;
 b=oKLJx/d8dFPuOYQhUaUmvtUBNkOV3+LWXVPUbHQlxqE0vI+8gUNbTRlzbEy4jgb4dX
 AB5EYRZEraGIpcRvpXBvJA5n/v3rzJY/NmILgP2zoZs+I6sHL3vueQ2rFRjLyCmqIA8A
 Z4PDASNk5OkQrQOY13BVBQkFRAwPkcRCVKTwHbk43uQ8Cd3HxM4dS3nSdtjZWRh+BTqS
 IAgXRdqTwlPezwEfhRCzVubsGz+23FLc/9uyCD3d1t1HIHfrLwruoigX6XeCura6C+ua
 K4160WhQJfSzaKjIv9AsP9H2voVVFl0b2+cLN2VdlkkbVJjtkSGu9O02Biu4B8oQyX47
 FUhQ==
X-Gm-Message-State: APjAAAW9QCD3ORpONoZAE47N9t0Ht/mVffONv1lY7zKU72+RCUReE2q5
 80mYo/ArLizPVgFkCJc9XGA=
X-Google-Smtp-Source: APXvYqzfYZcx45jDrw2b3lwZ9VtKORLiesbinZG49d5O6n/fZzIx4Lq9J4RL2j09kiOMrlAzng+MMw==
X-Received: by 2002:a63:ce03:: with SMTP id y3mr21577884pgf.427.1581995608638; 
 Mon, 17 Feb 2020 19:13:28 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:180::6f94])
 by smtp.gmail.com with ESMTPSA id b18sm1812595pfd.63.2020.02.17.19.13.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 19:13:28 -0800 (PST)
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
Subject: [PATCH v3 2/5] usb: gadget: aspeed: add ast2600 vhub support
Date: Mon, 17 Feb 2020 19:13:12 -0800
Message-Id: <20200218031315.562-3-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200218031315.562-1-rentao.bupt@gmail.com>
References: <20200218031315.562-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_191330_456941_C491A830 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add AST2600 support in aspeed-vhub driver. There are 3 major differences
between AST2500 and AST2600 vhub:
  - AST2600 supports 7 downstream ports while AST2500 supports 5.
  - AST2600 supports 21 generic endpoints while AST2500 supports 15.
  - EP0 data buffer's 8-byte DMA alignment restriction is removed from
    AST2600.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
Reviewed-by: Joel Stanley <joel@jms.id.au>
---
 Changes in v3:
   - None.
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
index e4395813df35..442845a64660 100644
--- a/drivers/usb/gadget/udc/aspeed-vhub/core.c
+++ b/drivers/usb/gadget/udc/aspeed-vhub/core.c
@@ -431,6 +431,9 @@ static const struct of_device_id ast_vhub_dt_ids[] = {
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
