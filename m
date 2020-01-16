Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A248513EAE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:47:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mpfKz/HQXZxIbZNCwmAIyflbsQx9pd23w4ff9p9jc4=; b=qtnM4OL4JQ8BMy
	hFIIR2gjIpoPIpKCAw1L/bVoG6i9D8bxtTWgKoGF0ASY28zYtrF5NO/s2g/eLbBbsJkJNNeud6Ll0
	yvXTomudINNLekwLZR05dv+79Z61h7J5IDNVCh5ROUZgeLJWGYh6BbsuMqTL2l5QDOrdBg+S2CNMo
	5tcpU6fOzS5wEJ3Swxq3x12javTiqWdy+ALZygP4oXB1c1JG9g5xXmWVTaIIJ7cW3ad03yGyBAYf+
	3v3ACJa4DmCUtK3cwzGTomU1yLu1vGuFCjzXKQnkhPH7Rnc04d8l+5AqwK3JoyAJwxVzi78EG0Fmr
	94TG7neDsrWlrS+VvNdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9ES-0006nE-GD; Thu, 16 Jan 2020 17:47:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8iX-0007Xi-Te
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:14:06 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F1522469F;
 Thu, 16 Jan 2020 17:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194841;
 bh=QFwPIGYW7jqbTdUHd0X1/G46FyHGNJE8eX12vRwYplU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lMxqmjVU/4EW5t0dMOS2Vs5ovOoFPMKs93vNP7afFqQ8gziQvn7oT84Xz9o/pww+t
 WbmuQobw+zxTlusflu7ZkIET7aDqh2MQiQPUZ9TH+JAq+GXCOkfwW0G5Pojr76/LSI
 u1RZ0I6TcdlZSKmiBKQ69Rwi6eYXWjV29PPHuYFg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 640/671] rtc: brcmstb-waketimer: add missed
 clk_disable_unprepare
Date: Thu, 16 Jan 2020 12:04:38 -0500
Message-Id: <20200116170509.12787-377-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_091402_038992_3B6D7A6F 
X-CRM114-Status: GOOD (  10.67  )
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
Cc: Sasha Levin <sashal@kernel.org>, linux-rtc@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Chuhong Yuan <hslester96@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chuhong Yuan <hslester96@gmail.com>

[ Upstream commit 94303f8930ed78aea0f189b703c9d79fff9555d7 ]

This driver forgets to disable and unprepare clock when remove.
Add a call to clk_disable_unprepare to fix it.

Fixes: c4f07ecee22e ("rtc: brcmstb-waketimer: Add Broadcom STB wake-timer")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
Link: https://lore.kernel.org/r/20191105160043.20018-1-hslester96@gmail.com
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/rtc/rtc-brcmstb-waketimer.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/rtc/rtc-brcmstb-waketimer.c b/drivers/rtc/rtc-brcmstb-waketimer.c
index f4010a75f2be..1abc8397850a 100644
--- a/drivers/rtc/rtc-brcmstb-waketimer.c
+++ b/drivers/rtc/rtc-brcmstb-waketimer.c
@@ -287,6 +287,7 @@ static int brcmstb_waketmr_remove(struct platform_device *pdev)
 	struct brcmstb_waketmr *timer = dev_get_drvdata(&pdev->dev);
 
 	unregister_reboot_notifier(&timer->reboot_notifier);
+	clk_disable_unprepare(timer->clk);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
