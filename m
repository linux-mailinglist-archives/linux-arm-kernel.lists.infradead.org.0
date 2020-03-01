Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FAF174DD8
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 15:46:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4weE/HINpN16Ze0y/S93/AWQtqzalixoDsl5ZbzsXE=; b=Syg2Zu5zCQTZAK
	xoA89W7RGvS8m1wHhVDwptk6UYy1WTEIMPPmT/DZYL2Q7lT0uXt5KwgryYjSSyVSXKRtbmRBNzVYO
	AAAGv5TAiph0V72jYJ5MURdBXpi9Kxyo12PSh6sQgkj0Aa1LA5tTGCPNwo8P9mbtTE81ZsqhktAut
	PJhMQGrwnABrQw8Orl6GVsA8dA5VdUDDpwyiCsNIe7Sqq1CabSP9SJENvQ/c5mRGqo5KxIixvq3iE
	ZnO/cS8ab2lPem1vljDNDuBoq76zjVkjHQUH+cpHxt4Cp5jBpy/V8RkeLBb+KpHd2vTDl1iTkt8eh
	LWQSLTqOlbemySPAtRTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8PrL-0004Au-KM; Sun, 01 Mar 2020 14:46:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Pqc-0003kX-65
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 14:45:39 +0000
Received: from localhost (unknown [193.47.165.251])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADC97222C4;
 Sun,  1 Mar 2020 14:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583073937;
 bh=HDDbUQvXN1MCn4DqBIi9Nyeu2TiCTjJBY1Qm/e7ICdg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G8uNVGWeZv5a/21/erMV7nBGEPNmj1WjFr5o3ktOIx/FXCGmeWceeP1Z7N7RXBNn+
 F+7+T7EmzVHG0YqYUJ/BD6KFEm6JbICaOPQFcHy4ov7uW+w0wOnqn7jju0O6bMWhW+
 83oXCgEZpio37CtqJFJqcjz1X6efxAhy2eBMYj50=
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next 12/23] net/cortina: Delete driver version from
 ethtool output
Date: Sun,  1 Mar 2020 16:44:45 +0200
Message-Id: <20200301144457.119795-13-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200301144457.119795-1-leon@kernel.org>
References: <20200301144457.119795-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_064538_272820_DDB1ED54 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Leon Romanovsky <leonro@mellanox.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leonro@mellanox.com>

Use default ethtool version instead of static variant.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/cortina/gemini.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/cortina/gemini.c b/drivers/net/ethernet/cortina/gemini.c
index f30fa8e6ef80..dc2a4adab793 100644
--- a/drivers/net/ethernet/cortina/gemini.c
+++ b/drivers/net/ethernet/cortina/gemini.c
@@ -44,7 +44,6 @@
 #include "gemini.h"
 
 #define DRV_NAME		"gmac-gemini"
-#define DRV_VERSION		"1.0"
 
 #define DEFAULT_MSG_ENABLE (NETIF_MSG_DRV | NETIF_MSG_PROBE | NETIF_MSG_LINK)
 static int debug = -1;
@@ -2204,7 +2203,6 @@ static void gmac_get_drvinfo(struct net_device *netdev,
 			     struct ethtool_drvinfo *info)
 {
 	strcpy(info->driver,  DRV_NAME);
-	strcpy(info->version, DRV_VERSION);
 	strcpy(info->bus_info, netdev->dev_id ? "1" : "0");
 }
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
