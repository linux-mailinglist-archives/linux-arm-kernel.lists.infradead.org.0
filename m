Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A204313EE39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+d/LdusD2Ikm8yk3btnKHMyPfvdVKXxg8rIfCrZ5vQ=; b=RbHwWGv+kZOXqO
	bvj7jcNz3qJx8c1LCwpObkws1yEPh0JmknwhmefZZAD01FlRwuOsa8qDC3k5Cb98sNV1M6cv7jhou
	04dZkmOLzbJ7JK+dMoAJt3SlBIJhw4lM8M9UR2DxbLTK4LhPveGliHQuWcuOGeJsCMr7HXn9iUgIC
	hO6cxagdarDxLLOIRVmFwNbGdVVuY0s4zPaSY+LcwdSFPPVRE7niAdX5xZzJLc/TUrBoRHxCSeoOR
	DXe3su/5iraRWFd9HSgp3i71+83mTgICZ3c4c1sLjdtMETydbLTqc56HwpQS4dkfWnruNgwvWNuOm
	W8JvP5wt6pVj8QjvcxAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9Yf-0005t2-T3; Thu, 16 Jan 2020 18:07:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8xk-0006xh-NZ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:29:48 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 595C02470B;
 Thu, 16 Jan 2020 17:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195784;
 bh=+iS+pPVwdRsJ+oZFaJTkLZMfES8a7NkF1r+T7aRDmN0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OnS4wl2vLce+8bIOtKU58Bb7cknLq8vyjirXfbzFHUdJSYSD9ZYUCbClBmftTo3dm
 xLcA7TnYfWSkLQgcGFDVnItCLGnhImKSmyvgAHUz7/nmDnk1bWiXT0RHcumncm7wFW
 yYpEwlLlBAB8kHLdoxBR9WsFc9X1PeQ7nPdo6aVM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 307/371] net: axienet: fix a signedness bug in
 probe
Date: Thu, 16 Jan 2020 12:22:59 -0500
Message-Id: <20200116172403.18149-250-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_092944_878729_8A5EADB9 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, "David S . Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dan Carpenter <dan.carpenter@oracle.com>

[ Upstream commit 73e211e11be86715d66bd3c9d38b3c34b05fca9a ]

The "lp->phy_mode" is an enum but in this context GCC treats it as an
unsigned int so the error handling is never triggered.

Fixes: ee06b1728b95 ("net: axienet: add support for standard phy-mode binding")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Reviewed-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 9ccd08a051f6..1152d74433f6 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1574,7 +1574,7 @@ static int axienet_probe(struct platform_device *pdev)
 		}
 	} else {
 		lp->phy_mode = of_get_phy_mode(pdev->dev.of_node);
-		if (lp->phy_mode < 0) {
+		if ((int)lp->phy_mode < 0) {
 			ret = -EINVAL;
 			goto free_netdev;
 		}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
