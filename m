Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B4E1E5EDF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 13:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vK0u+oBEfx++oG7X/TmjcmcUmAUoZM/E9P8FjSlWBcg=; b=l4iYGrYe3+n9w3
	hLYMVLd7+BoVTlfpKfCPWg3UB8VBqMxhAF2/3ew2YLZG+9P62cXvJXiC/3ZnskUL9n3auBzyQqlSA
	wEfP4gxlpDDtcr3xJCtzE7kHk4W0wQ1E4avgj3Tk4VNP5xNabMOit1QkOpUs4f/FgHOcIToj+Nq2e
	BlhVZPm/u9HK+7ThTWuJKhchap298uRR8tMvQMQpX0/xE6tH2q766tzC4cu9UbpyvOuvzLMj9sC5l
	L01I7+iq+kITl39pYT3/tyYm0niS7C7Zsgfmri+SGOreFUVwR1CvW+OMzwXKRXBS8PulIpC+6QeKX
	7whqwJ8UDR9KinRSa66g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeH9j-0003SE-Np; Thu, 28 May 2020 11:57:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeH9X-0003Rn-6u
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 11:56:52 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 19EAE207D3;
 Thu, 28 May 2020 11:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590667010;
 bh=mJ93CnXc9YSI6aOXXURM2kusgG8AVDTiDJs40asWSXg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rLO+AGUk5CbQRxpLv4uy/vEiv+OifPojL5eOHd6cxR0uWnd+jwY2zxuT3Zqu7DZjp
 DAqIjGoFphjq8C7OoDVp+C0HUxAU2TZF2h+mzt2w1wtteVM1FDlapRBZMqzTRm71kf
 uoCMtKlJFHAoDK7BnpJvpMDOO7Uk6dHUQWcBXVS4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 44/47] net: Fix return value about
 devm_platform_ioremap_resource()
Date: Thu, 28 May 2020 07:55:57 -0400
Message-Id: <20200528115600.1405808-44-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200528115600.1405808-1-sashal@kernel.org>
References: <20200528115600.1405808-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_045651_275054_CD6D2896 
X-CRM114-Status: GOOD (  11.37  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-can@vger.kernel.org, Tiezhu Yang <yangtiezhu@loongson.cn>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tiezhu Yang <yangtiezhu@loongson.cn>

[ Upstream commit ef24d6c3d6965158dfe23ae961d87e9a343e18a2 ]

When call function devm_platform_ioremap_resource(), we should use IS_ERR()
to check the return value and return PTR_ERR() if failed.

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/can/ifi_canfd/ifi_canfd.c     | 5 ++++-
 drivers/net/can/sun4i_can.c               | 2 +-
 drivers/net/dsa/b53/b53_srab.c            | 2 +-
 drivers/net/ethernet/marvell/pxa168_eth.c | 2 +-
 4 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/can/ifi_canfd/ifi_canfd.c b/drivers/net/can/ifi_canfd/ifi_canfd.c
index 04d59bede5ea..74503cacf594 100644
--- a/drivers/net/can/ifi_canfd/ifi_canfd.c
+++ b/drivers/net/can/ifi_canfd/ifi_canfd.c
@@ -947,8 +947,11 @@ static int ifi_canfd_plat_probe(struct platform_device *pdev)
 	u32 id, rev;
 
 	addr = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(addr))
+		return PTR_ERR(addr);
+
 	irq = platform_get_irq(pdev, 0);
-	if (IS_ERR(addr) || irq < 0)
+	if (irq < 0)
 		return -EINVAL;
 
 	id = readl(addr + IFI_CANFD_IP_ID);
diff --git a/drivers/net/can/sun4i_can.c b/drivers/net/can/sun4i_can.c
index e3ba8ab0cbf4..e2c6cf4b2228 100644
--- a/drivers/net/can/sun4i_can.c
+++ b/drivers/net/can/sun4i_can.c
@@ -792,7 +792,7 @@ static int sun4ican_probe(struct platform_device *pdev)
 
 	addr = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(addr)) {
-		err = -EBUSY;
+		err = PTR_ERR(addr);
 		goto exit;
 	}
 
diff --git a/drivers/net/dsa/b53/b53_srab.c b/drivers/net/dsa/b53/b53_srab.c
index 0a1be5259be0..38cd8285ac67 100644
--- a/drivers/net/dsa/b53/b53_srab.c
+++ b/drivers/net/dsa/b53/b53_srab.c
@@ -609,7 +609,7 @@ static int b53_srab_probe(struct platform_device *pdev)
 
 	priv->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(priv->regs))
-		return -ENOMEM;
+		return PTR_ERR(priv->regs);
 
 	dev = b53_switch_alloc(&pdev->dev, &b53_srab_ops, priv);
 	if (!dev)
diff --git a/drivers/net/ethernet/marvell/pxa168_eth.c b/drivers/net/ethernet/marvell/pxa168_eth.c
index 7a0d785b826c..17243bb5ba91 100644
--- a/drivers/net/ethernet/marvell/pxa168_eth.c
+++ b/drivers/net/ethernet/marvell/pxa168_eth.c
@@ -1418,7 +1418,7 @@ static int pxa168_eth_probe(struct platform_device *pdev)
 
 	pep->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pep->base)) {
-		err = -ENOMEM;
+		err = PTR_ERR(pep->base);
 		goto err_netdev;
 	}
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
