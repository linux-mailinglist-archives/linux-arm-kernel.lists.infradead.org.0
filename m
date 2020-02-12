Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A353415B33D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 22:58:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gZo9X4hlryglkYdu1Dr3j6XHMHUUI1Fzk7SEFJBCpCg=; b=i+Xk7x2Jh2vfqVJ8ZtjKrJpdep
	FD8Hz0l48pluMnju0UAm4GiHHt2uz48YDmQLlg2Ov5X83gYZIuoU9ImZWd7ASob9zaE5JUCmma5yn
	he03XS+8N4Kti8hZvoDC/6HWuxZk+aQ+dh4eO2ERMHdnmq8SnJfRJ1nhVXERCb5R7LBa0eniLlAGE
	ER3O8GLu6GgFRg3tcSrt7ji/F7GQF5mLqZfB+c47uSXSx+pI1/RLaZx2susPtYCWmUBc5UfBZ8Bf8
	W+M9mUjuRLkQ8Q5LuhdTc73YZDkZCFzzDmpf7wsFVfjXDn5m2lvBYE8qVMlJfNq5F4MSHeyCdEVQF
	ASNLsYyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j201t-0000DE-8d; Wed, 12 Feb 2020 21:58:45 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j200i-0007hR-UP
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 21:57:34 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay11so1477768plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 13:57:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9R6etbCWA0Xr2BLGZcOqv2B9uQVoWrtEKoDia/3gAmc=;
 b=osRYjOE+S4T3n2NX0HckDlon9Ckir9iwsJmHpigKf1urq1gHixNS0a5L+hQfjn9x4E
 I38sDSoWvbI411/D5L2/GcxtFReZDMVHboDByJoSBq7uXGhrAobi08neBsYuinyuefT7
 U70dh3OWgaDfKIEGnYUq8W7OHi7LiTjCm0+kshx930BsyYCl0BNzzBHy/rdKsQgUU2Os
 dfg7wZWCIxvPqVyD2tQiC1C2IZ3rg3POxvn49shta10lilX9xR4IFt/JkSYnmXBqKH1L
 iGlqednqnHlw1wwYaL0EX7uStpHr6ZGyDi5VQUh60wuIEUXbkR8lVUhhjqtXM1kMVo4G
 CMsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9R6etbCWA0Xr2BLGZcOqv2B9uQVoWrtEKoDia/3gAmc=;
 b=Sy4iMuN6x6zRI73ex5zQahMR9GIalPbztjYfBWjZDUAXJnEbpDltnQVmrIUTy3BTB8
 8nPM4O5hpcbOU4upxIZScESXoK5/DUCUvjEpnKDBTdd8CcvVTd3gHEklHU7hOzS1tCzy
 6rjfadHFli8fceAkx0Rm6FPd2dp/4hHSn8xZDdqagjOv9i1S+hAgfopdSr+6aE+z5x4S
 RhmUiVbIbfsGCiTrrF/EB6chQkRmui7V6vWPsnRCmC+r1ArR+PQEXBw78tlp4UZV2cLM
 sigJrKJ38f1x+sfXQ50k3q3ylqYTOGSeg4lx1OcLnppOjhineAIZeyI3QQp215n4hurs
 S5ZQ==
X-Gm-Message-State: APjAAAUE7qDAHZx6wt/GuVzUdxMYObt/43FQd6U7Lo3Jj29wbyOkqeJ5
 AmuMJkC6d9eisCAaDbhDowI=
X-Google-Smtp-Source: APXvYqzMHlXDWxZW/3jPrNt/96ahoooGu6f8sVpoYs+rHds8Honw0tY8c71S8PpAo8bLxh2IziT3yQ==
X-Received: by 2002:a17:90a:8a8d:: with SMTP id
 x13mr1244687pjn.97.1581544651829; 
 Wed, 12 Feb 2020 13:57:31 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:200::3:533f])
 by smtp.gmail.com with ESMTPSA id r6sm214431pfh.91.2020.02.12.13.57.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 13:57:31 -0800 (PST)
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
Subject: [PATCH v2 4/5] usb: gadget: aspeed: add ast2600 vhub support
Date: Wed, 12 Feb 2020 13:57:16 -0800
Message-Id: <20200212215717.9474-5-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200212215717.9474-1-rentao.bupt@gmail.com>
References: <20200212215717.9474-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_135733_008167_D106A6F3 
X-CRM114-Status: GOOD (  13.48  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index d6f737fac4e2..166d7182e2c0 100644
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
