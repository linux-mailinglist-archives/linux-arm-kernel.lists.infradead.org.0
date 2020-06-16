Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FD41FC217
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 01:04:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b03Ii2E5KFQkqio9rmjpLuD74olRRcHYm2jyT3hSQtw=; b=QaMV3Y7UeBaFZ9
	5i7MG++86w6o/LNec2c5y8NaA3VfdqgBcoLd1UvoQioG4zG6UTTXZ0/Os8VMG2Snz9F71or/zf42l
	xL+qI1bjB7O1NnbjTTLQqksUgBc8cfZUiLPbPnMzMoCcgYr74ouqaJSCObWjQzHV8aanKuRE1xp2k
	ajWgzlcqbOklp8jg1Y/ORRsSb02b4+WiqdadKJDUDJ6a03R678yUqEqunSFw4jJOZWOc2Gc+cWo2C
	Ul1rNtR49lpjYwgjTTsol+sW5CzmY0dt0PMA7OD/rJ3DgsqPfFI2r+LKl4B29NxhOY9BLfCuZXtMc
	+EgQyznSqqDw2cLNVw5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlKcm-0002a7-97; Tue, 16 Jun 2020 23:04:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlKce-0002ZT-9m
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 23:04:05 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B59E20B80;
 Tue, 16 Jun 2020 23:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592348644;
 bh=TIZiaa/qDG3AaJk/HXXgqxxOEvJw9NmOoxWKs8Y4cmw=;
 h=Date:From:To:Cc:Subject:From;
 b=y5PzAAhJyBwRxGDn0hnX3QjYffp5OIpW3+nAn7bu6nsdOyT9stTqJ3oc9M/ppBaAU
 8i2cFkIhbsXgEgJFPowGsGl992V3bUaVK3Hj0Q+sE+AV6uOJageUk5BpEYJ5RwRP+2
 z47/9CXwvJgYqbKuv3pmbcxCFH35yW4aH2NpOe1k=
Date: Tue, 16 Jun 2020 18:09:23 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH][next] irqchip: Use struct_size() helper in devm_kzalloc()
Message-ID: <20200616230923.GA24937@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_160404_360689_6A777834 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make use of the struct_size() helper instead of an open-coded version
in order to avoid any potential type mistakes.

This code was detected with the help of Coccinelle and, audited and
fixed manually.

Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/irqchip/irq-imx-intmux.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-imx-intmux.c b/drivers/irqchip/irq-imx-intmux.c
index c27577c81126..54d8bb4fc5a1 100644
--- a/drivers/irqchip/irq-imx-intmux.c
+++ b/drivers/irqchip/irq-imx-intmux.c
@@ -210,8 +210,7 @@ static int imx_intmux_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	data = devm_kzalloc(&pdev->dev, sizeof(*data) +
-			    channum * sizeof(data->irqchip_data[0]), GFP_KERNEL);
+	data = devm_kzalloc(&pdev->dev, struct_size(data, irqchip_data, channum), GFP_KERNEL);
 	if (!data)
 		return -ENOMEM;
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
