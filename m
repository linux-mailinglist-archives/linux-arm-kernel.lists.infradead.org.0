Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6ED13F009
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:19:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JsMGwPq/rIINUXN1kbbKqVemHkTC+8Mc+6hHWfbNK1c=; b=OPsQPPTAbPgFK0
	aE1Wd8tLuUE8kg4BPQ0Vx5/8h0RIpZgiSw25XUFmShzqzYsBpmLbVBR5iybDxPimAeTfiM+beSDlN
	V+WTmfk7hHfPhiwo13+D6ru30GwNeAjJP2v8tqSqV6YbG/686vLbmHZzApJ6Lh1/FPDL2AEMjfzIj
	he9AsbQ9DfExhOdNziTZGnqjAiyXSTRD1Vvw2iMSJ7rtYiM/0aBwpBfbYSPvbT1zLBsGe7GKIU8nF
	t8qgVsYa/7HyUkVyzz4xhT5bIEIg6EeIlYOBP3blmmOB6148FYfRshChvv7yowaYAqJDXUnDCw5dq
	0O0MhBk078QH25ke9vRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9k6-0003Dy-0Q; Thu, 16 Jan 2020 18:19:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is95T-0006zw-MM
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:38:02 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 116A2246D8;
 Thu, 16 Jan 2020 17:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579196262;
 bh=TG5zhRS08XgjaFvPCbqcWFFnRDBrZMFyoPlDmRPuNak=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jyHndrtOaGmWF4XI5RFtsLNV73Svb81iC57k6AZiKYRMO9Ab0qHjXnR8T0fW1oft+
 kqxYyWDKhIkhGa3MZlIvvfWNn/gdvie4S+fefzzeeQdTbH4o68JV7HS9IlV3Xgd6Xj
 d7byMNn61jZgjflj5W7xDA5xZ/zkS+WH0uE+S0jg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 087/251] mmc: sdhci-brcmstb: handle mmc_of_parse()
 errors during probe
Date: Thu, 16 Jan 2020 12:33:56 -0500
Message-Id: <20200116173641.22137-47-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_093744_591221_3D571E1C 
X-CRM114-Status: GOOD (  12.02  )
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Sasha Levin <sashal@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Wahren <stefan.wahren@i2se.com>

[ Upstream commit 1e20186e706da8446f9435f2924cd65ab1397e73 ]

We need to handle mmc_of_parse() errors during probe otherwise the
MMC driver could start without proper initialization (e.g. power sequence).

Fixes: 476bf3d62d5c ("mmc: sdhci-brcmstb: Add driver for Broadcom BRCMSTB SoCs")
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/mmc/host/sdhci-brcmstb.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
index 159f6f64c68e..ed6473731b45 100644
--- a/drivers/mmc/host/sdhci-brcmstb.c
+++ b/drivers/mmc/host/sdhci-brcmstb.c
@@ -90,7 +90,9 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
 	host->mmc->caps2 |= MMC_CAP2_HC_ERASE_SZ;
 
 	sdhci_get_of_property(pdev);
-	mmc_of_parse(host->mmc);
+	res = mmc_of_parse(host->mmc);
+	if (res)
+		goto err;
 
 	/*
 	 * Supply the existing CAPS, but clear the UHS modes. This
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
