Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AC9A98DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 05:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8DoQgCXhgaa4aXv/ffVrilhIThZYpFWUi8VsvhKSoG4=; b=Wtm
	zs8gWWUc7438tDWGkmTWgpQCDcGSTtv5JpTuJMvyLOkMY2sFwtsn8N2ne96q95aIJlvD9iYR6sczL
	TcSWdPhf7J5MWm5nz7uuVwWLHqOkt1m9hoE82P2wFxIEsh6yXcDkCraoq4iTr9ME3krFbYei2sQVc
	9qvrb2fb1owXt4QnpJ3LiDHKXT85N26bUYvR1u4VKuQ89fOZ6VUWP80gvv+G3M8luBnHpB0Or6MyV
	vbqdRGijfmOazAHd+aH7ZxP6cyNIiBTmHgw8houfGN28yNMcj/nMTw9Js8DYq/XZA5YIsVcnV1ptP
	ak50vlDKAMDj8evtsaZp6E+evnjdHRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5iLg-0007bV-BX; Thu, 05 Sep 2019 03:22:16 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5iLY-0007az-DM
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 03:22:10 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id x853LWmj015290;
 Thu, 5 Sep 2019 12:21:32 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x853LWmj015290
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1567653693;
 bh=9WB476Jgz2iwQGx8WhZTdMWCoqoGKePNIED8HdmTYP8=;
 h=From:To:Cc:Subject:Date:From;
 b=kiLVhU38zUPA7LQClZMW0sQWODRJX2F4UsE3x4zKxgNMRBycx0jt9yloe0LKQDCwZ
 C52osBMh2fmB07x5WN8kwdOEWM/gHY3Pg85mAbqBUa6aR13h3gcE4WS7T+ulBG2Uwh
 w/bZf/ulT7dlgTF5NneQ56FhEWLWYhwuCGjWp8RlIv2kieTJjiSwjnxs/RSb+xlb4G
 x9NwOTy0e09Nc4H/e0TlyrNBDG2qw93BNH5qmG3nxFl6YFqzv/Lk2lDGeympBrJuFB
 6HNkutN+BF8n+eQdOwiPni/t/ngJsYhJf08bdIoyjpqzIFtyh0MUpL51lAIiUHEY9x
 p1/sGsVffIBlA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: arm@kernel.org, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] bus: uniphier-system-bus: use devm_platform_ioremap_resource()
Date: Thu,  5 Sep 2019 12:21:22 +0900
Message-Id: <20190905032122.26076-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_202208_776552_28CD9042 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, soc@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the chain of platform_get_resource() and devm_ioremap_resource()
with devm_platform_ioremap_resource().

This allows to remove the local variable for (struct resource *), and
have one function call less.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/bus/uniphier-system-bus.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/bus/uniphier-system-bus.c b/drivers/bus/uniphier-system-bus.c
index e845c1a93f21..f70dedace20b 100644
--- a/drivers/bus/uniphier-system-bus.c
+++ b/drivers/bus/uniphier-system-bus.c
@@ -176,7 +176,6 @@ static int uniphier_system_bus_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct uniphier_system_bus_priv *priv;
-	struct resource *regs;
 	const __be32 *ranges;
 	u32 cells, addr, size;
 	u64 paddr;
@@ -186,8 +185,7 @@ static int uniphier_system_bus_probe(struct platform_device *pdev)
 	if (!priv)
 		return -ENOMEM;
 
-	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	priv->membase = devm_ioremap_resource(dev, regs);
+	priv->membase = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->membase))
 		return PTR_ERR(priv->membase);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
