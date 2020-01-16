Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 537F213E596
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:16:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkfuNMn79l7OcLBr15WZN+gQH0ZocA53UHXptkgmvpw=; b=Tto1RcjV9bA61x
	O6bXuVpMj1vRYfbnxBojOT3Eylo6lgwxUhujB3/UZmC7yL0uL/xNZGo6e01oz41KcuspS4AGsz8+S
	8/443KadP5oppcbJEloTkhH4GS+LQ3YHeG1iMnsjT2OxuyxlJG55afooUNxfw2cy9gtEHUHDXUzbO
	zLFr9EnwNuptyWA/WHdQvUdmTsNilIIINPq1JAwy7UXXfDciRF86dPIe6ByC3xeLpyP2O2RKDP32f
	YOLaFNYWD8SNAE5E6V2MxGirLTDo1uMvkIfNhdUaAA+97+LeWHjyrMDNooKuax4em2ufYqyLzJaCJ
	4CmW6yuVO3fCUXLl1OOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8kI-0001EV-Ol; Thu, 16 Jan 2020 17:15:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8XH-0002Lt-3P; Thu, 16 Jan 2020 17:02:31 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9BAA720730;
 Thu, 16 Jan 2020 17:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194141;
 bh=Arr1726Id5mEVcSp5PE/MtW4ooJu4KwJFMqCkc++vG4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TBA4yWuW2SPxELObiTIT9AOZ2+XzAAwuGz3AHJP7VVH9r2IwVDGFjzm9MkMUah01g
 CMFuI41pt4osmvHshFtv2C1aoyymgELT85AN7PQz8uFnVvkytQYwBfPdef1iUIxSn7
 r9dgI1qUR80yNRaFVo88iguEBxhXtmAbbQy8yju4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 228/671] hwrng: bcm2835 - fix probe as platform
 device
Date: Thu, 16 Jan 2020 11:52:17 -0500
Message-Id: <20200116165940.10720-111-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165940.10720-1-sashal@kernel.org>
References: <20200116165940.10720-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_090223_430682_1BC3C2B7 
X-CRM114-Status: GOOD (  13.18  )
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
Cc: Sasha Levin <sashal@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 bcm-kernel-feedback-list@broadcom.com, linux-crypto@vger.kernel.org,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jonas Gorski <jonas.gorski@gmail.com>

[ Upstream commit 984798de671a927ac73da31096a150df42e6aaf3 ]

BCM63XX (MIPS) does not use device tree, so there cannot be any
of_device_id, causing the driver to fail on probe:

[    0.904564] bcm2835-rng: probe of bcm63xx-rng failed with error -22

Fix this by checking for match data only if we are probing from device
tree.

Fixes: 8705f24f7b57 ("hwrng: bcm2835 - Enable BCM2835 RNG to work on BCM63xx platforms")
Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>
Acked-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/char/hw_random/bcm2835-rng.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/char/hw_random/bcm2835-rng.c b/drivers/char/hw_random/bcm2835-rng.c
index 6767d965c36c..19bde680aee1 100644
--- a/drivers/char/hw_random/bcm2835-rng.c
+++ b/drivers/char/hw_random/bcm2835-rng.c
@@ -171,14 +171,16 @@ static int bcm2835_rng_probe(struct platform_device *pdev)
 	priv->rng.read = bcm2835_rng_read;
 	priv->rng.cleanup = bcm2835_rng_cleanup;
 
-	rng_id = of_match_node(bcm2835_rng_of_match, np);
-	if (!rng_id)
-		return -EINVAL;
-
-	/* Check for rng init function, execute it */
-	of_data = rng_id->data;
-	if (of_data)
-		priv->mask_interrupts = of_data->mask_interrupts;
+	if (dev_of_node(dev)) {
+		rng_id = of_match_node(bcm2835_rng_of_match, np);
+		if (!rng_id)
+			return -EINVAL;
+
+		/* Check for rng init function, execute it */
+		of_data = rng_id->data;
+		if (of_data)
+			priv->mask_interrupts = of_data->mask_interrupts;
+	}
 
 	/* register driver */
 	err = devm_hwrng_register(dev, &priv->rng);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
