Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1540D172E96
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 03:09:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XS4Fpg0/nbA7GI3cy05e03zH7Fr+3mXSwaj6v4JeBws=; b=NWLb18pmQnm/2z3I6/y7d3WDAc
	ceNNS7Wy8ISRq1exFBIHW2md8M38lTpWl/wuVcOfJF7Z8hJM7y2PAQdZiGqkd0Q06tojstlHbejzS
	0khpGYMHjyQmANnWn+v1wVoGGo2J20dTKWFOZyhoJ5LmY1KPb7VipHR80M4zg6WxUl2W+nvNDqE1j
	ntSSaM+Gu9hOLOWJ47CbB0Z4cpOLusU8PyQLsqa3mmObujqnX19Nys0WpdIb37w3afnxvn96thOPU
	gnN7Er2l9vRBcVQP4NtuvauMt5BW9zKk0y3E/47w19v4QIhUGfRg/aR8DmjDe3C1yw0NnPn+0puHQ
	nhK1WF7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7V5X-0004CK-Qh; Fri, 28 Feb 2020 02:09:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7V4X-0003cG-1K
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 02:08:14 +0000
Received: by mail-pf1-x443.google.com with SMTP id p14so859276pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 18:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4mjPmvXysWT0DgB3PSQGnyz6HfpRACYycHeQnWkOz6Y=;
 b=ZX+VZBI9RskmB38Sd4RrA9/Aek92Spv7yQBdBSNLRoSEFNRURWgTZE11IoKdjOZ3YK
 PGTlTDyR8NTYR1vcoWariC/tTjag+7sxf8YW+rk/DcYghR05j5n+ThZTm8AjLUAWsf+g
 mFCkQAz4hd1zRFWqdRgwUUgNLsRq6ztHgVWHvB7RVUKj7e+NNLnxVuI+LXwl58RhQyMM
 C0ZuJTShk4JZqg5OsJaVIZ6xUdVXOWqff9hkmcjsftTwAYUIan8B/5r/e0oRS3ts714o
 eK39VCi2cDLhZ+epNfi/Q/heRRxkFVXJzWlDWJH5vKB02rkr5U2AVlfW2YkKlQVbssoB
 yT5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4mjPmvXysWT0DgB3PSQGnyz6HfpRACYycHeQnWkOz6Y=;
 b=R6CA1Y9o+U7vDeuiV1Aqlz2naIOtzqoKE8r0vSqgUuqZrIOsMKOxiwwQ2JAT11GJXY
 VKs5nJepZj6MJzjjdsqhEbLR79MwUnetNF3Gd/YFuJr3MdhSNAFvk4OEl5iEsflrcLwP
 6h3kMmeBtOi9rvMUFvfg0UdSu+irg+HSGvzN4pyD7qjDkHpTZ3E+TcpRrnEgfYJ/Z2Oi
 /3nlui+LJ5Jvdp5i6XJC9NtwVWBufHae2Pi0es6qdehvQsLbzep7fEtBUB9u44vobP+o
 AjbFyKfaKSzuqXoKPL9IOyX5m9RIKm/DmGXOePE9RQms1ODny4od0Dlu8eK6XDNQsUqm
 kESQ==
X-Gm-Message-State: APjAAAUuCuZcM7xuOjoX7/EuEZfzKdO/e41Vyvi1MngsRWcT7185/ijF
 GpnqaWRGaz8MKPBLqyugIiM=
X-Google-Smtp-Source: APXvYqzqI7BYR2+TRO/7IrXywoRFNx++mQlKf8rK68vX1Z5bE2FjZLKQ+AuBDWczldPe6WJ5gntoLw==
X-Received: by 2002:a62:1dca:: with SMTP id d193mr2085368pfd.140.1582855692123; 
 Thu, 27 Feb 2020 18:08:12 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id k24sm4931972pgm.61.2020.02.27.18.08.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 18:08:11 -0800 (PST)
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
Subject: [PATCH v6 3/7] usb: gadget: aspeed: add ast2600 vhub support
Date: Thu, 27 Feb 2020 18:07:53 -0800
Message-Id: <20200228020757.10513-4-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228020757.10513-1-rentao.bupt@gmail.com>
References: <20200228020757.10513-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_180813_091887_5B96871A 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
 No Change in v3/v4/v5/v6.
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
