Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBAD176F58
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:25:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=meJ6LeAdE/lVrsdAAHZLpREORNCDtbxTFbAzYmFGSdM=; b=Fqx6X4zJSygIpkoo5RYXmt9zDb
	3Wf9sJ5iK6t8NTacYvymrYUIhgeLLwk6VAOnG//np2Y0RM5p+Sz5vYnJ5Zr7c+9lx/hOOQI1wXqyS
	983MNCEZ1+OS6f6FTl/qcsiDGrFwpi3gVh47fBanG2Aw4Ri6oeCoNOvjODV9HqroEkJkCWZ0ThRDg
	/FLWPCxRPbAPsvxTHdCLjQtT4XBATcIHEJ5GnyM3rQVKgrvy2tOURI3lAYawF+QLZ3fO//k+Fd1G1
	Es5SdEb4NrA6hK4ejxGDnuHXWDQ0m78mieV0d9mgdzhoe4pnsxdkVdQSabwxA9h1V7X2xhq+1iUV+
	UUjSQsTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j90z4-0001qk-94; Tue, 03 Mar 2020 06:24:50 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90y7-00017e-0J
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 06:23:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id s1so924279pfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 22:23:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=lFzezbgly821hZw00oikD/AE/FsI5IqUTxbG0Oja4KA=;
 b=Q2ev026EawsJ85PvppOvYO+mZKcxl1rYkm0COMir47W+yf7TRR2dtZsMLOvP+UMScU
 xS9L6F+BPNybR2G9IXZhRxvCLx3Q574FJN6F37LpcOsMrf9n1q9vldzDujO8n6b4oj0x
 eswTQm6axlN5xjSAnBK+K0uuF7wf2XAjklFRJlb4IXtE8fkn+rDLs74YWTMLy8nGaE/Y
 h8o5F7SqarVuydI1WYyukWahoxsqfzmu+OctGVGQp0da16nmB9uDLGHLaSvP7g1nyQ6+
 CGxPlb5753cz7g4GeFsMn2DvpkSkV+dq8AUYcz/wTU5ZvLN0vZly96dBtkTfswyyZYN4
 2XTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=lFzezbgly821hZw00oikD/AE/FsI5IqUTxbG0Oja4KA=;
 b=NN8okfN830AKrHLMkigS2F+B5MNh1NvzCmAnFpRZIDgwl/gq+dA01C6TxELZi31d1O
 udBa8uXiqZl28nFuov7Zk0M0kLByxj8hXHDdlbusuRiz1wwVsIGMFMd7T3qb1O8rALa9
 D6pnO8oOMWpfsHWtBQ7FNCr5FgBA6ScDQtVOI6AoHJJeYYnQ8qc9Pmeyu14EW1iUT8UX
 VPq8VE4cowBbMWlD9o9nIWPrNRny4fZav+2jxaahy02moC03We7N49H2RLk+VERuK1XX
 oqovxNzc6bnelCQI3AOUopRCU3KspuDpy4TKF/Mcn6l1vXEwGkkQFOaywCDWAzRiqlHT
 k0PQ==
X-Gm-Message-State: ANhLgQ0CdKv+9l+1WpAczAeWCIaKkB9orio8VGJzzW3lEWXHgtykR7sq
 MDLtzvS16XKwSbtfmtxhb78=
X-Google-Smtp-Source: ADFU+vv2fSMb6IsU3yZJKIeBgC4S/mzJAkC13JfKcx/EFBGA3G4AC7izihv2YSh16vWsaLOKFpyJKg==
X-Received: by 2002:a62:1682:: with SMTP id 124mr2672356pfw.107.1583216630225; 
 Mon, 02 Mar 2020 22:23:50 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91.thefacebook.com
 (c-24-4-25-55.hsd1.ca.comcast.net. [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id k5sm7453526pfp.66.2020.03.02.22.23.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 22:23:49 -0800 (PST)
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
Subject: [PATCH v7 3/7] usb: gadget: aspeed: add ast2600 vhub support
Date: Mon,  2 Mar 2020 22:23:32 -0800
Message-Id: <20200303062336.7361-4-rentao.bupt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200303062336.7361-1-rentao.bupt@gmail.com>
References: <20200303062336.7361-1-rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_222351_056980_1D3F0569 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
---
 No Change in v3/v4/v5/v6/v7.
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
