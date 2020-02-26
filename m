Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00259170C35
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 00:05:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4fEZQecDU4Ng/ZUmkB835DFpFfMyHs4MkMVxjqf2azQ=; b=g7MXGyKoH9+ubt3QXuo4pyKYoz
	YbYNlbq1UXGP9i0kix11VGfWDQkHDn8QHeKCDYEnSrtg71PX27VMZNcDELC5FbbUQBXos36CgsUXn
	HNjv3IqXu8dXCtak9Z974uwJNmxukR9wp/oeB/2+bjZLDFbQd+dzAAoWo5cNP6EppoBi9HbPUpd7w
	dV69P4UJM36i7zOiz4Jt6TNgU7je7PfERAEa6j/2OOOLIFzGuxtbYh1Lo9l5VUwylibScoRRbDqYO
	ED7O6Tytlxd8gtJFD4cnnOw9+p1zsgOyzpRBJheKDu54yRDo8fG+XnWVdKAdEm7dRYwCfV+lgunVE
	ljGhiaGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j75jx-0003XJ-Nb; Wed, 26 Feb 2020 23:05:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j75io-0002pO-9U
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 23:04:07 +0000
Received: by mail-pl1-x644.google.com with SMTP id y1so298635plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 15:04:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=zsjurGtPTTibpkqzKjZm8jUnRch17NXPwWPKWmJ+Vuc=;
 b=A3pWRVK82v74q7UE2Rowuqoj20xjR8Mvj89W3wT9EDgeuXzRfmvWvl9JYkLV2f3oxj
 ThtPjoNzAwWH3yFTnubIDFn8iefjWOJU9ztIyqxi213kz9HE763WZkEfuXgbXhNN5/tc
 /L5AGr/IeOB2hwwMRc/BKh5OLLrmlIYOQDBYzDXyVasQJjpvdy3OzSBckd0fdBDpHIQD
 rmkAdtXMyS/kEpQJI9xb6eaM93sQHySDaef4E/az0oJFwuYahBsd2hhz9jWMfwf9F1nR
 VQWYB/BBXqkbj3f2CqqxX+0oYKLknlfkUv8mxvOT8YeVcDqgrE9RkkWYogJZYMj14RCA
 52rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zsjurGtPTTibpkqzKjZm8jUnRch17NXPwWPKWmJ+Vuc=;
 b=CB79j5+y9r5HQ5deajj80GMM72qpWwGVDtTUoHOXNvw12NvUemVFj4k7UM2p1b8Im4
 CicBxwi+YNQCAN/w3YvPNinAi8h4RS7WzfiWIRyQ51aUhX6bKc1L4EuUyhXyA2XkE9xO
 j6r4mg+E4SQOfAiwFWwIL4NgyPgn6FxHcCN3AsCcY6mPfK2yuamtohEEmqeNgSiwACMP
 nYHY3BdVOz9KcZbAHA+Ghi+xlBpjguuM0ClUY/nm7oAVvhqOsO8JKun93GLti7qu9GxN
 oqiqZF+Vq5JtQOZ1OFsImqTErwnMpDVz77L0Vea4oD/PZsV1RjDARKzI9y4N5x4rTDLW
 4Y8Q==
X-Gm-Message-State: APjAAAW1qkoolAal2juxduHLuLAS5ELxdhuBfQteJeIr1pwN/sy99yTz
 vzpOoF74ubg1W8JPlDC+STo=
X-Google-Smtp-Source: APXvYqyRYW0slf7hnoyWPRWJzidVwkAK8H8EWbA/08e8qmnHPg65wYda6/tRhFcbKEdUJFZQpqF4hQ==
X-Received: by 2002:a17:90a:fd85:: with SMTP id
 cx5mr1533764pjb.80.1582758245243; 
 Wed, 26 Feb 2020 15:04:05 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::7:5ebf])
 by smtp.gmail.com with ESMTPSA id 3sm3912621pjg.27.2020.02.26.15.04.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 15:04:04 -0800 (PST)
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
Subject: [PATCH v4 3/7] usb: gadget: aspeed: add ast2600 vhub support
Date: Wed, 26 Feb 2020 15:03:42 -0800
Message-Id: <20200226230346.672-4-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226230346.672-1-rentao.bupt@gmail.com>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_150406_351566_00742A3B 
X-CRM114-Status: GOOD (  13.40  )
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

Add AST2600 support in aspeed-vhub driver. There are 3 major differences
between AST2500 and AST2600 vhub:
  - AST2600 supports 7 downstream ports while AST2500 supports 5.
  - AST2600 supports 21 generic endpoints while AST2500 supports 15.
  - EP0 data buffer's 8-byte DMA alignment restriction is removed from
    AST2600.

Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
---
 No Change in v3/v4.
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
